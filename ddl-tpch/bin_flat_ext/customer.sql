create database if not exists ${DB};
use ${DB};

drop table if exists customer;

create external table customer (C_CUSTKEY BIGINT,
 C_NAME STRING,
 C_ADDRESS STRING,
 C_NATIONKEY BIGINT,
 C_PHONE STRING,
 C_ACCTBAL DOUBLE,
 C_MKTSEGMENT STRING,
 C_COMMENT STRING) stored as ORC;
insert overwrite table customer select * from ${SOURCE}.customer cluster by C_MKTSEGMENT;
