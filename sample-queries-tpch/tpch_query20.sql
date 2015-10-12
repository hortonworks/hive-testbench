-- explain formatted 
with tmp1 as (
    select p_partkey from part where p_name like 'forest%'
),
tmp2 as (
    select s_name, s_address, s_suppkey
    from supplier, nation
    where s_nationkey = n_nationkey
    and n_name = 'CANADA'
),
tmp3 as (
    select l_partkey, 0.5 * sum(l_quantity) as sum_quantity, l_suppkey
    from lineitem, tmp2
    where l_shipdate >= '1994-01-01' and l_shipdate <= '1995-01-01'
    and l_suppkey = s_suppkey 
    group by l_partkey, l_suppkey
),
tmp4 as (
    select ps_partkey, ps_suppkey, ps_availqty
    from partsupp 
    where ps_partkey IN (select p_partkey from tmp1)
),
tmp5 as (
select
    ps_suppkey
from
    tmp4, tmp3
where
    ps_partkey = l_partkey
    and ps_suppkey = l_suppkey
    and ps_availqty > sum_quantity
)
select
    s_name,
    s_address
from
    supplier
where
    s_suppkey IN (select ps_suppkey from tmp5)
order by s_name;
