
-- following settings are required to generate appropriate number of mappers 
-- for ORC scale factor 200: 
-- orc 200 split side
-- set  mapreduce.input.fileinputformat.split.minsize=55421376;  
-- set  mapreduce.input.fileinputformat.split.maxsize=55421376;  
set  mapreduce.input.fileinputformat.split.minsize=200000000;  
set  mapreduce.input.fileinputformat.split.maxsize=200000000;  
-- for ORC scale factor 1000:
-- set  mapreduce.input.fileinputformat.split.maxsize=1000089600;
-- set  mapreduce.input.fileinputformat.split.minsize=1000089600;

set hive.auto.convert.sortmerge.join=false;
set hive.auto.convert.sortmerge.join.noconditionaltask=false;
set hive.use.tez.natively=true;
set hive.enable.mrr=true;
set hive.vectorized.execution.enabled=true;

select avg(ss_list_price) B1_LP ,count(ss_list_price) B1_CNT from store_sales where ss_quantity  > 0 and ss_quantity < 5 and ( (ss_list_price > 145 and ss_list_price  < 155) or (ss_coupon_amt > 9000 and ss_coupon_amt < 10000) or (ss_wholesale_cost > 50 and ss_wholesale_cost < 71));
