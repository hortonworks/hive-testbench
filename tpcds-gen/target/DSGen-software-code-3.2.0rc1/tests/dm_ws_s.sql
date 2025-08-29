drop SEQUENCE web_site_seq;
--SET SERVEROUTPUT ON;
DECLARE
   max_sk NUMBER;
BEGIN
   SELECT max(web_site_sk)+1 INTO max_sk FROM web_site;
   dbms_output.put_line('max web_site_sk'||max_sk);
   EXECUTE IMMEDIATE 'CREATE SEQUENCE web_site_seq INCREMENT BY 1 START WITH '||max_sk||' ORDER';
END;

.

run;
