
select  c_last_name
       ,c_first_name
       ,ca_city
       ,bought_city
       ,ss_ticket_number
       ,extended_price
       ,extended_tax
       ,list_price
 from (select ss_ticket_number
             ,ss_customer_sk
             ,ca_city bought_city
             ,sum(ss_ext_sales_price) extended_price 
             ,sum(ss_ext_list_price) list_price
             ,sum(ss_ext_tax) extended_tax 
       from store_sales
           ,date_dim
           ,store
           ,household_demographics
           ,customer_address 
       where store_sales.ss_sold_date_sk = date_dim.d_date_sk
         and store_sales.ss_store_sk = store.s_store_sk  
        and store_sales.ss_hdemo_sk = household_demographics.hd_demo_sk
        and store_sales.ss_addr_sk = customer_address.ca_address_sk
        and date_dim.d_dom between 1 and 2 
        and (household_demographics.hd_dep_count = 4 or
             household_demographics.hd_vehicle_count= 2)
        and date_dim.d_year in (1998,1998+1,1998+2)
        and ss_sold_date in (
        '1998-01-01', '1998-01-02', '1998-02-01', '1998-02-02', '1998-03-01', '1998-03-02', 
        '1998-04-01', '1998-04-02', '1998-05-01', '1998-05-02', '1998-06-01', '1998-06-02', 
        '1998-07-01', '1998-07-02', '1998-08-01', '1998-08-02', '1998-09-01', '1998-09-02', 
        '1998-10-01', '1998-10-02', '1998-11-01', '1998-11-02', '1998-12-01', '1998-12-02', 
        '1999-01-01', '1999-01-02', '1999-02-01', '1999-02-02', '1999-03-01', '1999-03-02', 
        '1999-04-01', '1999-04-02', '1999-05-01', '1999-05-02', '1999-06-01', '1999-06-02', 
        '1999-07-01', '1999-07-02', '1999-08-01', '1999-08-02', '1999-09-01', '1999-09-02', 
        '1999-10-01', '1999-10-02', '1999-11-01', '1999-11-02', '1999-12-01', '1999-12-02', 
        '2000-01-01', '2000-01-02', '2000-02-01', '2000-02-02', '2000-03-01', '2000-03-02', 
        '2000-04-01', '2000-04-02', '2000-05-01', '2000-05-02', '2000-06-01', '2000-06-02', 
        '2000-07-01', '2000-07-02', '2000-08-01', '2000-08-02', '2000-09-01', '2000-09-02', 
        '2000-10-01', '2000-10-02', '2000-11-01', '2000-11-02', '2000-12-01', '2000-12-02'
	)
        and store.s_city in ('Rosedale','Bethlehem')
       group by ss_ticket_number
               ,ss_customer_sk
               ,ss_addr_sk,ca_city) dn
      ,customer
      ,customer_address current_addr
 where ss_customer_sk = c_customer_sk
   and customer.c_current_addr_sk = current_addr.ca_address_sk
   and current_addr.ca_city <> bought_city
 order by c_last_name
         ,ss_ticket_number
 limit 100;


