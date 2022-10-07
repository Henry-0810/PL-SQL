-- ch06_10a.sql#
set serveroutput on
DECLARE
   v_factorial NUMBER := 1;
BEGIN
   FOR v_counter IN REVERSE 1..10 LOOP
      v_factorial := v_factorial * v_counter;
      v_counter := v_counter + 5;
   END LOOP;
   
   -- control resumes here
   DBMS_OUTPUT.PUT_LINE ('Factorial of ten is:'||v_factorial);
END;
