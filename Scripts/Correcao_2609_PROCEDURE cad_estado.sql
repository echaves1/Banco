CREATE TABLE ESTADO
(NOME VARCHAR(50),
SIGLA CHAR(2));

set serveroutput on

CREATE OR REPLACE PROCEDURE cad_estado
(v_nome IN ESTADO.NOME%TYPE,
 v_sigla IN ESTADO.SIGLA%TYPE) 
IS

BEGIN
  INSERT INTO ESTADO
  VALUES (v_nome, v_sigla);
  COMMIT;
  
EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    dbms_output.put_line ('ESTADO CADASTRADO');
END cad_estado;
/
exec mrg_estado.cad_estado('Sao Paulo', 'SP');


