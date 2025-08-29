update s_web_order_m set word_order_date = null where word_order_date like '%-47%';
update s_web_order_lineitem_m set wlin_ship_date = null where wlin_ship_date like '%-47%';
drop table wsv;
create table wsv as
select  d1.d_date_sk ws_sold_date_sk, 
        t_time_sk ws_sold_time_sk, 
        d2.d_date_sk ws_ship_date_sk,
        i_item_sk ws_item_sk, 
        c1.c_customer_sk ws_bill_customer_sk, 
        c1.c_current_cdemo_sk ws_bill_cdemo_sk, 
        c1.c_current_hdemo_sk ws_bill_hdemo_sk,
        c1.c_current_addr_sk ws_bill_addr_sk,
        c2.c_customer_sk ws_ship_customer_sk,
        c2.c_current_cdemo_sk ws_ship_cdemo_sk,
        c2.c_current_hdemo_sk ws_ship_hdemo_sk,
        c2.c_current_addr_sk ws_ship_addr_sk,
        web_site_sk ws_web_page_sk,
        wp_web_page_sk ws_web_site_s,
        sm_ship_mode_sk ws_ship_mode_sk,
        w_warehouse_sk ws_warehouse_sk,
        p_promo_sk ws_promo_sk,
        word_order_id ws_order_number, 
        wlin_quantity ws_quantity, 
        i_wholesale_cost ws_wholesale_cost, 
        i_current_price ws_list_price,
        wlin_sales_price ws_sales_price,
        (i_current_price-wlin_sales_price)*wlin_quantity ws_ext_discount_amt,
        wlin_sales_price * wlin_quantity ws_ext_sales_price,
        i_wholesale_cost * wlin_quantity ws_ext_wholesale_cost, 
        i_current_price * wlin_quantity ws_ext_list_price, 
        i_current_price * web_tax_percentage ws_ext_tax,  
        wlin_coupon_amt ws_coupon_amt,
        0 WS_EXT_SHIP_COST,
        (wlin_sales_price * wlin_quantity)-wlin_coupon_amt ws_net_paid,
        ((wlin_sales_price * wlin_quantity)-wlin_coupon_amt)*(1+web_tax_percentage) ws_net_paid_inc_tax,
        ((wlin_sales_price * wlin_quantity)-wlin_coupon_amt)-(wlin_quantity*i_wholesale_cost) WS_NET_PAID_INC_SHIP,
        (wlin_sales_price * wlin_quantity)-wlin_coupon_amt + (wlin_ship_cost * wlin_quantity)
        + i_current_price * web_tax_percentage WS_NET_PAID_INC_SHIP_TAX,
        ((wlin_sales_price * wlin_quantity)-wlin_coupon_amt)-(i_wholesale_cost * wlin_quantity) WS_NET_PROFIT
from    s_web_order_m left outer join date_dim d1 on (to_date(word_order_date,'YYYY-MM-DD') =  d1.d_date)
                    left outer join time_dim on (word_order_time = t_time)
                    left outer join customer c1 on (word_bill_customer_id = c1.c_customer_id)
                    left outer join customer c2 on (word_ship_customer_id = c2.c_customer_id)
                    left outer join web_site on (word_web_site_id = web_site_id)
                    left outer join ship_mode on (word_ship_mode_id = sm_ship_mode_id), 
        s_web_order_lineitem_m left outer join date_dim d2 on (to_date(wlin_ship_date,'YYYY-MM-DD') = d2.d_date)
                             left outer join item on (wlin_item_id = i_item_id)
                             left outer join web_page on (wlin_web_page_id = wp_web_page_id)
                             left outer join warehouse on (wlin_warehouse_id = w_warehouse_id)
                             left outer join promotion on (wlin_promotion_id = p_promo_id)
where   word_order_id = wlin_order_id
    and i_rec_end_date is NULL 
    and web_rec_end_date is null
    and wp_rec_end_date is null;
select count(*) from wsv where ws_item_sk is null;
select count(*) from s_web_order_m,s_web_order_lineitem_m where word_order_id = wlin_order_id;
select count(*) from wsv;
