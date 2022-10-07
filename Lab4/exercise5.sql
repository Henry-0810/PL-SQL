SET SERVEROUTPUT ON
DECLARE
    v_sum NUMBER := 0;
BEGIN
    --WHILE v_counter <= 10 LOOP
        --v_sum := v_sum + v_counter;
        --DBMS_OUTPUT.PUT_LINE ('Current sum is: '||v_sum);
        -- increment loop counter by one
        --v_counter := v_counter + 1;
    --END LOOP;

    -- control resumes here
    --DBMS_OUTPUT.PUT_LINE ('The sum of integers between 1 '||
    --'and 10 is: '||v_sum);
    FOR v_counter IN 1..10 LOOP
        v_sum := v_sum + v_counter;
        DBMS_OUTPUT.PUT_LINE ('Current sum is: '||v_sum);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE ('The sum of integers between 1 '||
    'and 10 is: '||v_sum);
END;

