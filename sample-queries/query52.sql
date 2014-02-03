
select  d_year
 	,item.i_brand_id brand_id
 	,item.i_brand brand
 	,sum(ss_ext_sales_price) as ext_price
 from date_dim
     JOIN store_sales ON date_dim.d_date_sk = store_sales.ss_sold_date_sk
     JOIN item ON store_sales.ss_item_sk = item.i_item_sk
 where
        item.i_manager_id = 1
    and date_dim.d_moy=12
    and date_dim.d_year=1998
    and ss_sold_date between '1998-12-01' and '1998-12-31'
 group by d_year
 	,item.i_brand
 	,item.i_brand_id
 order by d_year
 	,ext_price desc
 	,brand_id
limit 100;

