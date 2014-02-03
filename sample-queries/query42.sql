
select  d_year
 	,item.i_category_id
 	,item.i_category
 	,sum(ss_ext_sales_price) as s
 from 	date_dim dt
 	JOIN store_sales ON dt.d_date_sk = store_sales.ss_sold_date_sk
 	JOIN item ON store_sales.ss_item_sk = item.i_item_sk
 where
 	    item.i_manager_id = 1  	
 	and dt.d_moy=12
 	and dt.d_year=1998
        and ss_sold_date between '1998-12-01' and '1998-12-31'
 group by 	d_year
 		,item.i_category_id
 		,item.i_category
 order by       s desc,d_year
 		,i_category_id
 		,i_category
limit 100 ;

