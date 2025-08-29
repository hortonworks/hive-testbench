drop table crv;
--update call_center set CC_REC_END_date = null where CC_CALL_CENTER_SK in (3,6);
update s_catalog_returns_m set cret_return_date = null where cret_return_date like '%-47%';
create table crv as
select d_date_sk cr_return_date_sk
      ,t_time_sk cr_return_time_sk
      ,0 CR_SHIP_DATE_SK
      ,i_item_sk cr_item_sk
      ,c1.c_customer_sk cr_refunded_customer_sk
      ,c1.c_current_cdemo_sk cr_refunded_cdemo_sk
      ,c1.c_current_hdemo_sk cr_refunded_hdemo_sk
      ,c1.c_current_addr_sk cr_refunded_addr_sk
      ,c2.c_customer_sk cr_returning_customer_sk
      ,c2.c_current_cdemo_sk cr_returning_cdemo_sk
      ,c2.c_current_hdemo_sk cr_returning_hdemo_sk
      ,c2.c_current_addr_sk cr_returing_addr_sk
      ,cc_call_center_sk cr_call_center_sk
      ,0 CR_CATALOG_PAGE_SK
      ,0 CR_SHIP_MODE_SK
      ,0 CR_WAREHOUSE_SK
      ,r_reason_sk cr_reason_sk
      ,cret_order_id cr_order_number
      ,cret_return_qty cr_return_quantity
      ,cret_return_amt cr_return_amt
      ,cret_return_tax cr_return_tax
      ,cret_return_amt + cret_return_tax as cr_return_amt_inc_tax
      ,cret_return_fee cr_fee
      ,cret_return_ship_cost cr_return_ship_cost
      ,cret_refunded_cash cr_refunded_cash
      ,cret_reversed_charge cr_reversed_charde
      ,cret_merchant_credit cr_merchant_credit
      ,cret_return_amt+cret_return_tax+cret_return_fee
         -cret_refunded_cash-cret_reversed_charge-cret_merchant_credit cr_net_loss
from s_catalog_returns_m left outer join date_dim on (to_date(cret_return_date,'YYYY-MM-DD') = d_date)
                       left outer join time_dim on (( cast(substr(cret_return_time,1,2) as integer)*3600
                                                     +cast(substr(cret_return_time,4,2) as integer)*60
                                                     +cast(substr(cret_return_time,7,2) as integer)) = t_time)
                       left outer join item on (cret_item_id = i_item_id)
                       left outer join customer c1 on (cret_return_customer_id = c1.c_customer_id)
                       left outer join customer c2 on (cret_refund_customer = c2.c_customer_id)
                       left outer join reason on (cret_reason_id = r_reason_id)
                       left outer join call_center on (cret_call_center_id = cc_call_center_id)
where i_rec_end_date is NULL
  and cc_rec_end_date is NULL;
select count(*) from s_catalog_returns_m;
select count(*) from crv;
