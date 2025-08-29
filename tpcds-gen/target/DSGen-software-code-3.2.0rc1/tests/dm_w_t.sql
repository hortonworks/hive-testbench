drop table wrhsv;
create  table wrhsv as
select  wrhs_warehouse_id w_warehouse_id
       ,wrhs_warehouse_desc w_warehouse_name
       ,wrhs_warehouse_sq_ft w_warehouse_sq_ft
       ,w_street_number
       ,w_street_name
       ,w_street_type
       ,w_suite_number
       ,w_city
       ,w_county
       ,w_state
       ,w_zip
       ,w_country
       ,w_gmt_offset
from    s_warehouse_m,
        warehouse
where   wrhs_warehouse_id = w_warehouse_id;
select count(*) from s_warehouse_m;
select count(*) from wrhsv;
