set hive.enforce.bucketing=true;
set hive.enforce.sorting=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.created.files=4096;
set hive.exec.max.dynamic.partitions.pernode=4096;
set mapred.job.reduce.input.buffer.percent=0.0;
set mapred.child.java.opts=-server -Xmx6000m -Djava.net.preferIPv4Stack=true;

create database if not exists ${DB};
use ${DB};

drop table if exists inventory;

create table inventory
(
    inv_date_sk         int,
    inv_item_sk          int,
    inv_warehouse_sk		int,
    inv_quantity_on_hand	int
)
partitioned by (inv_date string)
row format serde '${SERDE}'
stored as ${FILE};
