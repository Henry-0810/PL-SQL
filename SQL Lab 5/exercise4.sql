SET SERVEROUTPUT ON
DECLARE
    v_instructor_id NUMBER := &sv_instructor_id;
    v_name VARCHAR2(50);
    v_total NUMBER;
BEGIN
-- Check the instructor exists by doing a SELECT INTO
-- Do a count(*) on the section table to find how many sections this 
--instructor teaches.
    SELECT first_name
    INTO v_name
    FROM instructor 
    WHERE instructor_id = v_instructor_id;
    
    SELECT count(*)
    INTO v_total
    FROM section
    WHERE instructor_id = v_instructor_id;
    
    DBMS_OUTPUT.PUT_LINE ('This instructor exists, he teaches '||v_total||' section');
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE ('This instructor does not exist');
--The first select into may throw an exception so catch it and print 
--out that the instructor doesn’t exist.
END;