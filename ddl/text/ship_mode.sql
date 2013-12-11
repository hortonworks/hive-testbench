create database if not exists ${DB};
use ${DB};

drop table if exists ship_mode;

create external table ship_mode(
      sm_ship_mode_sk           int               
,     sm_ship_mode_id           string              
,     sm_type                   string                      
,     sm_code                   string                      
,     sm_carrier                string                      
,     sm_contract               string                      
)
row format delimited fields terminated by '|' 
location '${LOCATION}';
