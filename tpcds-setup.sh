#!/bin/bash

function usage {
	echo "Usage: tpcds-setup.sh scale_factor [temp_directory]"
	exit 1
}

function runcommand {
	if [ "X$DEBUG_SCRIPT" != "X" ]; then
		$1
	else
		$1 2>/dev/null
	fi
}

BOLD=`tput bold`
NORMAL=`tput sgr0`

if [ ! -f tpcds-gen/target/tpcds-gen-1.0-SNAPSHOT.jar ]; then
	echo "Please build the data generator with ./build-tpcds.sh first"
	exit 1
fi
which hive > /dev/null 2>&1
if [ $? -ne 0 ]; then
	echo "Script must be run where Hive is installed"
	exit 1
fi

# Tables in the TPC-DS schema.
DIMS="date_dim time_dim item customer customer_demographics household_demographics customer_address store promotion warehouse ship_mode reason income_band call_center web_page catalog_page web_site"
FACTS="store_sales store_returns web_sales web_returns catalog_sales catalog_returns inventory"

# Get the parameters.
SCALE=$1
DIR=$2
BUCKETS=13
RETURN_BUCKETS=13
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
	echo "${BOLD}Generating data at scale factor $SCALE.${NORMAL}"
	(cd tpcds-gen; hadoop jar target/*.jar -d ${DIR}/${SCALE}/ -s ${SCALE})
fi
hdfs dfs -ls ${DIR}/${SCALE} > /dev/null
if [ $? -ne 0 ]; then
	echo "${BOLD}Data generation failed, exiting.${NORMAL}"
	exit 1
fi
echo "${BOLD}TPC-DS text data generation complete.${NORMAL}"

# Create the text/flat tables as external tables. These will be later be converted to ORCFile.
echo "${BOLD}Loading text data into external tables.${NORMAL}"
runcommand "hive -i settings/load-flat.sql -f ddl-tpcds/text/alltables.sql -d DB=tpcds_text_${SCALE} -d LOCATION=${DIR}/${SCALE}"

# Create the partitioned and bucketed tables.
i=1
total=24
for t in ${FACTS}
do
	echo "${BOLD}Optimizing table $t ($i/$total).${NORMAL}"
	COMMAND="hive -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/${t}.sql \
	    -d DB=tpcds_bin_partitioned_orc_${SCALE} \
	    -d SOURCE=tpcds_text_${SCALE} -d BUCKETS=${BUCKETS} \
	    -d RETURN_BUCKETS=${RETURN_BUCKETS} -d FILE=orc"
	runcommand "$COMMAND"
	if [ $? -ne 0 ]; then
		echo "Command failed, try 'export DEBUG_SCRIPT=ON' and re-running"
		exit 1
	fi
	i=`expr $i + 1`
done

# Populate the smaller tables.
for t in ${DIMS}
do
	echo "${BOLD}Optimizing table $t ($i/$total).${NORMAL}"
	COMMAND="hive -i settings/load-partitioned.sql -f ddl-tpcds/bin_partitioned/${t}.sql \
	    -d DB=tpcds_bin_partitioned_orc_${SCALE} -d SOURCE=tpcds_text_${SCALE} \
	    -d FILE=orc"
	runcommand "$COMMAND"
	if [ $? -ne 0 ]; then
		echo "Command failed, try 'export DEBUG_SCRIPT=ON' and re-running"
		exit 1
	fi
	i=`expr $i + 1`
done
