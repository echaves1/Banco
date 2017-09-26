CREATE OR REPLACE PACKAGE mrg_estado IS
PROCEDURE cad_estado(v_nome IN ESTADO.NOME%TYPE, v_sigla IN ESTADO.SIGLA%TYPE);
END mrg_estado;
/

CREATE OR REPLACE PACKAGE BODY mrg_estado IS

      PROCEDURE cad_estado
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

END mrg_estado;
/
DESC mrg_estado;