drop SEQUENCE web_page_seq;
--SET SERVEROUTPUT ON;
DECLARE
   max_sk NUMBER;
BEGIN
   SELECT max(WP_WEB_PAGE_SK)+1 INTO max_sk FROM web_page;
   dbms_output.put_line('max WP_WEB_PAGE_SK '||max_sk);
   EXECUTE IMMEDIATE 'CREATE SEQUENCE web_page_seq INCREMENT BY 1 START WITH '||max_sk||' ORDER';
END;

.

run;
