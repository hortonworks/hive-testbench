create database if not exists ${DB};
use ${DB};

drop table if exists catalog_returns;

create external table catalog_returns
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
row format delimited fields terminated by '|' 
location '${LOCATION}';
