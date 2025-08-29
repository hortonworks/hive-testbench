SET SERVEROUTPUT ON;
DECLARE
   max_sk NUMBER;
BEGIN
  FOR cp_rec IN (SELECT CP_CATALOG_PAGE_ID
                       ,CP_START_DATE_SK
                       ,CP_END_DATE_SK
                       ,CP_DEPARTMENT
                       ,CP_CATALOG_NUMBER
                       ,CP_DESCRIPTION
                       ,CP_TYPE
                   FROM catv) LOOP
    update catalog_page set CP_CATALOG_PAGE_ID=cp_rec.CP_CATALOG_PAGE_ID
                           ,CP_START_DATE_SK=cp_rec.CP_START_DATE_SK
                           ,CP_END_DATE_SK=cp_rec.CP_END_DATE_SK
                           ,CP_DEPARTMENT=cp_rec.CP_DEPARTMENT
                           ,CP_CATALOG_NUMBER=cp_rec.CP_CATALOG_NUMBER
                           ,CP_DESCRIPTION=cp_rec.CP_DESCRIPTION
                           ,CP_TYPE=cp_rec.CP_TYPE
  where CP_CATALOG_PAGE_ID=cp_rec.CP_CATALOG_PAGE_ID;
  END LOOP;
commit;
END;

.

run;
