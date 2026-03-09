create database if not exists ${DB} location ${LOCATION};
use ${DB};

drop table if exists customer;

create table customer
stored as ${FILE}
location ${LOCATION}
as select * from ${SOURCE}.customer
CLUSTER BY c_customer_sk
;
