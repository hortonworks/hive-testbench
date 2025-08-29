SET SERVEROUTPUT ON;
DECLARE
   max_sk NUMBER;
BEGIN
  FOR ca_rec IN (SELECT CA_ADDRESS_ID
                       ,CA_STREET_NUMBER
                       ,CA_STREET_NAME
                       ,CA_STREET_TYPE
                       ,CA_SUITE_NUMBER
                       ,CA_CITY
                       ,CA_COUNTY
                       ,CA_STATE
                       ,CA_ZIP
                       ,CA_COUNTRY
                       ,CA_GMT_OFFSET
                       ,CA_LOCATION_TYPE
                 from cadrv) LOOP
    update customer_address set 
 CA_STREET_NUMBER=ca_rec.CA_STREET_NUMBER
,CA_STREET_NAME=ca_rec.CA_STREET_NAME
,CA_STREET_TYPE=ca_rec.CA_STREET_TYPE
,CA_SUITE_NUMBER=ca_rec.CA_SUITE_NUMBER
,CA_CITY=ca_rec.CA_CITY
,CA_COUNTY=ca_rec.CA_COUNTY
,CA_STATE=ca_rec.CA_STATE
,CA_ZIP=ca_rec.CA_ZIP
,CA_COUNTRY=ca_rec.CA_COUNTRY
,CA_GMT_OFFSET=ca_rec.CA_GMT_OFFSET
,CA_LOCATION_TYPE=ca_rec.CA_LOCATION_TYPE
  where CA_ADDRESS_ID=ca_rec.CA_ADDRESS_ID;
  END LOOP;
commit;
END;

.

run;
