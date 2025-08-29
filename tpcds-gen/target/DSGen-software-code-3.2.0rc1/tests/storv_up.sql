drop table s_store;
create table s_store as 
select * from 
(select s_store_id stor_store_id
       --,stor_address_id
       --,stor_divison_id
       --,stor_opened_date
       ,d1.d_date stor_closed_date
       ,s_store_name stor_name
       --,stor_store_class
       ,s_number_employees stor_employees
       ,s_floor_space stor_floor_space
       ,s_hours stor_hours
       ,s_market_manager stor_market_manager
       ,s_manager stor_store_manager
       ,s_market_id stor_market_id
       ,s_geography_class stor_geography_class
       ,s_tax_precentage stor_tax_percentage
from store
    ,date_dim d1
where d_date_sk = s_closed_date_sk
  and s_rec_end_date is null)
where rownum < 4;
