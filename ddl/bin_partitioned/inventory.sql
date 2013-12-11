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
clustered by (inv_item_sk) sorted by (inv_item_sk) into ${BUCKETS} buckets
row format serde '${SERDE}'
stored as ${FILE};

from (select
  i.inv_date_sk,
  i.inv_item_sk,
  i.inv_warehouse_sk,
  i.inv_quantity_on_hand,
  d.d_date as inv_date
  from ${SOURCE}.inventory i
  left outer join ${SOURCE}.date_dim d
  on (d.d_date_sk = i.inv_date_sk)) tbl
insert overwrite table inventory partition (inv_date)
  select * where inv_date >= '1998' and inv_date < '1998-07'
insert overwrite table inventory partition (inv_date)
  select * where inv_date >= '1998-07' and inv_date < '1999'
insert overwrite table inventory partition (inv_date)
  select * where inv_date >= '1999' and inv_date < '1999-07'
insert overwrite table inventory partition (inv_date)
  select * where inv_date >= '1999-07' and inv_date < '2000'
insert overwrite table inventory partition (inv_date)
  select * where inv_date >= '2000' and inv_date < '2000-07'
insert overwrite table inventory partition (inv_date)
  select * where inv_date >= '2000-07' and inv_date < '2001'
insert overwrite table inventory partition (inv_date)
  select * where inv_date >= '2001' and inv_date < '2001-07'
insert overwrite table inventory partition (inv_date)
  select * where inv_date >= '2001-07' and inv_date < '2002'
insert overwrite table inventory partition (inv_date)
  select * where inv_date >= '2002' and inv_date < '2002-07'
insert overwrite table inventory partition (inv_date)
  select * where inv_date >= '2002-07' and inv_date < '2003';

