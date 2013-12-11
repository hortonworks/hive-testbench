create database if not exists ${DB};
use ${DB};

drop table if exists catalog_returns;

create table catalog_returns
row format serde '${SERDE}'
stored as ${FILE}
as select * from ${SOURCE}.catalog_returns;
