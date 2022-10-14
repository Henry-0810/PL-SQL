-- For Example ch08_6a.sql
set serveroutput on
DECLARE
   v_exists         NUMBER(1);
   v_first_name     VARCHAR2(20);
   v_last_name      VARCHAR2(20);
   v_zip            CHAR(5):= '&sv_zip';
BEGIN
   SELECT count(*)
     INTO v_exists
     FROM zipcode
    WHERE zip = v_zip; 
   
   IF v_exists != 0 
   THEN
      SELECT first_name, last_name
        INTO v_first_name, v_last_name
        FROM student
       WHERE zip = v_zip AND ROWNUM = 1;
      
      DBMS_OUTPUT.PUT_LINE ('The first student with this '||v_zip||' is '||v_first_name ||' ' ||v_last_name);
   ELSE
      DBMS_OUTPUT.PUT_LINE (v_zip||' is not a valid zip');
   END IF;

EXCEPTION
   WHEN VALUE_ERROR OR INVALID_NUMBER
   THEN
      DBMS_OUTPUT.PUT_LINE ('An error has occurred');
END;