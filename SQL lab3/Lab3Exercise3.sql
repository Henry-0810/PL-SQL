set serveroutput on
DECLARE
    v_max_id NUMBER(3,0);
BEGIN
   SELECT MAX(student_id)
     INTO v_max_id
     FROM student;
   INSERT into student
      (student_id, last_name, zip,
       created_by, created_date,
       modified_by, modified_date,
       registration_date
      )
     VALUES (v_max_id + 1, 'Rosenzweig',
             11238, 'BROSENZ ', '01-JAN-2014',
             'BROSENZ', '10-JAN-2014', '15-FEB-2014'
            );
    DBMS_OUTPUT.PUT_LINE('The max student ID is ' || v_max_id);
END; 