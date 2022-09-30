-- For Example ch04_3a.sql
set serveroutput on
DECLARE
   v_num NUMBER := &sv_num;
BEGIN
   DBMS_OUTPUT.PUT_LINE ('Before IF statement…');
   IF v_num < 0 
   THEN
      DBMS_OUTPUT.PUT_LINE (v_num||' is a negative number');
   ELSIF v_num = 0 
   THEN
      DBMS_OUTPUT.PUT_LINE (v_num||' is equal to zero');
   ELSE
      DBMS_OUTPUT.PUT_LINE (v_num||' is a positive number');
  END IF;
  DBMS_OUTPUT.PUT_LINE ('After IF statement');
END;
