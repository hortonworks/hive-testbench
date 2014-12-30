create database if not exists ${DB};
use ${DB};

drop table if exists web_sales;

create table web_sales
(
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
partitioned by (ws_sold_date_sk           int)
stored as ${FILE};

insert overwrite table web_sales partition (ws_sold_date_sk) 
select
        ws.ws_sold_time_sk,
        ws.ws_ship_date_sk,
        ws.ws_item_sk,
        ws.ws_bill_customer_sk,
        ws.ws_bill_cdemo_sk,
        ws.ws_bill_hdemo_sk,
        ws.ws_bill_addr_sk,
        ws.ws_ship_customer_sk,
        ws.ws_ship_cdemo_sk,
        ws.ws_ship_hdemo_sk,
        ws.ws_ship_addr_sk,
        ws.ws_web_page_sk,
        ws.ws_web_site_sk,
        ws.ws_ship_mode_sk,
        ws.ws_warehouse_sk,
        ws.ws_promo_sk,
        ws.ws_order_number,
        ws.ws_quantity,
        ws.ws_wholesale_cost,
        ws.ws_list_price,
        ws.ws_sales_price,
        ws.ws_ext_discount_amt,
        ws.ws_ext_sales_price,
        ws.ws_ext_wholesale_cost,
        ws.ws_ext_list_price,
        ws.ws_ext_tax,
        ws.ws_coupon_amt,
        ws.ws_ext_ship_cost,
        ws.ws_net_paid,
        ws.ws_net_paid_inc_tax,
        ws.ws_net_paid_inc_ship,
        ws.ws_net_paid_inc_ship_tax,
        ws.ws_net_profit,
        ws.ws_sold_date_sk
      from ${SOURCE}.web_sales ws;
