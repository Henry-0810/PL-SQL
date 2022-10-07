SET SERVEROUTPUT ON
DECLARE
    v_counter NUMBER := 0;
BEGIN
    --LOOP
        -- increment loop counter by one
        --v_counter := v_counter + 1;
        --DBMS_OUTPUT.PUT_LINE ('v_counter = '||v_counter);
        -- if EXIT condition yields TRUE exit the loop
        --IF v_counter = 5 THEN
            --EXIT;
        --END IF;
   --END LOOP;
    -- control resumes here
    --DBMS_OUTPUT.PUT_LINE ('Done...');
--END;
    WHILE v_counter >= 0 LOOP
        v_counter := v_counter + 1;
        DBMS_OUTPUT.PUT_LINE ('v_counter = '||v_counter);
        IF v_counter = 5 THEN
            EXIT;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Done...');
END;
        