set autoprint on

CREATE OR REPLACE PROCEDURE cons_estado(v_sigla IN ESTADO.SIGLA%TYPE, v_nome OUT ESTADO.NOME%TYPE)
IS
BEGIN
  SELECT  NOME
  INTO    V_NOME
  FROM    ESTADO
  WHERE   SIGLA = v_sigla;
EXCEPTION 
    WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Estado n�o cadastrado!');
END cons_estado;
/

VARIABLE G_ESTADO  VARCHAR2(30);
EXEC cons_estado('SP',:G_ESTADO);
PRINT G_ESTADO