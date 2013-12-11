set hive.enforce.bucketing=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions.pernode=4096;
set mapred.job.reduce.input.buffer.percent=0.0;

create database if not exists ${DB};
use ${DB};

drop table if exists catalog_returns;

create table catalog_returns
(
    cr_returned_date_sk       int,
    cr_returned_time_sk       int,
    cr_item_sk                int,
    cr_refunded_customer_sk   int,
    cr_refunded_cdemo_sk      int,
    cr_refunded_hdemo_sk      int,
    cr_refunded_addr_sk       int,
    cr_returning_customer_sk  int,
    cr_returning_cdemo_sk     int,
    cr_returning_hdemo_sk     int,
    cr_returning_addr_sk      int,
    cr_call_center_sk         int,
    cr_catalog_page_sk        int,
    cr_ship_mode_sk           int,
    cr_warehouse_sk           int,
    cr_reason_sk              int,
    cr_order_number           int,
    cr_return_quantity        int,
    cr_return_amount          float,
    cr_return_tax             float,
    cr_return_amt_inc_tax     float,
    cr_fee                    float,
    cr_return_ship_cost       float,
    cr_refunded_cash          float,
    cr_reversed_charge        float,
    cr_store_credit           float,
    cr_net_loss               float
)
partitioned by (cr_returned_date string)
clustered by (cr_item_sk) sorted by (cr_item_sk) into ${RETURN_BUCKETS} buckets
row format serde '${SERDE}'
stored as ${FILE};

from (select
        /*+ MAPJOIN(dd) */
        cr.cr_returned_date_sk,
        cr.cr_returned_time_sk,
        cr.cr_item_sk,
        cr.cr_refunded_customer_sk,
        cr.cr_refunded_cdemo_sk,
        cr.cr_refunded_hdemo_sk,
        cr.cr_refunded_addr_sk,
        cr.cr_returning_customer_sk,
        cr.cr_returning_cdemo_sk,
        cr.cr_returning_hdemo_sk,
        cr.cr_returning_addr_sk,
        cr.cr_call_center_sk,
        cr.cr_catalog_page_sk,
        cr.cr_ship_mode_sk,
        cr.cr_warehouse_sk,
        cr.cr_reason_sk,
        cr.cr_order_number,
        cr.cr_return_quantity,
        cr.cr_return_amount,
        cr.cr_return_tax,
        cr.cr_return_amt_inc_tax,
        cr.cr_fee,
        cr.cr_return_ship_cost,
        cr.cr_refunded_cash,
        cr.cr_reversed_charge,
        cr.cr_store_credit,
        cr.cr_net_loss,
        dd.d_date as cr_returned_date
      from ${SOURCE}.catalog_returns cr
      left outer join ${SOURCE}.date_dim dd
      on (cr.cr_returned_date_sk = dd.d_date_sk)) tbl
insert overwrite table catalog_returns partition (cr_returned_date) 
  select * where month(cr_returned_date) = 1
insert overwrite table catalog_returns partition (cr_returned_date) 
  select * where month(cr_returned_date) = 2
insert overwrite table catalog_returns partition (cr_returned_date) 
  select * where month(cr_returned_date) = 3
insert overwrite table catalog_returns partition (cr_returned_date) 
  select * where month(cr_returned_date) = 4
insert overwrite table catalog_returns partition (cr_returned_date) 
  select * where month(cr_returned_date) = 5
insert overwrite table catalog_returns partition (cr_returned_date) 
  select * where month(cr_returned_date) = 6
insert overwrite table catalog_returns partition (cr_returned_date) 
  select * where month(cr_returned_date) = 7
insert overwrite table catalog_returns partition (cr_returned_date) 
  select * where month(cr_returned_date) = 8
insert overwrite table catalog_returns partition (cr_returned_date) 
  select * where month(cr_returned_date) = 9
insert overwrite table catalog_returns partition (cr_returned_date) 
  select * where month(cr_returned_date) = 10
insert overwrite table catalog_returns partition (cr_returned_date) 
  select * where month(cr_returned_date) = 11
insert overwrite table catalog_returns partition (cr_returned_date) 
  select * where month(cr_returned_date) = 12
;
