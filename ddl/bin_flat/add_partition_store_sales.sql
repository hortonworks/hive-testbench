set hive.enforce.bucketing=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions.pernode=1000000;
set hive.exec.max.dynamic.partitions=1000000;
set hive.exec.max.created.files=1000000;
set hive.metstore.uris=;

create database if not exists ${DB};
use ${DB};

drop table if exists store_sales_part;

dfs -mv ${LOCATION} ${TMP_DIR}/part;

create external table store_sales_part
(
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
    ss_net_profit             float,
    ss_sold_date              string
)
row format serde '${SERDE}'
stored as ${FILE}
location '${TMP_DIR}';

insert into table store_sales partition(ss_sold_date)
select * from store_sales_part;

dfs -mv ${TMP_DIR}/part ${LOCATION};

drop table store_sales_part;
