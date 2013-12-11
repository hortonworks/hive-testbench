create database if not exists ${DB};
use ${DB};

drop table if exists time_dim;

create table time_dim
row format serde '${SERDE}'
stored as ${FILE}
as select * from ${SOURCE}.time_dim;
