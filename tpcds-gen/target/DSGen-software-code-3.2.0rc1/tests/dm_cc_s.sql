drop SEQUENCE item_seq;
SET SERVEROUTPUT ON;
DECLARE
   max_sk NUMBER;
BEGIN
   SELECT max(cc_call_center_sk)+1 INTO max_sk FROM call_center;
   dbms_output.put_line('max call center sk '||max_sk);
   EXECUTE IMMEDIATE 'CREATE SEQUENCE callcenter_seq INCREMENT BY 1 START WITH '||max_sk||' ORDER';
END;

.

run;
