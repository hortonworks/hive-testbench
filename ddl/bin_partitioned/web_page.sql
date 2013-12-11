create database if not exists ${DB};
use ${DB};

drop table if exists web_page;

create table web_page
row format serde '${SERDE}'
stored as ${FILE}
as select * from ${SOURCE}.web_page;
