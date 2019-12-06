create database if not exists ${DB};
use ${DB};

drop table if exists orders;

create external table orders (O_ORDERKEY BIGINT,
 O_CUSTKEY BIGINT,
 O_ORDERSTATUS STRING,
 O_TOTALPRICE DOUBLE,
 O_ORDERDATE STRING,
 O_ORDERPRIORITY STRING,
 O_CLERK STRING,
 O_SHIPPRIORITY INT,
 O_COMMENT STRING)
stored as ORC;

insert overwrite table orders select * from ${SOURCE}.orders cluster by o_orderdate;
