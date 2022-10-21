SET SERVEROUTPUT ON
DECLARE
    CURSOR c_zip (p_state IN zipcode.state%TYPE) IS
    SELECT zip, city, state
    FROM zipcode
    WHERE state = p_state;
    
    
BEGIN
    FOR r_zip IN c_zip('NY')
    LOOP
        DBMS_OUTPUT.PUT_LINE(r_zip.zip||','||r_zip.city||','||r_zip.state);
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('BRUH');
END;
