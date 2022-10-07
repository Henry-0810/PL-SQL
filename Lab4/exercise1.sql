set serveroutput on
DECLARE
   v_counter Number := 0; 
BEGIN
   LOOP
      --610a increment loop counter by one
      v_counter := v_counter + 1;
      DBMS_OUTPUT.PUT_LINE ('v_counter = '||v_counter); 

      -- if exit condition yields TRUE exit the loop
      IF v_counter = 5 
      THEN 
         EXIT;
      END IF; 
   END LOOP;
   -- control resumes here
   DBMS_OUTPUT.PUT_LINE ('Done');
END;