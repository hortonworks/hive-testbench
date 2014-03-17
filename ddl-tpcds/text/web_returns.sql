create database if not exists ${DB};
use ${DB};

drop table if exists web_returns;

create external table web_returns
(
    wr_returned_date_sk       int,
    wr_returned_time_sk       int,
    wr_item_sk                int,
    wr_refunded_customer_sk   int,
    wr_refunded_cdemo_sk      int,
    wr_refunded_hdemo_sk      int,
    wr_refunded_addr_sk       int,
    wr_returning_customer_sk  int,
    wr_returning_cdemo_sk     int,
    wr_returning_hdemo_sk     int,
    wr_returning_addr_sk      int,
    wr_web_page_sk            int,
    wr_reason_sk              int,
    wr_order_number           int,
    wr_return_quantity        int,
    wr_return_amt             float,
    wr_return_tax             float,
    wr_return_amt_inc_tax     float,
    wr_fee                    float,
    wr_return_ship_cost       float,
    wr_refunded_cash          float,
    wr_reversed_charge        float,
    wr_account_credit         float,
    wr_net_loss               float
)
row format delimited fields terminated by '|' 
location '${LOCATION}';
