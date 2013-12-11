create database if not exists ${DB};
use ${DB};

drop table if exists call_center;

create table call_center
row format serde '${SERDE}'
stored as ${FILE}
as select * from ${SOURCE}.call_center;
