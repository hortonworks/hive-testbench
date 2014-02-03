
select  d_year 
       ,item.i_brand_id brand_id 
       ,item.i_brand brand
       ,sum(ss_ext_sales_price) sum_agg
 from  date_dim dt 
      JOIN store_sales on dt.d_date_sk = store_sales.ss_sold_date_sk
      JOIN item on store_sales.ss_item_sk = item.i_item_sk
 where
       item.i_manufact_id = 436
   and dt.d_moy=12
   and (    
        ( ss_sold_date between '1998-12-01' and '1998-12-31' ) or
        ( ss_sold_date between '1999-12-01' and '1999-12-31' ) or
        ( ss_sold_date between '2000-12-01' and '2000-12-31' ) or
        ( ss_sold_date between '2001-12-01' and '2001-12-31' ) or
        ( ss_sold_date between '2002-12-01' and '2002-12-31' )
   ) 
 group by d_year
      ,item.i_brand
      ,item.i_brand_id
 order by d_year
         ,sum_agg desc
         ,brand_id
 limit 100;

