create database if not exists ${DB} location ${LOCATION};
use ${DB};

drop table if exists web_page;

create table web_page
stored as ${FILE}
location ${LOCATION}
as select * from ${SOURCE}.web_page;
