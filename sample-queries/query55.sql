
select  i_brand_id as brand_id, i_brand as brand,
 	sum(store_sales.ss_ext_sales_price) ext_price
 from date_dim
 JOIN store_sales ON date_dim.d_date_sk = store_sales.ss_sold_date_sk
 JOIN item ON store_sales.ss_item_sk = item.i_item_sk
 where
 	i_manager_id=36
 	and d_moy=12
 	and d_year=2001
        and ss_sold_date between '2001-12-01' and '2001-12-31'
 group by i_brand, i_brand_id
 order by ext_price desc, brand_id
limit 100 ;


