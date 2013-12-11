create database if not exists ${DB};
use ${DB};

drop table if exists promotion;

create table promotion
row format serde '${SERDE}'
stored as ${FILE}
as select * from ${SOURCE}.promotion;
