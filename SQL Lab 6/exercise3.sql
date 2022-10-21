SET SERVEROUTPUT ON
DECLARE
    CURSOR c_group_discount IS
    SELECT DISTINCT s.course_no
    FROM section s, enrollment e
    WHERE s.section_id = e.section_id
    GROUP BY s.course_no, e.section_id, s.section_id
    HAVING COUNT(*)>=8;
    
    v_cost course.cost%TYPE;
BEGIN
    FOR r_group_discount IN c_group_discount
    LOOP
        UPDATE course
        set cost = cost*0.95
        WHERE course_no = r_group_discount.course_no;
        SELECT cost INTO v_cost
        FROM course WHERE course_no = r_group_discount.course_no;
    
        DBMS_OUTPUT.PUT_LINE(r_group_discount.course_no ||': '||v_cost);
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Course Number does not exist!');
END;