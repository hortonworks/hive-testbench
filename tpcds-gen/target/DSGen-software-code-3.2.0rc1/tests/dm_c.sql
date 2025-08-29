SET SERVEROUTPUT ON;
BEGIN
  FOR c_rec IN (SELECT C_CUSTOMER_ID
                      ,C_CURRENT_CDEMO_SK
                      ,C_CURRENT_HDEMO_SK
                      ,C_CURRENT_ADDR_SK
                      ,C_FIRST_SHIPTO_DATE_SK
                      ,C_FIRST_SALES_DATE_SK
                      ,C_SALUTATION
                      ,C_FIRST_NAME
                      ,C_LAST_NAME
                      ,C_PREFERRED_CUST_FLAG
                      ,C_BIRTH_DAY
                      ,C_BIRTH_MONTH
                      ,C_BIRTH_YEAR
                      ,C_BIRTH_COUNTRY
                      ,C_LOGIN
                      ,C_EMAIL_ADDRESS
                      ,C_LAST_REVIEW_DATE
                 from custv) LOOP
    update customer set 
 C_CUSTOMER_ID=c_rec.C_CUSTOMER_ID
,C_CURRENT_CDEMO_SK=c_rec.C_CURRENT_CDEMO_SK
,C_CURRENT_HDEMO_SK=c_rec.C_CURRENT_HDEMO_SK
,C_CURRENT_ADDR_SK=c_rec.C_CURRENT_ADDR_SK
,C_FIRST_SHIPTO_DATE_SK=c_rec.C_FIRST_SHIPTO_DATE_SK
,C_FIRST_SALES_DATE_SK=c_rec.C_FIRST_SALES_DATE_SK
,C_SALUTATION=c_rec.C_SALUTATION
,C_FIRST_NAME=c_rec.C_FIRST_NAME
,C_LAST_NAME=c_rec.C_LAST_NAME
,C_PREFERRED_CUST_FLAG=c_rec.C_PREFERRED_CUST_FLAG
,C_BIRTH_DAY=c_rec.C_BIRTH_DAY
,C_BIRTH_MONTH=c_rec.C_BIRTH_MONTH
,C_BIRTH_YEAR=c_rec.C_BIRTH_YEAR
,C_BIRTH_COUNTRY=c_rec.C_BIRTH_COUNTRY
,C_LOGIN=c_rec.C_LOGIN
,C_EMAIL_ADDRESS=c_rec.C_EMAIL_ADDRESS
,C_LAST_REVIEW_DATE=c_rec.C_LAST_REVIEW_DATE
  where c_customer_id=c_rec.c_customer_id;
  END LOOP;
commit;
END;

.

run;
