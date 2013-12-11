create database if not exists ${DB};
use ${DB};

drop table if exists catalog_page;

create external table catalog_page(
      cp_catalog_page_sk        int               
,     cp_catalog_page_id        string              
,     cp_start_date_sk          int                       
,     cp_end_date_sk            int                       
,     cp_department             string                   
,     cp_catalog_number         int                       
,     cp_catalog_page_number    int                       
,     cp_description            string                  
,     cp_type                   string
)
row format delimited fields terminated by '|' 
location '${LOCATION}';
