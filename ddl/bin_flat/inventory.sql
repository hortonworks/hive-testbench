create database if not exists ${DB};
use ${DB};

drop table if exists inventory;

create table inventory
row format serde '${SERDE}'
stored as ${FILE}
as select * from ${SOURCE}.inventory;
