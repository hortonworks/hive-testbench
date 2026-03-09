create database if not exists ${DB} location ${LOCATION};
use ${DB};

drop table if exists income_band;

create table income_band
stored as ${FILE}
location ${LOCATION}
as select * from ${SOURCE}.income_band;
