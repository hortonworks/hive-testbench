drop table s_item;
create table s_item as
(select i_item_id item_item_id
       ,i_item_desc item_item_description
       ,i_current_price item_list_price
       ,i_wholesale_cost item_wholesale_cost
       ,i_manager_id item_manager_id
       ,i_size item_size
       ,i_formulation item_formulation
       ,i_color item_color
       ,i_units item_units
       ,i_container item_container
 from item
 where i_rec_end_date is null 
   and rownum < 1000);
-- I need the following statement because of a bug in dbgen that generates some duplicates in item
delete from s_item where item_item_id in (select ITEM_ITEM_ID from (select ITEM_ITEM_ID ,count(*) cnt from s_item group by ITEM_ITEM_ID) where cnt > 1);
