SET hive.stats.autogather=true;
SET hive.stats.dbclass=fs;

CREATE TABLE IF NOT EXISTS lineitem (
  l_orderkey BIGINT,
  l_partkey BIGINT,
  l_suppkey BIGINT,
  l_linenumber INT,
  l_quantity DECIMAL(12,2),
  l_extendedprice DECIMAL(12,2),
  l_discount DECIMAL(12,2),
  l_tax DECIMAL(12,2),
  l_returnflag STRING,
  l_linestatus STRING,
  l_shipdate DATE,
  l_commitdate DATE,
  l_receiptdate DATE,
  l_shipinstruct STRING,
  l_shipmode STRING,
  l_comment STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

CREATE TABLE IF NOT EXISTS part (
  p_partkey BIGINT,
  p_name STRING,
  p_mfgr STRING,
  p_brand STRING,
  p_type STRING,
  p_size INT,
  p_container STRING,
  p_retailprice DECIMAL(12,2),
  p_comment STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

CREATE TABLE IF NOT EXISTS supplier (
  s_suppkey BIGINT,
  s_name STRING,
  s_address STRING,
  s_nationkey BIGINT,
  s_phone STRING,
  s_acctbal DECIMAL(12,2),
  s_comment STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

CREATE TABLE IF NOT EXISTS partsupp (
  ps_partkey BIGINT,
  ps_suppkey BIGINT,
  ps_availqty INT,
  ps_supplycost DECIMAL(12,2),
  ps_comment STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

CREATE TABLE IF NOT EXISTS nation (
  n_nationkey BIGINT,
  n_name STRING,
  n_regionkey BIGINT,
  n_comment STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

CREATE TABLE IF NOT EXISTS region (
  r_regionkey BIGINT,
  r_name STRING,
  r_comment STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

CREATE TABLE IF NOT EXISTS customer (
  c_custkey BIGINT,
  c_name STRING,
  c_address STRING,
  c_nationkey BIGINT,
  c_phone STRING,
  c_acctbal DECIMAL(12,2),
  c_mktsegment STRING,
  c_comment STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

CREATE TABLE IF NOT EXISTS orders (
  o_orderkey BIGINT,
  o_custkey BIGINT,
  o_orderstatus STRING,
  o_totalprice DECIMAL(12,2),
  o_orderdate DATE,
  o_orderpriority STRING,
  o_clerk STRING,
  o_shippriority INT,
  o_comment STRING)
STORED AS ORC TBLPROPERTIES ("orc.compress"="SNAPPY")
;

INSERT OVERWRITE TABLE nation SELECT * FROM ${SOURCE}.nation;
INSERT OVERWRITE TABLE region SELECT * FROM ${SOURCE}.region;
INSERT OVERWRITE TABLE part SELECT * FROM ${SOURCE}.part;
INSERT OVERWRITE TABLE supplier SELECT * FROM ${SOURCE}.supplier;
INSERT OVERWRITE TABLE partsupp SELECT * FROM ${SOURCE}.partsupp;
INSERT OVERWRITE TABLE customer SELECT * FROM ${SOURCE}.customer;
INSERT OVERWRITE TABLE lineitem SELECT * FROM ${SOURCE}.lineitem;
INSERT OVERWRITE TABLE orders SELECT * FROM ${SOURCE}.orders;

