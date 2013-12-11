create database if not exists ${DB};
use ${DB};

drop table if exists web_sales;

create external table web_sales
(
    ws_sold_date_sk           int,
    ws_sold_time_sk           int,
    ws_ship_date_sk           int,
    ws_item_sk                int,
    ws_bill_customer_sk       int,
    ws_bill_cdemo_sk          int,
    ws_bill_hdemo_sk          int,
    ws_bill_addr_sk           int,
    ws_ship_customer_sk       int,
    ws_ship_cdemo_sk          int,
    ws_ship_hdemo_sk          int,
    ws_ship_addr_sk           int,
    ws_web_page_sk            int,
    ws_web_site_sk            int,
    ws_ship_mode_sk           int,
    ws_warehouse_sk           int,
    ws_promo_sk               int,
    ws_order_number           int,
    ws_quantity               int,
    ws_wholesale_cost         float,
    ws_list_price             float,
    ws_sales_price            float,
    ws_ext_discount_amt       float,
    ws_ext_sales_price        float,
    ws_ext_wholesale_cost     float,
    ws_ext_list_price         float,
    ws_ext_tax                float,
    ws_coupon_amt             float,
    ws_ext_ship_cost          float,
    ws_net_paid               float,
    ws_net_paid_inc_tax       float,
    ws_net_paid_inc_ship      float,
    ws_net_paid_inc_ship_tax  float,
    ws_net_profit             float
)
row format delimited fields terminated by '|' 
location '${LOCATION}';
