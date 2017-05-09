SET SERVEROUTPUT ON

DECLARE
  CURSOR emp_cursor IS
  SELECT employee_id, last_name FROM EMPLOYEES
  WHERE DEPARTMENT_ID = 30;
  empno employees.employee_id%TYPE;
  lname employees.last_name%TYPE;
BEGIN
  OPEN emp_cursor;
  LOOP
    FETCH emp_cursor INTO empno, lname;
    EXIT WHEN emp_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(empno || ' - ' || lname);
  END LOOP;
  CLOSE emp_cursor;
END;
/



SET SERVEROUTPUT ON
BEGIN
  FOR emp_record IN (SELECT employee_id, last_name    FROM employees WHERE department_id =30)
  LOOP
   DBMS_OUTPUT.PUT_LINE( emp_record.employee_id ||' 
   '||emp_record.last_name);   
  END LOOP; 
END;
/
