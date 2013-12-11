create database if not exists ${DB};
use ${DB};

drop table if exists store_returns;

create table store_returns
row format serde '${SERDE}'
stored as ${FILE}
as select * from ${SOURCE}.store_returns;
