update s_web_returns_m set wret_return_date = null where wret_return_date like '%-47%';
drop table wrv;
create table wrv as
select d_date_sk wr_return_date_sk
      ,t_time_sk wr_return_time_sk
      ,i_item_sk wr_item_sk
      ,c1.c_customer_sk wr_refunded_customer_sk
      ,c1.c_current_cdemo_sk wr_refunded_cdemo_sk
      ,c1.c_current_hdemo_sk wr_refunded_hdemo_sk
      ,c1.c_current_addr_sk wr_refunded_addr_sk
      ,c2.c_customer_sk wr_returning_customer_sk
      ,c2.c_current_cdemo_sk wr_returning_cdemo_sk
      ,c2.c_current_hdemo_sk wr_returning_hdemo_sk
      ,c2.c_current_addr_sk wr_returing_addr_sk
      ,wp_web_page_sk wr_web_page_sk 
      ,r_reason_sk wr_reason_sk
      ,wret_order_id wr_order_number
      ,wret_return_qty wr_return_quantity
      ,wret_return_amt wr_return_amt
      ,wret_return_tax wr_return_tax
      ,wret_return_amt + wret_return_tax as wr_return_amt_inc_tax
      ,wret_return_fee wr_fee
      ,wret_return_ship_cost wr_return_ship_cost
      ,wret_refunded_cash wr_refunded_cash
      ,wret_reversed_charge wr_reversed_charde
      ,wret_account_credit wr_account_credit
      ,wret_return_amt+wret_return_tax+wret_return_fee
       -wret_refunded_cash-wret_reversed_charge-wret_account_credit wr_net_loss
from s_web_returns_m left outer join date_dim on (to_date(wret_return_date,'YYYY-MM-DD') = d_date)
                   left outer join time_dim on (( cast(substr(wret_return_time,1,2) as integer)*3600
                                                 +cast(substr(wret_return_time,4,2) as integer)*60
                                                 +cast(substr(wret_return_time,7,2) as integer)) = t_time)
                   left outer join item on (wret_item_id = i_item_id)
                   left outer join customer c1 on (wret_return_customer_id = c1.c_customer_id)
                   left outer join customer c2 on (wret_refund_customer_id = c2.c_customer_id)
                   left outer join reason on (wret_reason_id = r_reason_id)
                   left outer join web_page on (wret_web_page_id = WP_WEB_PAGE_id)
where i_rec_end_date is NULL
  and wp_rec_end_date is NULL;
select count(*) from wrv where wr_item_sk is null;
select count(*) from s_web_returns_m;
select count(*) from wrv;
