select i_item_desc 
      ,i_category 
      ,i_class 
      ,i_current_price
      ,i_item_id
      ,itemrevenue 
      ,itemrevenue*100/sum(itemrevenue) over
          (partition by i_class) as revenueratio
from (select
          i_item_desc
         ,i_category 
         ,i_class 
         ,i_current_price
         ,i_item_id
         ,sum(ss_ext_sales_price) as itemrevenue 
      from store_sales
         join item on (store_sales.ss_item_sk = item.i_item_sk) 
         join date_dim on (store_sales.ss_sold_date_sk = date_dim.d_date_sk)
      where 
         i_category in ('Sports', 'Shoes', 'Books') and year(d_date) = 2001 and month(d_date) = 10 and
	 ss_sold_date between '2001-10-01' and '2001-10-31'
      group by 
          i_item_id
         ,i_item_desc 
         ,i_category
         ,i_class
         ,i_current_price) tmp
order by 
     i_category
    ,i_class
    ,i_item_id
    ,i_item_desc
    ,revenueratio;
