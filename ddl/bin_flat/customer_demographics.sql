create database if not exists ${DB};
use ${DB};

drop table if exists customer_demographics;

create table customer_demographics
row format serde '${SERDE}'
stored as ${FILE}
as select * from ${SOURCE}.customer_demographics;
