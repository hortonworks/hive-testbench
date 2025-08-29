drop table srv;
create table srv as
select d_date_sk sr_returned_date_sk
      ,t_time_sk sr_return_time_sk
      ,i_item_sk sr_item_sk
      ,c_customer_sk sr_customer_sk
      ,c_current_cdemo_sk sr_cdemo_sk
      ,c_current_hdemo_sk sr_hdemo_sk
      ,c_current_addr_sk sr_addr_sk
      ,s_store_sk sr_store_sk
      ,r_reason_sk sr_reason_sk
      ,sret_ticket_number sr_ticket_number
      ,sret_return_qty sr_return_quantity
      ,sret_return_amount sr_return_amt
      ,sret_return_tax sr_return_tax
      ,sret_return_amount + sret_return_tax sr_return_amt_inc_tax
      ,sret_return_fee sr_fee
      ,sret_return_ship_cost sr_return_ship_cost
      ,sret_refunded_cash sr_refunded_cash
      ,sret_reversed_charge sr_reversed_charde
      ,sret_store_credit sr_store_credit
      ,sret_return_amount+sret_return_tax+sret_return_fee
       -sret_refunded_cash-sret_reversed_charge-sret_store_credit sr_net_loss
from s_store_returns_m left outer join date_dim on (sret_return_date = d_date)
                       left outer join time_dim on (( cast(substr(sret_return_time,1,2) as integer)*3600
                                                     +cast(substr(sret_return_time,4,2) as integer)*60
                                                     +cast(substr(sret_return_time,7,2) as integer)) = t_time)
                     left outer join item on (sret_item_id = i_item_id)
                     left outer join customer on (sret_customer_id = c_customer_id)
                     left outer join store on (sret_store_id = s_store_id)
                     left outer join reason on (sret_reason_id = r_reason_id)
where i_rec_end_date is NULL
  and s_rec_end_date is NULL;
select count(*) from srv where sr_item_sk is null;
select count(*) from s_store_returns_m;
select count(*) from srv;
