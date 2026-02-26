#!/bin/bash
# tpcds-spark-setup.sh - Setup TPC-DS database and tables using Spark SQL
# Usage: FORMAT=<format> [SPARK_VERSION=<version>] [SPARK_EVENT_LOG_DIR=<dir>] ./tpcds-spark-setup.sh scale_factor [temp_directory]
# Example: FORMAT=rcfile ./tpcds-spark-setup.sh 3
# Example: FORMAT=parquet SPARK_VERSION=2 ./tpcds-spark-setup.sh 2
# Example: FORMAT=orc SPARK_EVENT_LOG_DIR=hdfs:///custom-spark-history ./tpcds-spark-setup.sh 2
#
# Environment Variables:
#   FORMAT - Storage format: rcfile, orc, or parquet (default: orc)
#   SPARK_VERSION - Spark version (e.g., "2.4.0" or "3.2.0") - used to determine event log directory (default: 3)
#   SPARK_EVENT_LOG_DIR - Override event log directory (default: hdfs:///spark{version}-history)
#
function usage {
	echo "Usage: tpcds-spark-setup.sh scale_factor [temp_directory]"
	exit 1
}

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
# Check for Spark SQL command (check both command names and full paths)
SPARK_SQL_FOUND=0
if command -v spark2-sql > /dev/null 2>&1 || [ -f "/usr/odp/current/spark2-client/bin/spark-sql" ]; then
	SPARK_SQL_FOUND=1
elif command -v spark-sql > /dev/null 2>&1 || [ -f "/usr/odp/current/spark3-client/bin/spark-sql" ]; then
	SPARK_SQL_FOUND=1
fi

if [ $SPARK_SQL_FOUND -eq 0 ]; then
	echo "Script must be run where Spark SQL is installed"
	echo "Expected paths: /usr/odp/current/spark2-client/bin/spark-sql or /usr/odp/current/spark3-client/bin/spark-sql"
	exit 1
fi

# Tables in the TPC-DS schema.
DIMS="date_dim time_dim item customer customer_demographics household_demographics customer_address store promotion warehouse ship_mode reason income_band call_center web_page catalog_page web_site"
FACTS="store_sales store_returns web_sales web_returns catalog_sales catalog_returns inventory"
#DIMS="date_dim"
#FACTS="store_sales"

# Get the parameters.
SCALE=$1
DIR=$2
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

# Determine format (default to orc)
if [ "X$FORMAT" = "X" ]; then
	FORMAT=orc
fi

# Map RCFILE to ORC for Spark (Spark doesn't support RCFILE natively)
# Allow ORC and PARQUET formats as well
if [ "$FORMAT" = "rcfile" ]; then
	SPARK_FORMAT=orc
elif [ "$FORMAT" = "orc" ]; then
	SPARK_FORMAT=orc
elif [ "$FORMAT" = "parquet" ]; then
	SPARK_FORMAT=parquet
else
	echo "Unsupported format: $FORMAT. Supported formats: rcfile, orc, parquet"
	exit 1
fi

# Determine Spark version for event log directory
# Priority: Always check for Spark 2 first, then use SPARK_VERSION env var or detect
# If Spark 2 exists, prefer Spark 2 regardless of SPARK_VERSION setting
SPARK2_AVAILABLE=0
SPARK3_AVAILABLE=0

# Check for Spark 2 (check both command name and full path)
if command -v spark2-sql > /dev/null 2>&1 || [ -f "/usr/odp/current/spark2-client/bin/spark-sql" ]; then
	SPARK2_AVAILABLE=1
fi

# Check for Spark 3 (check both command name and full path)
if command -v spark-sql > /dev/null 2>&1 || [ -f "/usr/odp/current/spark3-client/bin/spark-sql" ]; then
	SPARK3_AVAILABLE=1
fi

# If spark2-sql exists, always prefer Spark 2 (highest priority)
if [ $SPARK2_AVAILABLE -eq 1 ]; then
	if [ $SPARK3_AVAILABLE -eq 1 ]; then
		echo "Both Spark 2 and Spark 3 detected, preferring Spark 2 (spark2-sql found)"
	else
		echo "Spark 2 detected (spark2-sql found)"
	fi
	SPARK_VERSION_MAJOR=2
elif [ "X$SPARK_VERSION" != "X" ]; then
	# Extract major version from SPARK_VERSION env var (e.g., "2.4.0" -> "2", "3.2.0" -> "3")
	SPARK_VERSION_MAJOR=$(echo "$SPARK_VERSION" | cut -d. -f1)
	echo "Using Spark version from SPARK_VERSION environment variable: $SPARK_VERSION_MAJOR"
elif [ $SPARK3_AVAILABLE -eq 1 ]; then
	echo "Spark 3 detected (spark-sql found)"
	SPARK_VERSION_MAJOR=3
else
	echo "No spark-sql commands found, defaulting to Spark 3"
	SPARK_VERSION_MAJOR=3
fi

# Set event log directory based on Spark version
# Can be overridden with SPARK_EVENT_LOG_DIR environment variable
if [ "X$SPARK_EVENT_LOG_DIR" = "X" ]; then
	SPARK_EVENT_LOG_DIR="hdfs:///spark${SPARK_VERSION_MAJOR}-history"
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

# Spark SQL command with necessary configurations
# Use full path to spark-sql based on Spark version
# Spark 2: /usr/odp/current/spark2-client/bin/spark-sql
# Spark 3: /usr/odp/current/spark3-client/bin/spark-sql
# SPARK_VERSION_MAJOR is already set above with Spark 2 priority
if [ "$SPARK_VERSION_MAJOR" = "2" ]; then
	SPARK_SQL_CMD="/usr/odp/current/spark2-client/bin/spark-sql"
	SPARK_SQL="${SPARK_SQL_CMD} --conf spark.sql.warehouse.dir=/warehouse/tablespace/managed/hive"
	SPARK_SQL="${SPARK_SQL} --master yarn"
else
	SPARK_SQL_CMD="/usr/odp/current/spark3-client/bin/spark-sql"
	SPARK_SQL="${SPARK_SQL_CMD} --master yarn"
	SPARK_SQL="${SPARK_SQL} --deploy-mode client"
fi
SPARK_SQL="${SPARK_SQL} --conf spark.hadoop.hive.metastore.client.capability.check=false"
SPARK_SQL="${SPARK_SQL} --conf spark.eventLog.enabled=true"
SPARK_SQL="${SPARK_SQL} --conf spark.eventLog.dir=${SPARK_EVENT_LOG_DIR}"
SPARK_SQL="${SPARK_SQL} --conf spark.history.fs.logDirectory=${SPARK_EVENT_LOG_DIR}"

# Create the text/flat tables as external tables. These will be later be converted to ORCFile.
echo "Loading text data into external tables."
TEXT_DB=tpcds_text_${SCALE}

# Create database for text tables
runcommand "$SPARK_SQL -e \"CREATE DATABASE IF NOT EXISTS ${TEXT_DB};\""

# Load text tables - need to process the SQL files and replace variables
if [ -f "settings/load-flat.sql" ]; then
	# Process load-flat.sql if it exists
	TEMP_LOAD=$(mktemp)
	sed "s/\${DB}/${TEXT_DB}/g; s|\${LOCATION}|${DIR}/${SCALE}|g" settings/load-flat.sql > $TEMP_LOAD
	runcommand "$SPARK_SQL -f $TEMP_LOAD"
	rm -f $TEMP_LOAD
fi

# Process alltables.sql with variable substitution
if [ -f "ddl-tpcds/text/alltables.sql" ]; then
	TEMP_ALLTABLES=$(mktemp)
	sed "s/\${DB}/${TEXT_DB}/g; s|\${LOCATION}|${DIR}/${SCALE}|g" ddl-tpcds/text/alltables.sql > $TEMP_ALLTABLES
	runcommand "$SPARK_SQL -f $TEMP_ALLTABLES"
	rm -f $TEMP_ALLTABLES
fi

# Create the partitioned and bucketed tables.
# Database name format: tpcds_bin_partitioned_spark_{format}_{scale}
# For rcfile -> use "rcfile" in name but store as orc (to match existing convention)
# For orc -> use "orc" in name and store as orc
# For parquet -> use "parquet" in name and store as parquet
if [ "$FORMAT" = "parquet" ]; then
	DATABASE=tpcds_bin_partitioned_spark_parquet_${SCALE}
elif [ "$FORMAT" = "orc" ]; then
	DATABASE=tpcds_bin_partitioned_spark_orc_${SCALE}
else
	# rcfile format -> use rcfile in name but store as orc
	DATABASE=tpcds_bin_partitioned_spark_rcfile_${SCALE}
fi
MAX_REDUCERS=2500 # maximum number of useful reducers for any scale
REDUCERS=$((test ${SCALE} -gt ${MAX_REDUCERS} && echo ${MAX_REDUCERS}) || echo ${SCALE})

# Create the target database
runcommand "$SPARK_SQL -e \"CREATE DATABASE IF NOT EXISTS ${DATABASE};\""
runcommand "$SPARK_SQL -e \"USE ${DATABASE};\""

# Process load-partitioned.sql settings if it exists
LOAD_PARTITIONED_SETTINGS=""
if [ -f "settings/load-partitioned.sql" ]; then
	LOAD_PARTITIONED_SETTINGS="-i settings/load-partitioned.sql"
fi

# Populate the smaller tables (dimension tables).
i=1
total=24
for t in ${DIMS}
do
	echo "Optimizing table $t ($i/$total)."
	if [ -f "ddl-tpcds/bin_partitioned/${t}.sql" ]; then
		# Create temporary SQL file with variable substitution
		TEMP_SQL=$(mktemp)

		# Replace variables in the DDL file
		# Replace RCFILE with appropriate format for Spark compatibility
		if [ "$SPARK_FORMAT" = "parquet" ]; then
			sed "s/\${DB}/${DATABASE}/g; \
			     s/\${SOURCE}/${TEXT_DB}/g; \
			     s/\${SCALE}/${SCALE}/g; \
			     s/\${REDUCERS}/${REDUCERS}/g; \
			     s/\${FILE}/${SPARK_FORMAT}/g; \
			     s/STORED AS RCFILE/STORED AS PARQUET/g; \
			     s/STORED AS RCFile/STORED AS PARQUET/g" \
			     ddl-tpcds/bin_partitioned/${t}.sql > $TEMP_SQL
		else
			sed "s/\${DB}/${DATABASE}/g; \
			     s/\${SOURCE}/${TEXT_DB}/g; \
			     s/\${SCALE}/${SCALE}/g; \
			     s/\${REDUCERS}/${REDUCERS}/g; \
			     s/\${FILE}/${SPARK_FORMAT}/g; \
			     s/STORED AS RCFILE/STORED AS ORC/g; \
			     s/STORED AS RCFile/STORED AS ORC/g" \
			     ddl-tpcds/bin_partitioned/${t}.sql > $TEMP_SQL
		fi

		# Execute with Spark SQL
		runcommand "$SPARK_SQL -f $TEMP_SQL"
		rm -f $TEMP_SQL
	fi
	i=`expr $i + 1`
done

# Populate fact tables.
for t in ${FACTS}
do
	echo "Optimizing table $t ($i/$total)."
	if [ -f "ddl-tpcds/bin_partitioned/${t}.sql" ]; then
		# Create temporary SQL file with variable substitution
		TEMP_SQL=$(mktemp)

		# Replace variables in the DDL file
		# Replace RCFILE with appropriate format for Spark compatibility
		if [ "$SPARK_FORMAT" = "parquet" ]; then
			sed "s/\${DB}/${DATABASE}/g; \
			     s/\${SOURCE}/${TEXT_DB}/g; \
			     s/\${SCALE}/${SCALE}/g; \
			     s/\${BUCKETS}/${BUCKETS}/g; \
			     s/\${RETURN_BUCKETS}/${RETURN_BUCKETS}/g; \
			     s/\${REDUCERS}/${REDUCERS}/g; \
			     s/\${FILE}/${SPARK_FORMAT}/g; \
			     s/STORED AS RCFILE/STORED AS PARQUET/g; \
			     s/STORED AS RCFile/STORED AS PARQUET/g" \
			     ddl-tpcds/bin_partitioned/${t}.sql > $TEMP_SQL
		else
			sed "s/\${DB}/${DATABASE}/g; \
			     s/\${SOURCE}/${TEXT_DB}/g; \
			     s/\${SCALE}/${SCALE}/g; \
			     s/\${BUCKETS}/${BUCKETS}/g; \
			     s/\${RETURN_BUCKETS}/${RETURN_BUCKETS}/g; \
			     s/\${REDUCERS}/${REDUCERS}/g; \
			     s/\${FILE}/${SPARK_FORMAT}/g; \
			     s/STORED AS RCFILE/STORED AS ORC/g; \
			     s/STORED AS RCFile/STORED AS ORC/g" \
			     ddl-tpcds/bin_partitioned/${t}.sql > $TEMP_SQL
		fi

		# Execute with Spark SQL
		runcommand "$SPARK_SQL -f $TEMP_SQL"
		rm -f $TEMP_SQL
	fi
	i=`expr $i + 1`
done

# Load constraints
echo "Loading constraints"
if [ -f "ddl-tpcds/bin_partitioned/add_constraints.sql" ]; then
	TEMP_CONSTRAINTS=$(mktemp)
	sed "s/\${DB}/${DATABASE}/g" ddl-tpcds/bin_partitioned/sudo.sql > $TEMP_CONSTRAINTS
	runcommand "$SPARK_SQL -f $TEMP_CONSTRAINTS"
	rm -f $TEMP_CONSTRAINTS
fi

echo "Data loaded into database ${DATABASE}."
