/*1.	Crie um bloco PL/SQL que calcule o novo salário do funcionário e faça a atualização dele com base no percentual de aumento que será dada pela regra a seguir:

a.	Execute o script a seguir para a criação da tabela EMP (Uma cópia da tabela Employees)
b.	Aceite o número do funcionário como entrada do usuário com uma variável de substituição (Utilize ACCEPT)
c.	Se o salário do funcionário for menor que US$3.000, defina o valor da comissão do funcionário como 10% do salário.
d.	Se o salário do funcionário estiver entre US$3.000 e US$5000, defina o valor da comissão do funcionário como 15% do salário.
e.	Se o salário do funcionário exceder US$5000, defina o valor da comissão do funcionário como 20% do salário.
f.	Faça um commit.
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


/*2.	Crie um bloco PL/SQL que exiba o nome da rua (STREET_ADDRESS) e a cidade (CITY) de uma localização 
(BR, IT, US, JP) que será informada pelo usuário (ACCEPT). Utilize a tabela LOCATIONS.
Apresente as soluções para esse problema da seguinte forma:

a.	Solução utilize o comando WHILE
b.	Solução utilize o comando LOOP
c.	Solução utilize o comando FOR
d.	Solução utilize o comando FOR, porém não declare o cursor na sessão DECLARE.

Exemplo de saída:
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




