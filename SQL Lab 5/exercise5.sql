SET SERVEROUTPUT ON
DECLARE
    v_instructor_id NUMBER := &sv_instructor_id;
    v_tot_sections NUMBER;
    v_name VARCHAR2(30);
    e_too_many_sections EXCEPTION;
BEGIN
    SELECT COUNT(*) INTO v_tot_sections
    FROM section WHERE instructor_id = v_instructor_id;
    
    IF v_tot_sections >= 10 THEN
        RAISE e_too_many_sections;
    ELSE
        SELECT RTRIM(first_name)||' '||RTRIM(last_name) INTO v_name 
        FROM instructor WHERE instructor_id = v_instructor_id;
    DBMS_OUTPUT.PUT_LINE ('Instructor, '||v_name||', teaches '||v_tot_sections||' sections');
    END IF;
EXCEPTION
    WHEN e_too_many_sections THEN
        SELECT RTRIM(first_name)||' '||RTRIM(last_name) INTO v_name 
        FROM instructor WHERE instructor_id = v_instructor_id;
            DBMS_OUTPUT.PUT_LINE ('Instructor, '||v_name||', This instructor teaches too much');
END;