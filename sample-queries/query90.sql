
select  cast(amc as decimal)/cast(pmc as decimal) am_pm_ratio
 from ( select count(*) amc
       from web_sales
        JOIN household_demographics ON web_sales.ws_ship_hdemo_sk = household_demographics.hd_demo_sk
        JOIN time_dim ON web_sales.ws_sold_time_sk = time_dim.t_time_sk
        JOIN web_page ON web_sales.ws_web_page_sk = web_page.wp_web_page_sk
       where
             time_dim.t_hour between 6 and 6+1
         and household_demographics.hd_dep_count = 8
         and web_page.wp_char_count between 5000 and 5200) at JOIN
      ( select count(*) pmc
       from web_sales
        JOIN household_demographics ON web_sales.ws_ship_hdemo_sk = household_demographics.hd_demo_sk
        JOIN time_dim ON web_sales.ws_sold_time_sk = time_dim.t_time_sk
        JOIN web_page ON web_sales.ws_web_page_sk = web_page.wp_web_page_sk
       where
             time_dim.t_hour between 14 and 14+1
         and household_demographics.hd_dep_count = 8
         and web_page.wp_char_count between 5000 and 5200) pt
 order by am_pm_ratio
 limit 100;


