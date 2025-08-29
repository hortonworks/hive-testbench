drop table s_warehouse;
create table s_warehouse as
(select W_WAREHOUSE_ID WRHS_WAREHOUSE_ID
       ,W_WAREHOUSE_name WRHS_WAREHOUSE_DESC
       ,W_WAREHOUSE_SQ_FT WRHS_WAREHOUSE_SQ_FT
from warehouse
where rownum < 10);
