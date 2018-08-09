create database if not exists ${DB};
use ${DB};

drop table if exists partsupp;

create external table partsupp (PS_PARTKEY BIGINT,
 PS_SUPPKEY BIGINT,
 PS_AVAILQTY INT,
 PS_SUPPLYCOST DOUBLE,
 PS_COMMENT STRING) stored as ORC;
insert overwrite table partsupp select * from ${SOURCE}.partsupp cluster by PS_SUPPKEY;
