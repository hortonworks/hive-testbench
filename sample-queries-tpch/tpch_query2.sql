drop view q2_minimum_cost_supplier_tmp1_cached;
drop view q2_minimum_cost_supplier_tmp2_cached;

create view q2_minimum_cost_supplier_tmp1_cached as
select
  s.s_acctbal, s.s_name, n.n_name, p.p_partkey, ps.ps_supplycost, p.p_mfgr, s.s_address, s.s_phone, s.s_comment
from
  nation n join region r
  on
    n.n_regionkey = r.r_regionkey and r.r_name = 'EUROPE'
  join supplier_partitioned_nationkey s
  on
s.s_nationkey = n.n_nationkey
  join partsupp ps
  on
s.s_suppkey = ps.ps_suppkey
  join part p
  on
    p.p_partkey = ps.ps_partkey and p.p_size = 15 and p.p_type like '%BRASS' ;

create view q2_minimum_cost_supplier_tmp2_cached as
select
  p_partkey, min(ps_supplycost) as ps_min_supplycost
from
  q2_minimum_cost_supplier_tmp1_cached
group by p_partkey;

select
  t1.s_acctbal, t1.s_name, t1.n_name, t1.p_partkey, t1.p_mfgr, t1.s_address, t1.s_phone, t1.s_comment
from
  q2_minimum_cost_supplier_tmp1_cached t1 join q2_minimum_cost_supplier_tmp2_cached t2
on
  t1.p_partkey = t2.p_partkey and t1.ps_supplycost=t2.ps_min_supplycost
order by s_acctbal desc, n_name, s_name, p_partkey 
limit 100;
