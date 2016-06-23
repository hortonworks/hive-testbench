create database if not exists ${DB};
use ${DB};

drop table if exists inventory;

create table inventory
(
    inv_item_sk          bigint,
    inv_warehouse_sk		bigint,
    inv_quantity_on_hand	int
)
partitioned by (inv_date_sk bigint)
stored as ${FILE};

insert overwrite table inventory partition (inv_date_sk)
select
	i.inv_item_sk,
	i.inv_warehouse_sk,
	i.inv_quantity_on_hand,
	i.inv_date_sk
  from ${SOURCE}.inventory i;
