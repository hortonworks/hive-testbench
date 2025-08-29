update s_catalog_order_m set cord_order_date = '' where cord_order_date='-4713-11-2';
update s_catalog_order_lineitem_m set clin_ship_date = '' where clin_ship_date='-4713-11-2';

drop table csv;
create table csv as
select d1.d_date_sk cs_sold_date_sk 
      ,t_time_sk cs_sold_time_sk 
      ,d2.d_date_sk cs_ship_date_sk
      ,c1.c_customer_sk cs_bill_customer_sk
      ,c1.c_current_cdemo_sk cs_bill_cdemo_sk 
      ,c1.c_current_hdemo_sk cs_bill_hdemo_sk
      ,c1.c_current_addr_sk cs_bill_addr_sk
      ,c2.c_customer_sk cs_ship_customer_sk
      ,c2.c_current_cdemo_sk cs_ship_cdemo_sk
      ,c2.c_current_hdemo_sk cs_ship_hdemo_sk
      ,c2.c_current_addr_sk cs_ship_addr_sk
      ,cc_call_center_sk cs_call_center
      ,cp_catalog_page_sk cs_catalog_page_sk
      ,sm_ship_mode_sk cs_ship_mode_sk
      ,w_warehouse_sk cs_warehouse_sk
      ,i_item_sk cs_item_sk
      ,p_promo_sk cs_promo_sk
      ,cord_order_id cs_order_number
      ,clin_quantity cs_quantity
      ,i_wholesale_cost cs_wholesale_cost
      ,i_current_price cs_list_price
      ,clin_sales_price cs_sales_price
      ,(i_current_price-clin_sales_price)*clin_quantity cs_ext_discount_amt
      ,clin_sales_price * clin_quantity cs_ext_sales_price
      ,i_wholesale_cost * clin_quantity cs_ext_wholesale_cost 
      ,i_current_price * clin_quantity CS_EXT_LIST_PRICE
      ,i_current_price * cc_tax_percentage CS_EXT_TAX
      ,clin_coupon_amt cs_coupon_amt
      ,clin_ship_cost * clin_quantity CS_EXT_SHIP_COST
      ,(clin_sales_price * clin_quantity)-clin_coupon_amt cs_net_paid
      ,((clin_sales_price * clin_quantity)-clin_coupon_amt)*(1+cc_tax_percentage) cs_net_paid_inc_tax
      ,(clin_sales_price * clin_quantity)-clin_coupon_amt + (clin_ship_cost * clin_quantity) CS_NET_PAID_INC_SHIP
      ,(clin_sales_price * clin_quantity)-clin_coupon_amt + (clin_ship_cost * clin_quantity) 
       + i_current_price * cc_tax_percentage CS_NET_PAID_INC_SHIP_TAX
      ,((clin_sales_price * clin_quantity)-clin_coupon_amt)-(clin_quantity*i_wholesale_cost) cs_net_profit
from    s_catalog_order_m left outer join date_dim d1 on (to_date(cord_order_date,'YYYY-MM-DD') = d1.d_date)
                          left outer join time_dim on (cord_order_time = t_time)
                          left outer join customer c1 on (cord_bill_customer_id = c1.c_customer_id)
                          left outer join customer c2 on (cord_ship_customer_id = c2.c_customer_id)
                          left outer join call_center on (cord_call_center_id = cc_call_center_id)
                          left outer join ship_mode on (cord_ship_mode_id = sm_ship_mode_id), 
        s_catalog_order_lineitem_m
                          left outer join date_dim d2 on (to_date(clin_ship_date,'YYYY-MM-DD') = d2.d_date)
                          left outer join catalog_page on (clin_catalog_page_number = cp_catalog_page_number and
                                                           clin_catalog_number = cp_catalog_number)
                          left outer join warehouse on (clin_warehouse_id = w_warehouse_id)
                          left outer join item on (clin_item_id = i_item_id)
                          left outer join promotion on (clin_promotion_id = p_promo_id)
where   cord_order_id = clin_order_id
    and i_rec_end_date is NULL 
    and cc_rec_end_date is null;
select count(*) from csv where cs_item_sk is null;
select count(*) from s_catalog_order_m,s_catalog_order_lineitem_m where cord_order_id = clin_order_id;
select count(*) from csv;
