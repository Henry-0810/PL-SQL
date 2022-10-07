SET SERVEROUTPUT ON
DECLARE
    v_counter NUMBER := 0;
    v_factorial NUMBER := 1;
BEGIN
    --FOR v_counter IN 1..10 LOOP
        --v_factorial := v_factorial * v_counter;
    --END LOOP;
    LOOP
        v_counter := v_counter + 1;
        v_factorial := v_factorial * v_counter;
        IF v_counter = 10 
        THEN
            EXIT;
        END IF;
    END LOOP;
    -- control resumes here
    DBMS_OUTPUT.PUT_LINE ('Factorial of ten is: '||v_factorial);
END;
