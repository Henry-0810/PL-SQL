-- For Example ch04_6a.sql
set serveroutput on
DECLARE
   v_date DATE := TO_DATE('&sv_user_date', 'DD-MON-YYYY');
   v_day  VARCHAR2(15); 
BEGIN
   v_day := RTRIM(TO_CHAR(v_date, 'DAY'));
   
   IF v_day IN ('SATURDAY', 'SUNDAY') 
   THEN
      DBMS_OUTPUT.PUT_LINE (v_date||' falls on weekend'); 
   ELSE
      DBMS_OUTPUT.PUT_LINE (v_date||' falls on weekdays, '||v_day);
   END IF;
END;