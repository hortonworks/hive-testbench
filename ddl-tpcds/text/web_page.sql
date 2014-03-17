create database if not exists ${DB};
use ${DB};

drop table if exists web_page;

create external table web_page(
      wp_web_page_sk            int               
,     wp_web_page_id            string              
,     wp_rec_start_date        string                         
,     wp_rec_end_date          string                         
,     wp_creation_date_sk       int                       
,     wp_access_date_sk         int                       
,     wp_autogen_flag           string                       
,     wp_customer_sk            int                       
,     wp_url                    string                  
,     wp_type                   string                      
,     wp_char_count             int                       
,     wp_link_count             int                       
,     wp_image_count            int                       
,     wp_max_ad_count           int
)
row format delimited fields terminated by '|' 
location '${LOCATION}';
