-- set hive.enforce.bucketing=true;
-- set hive.enforce.sorting=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions.pernode=100000;
set hive.exec.max.dynamic.partitions=100000;
set hive.exec.max.created.files=1000000;
set hive.exec.parallel=true;
set hive.exec.reducers.max=${REDUCERS};
set hive.stats.autogather=true;
set hive.optimize.sort.dynamic.partition=true;

-- set mapred.job.reduce.input.buffer.percent=0.0;
-- set mapreduce.input.fileinputformat.split.minsize=240000000;
-- set mapreduce.input.fileinputformat.split.minsize.per.node=240000000;
-- set mapreduce.input.fileinputformat.split.minsize.per.rack=240000000;
set hive.optimize.sort.dynamic.partition=true;
-- set hive.tez.java.opts=-XX:+PrintGCDetails -verbose:gc -XX:+PrintGCTimeStamps -XX:+UseNUMA -XX:+UseG1GC -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/tmp/;

set tez.runtime.empty.partitions.info-via-events.enabled=true;
set tez.runtime.report.partition.stats=true;
-- fewer files for the NULL partition
set hive.tez.auto.reducer.parallelism=true;
set hive.tez.min.partition.factor=0.01; 

-- set mapred.map.child.java.opts=-server -Xmx2800m -Djava.net.preferIPv4Stack=true;
-- set mapred.reduce.child.java.opts=-server -Xms1024m -Xmx3800m -Djava.net.preferIPv4Stack=true;
-- set mapreduce.map.memory.mb=3072;
-- set mapreduce.reduce.memory.mb=4096;
-- set io.sort.mb=800;

set hive.optimize.sort.dynamic.partition.threshold=0;
