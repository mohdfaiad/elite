/*
** CENTROS NA NATUREZA DE OPERACAO
*/

SET TERM !;

ALTER TABLE NATUOPER ADD CODCENTRO INTEIRO_VALIDO!

UPDATE NATUOPER SET CODCENTRO = 1!

ALTER TABLE NATUOPER
ADD CONSTRAINT NATUOPER_FK01
FOREIGN KEY (CODCENTRO)
REFERENCES CENTROS(CODIGO)
ON UPDATE CASCADE!
 
INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (118, CURRENT_TIMESTAMP)!