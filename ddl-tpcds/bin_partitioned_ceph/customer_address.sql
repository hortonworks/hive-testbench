create database if not exists ${DB} location ${LOCATION};
use ${DB};

drop table if exists customer_address;

create table customer_address
stored as ${FILE}
location ${LOCATION}
as select * from ${SOURCE}.customer_address 
CLUSTER BY ca_address_sk
;
