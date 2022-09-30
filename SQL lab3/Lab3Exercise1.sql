-- ch03_1a.sql
SET SERVEROUTPUT ON
DECLARE
    v_average_cost VARCHAR2(10);
    v_max_cost VARCHAR2(10);
    v_min_cost VARCHAR2(10);
BEGIN
    SELECT TO_CHAR(AVG(cost), '$9,999'), TO_CHAR(MAX(cost),'$9,999.99'), TO_CHAR(MIN(cost),'$9,999')
    INTO v_average_cost, v_max_cost, v_min_cost
    FROM course;
    DBMS_OUTPUT.PUT_LINE('The average cost of a course in the CTA program is '||
    v_average_cost|| Chr(13)||Chr(10) ||'The maximum cost of a course in the CTA program is '||
    v_max_cost || Chr(13)||Chr(10) ||'The minimum cost of a course in the CTA program is '||
    v_min_cost);
END;
