create database if not exists ${DB} location ${LOCATION};
use ${DB};

drop table if exists catalog_page;

create table catalog_page
stored as ${FILE}
location ${LOCATION}
as select * from ${SOURCE}.catalog_page;
