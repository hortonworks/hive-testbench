create database if not exists ${DB};
use ${DB};

drop table if exists orders;

create table orders (O_ORDERKEY BIGINT,
 O_CUSTKEY BIGINT,
 O_ORDERSTATUS STRING,
 O_TOTALPRICE DOUBLE,
 O_ORDERPRIORITY STRING,
 O_CLERK STRING,
 O_SHIPPRIORITY INT,
 O_COMMENT STRING)
 partitioned by (O_ORDERDATE STRING)
stored as ${FILE}
;

ALTER TABLE orders SET TBLPROPERTIES('orc.bloom.filter.columns'='*','orc.compress'='ZLIB');

INSERT OVERWRITE TABLE orders partition(O_ORDERDATE)
select 
O_ORDERKEY ,
 O_CUSTKEY ,
 O_ORDERSTATUS ,
 O_TOTALPRICE ,
 O_ORDERPRIORITY ,
 O_CLERK ,
 O_SHIPPRIORITY ,
 O_COMMENT,
 O_ORDERDATE
  from ${SOURCE}.orders
;


