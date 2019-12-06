create database if not exists ${DB};
use ${DB};

drop table if exists part;

create external table part (P_PARTKEY BIGINT,
 P_NAME STRING,
 P_MFGR STRING,
 P_BRAND STRING,
 P_TYPE STRING,
 P_SIZE INT,
 P_CONTAINER STRING,
 P_RETAILPRICE DOUBLE,
 P_COMMENT STRING)
stored as ORC;
insert overwrite table part select * from ${SOURCE}.part cluster by p_brand;
