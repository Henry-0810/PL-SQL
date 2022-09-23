SET SERVEROUTPUT ON
DECLARE
    intro VARCHAR(35) := 'Introduction to Oracle PL/SQL';
    v_num NUMBER(8,2) := 987654.55;
    c_str CONSTANT VARCHAR(5) := '603D';
    v_tf BOOLEAN := TRUE;
    v_next_week DATE := (SYSDATE + (1*7));
BEGIN
    DBMS_OUTPUT.PUT_LINE(intro);
    DBMS_OUTPUT.PUT_LINE(v_num);
    DBMS_OUTPUT.PUT_LINE(c_str);
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(v_next_week,'DD/MM/YY HH:MI'));
END;
    