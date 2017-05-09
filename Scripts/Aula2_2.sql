SET SERVEROUTPUT ON
VARIABLE v_emp_salary number

BEGIN
  SELECT SALARY
  INTO   :v_emp_salary
  FROM EMPLOYEES
  WHERE EMPLOYEE_ID = 100;
  DBMS_OUTPUT.PUT_LINE('O salario é:' || :v_emp_salary);
END;

