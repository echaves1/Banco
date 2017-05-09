SET SERVEROUTPUT ON

DEFINE empno= 176;
DECLARE 
  sal EMP.SALARY%TYPE;
  asterisk EMP.STARS%TYPE:=null;
  auxSalary NUMBER(15);
  v_empno EMP.EMPLOYEE_ID%type:=&empno;
BEGIN
  auxSalary:=1000;
  
SELECT SALARY INTO sal FROM emp 
where EMPLOYEE_ID=v_empno;
  dbms_output.put_line(sal);
  
  WHILE sal <= auxSalary LOOP
    asterisk:= asterisk || '*'; 
    dbms_output.put_line(asterisk);
    auxSalary:=auxSalary + 1000;
  END LOOP;
  
  UPDATE EMP
  SET STARS= asterisk
  WHERE EMPLOYEE_ID=v_empno;
 
END;

/


