DECLARE
    v_input CHAR(1) := &sv_input;
BEGIN
    IF (v_input >= 'a' AND v_input <= 'z') OR (v_input >= 'A' AND v_input <= 'Z') THEN
        DBMS_OUTPUT.PUT_LINE (v_input||' is a character');
    ELSIF v_input BETWEEN '0' AND '9' THEN
        DBMS_OUTPUT.PUT_LINE (v_input ||' is a number');
    ELSE
        DBMS_OUTPUT.PUT_LINE (v_input ||' is invalid');
END IF;
END;
