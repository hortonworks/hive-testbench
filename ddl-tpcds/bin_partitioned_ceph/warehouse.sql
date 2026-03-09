create database if not exists ${DB} location ${LOCATION};
use ${DB};

drop table if exists warehouse;

create table warehouse
stored as ${FILE}
location ${LOCATION}
as select * from ${SOURCE}.warehouse;
