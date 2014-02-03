
select  i_item_id, 
        avg(ss_quantity) agg1,
        avg(ss_list_price) agg2,
        avg(ss_coupon_amt) agg3,
        avg(ss_sales_price) agg4 
 from store_sales
      JOIN customer_demographics ON store_sales.ss_cdemo_sk = customer_demographics.cd_demo_sk
      JOIN date_dim ON store_sales.ss_sold_date_sk = date_dim.d_date_sk
      JOIN item ON store_sales.ss_item_sk = item.i_item_sk
      JOIN promotion ON store_sales.ss_promo_sk = promotion.p_promo_sk
 where 
       cd_gender = 'F' and 
       cd_marital_status = 'W' and
       cd_education_status = 'Primary' and
       (p_channel_email = 'N' or p_channel_event = 'N') and
       d_year = 1998 
       and ss_sold_date between '1998-01-01' and '1998-12-31'
 group by i_item_id
 order by i_item_id
 limit 100;

