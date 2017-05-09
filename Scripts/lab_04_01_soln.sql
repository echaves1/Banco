/*Practice 4
Create a PL/SQL block that selects the maximum department ID in the departments
table and stores it in the max_deptno variable. Display the maximum department ID. 
Declare a variable max_deptno of type NUMBER in the declarative section.
Start the executable section with the keyword BEGIN and include a SELECT 
statement to retrieve the maximum department_id from the departments table.
Display max_deptno and end the executable block.
Execute and save your script as lab_04_01_soln.sql. Sample output is shown below.
*/
SET SERVEROUTPUT ON
DECLARE
  max_depto NUMBER;  
BEGIN
  SELECT max(DEPARTMENT_ID) INTO max_depto
  FROM DEPARTMENTS;
  DBMS_OUTPUT.PUT_LINE('O valor maior é: ' || max_depto);
END;
/
SET SERVEROUTPUT OFF

/*2.	Modify the PL/SQL block you created in exercise 1 to insert a new department into the departments table. 
Load the script lab_04_01_soln.sql. Declare two variables: dept_name of type department.department_name.
Bind variable dept_id of type NUMBER.Assign ‘Education’ to dept_name in the declarative section.
You have already retrieved the current maximum department number from the departments table.
Add 10 to it and assign the result to dept_id. 
Include an INSERT statement to insert data into the department_name, department_id, 
and location_id columns of the departments table. Use values in dept_name,
dept_id for department_name, department_id and use NULL for location_id.
Use the SQL attribute SQL%ROWCOUNT to display the number of rows that are affected. 
Execute a select statement to check if the new department is inserted. 
You can terminate the PL/SQL block with “/” and include the SELECT statement in your script.
Execute and save your script as lab_04_02_soln.sql. Sample output is shown below.
*/

SET SERVEROUTPUT ON
SET FEED OFF
CLEAR SCRE

VARIABLE dept_id NUMBER
DECLARE
  max_depto NUMBER;
  dept_name departments.department_name%TYPE := 'Education';
  
BEGIN

  SELECT max(DEPARTMENT_ID) INTO max_depto
  FROM DEPARTMENTS;
  DBMS_OUTPUT.PUT_LINE('O valor maior é: ' || max_depto);
  :dept_id := 10 + max_depto;
  
  INSERT INTO DEPARTMENTS(DEPARTMENT_NAME, DEPARTMENT_ID, LOCATION_ID) 
  VALUES (dept_name, :dept_id, NULL);
  DBMS_OUTPUT.PUT_LINE('SQL%ROWCOUNT gives ' || SQL%ROWCOUNT);
  COMMIT;
END;
/
SET SERVEROUTPUT OFF

Select * from departments;
