create database if not exists ${DB} location ${LOCATION};
use ${DB};

drop table if exists store;

create table store
stored as ${FILE}
location ${LOCATION}
as select * from ${SOURCE}.store
CLUSTER BY s_store_sk
;
