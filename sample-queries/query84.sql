
select  c_customer_id as customer_id
       ,concat(c_last_name, ', ', c_first_name) as customername
 from customer
     JOIN customer_address ON customer.c_current_addr_sk = customer_address.ca_address_sk
     JOIN customer_demographics ON customer_demographics.cd_demo_sk = customer.c_current_cdemo_sk
     JOIN household_demographics ON household_demographics.hd_demo_sk = customer.c_current_hdemo_sk
     JOIN income_band ON household_demographics.hd_income_band_sk = income_band.ib_income_band_sk
     JOIN store_returns ON customer_demographics.cd_demo_sk = store_returns.sr_cdemo_sk
 where ca_city	        =  'Hopewell'
   and ib_lower_bound   >=  32287
   and ib_upper_bound   <=  32287 + 50000
 order by customer_id
 limit 100;

