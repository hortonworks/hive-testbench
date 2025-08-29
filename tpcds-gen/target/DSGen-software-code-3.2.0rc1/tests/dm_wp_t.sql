drop table webv;
create table webv as
select web_page_seq.nextVal wp_web_page_sk
      ,wpag_web_page_id wp_web_page_id
      ,sysdate wp_rec_start_date
      ,cast(null as date) wp_rec_end_date
      ,d1.d_date_sk wp_creation_date_sk
      ,d2.d_date_sk wp_access_date_sk
      ,wpag_autogen_flag wp_autogen_flag
      ,wpag_url wp_url
      ,wpag_type wp_type 
      ,wpag_char_cnt wp_char_count
      ,wpag_link_cnt wp_link_count
      ,wpag_image_cnt wp_image_count
      ,wpag_max_ad_cnt wp_max_ad_count
from    s_web_page_m left outer join date_dim d1 on wpag_create_date = d1.d_date
                     left outer join date_dim d2 on wpag_access_date = d2.d_date;
select count(*) from s_web_page;
select count(*) from webv;
