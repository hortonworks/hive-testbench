drop table storv;
create table storv as
select store_seq.nextVal s_store_sk
      ,stor_store_id s_store_id
      ,sysdate s_rec_start_date
      ,cast(NULL as date) s_rec_end_date
      ,d1.d_date_sk s_closed_date_sk
      ,stor_name s_store_name
      ,stor_employees s_number_employees
      ,stor_floor_space s_floor_space
      ,stor_hours s_hours
      ,stor_store_manager s_manager
      ,stor_market_id s_market_id
      ,stor_geography_class s_geography_class
      ,s_market_desc
      ,stor_market_manager s_market_manager
      ,s_division_id
      ,s_division_name
      ,s_company_id
      ,s_company_name
      ,s_street_number
      ,s_street_name
      ,s_street_type
      ,s_suite_number
      ,s_city
      ,s_county
      ,s_state
      ,s_zip
      ,s_country
      ,s_gmt_offset
      ,stor_tax_percentage s_tax_percentage
from  s_store_m left outer join date_dim d1 on TO_DATE(stor_closed_date,'YYYY-MM-DD')= d1.d_date
     ,store
where  stor_store_id = s_store_id
   and s_rec_end_date is null;
select 's_store_m '||count(*) from s_store_m;
select 's_storv '||count(*) from storv;
select 'null date_dim '||count(*) from storv where s_closed_date_sk is null;
