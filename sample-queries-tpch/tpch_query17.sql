with q17_part as (
  select p_partkey from part where  
  p_brand = 'Brand#23'
  and p_container = 'MED BOX'
),
q17_avg as (
  select l_partkey as t_partkey, 0.2 * avg(l_quantity) as t_avg_quantity
  from lineitem 
  where l_partkey IN (select p_partkey from q17_part)
  group by l_partkey
),
q17_price as (
  select
  l_quantity,
  l_partkey,
  l_extendedprice
  from
  lineitem
  where
  l_partkey IN (select p_partkey from q17_part)
)
select cast(sum(l_extendedprice) / 7.0 as decimal(32,2)) as avg_yearly
from q17_avg, q17_price
where 
t_partkey = l_partkey and l_quantity < t_avg_quantity;
