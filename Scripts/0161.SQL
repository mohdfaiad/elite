/*
** MAIS PRIVILEGIOS DE RECURSOS
*/

ALTER TABLE CLIENTES ADD VENDADIRETA SIMNAO;

UPDATE CLIENTES SET VENDADIRETA  = 'S';

ALTER TABLE CLIENTES ADD TECNICOLOGIN SIMNAO;

UPDATE CLIENTES SET TECNICOLOGIN = 'N';

ALTER TABLE CLIENTES ADD FECHAMENTO SIMNAO;

UPDATE CLIENTES SET FECHAMENTO   = 'S';

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (161, CURRENT_TIMESTAMP);
COMMIT;