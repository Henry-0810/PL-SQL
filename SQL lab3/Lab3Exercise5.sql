-- For Example  ch03_9a.sql
set serveroutput on
BEGIN
   INSERT INTO student
      ( student_id, Last_name, zip, registration_date,
        created_by, created_date, modified_by,
        modified_date
      )
      VALUES ( student_id_seq.nextval, 'Tashi', 10015, 
               '01-JAN-99', 'STUDENTA', '01-JAN-99',
               'STUDENTA','01-JAN-99'
             );
   SAVEPOINT A;
   INSERT INTO student
      ( student_id, Last_name, zip, registration_date,
        created_by, created_date, modified_by, 
        modified_date
      )
      VALUES (student_id_seq.nextval, 'Sonam', 10015,
              '01-JAN-99', 'STUDENTB','01-JAN-99', 
              'STUDENTB', '01-JAN-99'
             );
   SAVEPOINT B;
   INSERT INTO student
     ( student_id, Last_name, zip, registration_date,
       created_by, created_date, modified_by, 
       modified_date
     )
      VALUES (student_id_seq.nextval, 'Norbu', 10015,
              '01-JAN-99', 'STUDENTB', '01-JAN-99',
              'STUDENTB', '01-JAN-99'
             );
   SAVEPOINT C;
   ROLLBACK TO A; 
END;