
select  c_last_name ,c_first_name ,ca_city
       ,bought_city ,ss_ticket_number ,extended_price
       ,extended_tax ,list_price
 from (select ss_ticket_number
             ,ss_customer_sk
             ,ca_city as bought_city
             ,sum(ss_ext_sales_price) as extended_price 
             ,sum(ss_ext_list_price) as list_price
             ,sum(ss_ext_tax) as extended_tax 
       from store_sales
           JOIN date_dim ON store_sales.ss_sold_date_sk = date_dim.d_date_sk
           JOIN store ON store_sales.ss_store_sk = store.s_store_sk  
           JOIN household_demographics ON store_sales.ss_hdemo_sk = household_demographics.hd_demo_sk
           JOIN customer_address ON store_sales.ss_addr_sk = customer_address.ca_address_sk
       where
        date_dim.d_dom between 1 and 2 
        and (household_demographics.hd_dep_count = 5 or
             household_demographics.hd_vehicle_count= 3)
        and date_dim.d_year in (1999,1999+1,1999+2)
        and store.s_city in ('Midway','Fairview')
       group by ss_ticket_number
               ,ss_customer_sk
               ,ss_addr_sk,ca_city) dn
      JOIN customer ON dn.ss_customer_sk = customer.c_customer_sk
      JOIN customer_address ON customer.c_current_addr_sk = customer_address.ca_address_sk
 where
   customer_address.ca_city <> dn.bought_city
 order by c_last_name
         ,ss_ticket_number
 limit 100;
