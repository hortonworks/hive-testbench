SELECT count(distinct ws1.ws_order_number) as order_count,
               sum(ws_ext_ship_cost) as total_shipping_cost,
               sum(ws_net_profit) as total_net_profit
FROM web_sales ws1
JOIN customer_address ca ON (ws1.ws_ship_addr_sk = ca.ca_address_sk)
JOIN web_site s ON (ws1.ws_web_site_sk = s.web_site_sk)
JOIN date_dim d ON (ws1.ws_ship_date_sk = d.d_date_sk)
LEFT SEMI JOIN (SELECT ws2.ws_order_number as ws_order_number
                               FROM web_sales ws2 JOIN web_sales ws3
                               ON (ws2.ws_order_number = ws3.ws_order_number)
                               WHERE ws2.ws_warehouse_sk <> ws3.ws_warehouse_sk
			       and ws2.ws_sold_date_sk between 2451300 and 2451361
			       and ws3.ws_sold_date_sk between 2451300 and 2451361
			) ws_wh1
ON (ws1.ws_order_number = ws_wh1.ws_order_number)
LEFT OUTER JOIN web_returns wr1 ON (ws1.ws_order_number = wr1.wr_order_number)
WHERE d.d_date between '1999-05-01' and '1999-07-01' and
ws_sold_date_sk between 2451300 and 2451361 and ca.ca_state = 'TX' 
and s.web_company_name = 'pri' and wr1.wr_order_number is null
limit 100;
