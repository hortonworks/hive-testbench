create database if not exists ${DB};
use ${DB};

drop table if exists web_returns;

create table web_returns
(
      ws_sold_time_sk bigint
,     ws_ship_date_sk bigint
,     ws_item_sk bigint
,     ws_bill_customer_sk bigint
,     ws_bill_cdemo_sk bigint
,     ws_bill_hdemo_sk bigint
,     ws_bill_addr_sk bigint
,     ws_ship_customer_sk bigint
,     ws_ship_cdemo_sk bigint
,     ws_ship_hdemo_sk bigint
,     ws_ship_addr_sk bigint
,     ws_web_page_sk bigint
,     ws_web_site_sk bigint
,     ws_ship_mode_sk bigint
,     ws_warehouse_sk bigint
,     ws_promo_sk bigint
,     ws_order_number bigint
,     ws_quantity int
,     ws_wholesale_cost decimal(7,2)
,     ws_list_price decimal(7,2)
,     ws_sales_price decimal(7,2)
,     ws_ext_discount_amt decimal(7,2)
,     ws_ext_sales_price decimal(7,2)
,     ws_ext_wholesale_cost decimal(7,2)
,     ws_ext_list_price decimal(7,2)
,     ws_ext_tax decimal(7,2)
,     ws_coupon_amt decimal(7,2)
,     ws_ext_ship_cost decimal(7,2)
,     ws_net_paid decimal(7,2)
,     ws_net_paid_inc_tax decimal(7,2)
,     ws_net_paid_inc_ship decimal(7,2)
,     ws_net_paid_inc_ship_tax decimal(7,2)
,     ws_net_profit decimal(7,2)
)
partitioned by (wr_returned_date_sk       bigint)
stored as ${FILE};

from ${SOURCE}.web_returns wr
insert overwrite table web_returns partition (wr_returned_date_sk)
select
        wr.wr_returned_time_sk,
        wr.wr_item_sk,
        wr.wr_refunded_customer_sk,
        wr.wr_refunded_cdemo_sk,
        wr.wr_refunded_hdemo_sk,
        wr.wr_refunded_addr_sk,
        wr.wr_returning_customer_sk,
        wr.wr_returning_cdemo_sk,
        wr.wr_returning_hdemo_sk,
        wr.wr_returning_addr_sk,
        wr.wr_web_page_sk,
        wr.wr_reason_sk,
        wr.wr_order_number,
        wr.wr_return_quantity,
        wr.wr_return_amt,
        wr.wr_return_tax,
        wr.wr_return_amt_inc_tax,
        wr.wr_fee,
        wr.wr_return_ship_cost,
        wr.wr_refunded_cash,
        wr.wr_reversed_charge,
        wr.wr_account_credit,
        wr.wr_net_loss,
		wr.wr_returned_date_sk
        where wr.wr_returned_date_sk is not null
insert overwrite table web_returns partition (wr_returned_date_sk)
select
        wr.wr_returned_time_sk,
        wr.wr_item_sk,
        wr.wr_refunded_customer_sk,
        wr.wr_refunded_cdemo_sk,
        wr.wr_refunded_hdemo_sk,
        wr.wr_refunded_addr_sk,
        wr.wr_returning_customer_sk,
        wr.wr_returning_cdemo_sk,
        wr.wr_returning_hdemo_sk,
        wr.wr_returning_addr_sk,
        wr.wr_web_page_sk,
        wr.wr_reason_sk,
        wr.wr_order_number,
        wr.wr_return_quantity,
        wr.wr_return_amt,
        wr.wr_return_tax,
        wr.wr_return_amt_inc_tax,
        wr.wr_fee,
        wr.wr_return_ship_cost,
        wr.wr_refunded_cash,
        wr.wr_reversed_charge,
        wr.wr_account_credit,
        wr.wr_net_loss,
		wr.wr_returned_date_sk
        where wr.wr_returned_date_sk is null
        sort by wr.wr_returned_date_sk 
;
