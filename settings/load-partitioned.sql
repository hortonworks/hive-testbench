set hive.enforce.bucketing=true;
set hive.enforce.sorting=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions.pernode=10000;
set hive.exec.max.dynamic.partitions=10000;
set hive.exec.max.created.files=1000000;
set hive.exec.parallel=true;
set hive.exec.reducers.max=2000;
set hive.stats.autogather=true;

set mapred.job.reduce.input.buffer.percent=0.0;
set mapred.min.split.size=240000000;
set mapred.min.split.size.per.node=240000000;
set mapred.min.split.size.per.rack=240000000;

set mapred.map.child.java.opts=-server -Xmx2500m -Djava.net.preferIPv4Stack=true;
set mapred.reduce.child.java.opts=-server -Xms1024m -Xmx7900m -Djava.net.preferIPv4Stack=true;
set mapreduce.map.memory.mb=3072;
set mapreduce.reduce.memory.mb=8192;

set io.sort.mb=800;

set hive.optimize.tez=false;
