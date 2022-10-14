SET SERVEROUTPUT ON
DECLARE
  v_student_id NUMBER := &sv_student_id;
  v_first_name VARCHAR2(30) := '&sv_first_name';
  v_last_name VARCHAR2(30) := '&sv_last_name';
  v_zip CHAR(5) := '&sv_zip';
  v_name VARCHAR2(50);
BEGIN
-- Code to do a SELECT INTO to check the student with the v_student_id 
    SELECT first_name, last_name
    INTO v_first_name, v_last_name
    FROM student
    WHERE student_id = v_student_id;
    
    DBMS_OUTPUT.PUT_LINE ('The first student with this '||v_zip||' is '||v_first_name ||' ' ||v_last_name);
   
EXCEPTION
WHEN NO_DATA_FOUND THEN
    INSERT INTO student
            (student_id, first_name, last_name, registration_date)
            VALUES
            (v_student_id, v_first_name, v_last_name, SYSDATE);
-- Code to do the INSERT here. Use SYSDATE to get the date and USER to get 
END;