-- http://www.tpc.org/tpc_documents_current_versions/pdf/tpc-h_v2.17.2.pdf
-- See 1.3.1 Datatype Definitions.
-- BIGINT for Identifier, DECIMAL -> DECIMAL(12,2)

CREATE EXTERNAL TABLE lineitem (
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
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE 
LOCATION '${LOCATION}/lineitem';

CREATE EXTERNAL TABLE part (
  p_partkey BIGINT,
  p_name STRING,
  p_mfgr STRING,
  p_brand STRING,
  p_type STRING,
  p_size INT,
  p_container STRING,
  p_retailprice DECIMAL(12,2),
  p_comment STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE 
LOCATION '${LOCATION}/part/';

CREATE EXTERNAL TABLE supplier (
  s_suppkey BIGINT,
  s_name STRING,
  s_address STRING,
  s_nationkey BIGINT,
  s_phone STRING,
  s_acctbal DECIMAL(12,2),
  s_comment STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE 
LOCATION '${LOCATION}/supplier/';

CREATE EXTERNAL TABLE partsupp (
  ps_partkey BIGINT,
  ps_suppkey BIGINT,
  ps_availqty INT,
  ps_supplycost DECIMAL(12,2),
  ps_comment STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE
LOCATION'${LOCATION}/partsupp';

CREATE EXTERNAL TABLE nation (
  n_nationkey BIGINT,
  n_name STRING,
  n_regionkey BIGINT,
  n_comment STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE
LOCATION '${LOCATION}/nation';

CREATE EXTERNAL TABLE region (
  r_regionkey BIGINT,
  r_name STRING,
  r_comment STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE
LOCATION '${LOCATION}/region';

CREATE EXTERNAL TABLE customer (
  c_custkey BIGINT,
  c_name STRING,
  c_address STRING,
  c_nationkey BIGINT,
  c_phone STRING,
  c_acctbal DECIMAL(12,2),
  c_mktsegment STRING,
  c_comment STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE
LOCATION '${LOCATION}/customer';

CREATE EXTERNAL TABLE orders (
  o_orderkey BIGINT,
  o_custkey BIGINT,
  o_orderstatus STRING,
  o_totalprice DECIMAL(12,2),
  o_orderdate DATE,
  o_orderpriority STRING,
  o_clerk STRING,
  o_shippriority INT,
  o_comment STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE
LOCATION '${LOCATION}/orders';
