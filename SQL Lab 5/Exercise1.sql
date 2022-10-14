-- For Example ch08_5a.sql
set serveroutput on
DECLARE 
   v_num NUMBER := &sv_num;
BEGIN
   IF v_num >= 0 THEN 
        DBMS_OUTPUT.PUT_LINE ('Square root of '||v_num||' is '||SQRT(v_num));
   ELSE
        DBMS_OUTPUT.PUT_LINE ('An error has occurred');
   END IF;
--EXCEPTION
    --WHEN VALUE_ERROR 
    --THEN
      --DBMS_OUTPUT.PUT_LINE ('An error has occurred');
    
END;