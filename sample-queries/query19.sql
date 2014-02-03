
select  i_brand_id, i_brand, i_manufact_id, i_manufact,
 	sum(ss_ext_sales_price) as ext_price
 from date_dim
 JOIN store_sales ON date_dim.d_date_sk = store_sales.ss_sold_date_sk
 JOIN item ON store_sales.ss_item_sk = item.i_item_sk
 JOIN customer ON store_sales.ss_customer_sk = customer.c_customer_sk 
 JOIN customer_address ON customer.c_current_addr_sk = customer_address.ca_address_sk
 JOIN store ON store_sales.ss_store_sk = store.s_store_sk 
 where
   i_manager_id=7
   and d_moy=11
   and d_year=1999
   and ss_sold_date between '1999-11-01' and '1999-11-31'
   and substr(ca_zip,1,5) <> substr(s_zip,1,5) 
 group by i_brand
      ,i_brand_id
      ,i_manufact_id
      ,i_manufact
 order by ext_price desc
         ,i_brand
         ,i_brand_id
         ,i_manufact_id
         ,i_manufact
limit 100 ;


