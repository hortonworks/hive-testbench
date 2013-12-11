select i_item_id
      ,i_item_desc
      ,i_current_price
from item i
     join inventory inv on (inv.inv_item_sk = i.i_item_sk)
     join store_sales ss on (ss.ss_item_sk = i.i_item_sk)
where i_current_price between 0.0 and 0.0+30.0
and inv_date between '1998-01-01' and '1998-03-02'
and i_manufact_id in (11,22,33,44)
and inv_quantity_on_hand between 100 and 500
group by i_item_id,i_item_desc,i_current_price
order by i_item_id
limit 100;
