create database if not exists ${DB};
use ${DB};

drop table if exists web_returns;

create table web_returns
(
    wr_returned_time_sk       bigint,
    wr_item_sk                bigint,
    wr_refunded_customer_sk   bigint,
    wr_refunded_cdemo_sk      bigint,
    wr_refunded_hdemo_sk      bigint,
    wr_refunded_addr_sk       bigint,
    wr_returning_customer_sk  bigint,
    wr_returning_cdemo_sk     bigint,
    wr_returning_hdemo_sk     bigint,
    wr_returning_addr_sk      bigint,
    wr_web_page_sk            bigint,
    wr_reason_sk              bigint,
    wr_order_number           bigint,
    wr_return_quantity        bigint,
    wr_return_amt             decimal(7,2),
    wr_return_tax             decimal(7,2),
    wr_return_amt_inc_tax     decimal(7,2),
    wr_fee                    decimal(7,2),
    wr_return_ship_cost       decimal(7,2),
    wr_refunded_cash          decimal(7,2),
    wr_reversed_charge        decimal(7,2),
    wr_account_credit         decimal(7,2),
    wr_net_loss               decimal(7,2)
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
