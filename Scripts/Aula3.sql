var b_emp_id number -- BIND. Nao usa porto ; fora do bloco 

DECLARE
  v_emp_id      EMPLOYEES.EMPLOYEE_ID%TYPE;
  v_salary      number(5);
  v_comm        employees.salary%TYPE;
  v_comm2       v_comm%TYPE;
  --Traz o datatypeda coluna, quando mudar as tabelas o codigo 
  --usa automaticamente, pois o %type consulta a tabela antes de trazer o dado
  
BEGIN
  SELECT  EMPLOYEE_ID, SALARY
  INTO    :b_emp_id, v_salary
  FROM    employees
  WHERE   employee_id = 100;
END;

SELECT * 
FROM EMPLOYEES
WHERE EMPLOYEE_ID=:b_emp_id;

PRINT b_emp_id --Mostrar valor da variavel


-----------------------------------------
DEFINE lname = Urman 

VARIABLE emp_salary NUMBER
ACCEPT empno PROMPT 'ESCREVE AI PARSA' -- Manipular mensagem para ser exibida \o/
SET AUTOPRINT ON -- Mostrar saida com resultado 

DECLARE 
  empno NUMBER(6):=&empno; -- := DENTRO DO BLOCO APENAS
BEGIN 
  SELECT  salary
  INTO    :emp_salary
  FROM    employees
  WHERE   employee_id = empno;
END;
/
--Solicitando informações para o usuario
-----------------------------------------
select * 
from EMPLOYEES
where EMPLOYEE_ID=&vemp;

-----------------------------VAI CAIR NA PROVA - IGUAL ESSE AQUI-----------------------------------------------------
SET SERVEROUTPUT ON
<<outer>>
DECLARE
  sal        NUMBER(7,2) := 50000;
  comm       NUMBER(7,2) := sal * 0.20;
  message    VARCHAR2(255):= 'elegible for comission';
BEGIN
  DECLARE
    sal        NUMBER(7,2) := 50000;
    comm       NUMBER(7,2) := 0;
    total_comp NUMBER(7,2) := sal + comm;
  BEGIN
    message := 'CLERK not' || message;
    outer.comm :=sal * 0.30;
    DBMS_OUTPUT.PUT_LINE('outer.comm:' || outer.comm);
    DBMS_OUTPUT.PUT_LINE('comm:' || comm);
  END;
  message := 'SALESMAN' || message;
END;
/


