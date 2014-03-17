create database if not exists ${DB};
use ${DB};

drop table if exists income_band;

create external table income_band(
      ib_income_band_sk         int               
,     ib_lower_bound            int                       
,     ib_upper_bound            int
)
row format delimited fields terminated by '|' 
location '${LOCATION}';
