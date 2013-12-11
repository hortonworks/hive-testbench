create database if not exists ${DB};
use ${DB};

drop table if exists catalog_sales;

create table catalog_sales
row format serde '${SERDE}'
stored as ${FILE}
as select * from ${SOURCE}.catalog_sales;
