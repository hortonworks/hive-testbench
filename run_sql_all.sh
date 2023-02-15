#!/bin/sh

TYPE_TEST=$1
BASE_DATA_STORE=$2
TYPE_RUNNER=$3

list_sql=($(ls ${TYPE_TEST} | grep sql))

for sql_file in "${list_sql[@]}"
do
   NUMBER=`echo ${sql_file}| awk -F '.' '{print $1}' | awk -F 'query' '{print $2}'`
   START_TIME=`date +%s`
   if [ "$TYPE_RUNNER" = "spark2" ]; then
       spark-sql --num-executors 90 --driver-memory 4g --executor-memory 4g --database ${BASE_DATA_STORE} -f ${TYPE_TEST}/${sql_file}
   elif [ "$TYPE_RUNNER" = "spark3" ]; then
       spark3-sql --num-executors 90 --driver-memory 4g --executor-memory 4g --database ${BASE_DATA_STORE} -f ${TYPE_TEST}/${sql_file}
   elif [ "$TYPE_RUNNER" = "hive" ]; then
       beeline -n hive -u "jdbc:hive2://localhost:10000/${BASE_DATA_STORE}" -f ${TYPE_TEST}/${sql_file}
   fi
   EXIT_STATUS=`echo $?`
   if [[ $EXIT_STATUS == 0 ]]; then
       EXIT_STATUS="OK"
   else
       EXIT_STATUS="ERROR"
   fi
   END_TIME=`date +%s`
   RUNTIME=$((END_TIME-START_TIME))

   echo \| ${TYPE_TEST} \| ${BASE_DATA_STORE} \| ${sql_file} \| ${NUMBER} \| ${RUNTIME} \| ${EXIT_STATUS}\| >> result_${TYPE_TEST}.txt
done
