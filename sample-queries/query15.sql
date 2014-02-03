
select  ca_zip
       ,sum(cs_sales_price)
 from catalog_sales
     JOIN customer ON catalog_sales.cs_bill_customer_sk = customer.c_customer_sk
     JOIN customer_address ON customer.c_current_addr_sk = customer_address.ca_address_sk
     JOIN date_dim ON catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
  where
 	( substr(ca_zip,1,5) in ('85669', '86197','88274','83405','86475',
                                   '85392', '85460', '80348', '81792')
 	      or ca_state in ('CA','WA','GA')
 	      or cs_sales_price > 500)
 	and d_qoy = 2 and d_year = 2000
        and cs_sold_date between '2000-04-01' and '2000-06-30'
 group by ca_zip
 order by ca_zip
 limit 100;


