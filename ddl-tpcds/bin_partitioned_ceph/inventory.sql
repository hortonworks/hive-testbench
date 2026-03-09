create database if not exists ${DB} location ${LOCATION};
use ${DB};

drop table if exists inventory;

create table inventory
stored as ${FILE}
location ${LOCATION}
as select * from ${SOURCE}.inventory
CLUSTER BY inv_date_sk
;
