drop view q21_tmp1_cached;
drop view q21_tmp2_cached;

create view q21_tmp1_cached as
select
	l_orderkey,
	count(distinct l_suppkey) as count_suppkey,
	max(l_suppkey) as max_suppkey
from
	lineitem
where
	l_orderkey is not null
group by
	l_orderkey;

create view q21_tmp2_cached as
select
	l_orderkey,
	count(distinct l_suppkey) count_suppkey,
	max(l_suppkey) as max_suppkey
from
	lineitem
where
	l_receiptdate > l_commitdate
	and l_orderkey is not null
group by
	l_orderkey;

select
	s_name,
	count(1) as numwait
from (
	select s_name from (
		select
			s_name,
			t2.l_orderkey,
			l_suppkey,
			count_suppkey,
			max_suppkey
		from
			q21_tmp2_cached t2 right outer join (
			select
				s_name,
				l_orderkey,
				l_suppkey from (
				select
					s_name,
					t1.l_orderkey,
					l_suppkey,
					count_suppkey,
					max_suppkey
				from
					q21_tmp1_cached t1 join (
						select
							s_name,
							l_orderkey,
							l_suppkey
						from
							orders o join (
							select
								s_name,
								l_orderkey,
								l_suppkey
							from
								nation n join supplier s
							on
								s.s_nationkey = n.n_nationkey
								and n.n_name = 'SAUDI ARABIA'
								join lineitem l
							on
								s.s_suppkey = l.l_suppkey
							where
								l.l_receiptdate > l.l_commitdate
								and l.l_orderkey is not null
						) l1 on o.o_orderkey = l1.l_orderkey and o.o_orderstatus = 'F'
					) l2 on l2.l_orderkey = t1.l_orderkey
				) a
			where
				(count_suppkey > 1)
				or ((count_suppkey=1)
				and (l_suppkey <> max_suppkey))
		) l3 on l3.l_orderkey = t2.l_orderkey
	) b
	where
		(count_suppkey is null)
		or ((count_suppkey=1)
		and (l_suppkey = max_suppkey))
) c
group by
	s_name
order by
	numwait desc,
	s_name 
limit 100;
