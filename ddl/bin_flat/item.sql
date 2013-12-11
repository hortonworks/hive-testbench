create database if not exists ${DB};
use ${DB};

drop table if exists item;

create table item
row format serde '${SERDE}'
stored as ${FILE}
as select * from ${SOURCE}.item;
