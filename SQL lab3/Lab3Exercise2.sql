-- ch03_3a.sql
DECLARE
v_zip zipcode.zip%TYPE;
v_user zipcode.created_by%TYPE;
v_date zipcode.created_date%TYPE;
BEGIN
SELECT 43438, USER, SYSDATE
INTO v_zip, v_user, v_date
FROM DUAL;

INSERT INTO zipcode(ZIP, CREATED_BY ,CREATED_DATE, MODIFIED_BY, MODIFIED_DATE)
VALUES(v_zip, v_user, v_date, v_user, v_date);
END;

