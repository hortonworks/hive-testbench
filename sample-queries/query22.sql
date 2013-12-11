
select  i_product_name
             ,i_brand
             ,i_class
             ,i_category
             ,avg(inv_quantity_on_hand) qoh
       from inventory
           JOIN date_dim ON inventory.inv_date_sk=date_dim.d_date_sk
           JOIN item ON inventory.inv_item_sk=item.i_item_sk
           JOIN warehouse ON inventory.inv_warehouse_sk = warehouse.w_warehouse_sk
       where 
              d_month_seq between 1193 and 1193 + 11
       group by i_product_name ,i_brand ,i_class ,i_category with rollup
order by qoh, i_product_name, i_brand, i_class, i_category
limit 100;

