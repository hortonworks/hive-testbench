set hive.enforce.bucketing=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions.pernode=4096;
set mapred.job.reduce.input.buffer.percent=0.0;

create database if not exists ${DB};
use ${DB};

drop table if exists store_sales;

create table store_sales
(
    ss_sold_date_sk           int,
    ss_sold_time_sk           int,
    ss_item_sk                int,
    ss_customer_sk            int,
    ss_cdemo_sk               int,
    ss_hdemo_sk               int,
    ss_addr_sk                int,
    ss_store_sk               int,
    ss_promo_sk               int,
    ss_ticket_number          int,
    ss_quantity               int,
    ss_wholesale_cost         float,
    ss_list_price             float,
    ss_sales_price            float,
    ss_ext_discount_amt       float,
    ss_ext_sales_price        float,
    ss_ext_wholesale_cost     float,
    ss_ext_list_price         float,
    ss_ext_tax                float,
    ss_coupon_amt             float,
    ss_net_paid               float,
    ss_net_paid_inc_tax       float,
    ss_net_profit             float
)
partitioned by (ss_sold_date string)
clustered by (ss_item_sk) sorted by (ss_item_sk) into ${BUCKETS} buckets
row format serde '${SERDE}'
stored as ${FILE};

from (select
        /*+ MAPJOIN(dd) */
        ss.ss_sold_date_sk,
        ss.ss_sold_time_sk,
        ss.ss_item_sk,
        ss.ss_customer_sk,
        ss.ss_cdemo_sk,
        ss.ss_hdemo_sk,
        ss.ss_addr_sk,
        ss.ss_store_sk,
        ss.ss_promo_sk,
        ss.ss_ticket_number,
        ss.ss_quantity,
        ss.ss_wholesale_cost,
        ss.ss_list_price,
        ss.ss_sales_price,
        ss.ss_ext_discount_amt,
        ss.ss_ext_sales_price,
        ss.ss_ext_wholesale_cost,
        ss.ss_ext_list_price,
        ss.ss_ext_tax,
        ss.ss_coupon_amt,
        ss.ss_net_paid,
        ss.ss_net_paid_inc_tax,
        ss.ss_net_profit,
        dd.d_date as ss_sold_date
      from ${SOURCE}.store_sales ss
      left outer join ${SOURCE}.date_dim dd
      on (ss.ss_sold_date_sk = dd.d_date_sk)) tbl
insert overwrite table store_sales partition (ss_sold_date) 
  select * where month(ss_sold_date) =  1
insert overwrite table store_sales partition (ss_sold_date)
  select * where month(ss_sold_date) = 2
insert overwrite table store_sales partition (ss_sold_date)
  select * where month(ss_sold_date) = 3
insert overwrite table store_sales partition (ss_sold_date)
  select * where month(ss_sold_date) = 4
insert overwrite table store_sales partition (ss_sold_date)
  select * where month(ss_sold_date) = 5
insert overwrite table store_sales partition (ss_sold_date)
  select * where month(ss_sold_date) = 6
insert overwrite table store_sales partition (ss_sold_date)
  select * where month(ss_sold_date) = 7
insert overwrite table store_sales partition (ss_sold_date)
  select * where month(ss_sold_date) = 8
insert overwrite table store_sales partition (ss_sold_date)
  select * where month(ss_sold_date) = 9
insert overwrite table store_sales partition (ss_sold_date)
  select * where month(ss_sold_date) = 10
insert overwrite table store_sales partition (ss_sold_date)
  select * where month(ss_sold_date) = 11
insert overwrite table store_sales partition (ss_sold_date)
  select * where month(ss_sold_date) = 12
;
