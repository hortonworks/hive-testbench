drop table s_web_page;
create table s_web_page as 
(select WP_WEB_PAGE_ID WPAG_WEB_PAGE_ID
       ,d1.d_date WPAG_CREATE_DATE
       ,d2.d_date WPAG_ACCESS_DATE
       ,WP_AUTOGEN_FLAG WPAG_AUTOGEN_FLAG
       ,WP_URL WPAG_URL
       ,WP_TYPE WPAG_TYPE
       ,WP_CHAR_COUNT WPAG_CHAR_COUNT
       ,WP_LINK_COUNT WPAG_LINK_COUNT
       ,WP_IMAGE_COUNT WPAG_IMAGE_COUNT
       ,WP_MAX_AD_COUNT WPAG_MAX_AD_COUNT
from web_page left outer join date_dim d1 on wp_creation_date_sk = d1.d_date_sk
              left outer join date_dim d2 on wp_access_date_sk = d2.d_date_sk
where wp_rec_end_date is null  -- need this to eliminate duplicates
  and rownum < 10
);
