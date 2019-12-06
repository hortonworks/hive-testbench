create database if not exists ${DB};
use ${DB};

drop table if exists nation;

create external table nation (N_NATIONKEY BIGINT,
 N_NAME STRING,
 N_REGIONKEY BIGINT,
 N_COMMENT STRING)
stored as ORC;

insert overwrite table nation select distinct * from ${SOURCE}.nation;
