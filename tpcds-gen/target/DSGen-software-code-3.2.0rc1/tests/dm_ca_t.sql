drop table cadrv;
create table cadrv as
select ca_address_id ca_address_id
      ,cust_street_number ca_street_number
      ,concat(concat(rtrim(cust_street_name1),' '),rtrim(cust_street_name2)) ca_street_name
      ,cust_street_type ca_street_type
      ,cust_suite_number ca_suite_number
      ,cust_city ca_city
      ,cust_county ca_county
      ,cust_state ca_state
      ,cust_zip ca_zip
      ,cust_country ca_country
      ,zipg_gmt_offset ca_gmt_offset
      ,cust_loc_type ca_location_type
from s_customer_m  
    ,customer
    ,customer_address
    ,s_zip_to_gmt_m 
where cust_zip = zipg_zip
  and cust_customer_id = c_customer_id
  and c_current_addr_sk = ca_address_sk;

select count(*) from s_customer_m;
select count(*) from cadrv;
