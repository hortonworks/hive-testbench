
select  *
 from(select w_warehouse_name
            ,i_item_id
            ,sum(case when (d_date < '1998-04-08')
	                then inv_quantity_on_hand 
                      else 0 end) as inv_before
            ,sum(case when (d_date >= '1998-04-08')
                      then inv_quantity_on_hand 
                      else 0 end) as inv_after
   from inventory
       JOIN warehouse ON inventory.inv_warehouse_sk   = warehouse.w_warehouse_sk
       JOIN item ON item.i_item_sk          = inventory.inv_item_sk
       JOIN date_dim ON inventory.inv_date_sk    = date_dim.d_date_sk
   where i_current_price between 0.99 and 1.49
     and d_date between '1998-03-09' and '1998-05-08'
     and inv_date between '1998-03-09' and '1998-05-08'
   group by w_warehouse_name, i_item_id) x
 where (case when inv_before > 0 
             then inv_after / inv_before 
             else null
             end) between 2.0/3.0 and 3.0/2.0
 order by w_warehouse_name
         ,i_item_id
 limit 100;


