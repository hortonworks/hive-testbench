drop table s_web_site;
create table s_web_site as 
select * from
(select web_site_id wsit_web_site_id
       ,d1.d_date wsit_open_date
       ,d2.d_date wsit_closed_date
       ,web_name wsit_site_name
       ,web_class wsit_site_class
       ,web_manager wsit_site_manager
       ,web_tax_percentage wsit_tax_percentage
 from web_site
     ,date_dim d1
     ,date_dim d2
 where web_open_date_sk = d1.d_date_sk
   and web_close_date_sk = d2.d_date_sk
   and web_rec_end_date is null)
where rownum < 6;
 
