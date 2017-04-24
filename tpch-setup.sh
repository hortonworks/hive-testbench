#!/bin/bash

function usage {
	echo "Usage: tpch-setup.sh scale_factor [temp_directory]"
	exit 1
}

function runcommand {
	if [ "X$DEBUG_SCRIPT" != "X" ]; then
		$1
	else
		$1 2>/dev/null
	fi
}

if [ ! -f tpch-gen/target/tpch-gen-1.0-SNAPSHOT.jar ]; then
	echo "Please build the data generator with ./tpch-build.sh first"
	exit 1
fi
which hive > /dev/null 2>&1
if [ $? -ne 0 ]; then
	echo "Script must be run where Hive is installed"
	exit 1
fi

# Tables in the TPC-H schema.
TABLES="part partsupp supplier customer orders lineitem nation region"

# Get the parameters.
SCALE=$1
DIR=$2
BUCKETS=13
if [ "X$DEBUG_SCRIPT" != "X" ]; then
	set -x
fi

# Sanity checking.
if [ X"$SCALE" = "X" ]; then
	usage
fi
if [ X"$DIR" = "X" ]; then
	DIR=/tmp/tpch-generate
fi
if [ $SCALE -eq 1 ]; then
	echo "Scale factor must be greater than 1"
	exit 1
fi

# Do the actual data load.
hdfs dfs -mkdir -p ${DIR}
hdfs dfs -ls ${DIR}/${SCALE}/lineitem > /dev/null
if [ $? -ne 0 ]; then
	echo "Generating data at scale factor $SCALE."
	(cd tpch-gen; hadoop jar target/*.jar -d ${DIR}/${SCALE}/ -s ${SCALE})
fi
hdfs dfs -ls ${DIR}/${SCALE}/lineitem > /dev/null
if [ $? -ne 0 ]; then
	echo "Data generation failed, exiting."
	exit 1
fi
echo "TPC-H text data generation complete."

# Create the text/flat tables as external tables. These will be later be converted to ORCFile.
echo "Loading text data into external tables."
runcommand "hive -i settings/load-flat.sql -f ddl-tpch/bin_flat/alltables.sql -d DB=tpch_text_${SCALE} -d LOCATION=${DIR}/${SCALE}"

# Create the optimized tables.
i=1
total=8

if test $SCALE -le 1000; then 
	SCHEMA_TYPE=flat
else
	SCHEMA_TYPE=partitioned
fi

DATABASE=tpch_${SCHEMA_TYPE}_orc_${SCALE}
MAX_REDUCERS=2600 # ~7 years of data
REDUCERS=$((test ${SCALE} -gt ${MAX_REDUCERS} && echo ${MAX_REDUCERS}) || echo ${SCALE})

for t in ${TABLES}
do
	echo "Optimizing table $t ($i/$total)."
	COMMAND="hive -i settings/load-${SCHEMA_TYPE}.sql -f ddl-tpch/bin_${SCHEMA_TYPE}/${t}.sql \
	    -d DB=${DATABASE} \
	    -d SOURCE=tpch_text_${SCALE} -d BUCKETS=${BUCKETS} \
            -d SCALE=${SCALE} -d REDUCERS=${REDUCERS} \
	    -d FILE=orc"
	runcommand "$COMMAND"
	if [ $? -ne 0 ]; then
		echo "Command failed, try 'export DEBUG_SCRIPT=ON' and re-running"
		exit 1
	fi
	i=`expr $i + 1`
done

hive -i settings/load-${SCHEMA_TYPE}.sql -f ddl-tpch/bin_${SCHEMA_TYPE}/analyze.sql --database ${DATABASE}; 

echo "Data loaded into database ${DATABASE}."
