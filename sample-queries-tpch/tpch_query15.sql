drop view revenue_cached;
drop view max_revenue_cached;

create view revenue_cached as
select
  l_suppkey as supplier_no, sum(l_extendedprice * (1 - l_discount)) as total_revenue
from
  lineitem_partitioned_shipdate
where
  l_shipdate >= '1996-01-01' and l_shipdate < '1996-04-01'
group by l_suppkey;

create view max_revenue_cached as
select
  max(total_revenue) as max_revenue
from
  revenue_cached;

select
  s_suppkey, s_name, s_address, s_phone, total_revenue
from supplier_partitioned_nationkey s join revenue_cached r
  on
    s.s_suppkey = r.supplier_no
  join max_revenue_cached m
  on
    r.total_revenue = m.max_revenue 
order by s_suppkey;
