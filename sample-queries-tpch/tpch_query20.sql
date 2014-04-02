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
	l_partkey,
	l_suppkey,
	0.5 * sum(l_quantity) as sum_quantity
from
	lineitem
where
	l_shipdate >= '1994-01-01'
	and l_shipdate < '1995-01-01'
group by l_partkey, l_suppkey;

create view q20_tmp3_cached as
select
	ps_suppkey,
	ps_availqty,
	sum_quantity
from
	partsupp, q20_tmp1_cached, q20_tmp2_cached
where
	ps_partkey = p_partkey
	and ps_partkey = l_partkey
	and ps_suppkey = l_suppkey;

create view q20_tmp4_cached as
select
	ps_suppkey
from
	q20_tmp3_cached
where
	ps_availqty > sum_quantity
group by ps_suppkey;

select
	s_name,
	s_address
from
	supplier,
	nation,
	q20_tmp4_cached
where
	s_nationkey = n_nationkey
	and n_name = 'CANADA'
	and s_suppkey = ps_suppkey
order by s_name;
