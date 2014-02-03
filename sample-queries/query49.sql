
select channel, item, return_ratio, return_rank, currency_rank from
(
select
 'web' as channel ,web.item ,web.return_ratio ,web.return_rank ,web.currency_rank from (
 	select item ,return_ratio ,currency_ratio
 	,rank() over (order by return_ratio) as return_rank
 	,rank() over (order by currency_ratio) as currency_rank
 	from (	select ws.ws_item_sk as item
 		,(cast(sum(coalesce(wr.wr_return_quantity,0)) as decimal)/
 		cast(sum(coalesce(ws.ws_quantity,0)) as decimal )) as return_ratio
 		,(cast(sum(coalesce(wr.wr_return_amt,0)) as decimal)/
 		cast(sum(coalesce(ws.ws_net_paid,0)) as decimal )) as currency_ratio
 		from 
 		 web_sales ws left outer join web_returns wr 
 			on (ws.ws_order_number = wr.wr_order_number and 
 			ws.ws_item_sk = wr.wr_item_sk)
                 JOIN date_dim ON ws.ws_sold_date_sk = date_dim.d_date_sk
 		where 
 			wr.wr_return_amt > 10000 and ws.ws_net_profit > 1 and ws.ws_net_paid > 0
                         and ws.ws_quantity > 0 and d_year = 2000 and d_moy = 12
                         and ws_sold_date between '2000-12-01' and '2000-12-31'
 		group by ws.ws_item_sk
 	) in_web
 ) web
 where ( web.return_rank <= 10 or web.currency_rank <= 10)
 union all
 select 'catalog' as channel ,catalog.item ,catalog.return_ratio ,catalog.return_rank ,catalog.currency_rank from (
 	select item ,return_ratio ,currency_ratio
 	,rank() over (order by return_ratio) as return_rank
 	,rank() over (order by currency_ratio) as currency_rank
 	from (	select 
 		cs.cs_item_sk as item
 		,(cast(sum(coalesce(cr.cr_return_quantity,0)) as decimal)/
 		cast(sum(coalesce(cs.cs_quantity,0)) as decimal )) as return_ratio
 		,(cast(sum(coalesce(cr.cr_return_amount,0)) as decimal)/
 		cast(sum(coalesce(cs.cs_net_paid,0)) as decimal )) as currency_ratio
 		from 
 		catalog_sales cs left outer join catalog_returns cr
 			on (cs.cs_order_number = cr.cr_order_number and 
 			cs.cs_item_sk = cr.cr_item_sk)
                JOIN date_dim ON cs.cs_sold_date_sk = date_dim.d_date_sk
 		where 
 			cr.cr_return_amount > 10000 and cs.cs_net_profit > 1 and cs.cs_net_paid > 0
                         and cs.cs_quantity > 0 and d_year = 2000 and d_moy = 12
                         and cs_sold_date between '2000-12-01' and '2000-12-31'
                 group by cs.cs_item_sk
 	) in_cat
 ) catalog
 where ( catalog.return_rank <= 10 or catalog.currency_rank <=10)
 union all
 select 
 'store' as channel ,store.item ,store.return_ratio ,store.return_rank ,store.currency_rank from (
 	select item ,return_ratio ,currency_ratio
 	,rank() over (order by return_ratio) as return_rank
 	,rank() over (order by currency_ratio) as currency_rank
 	from (	select sts.ss_item_sk as item
 		,(cast(sum(coalesce(sr.sr_return_quantity,0)) as decimal)/cast(sum(coalesce(sts.ss_quantity,0)) as decimal )) as return_ratio
 		,(cast(sum(coalesce(sr.sr_return_amt,0)) as decimal)/cast(sum(coalesce(sts.ss_net_paid,0)) as decimal )) as currency_ratio
 		from 
 		store_sales sts left outer join store_returns sr
 			on (sts.ss_ticket_number = sr.sr_ticket_number and sts.ss_item_sk = sr.sr_item_sk)
                JOIN date_dim ON sts.ss_sold_date_sk = date_dim.d_date_sk
 		where 
 			sr.sr_return_amt > 10000 and sts.ss_net_profit > 1 and sts.ss_net_paid > 0 
                         and sts.ss_quantity > 0 and d_year = 2000 and d_moy = 12
                         and ss_sold_date between '2000-12-01' and '2000-12-31'
 		group by sts.ss_item_sk
 	) in_store
 ) store
 where  ( store.return_rank <= 10 or store.currency_rank <= 10)
) sub
 order by channel, return_rank, currency_rank
 limit 100;

