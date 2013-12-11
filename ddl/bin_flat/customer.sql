create database if not exists ${DB};
use ${DB};

drop table if exists customer;

create table customer
row format serde '${SERDE}'
stored as ${FILE}
as select * from ${SOURCE}.customer;
