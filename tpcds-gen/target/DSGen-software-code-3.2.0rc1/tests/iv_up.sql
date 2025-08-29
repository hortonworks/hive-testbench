drop table s_inventory;
create table s_inventory as 
(select w_warehouse_id invn_warehouse_id 
       ,i_item_id invn_item_id
       ,d_date invn_date
       ,inv_quantity_on_hand invn_qty_on_hand
 from inventory
     ,warehouse
     ,item
     ,date_dim
 where inv_warehouse_sk = w_warehouse_sk
   and inv_item_sk = i_item_sk
   and i_rec_end_date is null
   and inv_date_sk = d_date_sk
   and d_year = 2001
   and d_dom between 10 and 15
);
delete from s_inventory where (invn_warehouse_id,invn_item_id,invn_date) in (select invn_warehouse_id,invn_item_id,invn_date from (select invn_warehouse_id,invn_item_id,invn_date,count(*) from s_inventory group by invn_warehouse_id,invn_item_id,invn_date having count(*) > 1));
