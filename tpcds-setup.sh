#!/bin/bash

function usage {
	echo "Usage: tpcds-setup.sh scale [temp directory] [partitioned|unpartitioned]"
	exit 1
}

if [ ! -f tpcds-gen/target/tpcds-gen-1.0-SNAPSHOT.jar ]; then
	echo "Build the data generator with build.sh first"
	exit 1
fi
which hive > /dev/null 2>&1
if [ $? -ne 0 ]; then
	echo "Script must be run where Hive is installed"
	exit 1
fi

# Tables in the TPC-DS schema.
LIST="date_dim time_dim item customer customer_demographics household_demographics customer_address store promotion warehouse ship_mode reason income_band call_center web_page catalog_page inventory store_sales store_returns web_sales web_returns web_site catalog_sales catalog_returns"

# Get the parameters.
SCALE=$1
DIR=$2
MODE=$3

# Ensure arguments exist.
if [ X"$SCALE" = "X" ]; then
	usage
fi
if [ X"$DIR" = "X" ]; then
	DIR=/tmp/tpcds-generate
fi
if [ X"$MODE" = "X" ]; then
	MODE=partitioned
fi

# Sanity checking.
if [ $SCALE -eq 1 ]; then
	echo "Scale factor must be greater than 1"
	exit 1
fi

BUCKETS=13
RETURN_BUCKETS=1
SPLIT=16
STORE_CLAUSES=( "orc" )
FILE_FORMATS=( "orc" )
SERDES=( "org.apache.hadoop.hive.ql.io.orc.OrcSerde" )

set -x
set -e

hadoop dfs -mkdir -p ${DIR}
hadoop dfs -ls ${DIR}/${SCALE} || (cd tpcds-gen; hadoop jar target/*.jar -d ${DIR}/${SCALE}/ -s ${SCALE})
hadoop dfs -ls ${DIR}/${SCALE}

# Generate the text/flat tables. These will be later be converted to ORCFile.
for t in ${LIST}
do
	hive -i settings/load.sql -f ddl/text/${t}.sql -d DB=tpcds_text_${SCALE} -d LOCATION=${DIR}/${SCALE}/${t}
done

# Generate the binary forms of the data.
if [ $MODE = "partitioned" ]; then
	i=0
	for file in "${STORE_CLAUSES[@]}"
	do
		for t in ${LIST}
		do
			hive -i settings/load.sql -f ddl/bin_partitioned/${t}.sql \
			    -d DB=tpcds_bin_partitioned_${FILE_FORMATS[$i]}_${SCALE} \
			    -d SOURCE=tpcds_text_${SCALE} -d BUCKETS=${BUCKETS} \
			    -d RETURN_BUCKETS=${RETURN_BUCKETS} -d FILE="${file}" \
			    -d SERDE=${SERDES[$i]} -d SPLIT=${SPLIT}
		done
		i=$((i+1))
	done
else
	i=0
	for file in "${STORE_CLAUSES[@]}"
	do
		for t in ${LIST}
		do
			hive -i settings/load.sql -f ddl/bin_flat/${t}.sql \
			    -d DB=tpcds_bin_flat_${FILE_FORMATS[$i]}_${SCALE} \
			    -d SOURCE=tpcds_text_${SCALE} -d FILE="${file}" \
			    -d SERDE=${SERDES[$i]}
		done
	i=$((i+1))
	done
fi
