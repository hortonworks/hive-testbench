set hive.map.aggr=true;
set mapreduce.reduce.speculative=false;
set hive.auto.convert.join=true;
set hive.optimize.reducededuplication.min.reducer=1;
set hive.optimize.mapjoin.mapreduce=true;
set hive.stats.autogather=true;

set mapred.reduce.parallel.copies=30;
-- set mapred.job.shuffle.input.buffer.percent=0.5;
-- set mapred.job.reduce.input.buffer.percent=0.2;
set mapred.map.child.java.opts=-server -Xmx2800m -Djava.net.preferIPv4Stack=true;
set mapred.reduce.child.java.opts=-server -Xmx3800m -Djava.net.preferIPv4Stack=true;
set mapreduce.map.memory.mb=3072;
set mapreduce.reduce.memory.mb=4096;
set hive.llap.memory.oversubscription.max.executors.per.query=8;
set hive.llap.mapjoin.memory.oversubscribe.factor=0.3;
set hive.auto.convert.join.hashtable.max.entries=-1;
set hive.optimize.bucketmapjoin=false;
set hive.convert.join.bucket.mapjoin.tez=false;
set hive.auto.convert.join.shuffle.max.size=10000000000;
set hive.tez.llap.min.reducer.per.executor=0.33;
set hive.map.aggr.hash.min.reduction=0.99;

set hive.optimize.sort.dynamic.partition.threshold=0;
