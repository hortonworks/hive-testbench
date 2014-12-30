select avg(ss_quantity)
       ,avg(ss_ext_sales_price)
       ,avg(ss_ext_wholesale_cost)
       ,sum(ss_ext_wholesale_cost)
 from store_sales
     ,store
     ,customer_demographics
     ,household_demographics
     ,customer_address
     ,date_dim
 where store.s_store_sk = store_sales.ss_store_sk
 and  store_sales.ss_sold_date_sk = date_dim.d_date_sk and date_dim.d_year = 2001
 and((store_sales.ss_hdemo_sk=household_demographics.hd_demo_sk
  and customer_demographics.cd_demo_sk = store_sales.ss_cdemo_sk
  and customer_demographics.cd_marital_status = 'M'
  and customer_demographics.cd_education_status = '4 yr Degree'
  and store_sales.ss_sales_price between 100.00 and 150.00
  and household_demographics.hd_dep_count = 3   
     )or
     (store_sales.ss_hdemo_sk=household_demographics.hd_demo_sk
  and customer_demographics.cd_demo_sk = store_sales.ss_cdemo_sk
  and customer_demographics.cd_marital_status = 'D'
  and customer_demographics.cd_education_status = 'Primary'
  and store_sales.ss_sales_price between 50.00 and 100.00   
  and household_demographics.hd_dep_count = 1
     ) or 
     (store_sales.ss_hdemo_sk=household_demographics.hd_demo_sk
  and customer_demographics.cd_demo_sk = ss_cdemo_sk
  and customer_demographics.cd_marital_status = 'U'
  and customer_demographics.cd_education_status = 'Advanced Degree'
  and store_sales.ss_sales_price between 150.00 and 200.00 
  and household_demographics.hd_dep_count = 1  
     ))
 and((store_sales.ss_addr_sk = customer_address.ca_address_sk
  and customer_address.ca_country = 'United States'
  and customer_address.ca_state in ('KY', 'GA', 'NM')
  and store_sales.ss_net_profit between 100 and 200  
     ) or
     (store_sales.ss_addr_sk = customer_address.ca_address_sk
  and customer_address.ca_country = 'United States'
  and customer_address.ca_state in ('MT', 'OR', 'IN')
  and store_sales.ss_net_profit between 150 and 300  
     ) or
     (store_sales.ss_addr_sk = customer_address.ca_address_sk
  and customer_address.ca_country = 'United States'
  and customer_address.ca_state in ('WI', 'MO', 'WV')
  and store_sales.ss_net_profit between 50 and 250  
     ))
;


