set hive.enforce.bucketing=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions.pernode=1000000;
set hive.exec.max.dynamic.partitions=1000000;
set hive.exec.max.created.files=1000000;
set hive.metstore.uris=;

create database if not exists ${DB};
use ${DB};

drop table if exists inventory_part;

dfs -mv ${LOCATION} ${TMP_DIR}/part;

create external table inventory_part
(
    inv_item_sk			int,
    inv_warehouse_sk		int,
    inv_quantity_on_hand	int,
    inv_date			string
)
row format serde '${SERDE}'
stored as ${FILE}
location '${TMP_DIR}';

insert into table inventory partition(inv_date)
select * from inventory_part;

dfs -mv ${TMP_DIR}/part ${LOCATION};

drop table inventory_part;
