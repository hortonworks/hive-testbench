drop SEQUENCE item_seq;
--SET SERVEROUTPUT ON;
DECLARE
   max_sk NUMBER;
BEGIN
   SELECT max(i_item_sk)+1 INTO max_sk FROM item;
   dbms_output.put_line('max item sk '||max_sk);
   EXECUTE IMMEDIATE 'CREATE SEQUENCE item_seq INCREMENT BY 1 START WITH '||max_sk||' ORDER';
END;

.

run;
