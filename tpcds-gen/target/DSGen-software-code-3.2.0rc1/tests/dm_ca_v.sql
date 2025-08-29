drop view cadrv;
create view cadrv as
select cust_customer_id
      ,cust_street_number
      ,concat(cust_street_name1,cust_street_name2) street
      ,cust_street_type
      ,cust_suite_number
      ,cust_city
      ,cust_county
      ,cust_state
      ,cust_zip
      ,cust_country
      ,zipg_gmt_offset
from s_customer_m  
    ,s_zip_to_gmt 
where cust_zip = zipg_zip;
select count(*) from s_customer_m;
select count(*) from cadrv;
