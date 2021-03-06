/*
** CARTA DE MANUTENCAO
*/

/*
** CLIENTE X EQUIPAMENTOS
*/
CREATE TABLE CLI_EQUIP (
  CODCLIENTE          INTEIRO_VALIDO,
  CODEQUIPAMENTO      INTEIRO_VALIDO,
  CODMARCA            INTEIRO_VALIDO,
  CODMODELO           INTEIRO_VALIDO,
  SERIE               STR30,
  CONSTRAINT          CLI_EQUIP_PK
  PRIMARY KEY         (CODCLIENTE, CODEQUIPAMENTO),
  CONSTRAINT          CLI_EQUIP_FK01
  FOREIGN KEY         (CODCLIENTE)
  REFERENCES          CLIENTES (CODIGO)
  ON UPDATE CASCADE
  ON DELETE CASCADE,
  CONSTRAINT          CLI_EQUIP_FK02
  FOREIGN KEY         (CODMODELO, CODMARCA)
  REFERENCES          MODELOS (CODIGO, CODEQUIPAMENTO)
  ON UPDATE CASCADE
)!

GRANT ALL ON CLI_EQUIP TO PUBLIC!

CREATE UNIQUE INDEX CLI_EQUIP_I01 ON CLI_EQUIP(CODCLIENTE, CODMARCA, CODMODELO, SERIE)!

CREATE TRIGGER CLI_EQUIP_BI0 FOR CLI_EQUIP
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
  
  /* VERIFICO O ULTIMO E OBTENHO O NOVO CODIGO */
  SELECT
    MAX(CODEQUIPAMENTO) + 1
  FROM
    CLI_EQUIP
  WHERE
    CODCLIENTE = NEW.CODCLIENTE
  INTO
    NEW.CODEQUIPAMENTO;
    
  IF (NEW.CODEQUIPAMENTO IS NULL) THEN
    NEW.CODEQUIPAMENTO = 1;

END!

/*
** CARTAS
*/
CREATE TABLE CARTAS (
  CODIGO              INTEIRO_VALIDO,
  DESCRICAO           STR40_VALIDO,
  CONSTRAINT          CARTAS_PK
  PRIMARY KEY         (CODIGO)
)!

GRANT ALL ON CARTAS TO PUBLIC!

CREATE UNIQUE INDEX CARTAS_I01 ON CARTAS(DESCRICAO)!

/*
** PERGUNTAS
*/
CREATE DOMAIN TIPOPERGUNTA CHAR(1) DEFAULT 'L' NOT NULL
  CHECK (VALUE IN ('L', 'A', 'N'))!

CREATE TABLE CARTAS_PERGUNTA (
  CODCARTA             INTEIRO_VALIDO,
  CODPERGUNTA          INTEIRO_VALIDO,
  PERGUNTA             STR40_VALIDO,
  TIPO                 TIPOPERGUNTA,
  CONSTRAINT           CARTAS_PERGUNTA_PK
  PRIMARY KEY          (CODCARTA, CODPERGUNTA),
  CONSTRAINT           CARTAS_PERGUNTA_FK01
  FOREIGN KEY          (CODCARTA)
  REFERENCES           CARTAS (CODIGO)
  ON UPDATE CASCADE
  ON DELETE CASCADE
)!

GRANT ALL ON CARTAS_PERGUNTA TO PUBLIC!

CREATE UNIQUE INDEX CARTAS_PERGUNTA_I01 ON CARTAS_PERGUNTA(CODCARTA, PERGUNTA)!

CREATE TRIGGER CARTAS_PERGUNTA_BI0 FOR CARTAS_PERGUNTA
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
  
  /* VERIFICO O ULTIMO E OBTENHO O NOVO CODIGO */
  SELECT
    MAX(CODPERGUNTA) + 1
  FROM
    CARTAS_PERGUNTA
  WHERE
    CODCARTA = NEW.CODCARTA
  INTO
    NEW.CODPERGUNTA;
    
  IF (NEW.CODPERGUNTA IS NULL) THEN
    NEW.CODPERGUNTA = 1;

END!
 
/*
** LEGENDAS
*/
CREATE TABLE CARTAS_LEGENDA (
  CODCARTA             INTEIRO_VALIDO,
  CODLEGENDA           INTEIRO_VALIDO,
  LEGENDA              STR09_VALIDO,
  CONSTRAINT           CARTAS_LEGENDA_PK
  PRIMARY KEY          (CODCARTA, CODLEGENDA),
  CONSTRAINT           CARTAS_LEGENDA_FK01
  FOREIGN KEY          (CODCARTA)
  REFERENCES           CARTAS (CODIGO)
  ON UPDATE CASCADE
  ON DELETE CASCADE
)!

GRANT ALL ON CARTAS_LEGENDA TO PUBLIC!

CREATE UNIQUE INDEX CARTAS_LEGENDA_I01 ON CARTAS_LEGENDA(CODCARTA, LEGENDA)!

CREATE TRIGGER CARTAS_LEGENDA_BI0 FOR CARTAS_LEGENDA
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
  
  /* VERIFICO O ULTIMO E OBTENHO O NOVO CODIGO */
  SELECT
    MAX(CODLEGENDA) + 1
  FROM
    CARTAS_LEGENDA
  WHERE
    CODCARTA = NEW.CODCARTA
  INTO
    NEW.CODLEGENDA;
    
  IF (NEW.CODLEGENDA IS NULL) THEN
    NEW.CODLEGENDA = 1;

END!
 
/*
** CARTAS_OS
*/
CREATE TABLE CARTAS_OS (
  CODMOVIMENTO         INTEIRO_VALIDO,
  CODCLIENTE           INTEIRO_VALIDO,
  CODEQUIPAMENTO       INTEIRO_VALIDO,
  CODCARTA             INTEIRO_VALIDO,
  DATA                 DATA_VALIDA,
  CONSTRAINT           CARTAS_OS_PK
  PRIMARY KEY          (CODMOVIMENTO),
  CONSTRAINT           CARTAS_OS_FK01
  FOREIGN KEY          (CODMOVIMENTO)
  REFERENCES           MOVIMENTOS (CODIGO)
  ON UPDATE CASCADE
  ON DELETE CASCADE,
  CONSTRAINT           CARTAS_OS_FK02
  FOREIGN KEY          (CODCLIENTE, CODEQUIPAMENTO)
  REFERENCES           CLI_EQUIP (CODCLIENTE, CODEQUIPAMENTO)
  ON UPDATE CASCADE,
  CONSTRAINT           CARTAS_OS_FK03
  FOREIGN KEY          (CODCARTA)
  REFERENCES           CARTAS (CODIGO)
  ON UPDATE CASCADE
)!
  
GRANT ALL ON CARTAS_OS TO PUBLIC!







INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (105, CURRENT_TIMESTAMP)!