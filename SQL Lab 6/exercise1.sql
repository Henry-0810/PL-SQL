--SET SERVEROUTPUT ON;
--DECLARE
    --CURSOR c_student_name IS SELECT first_name, last_name 
    --FROM student WHERE rownum <= 5;
   -- vr_student_name c_student_name%ROWTYPE;
--BEGIN
    --OPEN c_student_name;
    --LOOP
        --FETCH c_student_name INTO vr_student_name;
        --EXIT WHEN c_student_name%NOTFOUND;
        --DBMS_OUTPUT.PUT_LINE('Student name: '||vr_student_name.first_name||' '||vr_student_name.last_name);
    --END LOOP;
--CLOSE c_student_name;
--END;

SET SERVEROUTPUT ON;
DECLARE
    CURSOR c_student_name IS SELECT first_name, last_name
    FROM student WHERE rownum <= 5;
    vr_student_name c_student_name%ROWTYPE;
BEGIN
    OPEN c_student_name;
    LOOP
        FETCH c_student_name INTO vr_student_name;
        EXIT WHEN c_student_name%NOTFOUND;
    END LOOP;
CLOSE c_student_name;
    DBMS_OUTPUT.PUT_LINE('Student name: '|| vr_student_name.first_name|| ' '||vr_student_name.last_name);
END;