create database if not exists ${DB} location ${LOCATION};
use ${DB};

drop table if exists ship_mode;

create table ship_mode
stored as ${FILE}
location ${LOCATION}
as select * from ${SOURCE}.ship_mode;
