SET SERVEROUTPUT ON;
DECLARE
   max_sk NUMBER;
BEGIN
  FOR w_rec IN (SELECT W_WAREHOUSE_ID
                       ,W_WAREHOUSE_NAME
                       ,W_WAREHOUSE_SQ_FT
                       ,W_STREET_NUMBER
                       ,W_STREET_NAME
                       ,W_STREET_TYPE
                       ,W_SUITE_NUMBER
                       ,W_CITY
                       ,W_COUNTY
                       ,W_STATE
                       ,W_ZIP
                       ,W_COUNTRY
                       ,W_GMT_OFFSET
                   FROM wrhsv) LOOP
    update warehouse set 
            W_WAREHOUSE_NAME=w_rec.W_WAREHOUSE_NAME
           ,W_WAREHOUSE_SQ_FT=w_rec.W_WAREHOUSE_SQ_FT
           ,W_STREET_NUMBER=w_rec.W_STREET_NUMBER
           ,W_STREET_NAME=w_rec.W_STREET_NAME
           ,W_STREET_TYPE=w_rec.W_STREET_TYPE
           ,W_SUITE_NUMBER=w_rec.W_SUITE_NUMBER
           ,W_CITY=w_rec.W_CITY
           ,W_COUNTY=w_rec.W_COUNTY
           ,W_STATE=w_rec.W_STATE
           ,W_ZIP=w_rec.W_ZIP
           ,W_COUNTRY=w_rec.W_COUNTRY
           ,W_GMT_OFFSET=w_rec.W_GMT_OFFSET
  where W_WAREHOUSE_ID=w_rec.W_WAREHOUSE_ID;
  END LOOP;
commit;
END;

.

run;
