create database if not exists ${DB};
use ${DB};

drop table if exists region;

create external table region (R_REGIONKEY BIGINT,
 R_NAME STRING,
 R_COMMENT STRING) stored as ORC;

insert overwrite table region select distinct * from ${SOURCE}.region;
