create database if not exists ${DB};
use ${DB};

drop table if exists supplier;

create table supplier
stored as ${FILE}
TBLPROPERTIES('orc.bloom.filter.columns'='*','orc.compress'='ZLIB')
as select * from ${SOURCE}.supplier
cluster by s_nationkey, s_suppkey
;
