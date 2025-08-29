drop table catv;
create table catv as
select cpag_id cp_catalog_page_id
      ,startd.d_date_sk cp_start_date_sk
      ,endd.d_date_sk cp_end_date_sk
      ,cpag_department cp_department
      ,cpag_catalog_number cp_catalog_number
      ,cpag_description cp_description 
      ,cpag_type cp_type  
from s_catalog_page
    ,date_dim startd
    ,date_dim endd
where cpag_start_date = startd.d_date
  and cpag_end_date = endd.d_date;
select count(*) from catv;
select count(*) from s_catalog_page;
