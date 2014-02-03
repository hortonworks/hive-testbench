
select  i_item_id,
        ca_country,
        ca_state, 
        ca_county,
        avg( cast(cs_quantity as decimal)) agg1,
        avg( cast(cs_list_price as decimal)) agg2,
        avg( cast(cs_coupon_amt as decimal)) agg3,
        avg( cast(cs_sales_price as decimal)) agg4,
        avg( cast(cs_net_profit as decimal)) agg5,
        avg( cast(c_birth_year as decimal)) agg6,
        avg( cast(cd1.cd_dep_count as decimal)) agg7
 from catalog_sales
      JOIN customer_demographics cd1 ON catalog_sales.cs_bill_cdemo_sk = cd1.cd_demo_sk
      JOIN customer ON catalog_sales.cs_bill_customer_sk = customer.c_customer_sk
      JOIN customer_demographics cd2 ON customer.c_current_cdemo_sk = cd2.cd_demo_sk
      JOIN customer_address ON customer.c_current_addr_sk = customer_address.ca_address_sk
      JOIN date_dim ON catalog_sales.cs_sold_date_sk = date_dim.d_date_sk
      JOIN item ON catalog_sales.cs_item_sk = item.i_item_sk
 where
       cd1.cd_gender = 'M' and 
       cd1.cd_education_status = 'College' and
       c_birth_month in (9,5,12,4,1,10) and
       d_year = 2001 and
       cs_sold_date between '2001-01-01' and '2001-12-31' and
       ca_state in ('ND','WI','AL'
                   ,'NC','OK','MS','TN')
 group by i_item_id, ca_country, ca_state, ca_county
 order by ca_country,
        ca_state, 
        ca_county,
	i_item_id
 limit 100;


