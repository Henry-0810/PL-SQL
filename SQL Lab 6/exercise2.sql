SET SERVEROUTPUT ON
DECLARE
    v_city zipcode.city%type;
BEGIN
    SELECT city INTO v_city
    FROM zipcode
    WHERE zip = 99999;
    IF SQL%ROWCOUNT = 1 THEN
        DBMS_OUTPUT.PUT_LINE(v_city ||' has a '||'zipcode of 07002');
    ELSIF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('The zipcode 07002 is '||' not in the database');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Stop harassing me');
END;