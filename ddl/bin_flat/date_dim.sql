create database if not exists ${DB};
use ${DB};

drop table if exists date_dim;

create table date_dim
row format serde '${SERDE}'
stored as ${FILE}
as select * from ${SOURCE}.date_dim;
