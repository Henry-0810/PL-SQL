-- For Example ch04_2b.sql
set serveroutput on
DECLARE
   v_num1 NUMBER := 0+1;
   v_num2 NUMBER := 1;
BEGIN
   DBMS_OUTPUT.PUT_LINE ('Before IF statement…');
   IF v_num1 = v_num2 
   THEN
      DBMS_OUTPUT.PUT_LINE ('v_num1 = v_num2');
   ELSE
      DBMS_OUTPUT.PUT_LINE ('v_num1 != v_num2');
   END IF;
   DBMS_OUTPUT.PUT_LINE ('After IF statement…');
END;