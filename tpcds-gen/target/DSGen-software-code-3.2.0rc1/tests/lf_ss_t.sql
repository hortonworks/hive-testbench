drop table ssv;
create table ssv as
select  d_date_sk ss_sold_date_sk, 
        t_time_sk ss_sold_time_sk, 
        i_item_sk ss_item_sk, 
        c_customer_sk ss_customer_sk, 
        c_current_cdemo_sk ss_cdemo_sk, 
        c_current_hdemo_sk ss_hdemo_sk,
        c_current_addr_sk ss_addr_sk,
        s_store_sk ss_store_sk, 
        p_promo_sk ss_promo_sk,
        purc_purchase_id ss_ticket_number, 
        plin_quantity ss_quantity, 
        i_wholesale_cost ss_wholesale_cost, 
        i_current_price ss_list_price,
        plin_sale_price ss_sales_price,
        (i_current_price-plin_sale_price)*plin_quantity ss_ext_discount_amt,
        plin_sale_price * plin_quantity ss_ext_sales_price,
        i_wholesale_cost * plin_quantity ss_ext_wholesale_cost, 
        i_current_price * plin_quantity ss_ext_list_price, 
        i_current_price * s_tax_percentage ss_ext_tax, 
        plin_coupon_amt ss_coupon_amt,
        (plin_sale_price * plin_quantity)-plin_coupon_amt ss_net_paid,
        ((plin_sale_price * plin_quantity)-plin_coupon_amt)*(1+s_tax_percentage) ss_net_paid_inc_tax,
        ((plin_sale_price * plin_quantity)-plin_coupon_amt)-(plin_quantity*i_wholesale_cost) ss_net_profit
from    s_purchase_m left outer join customer on (purc_customer_id = c_customer_id) 
                     left outer join store on (purc_store_id = s_store_id)
                     left outer join date_dim on (to_date(purc_purchase_date,'YYYY-MM-DD') = d_date)
                     left outer join time_dim on (PURC_PURCHASE_TIME = t_time),
        s_purchase_lineitem_m left outer join promotion on plin_promotion_id = p_promo_id
                           left outer join item on plin_item_id = i_item_id
where   purc_purchase_id = plin_purchase_id
    and i_rec_end_date is NULL
    and s_rec_end_date is NULL;
-- for now delete the rows that have lineitem = null
--delete from ssv where ss_item_sk is null;
select count(*) from ssv where ss_item_sk is null;
-- for now delete pk violaters
--delete from ssv where ss_ticket_number in (select ss_ticket_number from (select ss_ticket_number,ss_item_sk from ssv group by ss_ticket_number,ss_item_sk having count(*) > 1));
--select ss_ticket_number,ss_item_sk from ssv group by ss_ticket_number,ss_item_sk having count(*) > 1;
select count(*) from s_purchase_m,s_purchase_lineitem_m where purc_purchase_id = plin_purchase_id;
select count(*) from ssv;
