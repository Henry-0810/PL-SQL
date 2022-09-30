-- For Example ch04_9a.sql
set serveroutput on
DECLARE
   v_temp_in   NUMBER := &sv_temp_in;
   v_scale_in  CHAR   := '&sv_scale_in';
   v_temp_out  NUMBER;
   v_scale_out CHAR;
BEGIN
   IF v_scale_in != 'C' AND v_scale_in != 'F' 
   THEN
      DBMS_OUTPUT.PUT_LINE ('This is not a valid scale');
   ELSE
      IF v_scale_in = 'C' 
      THEN
         v_temp_out  :=  (2.54 * v_temp_in);
         v_scale_out := 'F';
      ELSE
         v_temp_out  := v_temp_in / 2.54;
         v_scale_out := 'C';
      END IF;
      DBMS_OUTPUT.PUT_LINE ('New scale is: '||v_scale_out);
      DBMS_OUTPUT.PUT_LINE ('New temperature is: '||v_temp_out);
   END IF;
END;