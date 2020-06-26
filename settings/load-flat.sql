--set hive.enforce.bucketing=true;
--set hive.enforce.sorting=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions.pernode=1000000;
set hive.exec.max.dynamic.partitions=1000000;
set hive.exec.max.created.files=1000000;

-- set mapreduce.input.fileinputformat.split.minsize=240000000;
-- set mapreduce.input.fileinputformat.split.maxsize=240000000;
-- set mapreduce.input.fileinputformat.split.minsize.per.node=240000000;
-- set mapreduce.input.fileinputformat.split.minsize.per.rack=240000000;
--set hive.exec.parallel=true;
set hive.stats.autogather=true;
-- set hive.support.concurrency=false;
-- set hive.txn.manager=org.apache.hadoop.hive.ql.lockmgr.DummyTxnManager;

set hive.optimize.sort.dynamic.partition.threshold=0;
