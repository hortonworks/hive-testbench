create database if not exists ${DB} location ${LOCATION};
use ${DB};

drop table if exists call_center;

create table call_center
stored as ${FILE}
location ${LOCATION}
as select * from ${SOURCE}.call_center;
