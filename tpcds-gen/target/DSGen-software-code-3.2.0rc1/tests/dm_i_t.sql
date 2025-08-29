drop table itemv;
create table itemv as
select item_seq.nextVal i_item_sk
      ,item_item_id i_item_id
      ,sysdate i_rec_start_date
      ,cast(NULL as date) i_rec_end_date
      ,item_item_description i_item_desc
      ,item_list_price i_current_price
      ,item_wholesale_cost i_wholesalecost
      ,i_brand_id
      ,i_brand
      ,i_class_id
      ,i_class
      ,i_category_id
      ,i_category
      ,i_manufact_id
      ,i_manufact
      ,item_size i_size
      ,item_formulation i_formulation
      ,item_color i_color
      ,item_units i_units
      ,item_container i_container
      ,item_manager_id i_manager
      ,i_product_name
from s_item_m,
     item
where item_item_id = i_item_id
  and i_rec_end_date is null;
select count(*) from s_item_m;
select count(*) from itemv;
