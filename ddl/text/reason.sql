create database if not exists ${DB};
use ${DB};

drop table if exists reason;

create external table reason(
      r_reason_sk               int               
,     r_reason_id               string              
,     r_reason_desc             string                
)
row format delimited fields terminated by '|' 
location '${LOCATION}';
