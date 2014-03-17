drop view q20_tmp1_cached;
drop view q20_tmp2_cached;
drop view q20_tmp3_cached;
drop view q20_tmp4_cached;

create view q20_tmp1_cached as
select distinct p_partkey
from
  part
where
  p_name like 'forest%';

create view q20_tmp2_cached as
select
  l_partkey, l_suppkey, 0.5 * sum(l_quantity) as sum_quantity
from
  lineitem_partitioned_shipdate
where
  l_shipdate >= '1994-01-01'
  and l_shipdate < '1995-01-01'
group by l_partkey, l_suppkey;

create view q20_tmp3_cached as
select
  ps_suppkey, ps_availqty, sum_quantity
from
  partsupp ps join q20_tmp1_cached t1
  on
    ps.ps_partkey = t1.p_partkey
  join q20_tmp2_cached t2
  on
    ps.ps_partkey = t2.l_partkey and ps.ps_suppkey = t2.l_suppkey;

create view q20_tmp4_cached as
select
  ps_suppkey
from
  q20_tmp3_cached
where
  ps_availqty > sum_quantity
group by ps_suppkey;

select
  s_name, s_address
from
  supplier_partitioned_nationkey s join nation n
  on
    s.s_nationkey = n.n_nationkey
    and n.n_name = 'CANADA'
  join q20_tmp4_cached t4
  on
    s.s_suppkey = t4.ps_suppkey
order by s_name;
