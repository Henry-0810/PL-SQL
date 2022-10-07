-- For Example ch06_9a.sql
set serveroutput on
DECLARE
   v_counter NUMBER := 1;
   v_sum     NUMBER := 0; 
BEGIN
   WHILE v_counter <= 100 
   LOOP
      v_sum := v_sum + v_counter;
      DBMS_OUTPUT.PUT_LINE ('Current sum is: '||v_sum);
      
      -- increment loop counter by one
      v_counter := v_counter + 1;
   END LOOP;

   -- control resumes here
   DBMS_OUTPUT.PUT_LINE ('The sum of integers between 1 and 10 is: '||v_sum);
END;