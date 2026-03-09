create database if not exists ${DB} location ${LOCATION};
use ${DB};

drop table if exists time_dim;

create table time_dim
stored as ${FILE}
location ${LOCATION}
as select * from ${SOURCE}.time_dim;
