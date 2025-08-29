drop table websv;
create table websv as
select web_site_seq.nextVal web_site_sk
      ,wsit_web_site_id web_site_id
      ,sysdate web_rec_start_date
      ,cast(null as date) web_rec_end_date
      ,wsit_site_name web_name
      ,d1.d_date_sk web_open_date_sk
      ,d2.d_date_sk web_close_date_sk
      ,wsit_site_class web_class
      ,wsit_site_manager web_manager
      ,web_mkt_id 
      ,web_mkt_class
      ,web_mkt_desc
      ,web_market_manager
      ,web_company_id
      ,web_company_name
      ,web_street_number 
      ,web_street_name
      ,web_street_type 
      ,web_suite_number
      ,web_city
      ,web_county 
      ,web_state
      ,web_zip
      ,web_country 
      ,web_gmt_offset
      ,wsit_tax_percentage web_tax_percentage
from  s_web_site_m left outer join date_dim d1 on (d1.d_date = wsit_open_date)
                   left outer join date_dim d2 on (d2.d_date = wsit_closed_date), 
      web_site
where web_site_id = wsit_web_site_id
  and web_rec_end_date is null;
select count(*) from s_web_site_m;
select count(*) from websv;
