
select  i_item_id ,i_item_desc ,s_state
       ,count(ss_quantity) as store_sales_quantitycount
       ,avg(ss_quantity) as store_sales_quantityave
       ,stddev_samp(ss_quantity) as store_sales_quantitystdev
       ,stddev_samp(ss_quantity)/avg(ss_quantity) as store_sales_quantitycov
       ,count(sr_return_quantity) as_store_returns_quantitycount
       ,avg(sr_return_quantity) as_store_returns_quantityave
       ,stddev_samp(sr_return_quantity) as_store_returns_quantitystdev
       ,stddev_samp(sr_return_quantity)/avg(sr_return_quantity) as store_returns_quantitycov
       ,count(cs_quantity) as catalog_sales_quantitycount ,avg(cs_quantity) as catalog_sales_quantityave
       ,stddev_samp(cs_quantity)/avg(cs_quantity) as catalog_sales_quantitystdev
       ,stddev_samp(cs_quantity)/avg(cs_quantity) as catalog_sales_quantitycov
 from store_sales
     JOIN store_returns ON store_sales.ss_customer_sk = store_returns.sr_customer_sk
   and store_sales.ss_item_sk = store_returns.sr_item_sk
   and store_sales.ss_ticket_number = store_returns.sr_ticket_number
     JOIN catalog_sales ON store_returns.sr_customer_sk = catalog_sales.cs_bill_customer_sk
   and store_returns.sr_item_sk = catalog_sales.cs_item_sk
     JOIN date_dim d1 ON d1.d_date_sk = store_sales.ss_sold_date_sk
     JOIN date_dim d2 ON store_returns.sr_returned_date_sk = d2.d_date_sk
     JOIN date_dim d3 ON catalog_sales.cs_sold_date_sk = d3.d_date_sk
     JOIN store ON store.s_store_sk = store_sales.ss_store_sk
     JOIN item ON item.i_item_sk = store_sales.ss_item_sk
 where d1.d_quarter_name = '2000Q1'
   and ss_sold_date between '2000-01-01' and '2000-03-31'
   and d2.d_quarter_name in ('2000Q1','2000Q2','2000Q3')
   and sr_returned_date between '2000-01-01' and '2000-09-01'
   and d3.d_quarter_name in ('2000Q1','2000Q2','2000Q3')
   and cs_sold_date between '2000-01-01' and '2000-09-31'
 group by i_item_id ,i_item_desc ,s_state
 order by i_item_id ,i_item_desc ,s_state
limit 100;
