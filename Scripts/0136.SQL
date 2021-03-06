/*
** OPERADORAS E PLANOS
*/

SET TERM !;

CREATE TABLE OPERADORAS (
  CODIGO       INTEIRO_VALIDO,
  NOME         STR40_VALIDO,
  CONSTRAINT   OPERADORAS_PK
  PRIMARY KEY  (CODIGO)
)!

GRANT ALL ON OPERADORAS TO PUBLIC!

INSERT INTO
  SEQUENCIA(
    CODIGO,
    TABELA,
    SEQUENCIA)
  VALUES(
    44,
    'OPERADORAS',
    1)!

CREATE TABLE PLANOS (
  CODIGO       INTEIRO_VALIDO,
  CODOPERADORA INTEIRO_VALIDO,
  NOME         STR40_VALIDO,
  TIPO         TIPOPLANO,
  CONSTRAINT   PLANOS_PK
  PRIMARY KEY  (CODIGO, CODOPERADORA),
  CONSTRAINT   PLANOS_FK01
  FOREIGN KEY  (CODOPERADORA)
  REFERENCES   OPERADORAS(CODIGO)
  ON UPDATE CASCADE
)!

GRANT ALL ON PLANOS TO PUBLIC!

INSERT INTO
  SEQUENCIA(
    CODIGO,
    TABELA,
    SEQUENCIA)
  VALUES(
    45,
    'PLANOS',
    1)!
    
INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (136, CURRENT_TIMESTAMP)!