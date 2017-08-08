/*1.	Crie um bloco PL/SQL que calcule o novo sal�rio do funcion�rio e fa�a a atualiza��o dele com base no percentual de aumento que ser� dada pela regra a seguir:

a.	Execute o script a seguir para a cria��o da tabela EMP (Uma c�pia da tabela Employees)
b.	Aceite o n�mero do funcion�rio como entrada do usu�rio com uma vari�vel de substitui��o (Utilize ACCEPT)
c.	Se o sal�rio do funcion�rio for menor que US$3.000, defina o valor da comiss�o do funcion�rio como 10% do sal�rio.
d.	Se o sal�rio do funcion�rio estiver entre US$3.000 e US$5000, defina o valor da comiss�o do funcion�rio como 15% do sal�rio.
e.	Se o sal�rio do funcion�rio exceder US$5000, defina o valor da comiss�o do funcion�rio como 20% do sal�rio.
f.	Fa�a um commit.
*/

SET SERVEROUTPUT ON
ACCEPT p_id        PROMPT 'Informe o ID do funcionario:'

DECLARE     
       v_id        EMP.EMPLOYEE_ID%TYPE :=  &p_id;
       v_sal       EMP.SALARY%TYPE;
       v_comis     number(9,2);   
       v_salf      EMP.SALARY%TYPE;
BEGIN
     SELECT SALARY INTO v_sal FROM EMP WHERE EMPLOYEE_ID = v_id;

      IF v_sal < 3000 THEN
        v_comis := (10*v_sal)/100;
        
      ELSIF v_sal >= 3000 AND v_sal <= 5000 THEN
        v_comis := (15*v_sal)/100;
      ELSIF v_sal > 5000 THEN
        v_comis := (20*v_sal)/100;
      ELSE
        v_comis:=0;
      END IF;
      
      UPDATE EMP SET SALARY = v_salf WHERE EMPLOYEE_ID = v_id;
     -- v_salf := v_sal+v_comis;
     -- DBMS_OUTPUT.PUT_LINE(v_salf);
      COMMIT;
      
END;
/


/*2.	Crie um bloco PL/SQL que exiba o nome da rua (STREET_ADDRESS) e a cidade (CITY) de uma localiza��o 
(BR, IT, US, JP) que ser� informada pelo usu�rio (ACCEPT). Utilize a tabela LOCATIONS.
Apresente as solu��es para esse problema da seguinte forma:

a.	Solu��o utilize o comando WHILE
b.	Solu��o utilize o comando LOOP
c.	Solu��o utilize o comando FOR
d.	Solu��o utilize o comando FOR, por�m n�o declare o cursor na sess�o DECLARE.

Exemplo de sa�da:
Rua: 1297 Via Cola di Rie Cidade Roma
Rua: 93091 Calle della Testa Cidade Venice

*/

SET SERVEROUTPUT ON

ACCEPT p_country     PROMPT 'Informe o country ID:'

DECLARE
      v_country LOCATIONS.COUNTRY_ID%TYPE := &p_country;
      v_street  LOCATIONS.STREET_ADDRESS%TYPE;
    
BEGIN
      
END;
/




