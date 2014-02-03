
select inv1.w_warehouse_sk,inv1.i_item_sk,inv1.d_moy,inv1.mean, inv1.cov
        ,inv2.w_warehouse_sk,inv2.i_item_sk,inv2.d_moy,inv2.mean, inv2.cov
from
(select w_warehouse_name,w_warehouse_sk,i_item_sk,d_moy
       ,stdev,mean, case mean when cast (0 as double) then null else stdev/mean end cov
 from(select w_warehouse_name,w_warehouse_sk,i_item_sk,d_moy
            ,stddev_samp(inv_quantity_on_hand) stdev,avg(inv_quantity_on_hand) mean
      from inventory
          JOIN item ON inventory.inv_item_sk = item.i_item_sk
          JOIN warehouse ON inventory.inv_warehouse_sk = warehouse.w_warehouse_sk
          JOIN date_dim ON inventory.inv_date_sk = date_dim.d_date_sk
      where 
         d_year =2000
         and inv_date between '2000-01-01' and '2000-12-31'
      group by w_warehouse_name,w_warehouse_sk,i_item_sk,d_moy) foo
 where case mean when cast (0 as double) then cast (0 as double) else stdev/mean end > 1) inv1
JOIN
(select w_warehouse_name,w_warehouse_sk,i_item_sk,d_moy
       ,stdev,mean, case mean when cast (0 as double) then null else stdev/mean end cov
 from(select w_warehouse_name,w_warehouse_sk,i_item_sk,d_moy
            ,stddev_samp(inv_quantity_on_hand) stdev,avg(inv_quantity_on_hand) mean
      from inventory
          JOIN item ON inventory.inv_item_sk = item.i_item_sk
          JOIN warehouse ON inventory.inv_warehouse_sk = warehouse.w_warehouse_sk
          JOIN date_dim ON inventory.inv_date_sk = date_dim.d_date_sk
      where 
         d_year =2000
         and inv_date between '2000-01-01' and '2000-12-31'
      group by w_warehouse_name,w_warehouse_sk,i_item_sk,d_moy) foo
 where case mean when cast (0 as double) then cast (0 as double) else stdev/mean end > 1) inv2
ON
 inv1.i_item_sk = inv2.i_item_sk
 and inv1.w_warehouse_sk =  inv2.w_warehouse_sk
where
      inv1.d_moy=1
  and inv2.d_moy=2
order by inv1.w_warehouse_sk,inv1.i_item_sk,inv1.d_moy,inv1.mean,inv1.cov
        ,inv2.d_moy,inv2.mean, inv2.cov;
