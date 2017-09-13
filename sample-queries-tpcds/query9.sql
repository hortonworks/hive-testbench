-- start query 1 in stream 0 using template query9.tpl and seed 1490436826
with bucket1q as (
  select
  count(*) ct,
  avg(ss_ext_list_price) alp,
  avg(ss_net_paid_inc_tax) anp
  from store_sales where ss_quantity between 1 and 20
),
bucket2q as (
  select
  count(*) ct,
  avg(ss_ext_list_price) alp,
  avg(ss_net_paid_inc_tax) anp
  from store_sales where ss_quantity between 21 and 40
),
bucket3q as (
  select
  count(*) ct,
  avg(ss_ext_list_price) alp,
  avg(ss_net_paid_inc_tax) anp
  from store_sales where ss_quantity between 41 and 60
),
bucket4q as (
  select
  count(*) ct,
  avg(ss_ext_list_price) alp,
  avg(ss_net_paid_inc_tax) anp
  from store_sales where ss_quantity between 61 and 80
),
bucket5q as (
  select
  count(*) ct,
  avg(ss_ext_list_price) alp,
  avg(ss_net_paid_inc_tax) anp
  from store_sales where ss_quantity between 81 and 100
)
select
       case when bucket1q.ct > 409437
            then bucket1q.alp
            else bucket1q.anp end bucket1,
       case when bucket1q.ct > 4595804
            then bucket1q.alp
            else bucket1q.anp end bucket1,
       case when bucket1q.ct > 7887297
            then bucket1q.alp
            else bucket1q.anp end bucket1,
       case when bucket1q.ct > 10872978
            then bucket1q.alp
            else bucket1q.anp end bucket1,
       case when bucket1q.ct > 43571537
            then bucket1q.alp
            else bucket1q.anp end bucket1
from bucket1q, bucket2q, bucket3q, bucket4q, bucket5q;

-- end query 1 in stream 0 using template query9.tpl
