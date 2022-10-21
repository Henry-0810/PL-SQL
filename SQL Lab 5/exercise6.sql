SET SERVEROUTPUT ON
DECLARE
    v_section_id NUMBER(3) := &sv_section_id;
    v_total NUMBER(3);
    e_too_many_students EXCEPTION;
BEGIN
    SELECT count(*)
    INTO v_total
    FROM enrollment
    WHERE section_id = v_section_id;
    
    IF v_total >= 10 THEN
        RAISE e_too_many_students;
    ELSE
        DBMS_OUTPUT.PUT_LINE ('Number of students in a section: '||v_total);
    END IF;
EXCEPTION
    WHEN e_too_many_students THEN
        DBMS_OUTPUT.PUT_LINE ('TOO MANY STUDENTS!!!');
END;