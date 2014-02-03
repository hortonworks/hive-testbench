set hive.mapred.local.mem=3072;

select avg(ss_quantity) ,avg(ss_ext_sales_price) ,avg(ss_ext_wholesale_cost) ,sum(ss_ext_wholesale_cost)
 from store_sales
     JOIN store ON store.s_store_sk = store_sales.ss_store_sk
     JOIN customer_demographics ON customer_demographics.cd_demo_sk = store_sales.ss_cdemo_sk
     JOIN household_demographics ON store_sales.ss_hdemo_sk=household_demographics.hd_demo_sk
     JOIN customer_address ON store_sales.ss_addr_sk = customer_address.ca_address_sk
     JOIN date_dim ON store_sales.ss_sold_date_sk = date_dim.d_date_sk
 where
 d_year = 2001
 and ss_sold_date between '2001-01-01' and '2001-12-31'
 and((
  cd_marital_status = 'M'
  and cd_education_status = '4 yr Degree'
  and ss_sales_price between 100.00 and 150.00
  and hd_dep_count = 3   
     )or
     (
  cd_marital_status = 'D'
  and cd_education_status = 'Primary'
  and ss_sales_price between 50.00 and 100.00   
  and hd_dep_count = 1
     ) or 
     (
  cd_marital_status = 'U'
  and cd_education_status = 'Advanced Degree'
  and ss_sales_price between 150.00 and 200.00 
  and hd_dep_count = 1  
     ))
 and((
  ca_country = 'United States'
  and ca_state in ('KY', 'GA', 'NM')
  and ss_net_profit between 100 and 200  
     ) or
     (
  ca_country = 'United States'
  and ca_state in ('MT', 'OR', 'IN')
  and ss_net_profit between 150 and 300  
     ) or
     (
  ca_country = 'United States'
  and ca_state in ('WI', 'MO', 'WV')
  and ss_net_profit between 50 and 250  
     ))
;
