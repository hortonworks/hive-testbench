drop view lineitem_tmp_cached;

create view lineitem_tmp_cached as
select
  l_partkey as t_partkey, 0.2 * avg(l_quantity) as t_avg_quantity
from
  lineitem_partitioned_shipdate
group by l_partkey;

select
  sum(l_extendedprice) / 7.0 as avg_yearly
from
  (select l_quantity, l_extendedprice, t_avg_quantity from
   lineitem_tmp_cached t join
     (select
        l_quantity, l_partkey, l_extendedprice
      from
        part p join lineitem_partitioned_shipdate l
        on
          p.p_partkey = l.l_partkey
          and p.p_brand = 'Brand#23'
          and p.p_container = 'MED BOX'
      ) l1 on l1.l_partkey = t.t_partkey
   ) a 
where l_quantity < t_avg_quantity;
