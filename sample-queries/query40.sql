
select  
   w_state
  ,i_item_id
  ,sum(case when (d_date < '1998-04-08')
 		then cs_sales_price - coalesce(cr_refunded_cash,0) else cast(0.0 as float) end) as sales_before
  ,sum(case when (d_date >= '1998-04-08') 
 		then cs_sales_price - coalesce(cr_refunded_cash,0) else cast(0.0 as float) end) as sales_after
 from
   catalog_sales left outer join catalog_returns on
       (catalog_sales.cs_order_number = catalog_returns.cr_order_number 
        and catalog_sales.cs_item_sk = catalog_returns.cr_item_sk)
  JOIN warehouse ON catalog_sales.cs_warehouse_sk    = warehouse.w_warehouse_sk 
  JOIN item ON item.i_item_sk          = catalog_sales.cs_item_sk
  JOIN date_dim ON catalog_sales.cs_sold_date_sk    = date_dim.d_date_sk
 where
     i_current_price between 0.99 and 1.49
 and d_date between '1998-03-09' and '1998-05-08'
 and cs_sold_date between '1998-03-09' and '1998-05-08'
 group by
    w_state,i_item_id
 order by w_state,i_item_id
limit 100;


