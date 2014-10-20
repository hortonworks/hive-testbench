set hive.stats.autogather=true;
set hive.stats.dbclass=fs;

create table if not exists lineitem 
(L_ORDERKEY BIGINT,
 L_PARTKEY BIGINT,
 L_SUPPKEY BIGINT,
 L_LINENUMBER INT,
 L_QUANTITY DOUBLE,
 L_EXTENDEDPRICE DOUBLE,
 L_DISCOUNT DOUBLE,
 L_TAX DOUBLE,
 L_RETURNFLAG STRING,
 L_LINESTATUS STRING,
 L_SHIPDATE STRING,
 L_COMMITDATE STRING,
 L_RECEIPTDATE STRING,
 L_SHIPINSTRUCT STRING,
 L_SHIPMODE STRING,
 L_COMMENT STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

create table if not exists part (P_PARTKEY INT,
 P_NAME STRING,
 P_MFGR STRING,
 P_BRAND STRING,
 P_TYPE STRING,
 P_SIZE INT,
 P_CONTAINER STRING,
 P_RETAILPRICE DOUBLE,
 P_COMMENT STRING) 
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

create table if not exists supplier (S_SUPPKEY BIGINT,
 S_NAME STRING,
 S_ADDRESS STRING,
 S_NATIONKEY INT,
 S_PHONE STRING,
 S_ACCTBAL DOUBLE,
 S_COMMENT STRING) 
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

create table if not exists partsupp (PS_PARTKEY BIGINT,
 PS_SUPPKEY BIGINT,
 PS_AVAILQTY INT,
 PS_SUPPLYCOST DOUBLE,
 PS_COMMENT STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

create table if not exists nation (N_NATIONKEY INT,
 N_NAME STRING,
 N_REGIONKEY INT,
 N_COMMENT STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

create table if not exists region (R_REGIONKEY INT,
 R_NAME STRING,
 R_COMMENT STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

create table if not exists customer (C_CUSTKEY BIGINT,
 C_NAME STRING,
 C_ADDRESS STRING,
 C_NATIONKEY INT,
 C_PHONE STRING,
 C_ACCTBAL DOUBLE,
 C_MKTSEGMENT STRING,
 C_COMMENT STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

create table if not exists orders (O_ORDERKEY BIGINT,
 O_CUSTKEY BIGINT,
 O_ORDERSTATUS STRING,
 O_TOTALPRICE DOUBLE,
 O_ORDERDATE STRING,
 O_ORDERPRIORITY STRING,
 O_CLERK STRING,
 O_SHIPPRIORITY INT,
 O_COMMENT STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

insert overwrite table nation select * from ${SOURCE}.nation;
insert overwrite table region select * from ${SOURCE}.region;
insert overwrite table part select * from ${SOURCE}.part;
insert overwrite table supplier select * from ${SOURCE}.supplier;
insert overwrite table partsupp select * from ${SOURCE}.partsupp;
insert overwrite table customer select * from ${SOURCE}.customer;
insert overwrite table lineitem select * from ${SOURCE}.lineitem;
insert overwrite table orders select * from ${SOURCE}.orders;
