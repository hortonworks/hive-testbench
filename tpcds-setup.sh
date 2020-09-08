#!/bin/bash

function usage {

    echo " Usage: tpcds-setup.sh [--cli --server --port --tempdir ] scale_factor"
    echo " This script will generate and optimize data for Hive server benchmark testing."
    echo " "
    echo -e "  --cli\t\tCLI to use for Hive.  Options are 'beeline' or 'hive'.  Default is 'hive'."
    echo " "
    echo -e "  --server\tOptional parameter when using beeline CLI.  This is the server for the\n\t\tdatabase connection sring."
    echo " "
    echo -e "  --port\tOptional parameter when using beeline CLI. This is the port that Hive is listening on."
    echo " "
    echo -e "  --tempdir\tOptional parameter for data generation path."
    echo " "
    echo -e "  scale_factor\tScale factor for data generation in GB."
    exit 1
}

# Get options
while test $# -gt 0; do
    case "$1" in
        -h|--help)
            usage
            exit 0
            ;;
        --cli)
            shift
            CLITYPE="$1"
            shift
            ;;
        --server)
            shift
            SERVER="$1"
            shift
            ;;
        --port)
            shift
            PORT="$1"
            shift
            ;;
        --tempdir)
            shift
            DIR="$1"
            shift
            ;;
        *)
            SCALE="$1"
            shift
            ;;
    esac
done

function runcommand {
	if [ "X$DEBUG_SCRIPT" != "X" ]; then
		$1
	else
		$1 2>/dev/null
	fi
}

if [ ! -f tpcds-gen/target/tpcds-gen-1.0-SNAPSHOT.jar ]; then
	echo "Please build the data generator with ./tpcds-build.sh first"
	exit 1
fi

# if no CLI is supplied, default to hive
if [ "X$CLITYPE" == "X" ]; then
    $CLITYPE="hive"
fi

if [ "$CLITYPE" == "beeline" ]; then
    if [ "X$SERVER" == "X" ] || [ "X$PORT" == "X" ]; then
        echo "Server and port must be supplied if attempting to run beeline CLI"
        usage
        exit 1
    fi
fi

which hive > /dev/null 2>&1
if [ $? -ne 0 ]; then
	echo "Script must be run where Hive is installed"
	exit 1
fi

# Tables in the TPC-DS schema.
DIMS="date_dim time_dim item customer customer_demographics household_demographics customer_address store promotion warehouse ship_mode reason income_band call_center web_page catalog_page web_site"
FACTS="store_sales store_returns web_sales web_returns catalog_sales catalog_returns inventory"

if [ "X$BUCKET_DATA" != "X" ]; then
	BUCKETS=13
	RETURN_BUCKETS=13
else
	BUCKETS=1
	RETURN_BUCKETS=1
fi
if [ "X$DEBUG_SCRIPT" != "X" ]; then
	set -x
fi

# Sanity checking.
if [ X"$SCALE" = "X" ]; then
	usage
fi
if [ X"$DIR" = "X" ]; then
	DIR=/tmp/tpcds-generate
fi
if [ $SCALE -eq 1 ]; then
	echo "Scale factor must be greater than 1"
	exit 1
fi

# Do the actual data load.
hdfs dfs -mkdir -p ${DIR}
hdfs dfs -ls ${DIR}/${SCALE} > /dev/null
if [ $? -ne 0 ]; then
	echo "Generating data at scale factor $SCALE."
	(cd tpcds-gen; hadoop jar target/*.jar -d ${DIR}/${SCALE}/ -s ${SCALE})
fi
hdfs dfs -ls ${DIR}/${SCALE} > /dev/null
if [ $? -ne 0 ]; then
	echo "Data generation failed, exiting."
	exit 1
fi

hadoop fs -chmod -R 777  ${DIR}/${SCALE}

echo "TPC-DS text data generation complete."

if [ "$CLITYPE" == "beeline" ]; then
    HIVE="beeline -u jdbc:hive2://${SERVER}:${PORT} -i settings/load-flat.sql --hivevar DB=tpcds_text_${SCALE} --hivevar LOCATION=${DIR}/${SCALE} -f ddl-tpcds/text/alltables.sql"
else
    HIVE="hive -i settings/load-flat.sql -f ddl-tpcds/text/alltables.sql -d DB=tpcds_text_${SCALE} -d LOCATION=${DIR}/${SCALE}"
fi

# Create the text/flat tables as external tables. These will be later be converted to ORCFile.
echo "Loading text data into external tables."
runcommand "$HIVE  -i settings/load-flat.sql -f ddl-tpcds/text/alltables.sql --hivevar DB=tpcds_text_${SCALE} --hivevar LOCATION=${DIR}/${SCALE}"

# Create the partitioned and bucketed tables.
if [ "X$FORMAT" = "X" ]; then
	FORMAT=orc
fi

LOAD_FILE="load_${FORMAT}_${SCALE}.mk"
SILENCE="2> /dev/null 1> /dev/null" 
if [ "X$DEBUG_SCRIPT" != "X" ]; then
	SILENCE=""
fi

echo -e "all: ${DIMS} ${FACTS}" > $LOAD_FILE

i=1
total=24
DATABASE=tpcds_bin_partitioned_${FORMAT}_${SCALE}
MAX_REDUCERS=2500 # maximum number of useful reducers for any scale 
REDUCERS=$((test ${SCALE} -gt ${MAX_REDUCERS} && echo ${MAX_REDUCERS}) || echo ${SCALE})

# Populate the smaller tables.
for t in ${DIMS}
do
    if [ "$CLITYPE" == "beeline" ]; then
        COMMAND="beeline -u jdbc:hive2://${SERVER}:${PORT} -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/${t}.sql \
            --hivevar DB=${DATABASE} --hivevar SOURCE=tpcds_text_${SCALE} \
            --hivevar SCALE=${SCALE} \
            --hivevar REDUCERS=${REDUCERS} \
            --hivevar FILE=${FORMAT}"
    else
        COMMAND="hive -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/${t}.sql \
            -d DB=tpcds_bin_partitioned_${FORMAT}_${SCALE} -d SOURCE=tpcds_text_${SCALE} \
            -d SCALE=${SCALE} \
            -d REDUCERS=${REDUCERS} \
            -d FILE=${FORMAT}"
    fi
    echo -e "${t}:\n\t@$COMMAND $SILENCE && echo 'Optimizing table $t ($i/$total).'" >> $LOAD_FILE
    i=`expr $i + 1`
done

for t in ${FACTS}
do
    if [ "$CLITYPE" == "beeline" ]; then
        COMMAND="beeline -u jdbc:hive2://${SERVER}:${PORT} -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/${t}.sql \
            --hivevar DB=tpcds_bin_partitioned_${FORMAT}_${SCALE} \
            --hivevar SCALE=${SCALE} \
            --hivevar SOURCE=tpcds_text_${SCALE} --hivevar BUCKETS=${BUCKETS} \
            --hivevar RETURN_BUCKETS=${RETURN_BUCKETS} --hivevar REDUCERS=${REDUCERS} --hivevar FILE=${FORMAT}"
    else
        COMMAND="hive -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/${t}.sql \
            -d DB=tpcds_bin_partitioned_${FORMAT}_${SCALE} \
            -d SCALE=${SCALE} \
            -d SOURCE=tpcds_text_${SCALE} -d BUCKETS=${BUCKETS} \
            -d RETURN_BUCKETS=${RETURN_BUCKETS} -d REDUCERS=${REDUCERS} -d FILE=${FORMAT}"
    fi
    echo -e "${t}:\n\t@$COMMAND $SILENCE && echo 'Optimizing table $t ($i/$total).'" >> $LOAD_FILE
    i=`expr $i + 1`
done

make -j 1 -f $LOAD_FILE


echo "Loading constraints"
runcommand "$HIVE -f ddl-tpcds/bin_partitioned/add_constraints.sql --hivevar DB=tpcds_bin_partitioned_${FORMAT}_${SCALE}"

echo "Data loaded into database ${DATABASE}."
