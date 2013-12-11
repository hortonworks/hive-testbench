create database if not exists ${DB};
use ${DB};

drop table if exists warehouse;

create table warehouse
row format serde '${SERDE}'
stored as ${FILE}
as select * from ${SOURCE}.warehouse;
