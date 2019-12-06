create database if not exists ${DB};
use ${DB};

drop table if exists supplier;

create external table supplier (S_SUPPKEY BIGINT,
 S_NAME STRING,
 S_ADDRESS STRING,
 S_NATIONKEY BIGINT,
 S_PHONE STRING,
 S_ACCTBAL DOUBLE,
 S_COMMENT STRING)
stored as ORC;

insert overwrite table supplier select * from ${SOURCE}.supplier cluster by s_nationkey, s_suppkey;
