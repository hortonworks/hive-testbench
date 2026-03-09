create database if not exists ${DB} location ${LOCATION};
use ${DB};

drop table if exists reason;

create table reason
stored as ${FILE}
location ${LOCATION}
as select * from ${SOURCE}.reason;
