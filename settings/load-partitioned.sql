set hive.enforce.bucketing=true;
set hive.enforce.sorting=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions.pernode=1000000;
set hive.exec.max.dynamic.partitions=1000000;
set hive.exec.max.created.files=1000000;

set mapred.min.split.size=240000000;
set mapred.max.split.size=240000000;
set mapred.min.split.size.per.node=240000000;
set mapred.min.split.size.per.rack=240000000;
set hive.exec.parallel=true;
set hive.stats.autogather=false;

set mapred.map.child.java.opts=-server -Xmx2248m -Djava.net.preferIPv4Stack=true;
set mapred.reduce.child.java.opts=-server -Xms1024m -Xmx9000m -Djava.net.preferIPv4Stack=true;
set mapreduce.map.memory.mb=3072;
set mapreduce.reduce.memory.mb=12288;
set io.sort.mb=800;
set hive.optimize.tez=false;
