
select  channel, col_name, d_year, d_qoy, i_category, COUNT(*) sales_cnt, SUM(ext_sales_price) sales_amt FROM (
        SELECT 'store' as channel, 'ss_addr_sk' col_name, d_year, d_qoy, i_category, ss_ext_sales_price ext_sales_price
         FROM store_sales
          JOIN item ON store_sales.ss_item_sk=item.i_item_sk
          JOIN date_dim ON store_sales.ss_sold_date_sk=date_dim.d_date_sk
         WHERE ss_addr_sk IS NULL
        UNION ALL
        SELECT 'web' as channel, 'ws_web_page_sk' col_name, d_year, d_qoy, i_category, ws_ext_sales_price ext_sales_price
         FROM web_sales
          JOIN item ON web_sales.ws_item_sk=item.i_item_sk
          JOIN date_dim ON web_sales.ws_sold_date_sk=date_dim.d_date_sk
         WHERE ws_web_page_sk IS NULL
        UNION ALL
        SELECT 'catalog' as channel, 'cs_warehouse_sk' col_name, d_year, d_qoy, i_category, cs_ext_sales_price ext_sales_price
         FROM catalog_sales
          JOIN item ON catalog_sales.cs_item_sk=item.i_item_sk
          JOIN date_dim ON catalog_sales.cs_sold_date_sk=date_dim.d_date_sk
         WHERE cs_warehouse_sk IS NULL ) sub
GROUP BY channel, col_name, d_year, d_qoy, i_category
ORDER BY channel, col_name, d_year, d_qoy, i_category
limit 100;


