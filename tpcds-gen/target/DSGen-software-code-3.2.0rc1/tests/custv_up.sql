drop table s_customer;
create table s_customer as
(select C_CUSTOMER_ID CUST_CUSTOMER_ID
       ,C_SALUTATION CUST_SALUTATION
       ,C_LAST_NAME CUST_LAST_NAME
       ,C_FIRST_NAME CUST_FIRST_NAME
       ,C_PREFERRED_CUST_FLAG CUST_PREFFERED_FLAG
       ,d3.d_date CUST_BIRTH_DATE
       ,C_BIRTH_COUNTRY CUST_BIRTH_COUNTRY
       ,C_LOGIN CUST_LOGIN_ID
       ,C_EMAIL_ADDRESS CUST_EMAIL_ADDRESS
       ,d1.d_date CUST_FIRST_SHIPTO_DATE
       ,d2.d_date CUST_FIRST_PURCHASE_DATE
       ,C_LAST_REVIEW_DATE CUST_LAST_REVIEW_DATE
       ,CA_STREET_NUMBER CUST_STREET_NUMBER
       ,CA_SUITE_NUMBER CUST_SUITE_NUMBER
       ,CA_STREET_NAME CUST_STREET_NAME1
       ,CA_STREET_NAME CUST_STREET_NAME2
       ,CA_STREET_TYPE CUST_STREET_TYPE
       ,CA_CITY CUST_CITY
       ,CA_ZIP CUST_ZIP
       ,CA_COUNTY CUST_COUNTY
       ,CA_STATE CUST_STATE
       ,CA_COUNTRY CUST_COUNTRY
       ,CA_LOCATION_TYPE CUST_LOC_TYPE
       ,CD_GENDER CUST_GENDER_CODE
       ,CD_MARITAL_STATUS CUST_MARITAL_STATUS
       ,CD_EDUCATION_STATUS CUST_EDUC_STATUS
       ,CD_CREDIT_RATING CUST_CREDIT_RATING
       ,CD_PURCHASE_ESTIMATE CUST_PURCH_EST
       ,HD_BUY_POTENTIAL CUST_BUY_POTENTIAL
       ,HD_DEP_COUNT CUST_DEPEND_CNT
       ,CD_DEP_EMPLOYED_COUNT CUST_DEPEND_EMP_CNT
       ,CD_DEP_COLLEGE_COUNT CUST_DEPEND_COLLEGE_CNT
       ,HD_VEHICLE_COUNT CUST_VEHICLE_CNT
       ,IB_LOWER_BOUND+800 CUST_ANNUAL_INCOME
from customer
    ,customer_address
    ,customer_demographics
    ,household_demographics
    ,income_band
    ,date_dim d1
    ,date_dim d2
    ,date_dim d3
where c_current_addr_sk = ca_address_sk 
  and d1.d_date_sk = C_FIRST_SHIPTO_DATE_SK
  and d2.d_date_sk = C_FIRST_SALES_DATE_SK
  and extract (day from d3.d_date) = c_birth_day
  and extract (month from d3.d_date) = c_birth_month
  and extract (year from d3.d_date) = c_birth_year
  and C_CURRENT_CDEMO_SK = cd_demo_sk
  and C_CURRENT_HDEMO_SK = hd_demo_sk
  and HD_INCOME_BAND_SK = IB_INCOME_BAND_SK
  and rownum < 1000
);
