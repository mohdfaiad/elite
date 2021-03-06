/*
** ESTORNO DE CONTAS PAGAS/RECEBIDAS
*/

CREATE EXCEPTION CONTANAOPAGA 'CONTA AINDA NAO FOI PAGA. ESTORNO CANCELADO!';

ALTER TABLE PAGAMENTOS ADD ESTORNO_CODUSUARIO INTEIRO;

ALTER TABLE PAGAMENTOS ADD ESTORNO_DATA DATA;

ALTER TABLE PAGAMENTOS ADD ESTORNO_CODESTORNO INTEIRO;

ALTER TABLE PAGAMENTOS ADD ESTORNO_CODRELANC INTEIRO;

SET TERM ^ ;

CREATE PROCEDURE FINANC_ESTORNO (
    CODIGO INTEGER,
    CODUSUARIO INTEGER)
AS
DECLARE VARIABLE PAGO INTEGER;
DECLARE VARIABLE TEMP_CODMOVIMENTO INTEGER;
DECLARE VARIABLE TEMP_NUMERO INTEGER;
DECLARE VARIABLE TEMP_DESCRICAO VARCHAR(40);
DECLARE VARIABLE TEMP_ES INTEGER;
DECLARE VARIABLE TEMP_VALOR NUMERIC(9,2);
DECLARE VARIABLE TEMP_CODDOCUMENTO INTEGER;
DECLARE VARIABLE TEMP_INFODOC VARCHAR(50);
DECLARE VARIABLE TEMP_ARQUIVO VARCHAR(50);
DECLARE VARIABLE TEMP_HISTORICO VARCHAR(1024);
DECLARE VARIABLE TEMP_DESCONTO NUMERIC(9,2);
DECLARE VARIABLE TEMP_MULTA_JUROS NUMERIC(9,2);
DECLARE VARIABLE TEMP_DATAVENCIMENTO TIMESTAMP;
DECLARE VARIABLE TEMP_STATUS VARCHAR(30);
DECLARE VARIABLE TEMP_CODCONTA INTEGER;
DECLARE VARIABLE TEMP_CODEMPRESA INTEGER;
DECLARE VARIABLE TEMP_TIPO_PAG CHAR(1);
DECLARE VARIABLE TEMP_TIPO_DOC CHAR(1);
DECLARE VARIABLE TEMP_CH_BANCO INTEGER;
DECLARE VARIABLE TEMP_CH_AGENCIA INTEGER;
DECLARE VARIABLE TEMP_CH_CONTA INTEGER;
DECLARE VARIABLE TEMP_CH_SERIE VARCHAR(10);
DECLARE VARIABLE TEMP_CH_NUMERO INTEGER;
DECLARE VARIABLE TEMP_CODCENTRO INTEGER;
DECLARE VARIABLE TEMP_CODCLIENTE INTEGER;
DECLARE VARIABLE TEMP_CODPLANO INTEGER;
DECLARE VARIABLE TEMP_CODIGO INTEGER;
DECLARE VARIABLE TEMP_DESCRICAO2 VARCHAR(40);
DECLARE VARIABLE TEMP_CODESTORNO INTEGER;
DECLARE VARIABLE TEMP_CODRELANC INTEGER;
begin

  /* VERIFICO SE A CONTA FOI PAGA */
  SELECT
    PAGO
  FROM
    PAGAMENTOS
  WHERE
    CODIGO = :CODIGO
  INTO
    :PAGO;

  IF (PAGO = 1) THEN
   BEGIN

     /* POSSO ESTORNAR */
     SELECT
       CODMOVIMENTO,
       NUMERO,
       DESCRICAO,
       ES,
       VALOR,
       CODDOCUMENTO,
       INFODOC,
       ARQUIVO,
       HISTORICO,
       DESCONTO,
       MULTA_JUROS,
       DATAVENCIMENTO,
       STATUS,
       CODCONTA,
       CODEMPRESA,
       TIPO_PAG,
       TIPO_DOC,
       CH_BANCO,
       CH_AGENCIA,
       CH_CONTA,
       CH_SERIE,
       CH_NUMERO,
       CODCENTRO,
       CODCLIENTE,
       CODPLANO
     FROM
       PAGAMENTOS
     WHERE
       CODIGO = :CODIGO
     INTO
       :TEMP_CODMOVIMENTO,
       :TEMP_NUMERO,
       :TEMP_DESCRICAO,
       :TEMP_ES,
       :TEMP_VALOR,
       :TEMP_CODDOCUMENTO,
       :TEMP_INFODOC,
       :TEMP_ARQUIVO,
       :TEMP_HISTORICO,
       :TEMP_DESCONTO,
       :TEMP_MULTA_JUROS,
       :TEMP_DATAVENCIMENTO,
       :TEMP_STATUS,
       :TEMP_CODCONTA,
       :TEMP_CODEMPRESA,
       :TEMP_TIPO_PAG,
       :TEMP_TIPO_DOC,
       :TEMP_CH_BANCO,
       :TEMP_CH_AGENCIA,
       :TEMP_CH_CONTA,
       :TEMP_CH_SERIE,
       :TEMP_CH_NUMERO,
       :TEMP_CODCENTRO,
       :TEMP_CODCLIENTE,
       :TEMP_CODPLANO;

     /* LANCAMENTO CONTRA */
     IF (TEMP_ES = 1) THEN
       TEMP_ES = 2;
     ELSE
       TEMP_ES = 1;

     /* PEGO O CODIGO DO PROXIMO LANCAMENTO */
     EXECUTE PROCEDURE SEQ_OBTER('PAGAMENTOS')
       RETURNING_VALUES :TEMP_CODIGO;

     TEMP_CODESTORNO = TEMP_CODIGO;

     INSERT INTO
       PAGAMENTOS(
         CODIGO,
         CODMOVIMENTO,
         NUMERO,
         DESCRICAO,
         ES,
         VALOR,
         CODDOCUMENTO,
         INFODOC,
         ARQUIVO,
         HISTORICO,
         DESCONTO,
         MULTA_JUROS,
         DATAVENCIMENTO,
         STATUS,
         CODCONTA,
         CODEMPRESA,
         TIPO_PAG,
         TIPO_DOC,
         CH_BANCO,
         CH_AGENCIA,
         CH_CONTA,
         CH_SERIE,
         CH_NUMERO,
         CODCENTRO,
         CODCLIENTE,
         CODPLANO)
       VALUES (
         :TEMP_CODIGO,
         :TEMP_CODMOVIMENTO,
         :TEMP_NUMERO,
         :TEMP_DESCRICAO,
         :TEMP_ES,
         :TEMP_VALOR,
         :TEMP_CODDOCUMENTO,
         :TEMP_INFODOC,
         :TEMP_ARQUIVO,
         :TEMP_HISTORICO,
         :TEMP_DESCONTO,
         :TEMP_MULTA_JUROS,
         :TEMP_DATAVENCIMENTO,
         :TEMP_STATUS,
         :TEMP_CODCONTA,
         :TEMP_CODEMPRESA,
         :TEMP_TIPO_PAG,
         :TEMP_TIPO_DOC,
         :TEMP_CH_BANCO,
         :TEMP_CH_AGENCIA,
         :TEMP_CH_CONTA,
         :TEMP_CH_SERIE,
         :TEMP_CH_NUMERO,
         :TEMP_CODCENTRO,
         :TEMP_CODCLIENTE,
         :TEMP_CODPLANO);

     /* LANCAMENTO RESSUCITADO */
     IF (TEMP_ES = 1) THEN
       TEMP_ES = 2;
     ELSE
       TEMP_ES = 1;

     /* PEGO O CODIGO DO PROXIMO LANCAMENTO */
     EXECUTE PROCEDURE SEQ_OBTER('PAGAMENTOS')
       RETURNING_VALUES :TEMP_CODIGO;

     TEMP_CODRELANC = TEMP_CODIGO;

     INSERT INTO
       PAGAMENTOS(
         CODIGO,
         CODMOVIMENTO,
         NUMERO,
         DESCRICAO,
         ES,
         VALOR,
         CODDOCUMENTO,
         INFODOC,
         ARQUIVO,
         HISTORICO,
         DESCONTO,
         MULTA_JUROS,
         DATAVENCIMENTO,
         STATUS,
         CODCONTA,
         CODEMPRESA,
         TIPO_PAG,
         TIPO_DOC,
         CH_BANCO,
         CH_AGENCIA,
         CH_CONTA,
         CH_SERIE,
         CH_NUMERO,
         CODCENTRO,
         CODCLIENTE,
         CODPLANO)
       VALUES (
         :TEMP_CODIGO,
         :TEMP_CODMOVIMENTO,
         :TEMP_NUMERO,
         :TEMP_DESCRICAO,
         :TEMP_ES,
         :TEMP_VALOR,
         :TEMP_CODDOCUMENTO,
         :TEMP_INFODOC,
         :TEMP_ARQUIVO,
         :TEMP_HISTORICO,
         :TEMP_DESCONTO,
         :TEMP_MULTA_JUROS,
         :TEMP_DATAVENCIMENTO,
         :TEMP_STATUS,
         :TEMP_CODCONTA,
         :TEMP_CODEMPRESA,
         :TEMP_TIPO_PAG,
         :TEMP_TIPO_DOC,
         :TEMP_CH_BANCO,
         :TEMP_CH_AGENCIA,
         :TEMP_CH_CONTA,
         :TEMP_CH_SERIE,
         :TEMP_CH_NUMERO,
         :TEMP_CODCENTRO,
         :TEMP_CODCLIENTE,
         :TEMP_CODPLANO);

     /* GRAVO DADOS DO ESTORNO */
     UPDATE
       PAGAMENTOS
     SET
       ESTORNO_CODESTORNO = :TEMP_CODESTORNO,
       ESTORNO_CODRELANC  = :TEMP_CODRELANC,
       ESTORNO_CODUSUARIO = :CODUSUARIO,
       ESTORNO_DATA       = CURRENT_TIMESTAMP
     WHERE
       CODIGO = :CODIGO;

   END ELSE EXCEPTION CONTANAOPAGA;

  suspend;
end

^

SET TERM ; ^

GRANT EXECUTE ON PROCEDURE FINANC_ESTORNO TO PUBLIC;

ALTER TABLE PAGAMENTOS ADD ESTORNO_NOMEUSER STR30;

SET TERM ^ ;

ALTER TRIGGER PAGAMENTOS_BU0
ACTIVE BEFORE UPDATE POSITION 0
AS
  DECLARE VARIABLE ULTIMO     INTEGER;
  DECLARE VARIABLE SALDO      NUMERIC(9, 2);
  DECLARE VARIABLE SALDONOVO  NUMERIC(9, 2);
BEGIN

  /* CARREGO AS OPCOES DO DOCUMENTO */
  SELECT
    TIPO_PAG,
    TIPO_DOC
  FROM
    DOCUMENTOS
  WHERE
    CODIGO = NEW.CODDOCUMENTO
  INTO
    NEW.TIPO_PAG,
    NEW.TIPO_DOC;

  /* FOI ESTORNADO? */
  IF (NEW.ESTORNO_CODUSUARIO IS NOT NULL) THEN
   BEGIN
     SELECT
       NOMEUSER
     FROM
       CLIENTES
     WHERE
       CODIGO = NEW.ESTORNO_CODUSUARIO
     INTO
       NEW.ESTORNO_NOMEUSER;
   END

  /* ESTA PAGO? */
  IF ((OLD.PAGO = 0) AND (NEW.PAGO = 1)) THEN
   BEGIN
    /* DESCUBRO O SALDO ANTERIOR */
    SELECT
      MAX(CODLANCTO)
    FROM
      PAGAMENTOS
    WHERE
      CODCONTA = NEW.CODCONTA AND
      CODEMPRESA = NEW.CODEMPRESA
    INTO
      :ULTIMO;
    IF (ULTIMO IS NOT NULL) THEN
     BEGIN
       SELECT
         SALDOATU
       FROM
         PAGAMENTOS
       WHERE
         CODLANCTO = :ULTIMO
       INTO
         :SALDO;
     END ELSE SALDO = 0;
    /* PEGO O NUMERO DESTE LANCAMENTO */
    SELECT
      SEQUENCIA
    FROM
      SEQ_OBTER('LANCTO')
    INTO
      :ULTIMO;
    /* GRAVO OS VALORES CORRETOS */
    NEW.SALDOANT = SALDO;
    IF (NEW.ES = 1) THEN
      SALDONOVO = SALDO - NEW.TOTAL_PAGO;
    IF (NEW.ES = 2) THEN
      SALDONOVO = SALDO + NEW.TOTAL_PAGO;
    NEW.SALDOATU = SALDONOVO;
    NEW.NOMEUSUARIO = USER;
    NEW.DATAPAGO = 'NOW';
    NEW.CODLANCTO = ULTIMO;
   END
END

^

SET TERM ; ^

SET TERM ^ ;

ALTER PROCEDURE FINANC_ESTORNO (
    CODIGO INTEGER,
    CODUSUARIO INTEGER)
AS
DECLARE VARIABLE PAGO INTEGER;
DECLARE VARIABLE TEMP_CODMOVIMENTO INTEGER;
DECLARE VARIABLE TEMP_NUMERO INTEGER;
DECLARE VARIABLE TEMP_DESCRICAO VARCHAR(40);
DECLARE VARIABLE TEMP_ES INTEGER;
DECLARE VARIABLE TEMP_VALOR NUMERIC(9,2);
DECLARE VARIABLE TEMP_CODDOCUMENTO INTEGER;
DECLARE VARIABLE TEMP_INFODOC VARCHAR(50);
DECLARE VARIABLE TEMP_ARQUIVO VARCHAR(50);
DECLARE VARIABLE TEMP_HISTORICO VARCHAR(1024);
DECLARE VARIABLE TEMP_DESCONTO NUMERIC(9,2);
DECLARE VARIABLE TEMP_MULTA_JUROS NUMERIC(9,2);
DECLARE VARIABLE TEMP_DATAVENCIMENTO TIMESTAMP;
DECLARE VARIABLE TEMP_STATUS VARCHAR(30);
DECLARE VARIABLE TEMP_CODCONTA INTEGER;
DECLARE VARIABLE TEMP_CODEMPRESA INTEGER;
DECLARE VARIABLE TEMP_TIPO_PAG CHAR(1);
DECLARE VARIABLE TEMP_TIPO_DOC CHAR(1);
DECLARE VARIABLE TEMP_CH_BANCO INTEGER;
DECLARE VARIABLE TEMP_CH_AGENCIA INTEGER;
DECLARE VARIABLE TEMP_CH_CONTA INTEGER;
DECLARE VARIABLE TEMP_CH_SERIE VARCHAR(10);
DECLARE VARIABLE TEMP_CH_NUMERO INTEGER;
DECLARE VARIABLE TEMP_CODCENTRO INTEGER;
DECLARE VARIABLE TEMP_CODCLIENTE INTEGER;
DECLARE VARIABLE TEMP_CODPLANO INTEGER;
DECLARE VARIABLE TEMP_CODIGO INTEGER;
DECLARE VARIABLE TEMP_DESCRICAO2 VARCHAR(40);
DECLARE VARIABLE TEMP_CODESTORNO INTEGER;
DECLARE VARIABLE TEMP_CODRELANC INTEGER;
begin

  /* VERIFICO SE A CONTA FOI PAGA */
  SELECT
    PAGO
  FROM
    PAGAMENTOS
  WHERE
    CODIGO = :CODIGO
  INTO
    :PAGO;

  IF (PAGO = 1) THEN
   BEGIN

     /* POSSO ESTORNAR */
     SELECT
       CODMOVIMENTO,
       NUMERO,
       DESCRICAO,
       ES,
       VALOR,
       CODDOCUMENTO,
       INFODOC,
       ARQUIVO,
       HISTORICO,
       DESCONTO,
       MULTA_JUROS,
       DATAVENCIMENTO,
       STATUS,
       CODCONTA,
       CODEMPRESA,
       TIPO_PAG,
       TIPO_DOC,
       CH_BANCO,
       CH_AGENCIA,
       CH_CONTA,
       CH_SERIE,
       CH_NUMERO,
       CODCENTRO,
       CODCLIENTE,
       CODPLANO
     FROM
       PAGAMENTOS
     WHERE
       CODIGO = :CODIGO
     INTO
       :TEMP_CODMOVIMENTO,
       :TEMP_NUMERO,
       :TEMP_DESCRICAO,
       :TEMP_ES,
       :TEMP_VALOR,
       :TEMP_CODDOCUMENTO,
       :TEMP_INFODOC,
       :TEMP_ARQUIVO,
       :TEMP_HISTORICO,
       :TEMP_DESCONTO,
       :TEMP_MULTA_JUROS,
       :TEMP_DATAVENCIMENTO,
       :TEMP_STATUS,
       :TEMP_CODCONTA,
       :TEMP_CODEMPRESA,
       :TEMP_TIPO_PAG,
       :TEMP_TIPO_DOC,
       :TEMP_CH_BANCO,
       :TEMP_CH_AGENCIA,
       :TEMP_CH_CONTA,
       :TEMP_CH_SERIE,
       :TEMP_CH_NUMERO,
       :TEMP_CODCENTRO,
       :TEMP_CODCLIENTE,
       :TEMP_CODPLANO;

     /* LANCAMENTO CONTRA */
     IF (TEMP_ES = 1) THEN
       TEMP_ES = 2;
     ELSE
       TEMP_ES = 1;

     /* PEGO O CODIGO DO PROXIMO LANCAMENTO */
     EXECUTE PROCEDURE SEQ_OBTER('PAGAMENTOS')
       RETURNING_VALUES :TEMP_CODIGO;

     TEMP_CODESTORNO = TEMP_CODIGO;
     TEMP_DESCRICAO2 = 'EST ' || UDF_LEFT(TEMP_DESCRICAO, 36);

     INSERT INTO
       PAGAMENTOS(
         CODIGO,
         CODMOVIMENTO,
         NUMERO,
         DESCRICAO,
         ES,
         VALOR,
         CODDOCUMENTO,
         INFODOC,
         ARQUIVO,
         HISTORICO,
         DESCONTO,
         MULTA_JUROS,
         DATAVENCIMENTO,
         STATUS,
         CODCONTA,
         CODEMPRESA,
         TIPO_PAG,
         TIPO_DOC,
         CH_BANCO,
         CH_AGENCIA,
         CH_CONTA,
         CH_SERIE,
         CH_NUMERO,
         CODCENTRO,
         CODCLIENTE,
         CODPLANO,
         PAGO)
       VALUES (
         :TEMP_CODIGO,
         :TEMP_CODMOVIMENTO,
         :TEMP_NUMERO,
         :TEMP_DESCRICAO2,
         :TEMP_ES,
         :TEMP_VALOR,
         :TEMP_CODDOCUMENTO,
         :TEMP_INFODOC,
         :TEMP_ARQUIVO,
         :TEMP_HISTORICO,
         :TEMP_DESCONTO,
         :TEMP_MULTA_JUROS,
         :TEMP_DATAVENCIMENTO,
         :TEMP_STATUS,
         :TEMP_CODCONTA,
         :TEMP_CODEMPRESA,
         :TEMP_TIPO_PAG,
         :TEMP_TIPO_DOC,
         :TEMP_CH_BANCO,
         :TEMP_CH_AGENCIA,
         :TEMP_CH_CONTA,
         :TEMP_CH_SERIE,
         :TEMP_CH_NUMERO,
         :TEMP_CODCENTRO,
         :TEMP_CODCLIENTE,
         :TEMP_CODPLANO,
         1);

     /* LANCAMENTO RESSUCITADO */
     IF (TEMP_ES = 1) THEN
       TEMP_ES = 2;
     ELSE
       TEMP_ES = 1;

     /* PEGO O CODIGO DO PROXIMO LANCAMENTO */
     EXECUTE PROCEDURE SEQ_OBTER('PAGAMENTOS')
       RETURNING_VALUES :TEMP_CODIGO;

     TEMP_CODRELANC = TEMP_CODIGO;

     INSERT INTO
       PAGAMENTOS(
         CODIGO,
         CODMOVIMENTO,
         NUMERO,
         DESCRICAO,
         ES,
         VALOR,
         CODDOCUMENTO,
         INFODOC,
         ARQUIVO,
         HISTORICO,
         DESCONTO,
         MULTA_JUROS,
         DATAVENCIMENTO,
         STATUS,
         CODCONTA,
         CODEMPRESA,
         TIPO_PAG,
         TIPO_DOC,
         CH_BANCO,
         CH_AGENCIA,
         CH_CONTA,
         CH_SERIE,
         CH_NUMERO,
         CODCENTRO,
         CODCLIENTE,
         CODPLANO,
         PAGO)
       VALUES (
         :TEMP_CODIGO,
         :TEMP_CODMOVIMENTO,
         :TEMP_NUMERO,
         :TEMP_DESCRICAO,
         :TEMP_ES,
         :TEMP_VALOR,
         :TEMP_CODDOCUMENTO,
         :TEMP_INFODOC,
         :TEMP_ARQUIVO,
         :TEMP_HISTORICO,
         :TEMP_DESCONTO,
         :TEMP_MULTA_JUROS,
         :TEMP_DATAVENCIMENTO,
         :TEMP_STATUS,
         :TEMP_CODCONTA,
         :TEMP_CODEMPRESA,
         :TEMP_TIPO_PAG,
         :TEMP_TIPO_DOC,
         :TEMP_CH_BANCO,
         :TEMP_CH_AGENCIA,
         :TEMP_CH_CONTA,
         :TEMP_CH_SERIE,
         :TEMP_CH_NUMERO,
         :TEMP_CODCENTRO,
         :TEMP_CODCLIENTE,
         :TEMP_CODPLANO,
         0);

     /* GRAVO DADOS DO ESTORNO */
     UPDATE
       PAGAMENTOS
     SET
       ESTORNO_CODESTORNO = :TEMP_CODESTORNO,
       ESTORNO_CODRELANC  = :TEMP_CODRELANC,
       ESTORNO_CODUSUARIO = :CODUSUARIO,
       ESTORNO_DATA       = CURRENT_TIMESTAMP
     WHERE
       CODIGO = :CODIGO;

   END ELSE EXCEPTION CONTANAOPAGA;

  suspend;
end

^

SET TERM ; ^

ALTER TABLE PAGAMENTOS ADD CODORIGEM INTEIRO;

SET TERM ^ ;

ALTER PROCEDURE FINANC_ESTORNO (
    CODIGO INTEGER,
    CODUSUARIO INTEGER)
AS
DECLARE VARIABLE PAGO INTEGER;
DECLARE VARIABLE TEMP_CODMOVIMENTO INTEGER;
DECLARE VARIABLE TEMP_NUMERO INTEGER;
DECLARE VARIABLE TEMP_DESCRICAO VARCHAR(40);
DECLARE VARIABLE TEMP_ES INTEGER;
DECLARE VARIABLE TEMP_VALOR NUMERIC(9,2);
DECLARE VARIABLE TEMP_CODDOCUMENTO INTEGER;
DECLARE VARIABLE TEMP_INFODOC VARCHAR(50);
DECLARE VARIABLE TEMP_ARQUIVO VARCHAR(50);
DECLARE VARIABLE TEMP_HISTORICO VARCHAR(1024);
DECLARE VARIABLE TEMP_DESCONTO NUMERIC(9,2);
DECLARE VARIABLE TEMP_MULTA_JUROS NUMERIC(9,2);
DECLARE VARIABLE TEMP_DATAVENCIMENTO TIMESTAMP;
DECLARE VARIABLE TEMP_STATUS VARCHAR(30);
DECLARE VARIABLE TEMP_CODCONTA INTEGER;
DECLARE VARIABLE TEMP_CODEMPRESA INTEGER;
DECLARE VARIABLE TEMP_TIPO_PAG CHAR(1);
DECLARE VARIABLE TEMP_TIPO_DOC CHAR(1);
DECLARE VARIABLE TEMP_CH_BANCO INTEGER;
DECLARE VARIABLE TEMP_CH_AGENCIA INTEGER;
DECLARE VARIABLE TEMP_CH_CONTA INTEGER;
DECLARE VARIABLE TEMP_CH_SERIE VARCHAR(10);
DECLARE VARIABLE TEMP_CH_NUMERO INTEGER;
DECLARE VARIABLE TEMP_CODCENTRO INTEGER;
DECLARE VARIABLE TEMP_CODCLIENTE INTEGER;
DECLARE VARIABLE TEMP_CODPLANO INTEGER;
DECLARE VARIABLE TEMP_CODIGO INTEGER;
DECLARE VARIABLE TEMP_DESCRICAO2 VARCHAR(40);
DECLARE VARIABLE TEMP_CODESTORNO INTEGER;
DECLARE VARIABLE TEMP_CODRELANC INTEGER;
begin

  /* VERIFICO SE A CONTA FOI PAGA */
  SELECT
    PAGO
  FROM
    PAGAMENTOS
  WHERE
    CODIGO = :CODIGO
  INTO
    :PAGO;

  IF (PAGO = 1) THEN
   BEGIN

     /* POSSO ESTORNAR */
     SELECT
       CODMOVIMENTO,
       NUMERO,
       DESCRICAO,
       ES,
       VALOR,
       CODDOCUMENTO,
       INFODOC,
       ARQUIVO,
       HISTORICO,
       DESCONTO,
       MULTA_JUROS,
       DATAVENCIMENTO,
       STATUS,
       CODCONTA,
       CODEMPRESA,
       TIPO_PAG,
       TIPO_DOC,
       CH_BANCO,
       CH_AGENCIA,
       CH_CONTA,
       CH_SERIE,
       CH_NUMERO,
       CODCENTRO,
       CODCLIENTE,
       CODPLANO
     FROM
       PAGAMENTOS
     WHERE
       CODIGO = :CODIGO
     INTO
       :TEMP_CODMOVIMENTO,
       :TEMP_NUMERO,
       :TEMP_DESCRICAO,
       :TEMP_ES,
       :TEMP_VALOR,
       :TEMP_CODDOCUMENTO,
       :TEMP_INFODOC,
       :TEMP_ARQUIVO,
       :TEMP_HISTORICO,
       :TEMP_DESCONTO,
       :TEMP_MULTA_JUROS,
       :TEMP_DATAVENCIMENTO,
       :TEMP_STATUS,
       :TEMP_CODCONTA,
       :TEMP_CODEMPRESA,
       :TEMP_TIPO_PAG,
       :TEMP_TIPO_DOC,
       :TEMP_CH_BANCO,
       :TEMP_CH_AGENCIA,
       :TEMP_CH_CONTA,
       :TEMP_CH_SERIE,
       :TEMP_CH_NUMERO,
       :TEMP_CODCENTRO,
       :TEMP_CODCLIENTE,
       :TEMP_CODPLANO;

     /* LANCAMENTO CONTRA */
     IF (TEMP_ES = 1) THEN
       TEMP_ES = 2;
     ELSE
       TEMP_ES = 1;

     /* PEGO O CODIGO DO PROXIMO LANCAMENTO */
     EXECUTE PROCEDURE SEQ_OBTER('PAGAMENTOS')
       RETURNING_VALUES :TEMP_CODIGO;

     TEMP_CODESTORNO = TEMP_CODIGO;
     TEMP_DESCRICAO2 = 'EST ' || UDF_LEFT(TEMP_DESCRICAO, 36);

     INSERT INTO
       PAGAMENTOS(
         CODIGO,
         CODMOVIMENTO,
         NUMERO,
         DESCRICAO,
         ES,
         VALOR,
         CODDOCUMENTO,
         INFODOC,
         ARQUIVO,
         HISTORICO,
         DESCONTO,
         MULTA_JUROS,
         DATAVENCIMENTO,
         STATUS,
         CODCONTA,
         CODEMPRESA,
         TIPO_PAG,
         TIPO_DOC,
         CH_BANCO,
         CH_AGENCIA,
         CH_CONTA,
         CH_SERIE,
         CH_NUMERO,
         CODCENTRO,
         CODCLIENTE,
         CODPLANO,
         PAGO,
         CODORIGEM)
       VALUES (
         :TEMP_CODIGO,
         :TEMP_CODMOVIMENTO,
         :TEMP_NUMERO,
         :TEMP_DESCRICAO2,
         :TEMP_ES,
         :TEMP_VALOR,
         :TEMP_CODDOCUMENTO,
         :TEMP_INFODOC,
         :TEMP_ARQUIVO,
         :TEMP_HISTORICO,
         :TEMP_DESCONTO,
         :TEMP_MULTA_JUROS,
         :TEMP_DATAVENCIMENTO,
         :TEMP_STATUS,
         :TEMP_CODCONTA,
         :TEMP_CODEMPRESA,
         :TEMP_TIPO_PAG,
         :TEMP_TIPO_DOC,
         :TEMP_CH_BANCO,
         :TEMP_CH_AGENCIA,
         :TEMP_CH_CONTA,
         :TEMP_CH_SERIE,
         :TEMP_CH_NUMERO,
         :TEMP_CODCENTRO,
         :TEMP_CODCLIENTE,
         :TEMP_CODPLANO,
         1,
         :CODIGO);

     /* LANCAMENTO RESSUCITADO */
     IF (TEMP_ES = 1) THEN
       TEMP_ES = 2;
     ELSE
       TEMP_ES = 1;

     /* PEGO O CODIGO DO PROXIMO LANCAMENTO */
     EXECUTE PROCEDURE SEQ_OBTER('PAGAMENTOS')
       RETURNING_VALUES :TEMP_CODIGO;

     TEMP_CODRELANC = TEMP_CODIGO;

     INSERT INTO
       PAGAMENTOS(
         CODIGO,
         CODMOVIMENTO,
         NUMERO,
         DESCRICAO,
         ES,
         VALOR,
         CODDOCUMENTO,
         INFODOC,
         ARQUIVO,
         HISTORICO,
         DESCONTO,
         MULTA_JUROS,
         DATAVENCIMENTO,
         STATUS,
         CODCONTA,
         CODEMPRESA,
         TIPO_PAG,
         TIPO_DOC,
         CH_BANCO,
         CH_AGENCIA,
         CH_CONTA,
         CH_SERIE,
         CH_NUMERO,
         CODCENTRO,
         CODCLIENTE,
         CODPLANO,
         PAGO,
         CODORIGEM)
       VALUES (
         :TEMP_CODIGO,
         :TEMP_CODMOVIMENTO,
         :TEMP_NUMERO,
         :TEMP_DESCRICAO,
         :TEMP_ES,
         :TEMP_VALOR,
         :TEMP_CODDOCUMENTO,
         :TEMP_INFODOC,
         :TEMP_ARQUIVO,
         :TEMP_HISTORICO,
         :TEMP_DESCONTO,
         :TEMP_MULTA_JUROS,
         :TEMP_DATAVENCIMENTO,
         :TEMP_STATUS,
         :TEMP_CODCONTA,
         :TEMP_CODEMPRESA,
         :TEMP_TIPO_PAG,
         :TEMP_TIPO_DOC,
         :TEMP_CH_BANCO,
         :TEMP_CH_AGENCIA,
         :TEMP_CH_CONTA,
         :TEMP_CH_SERIE,
         :TEMP_CH_NUMERO,
         :TEMP_CODCENTRO,
         :TEMP_CODCLIENTE,
         :TEMP_CODPLANO,
         0,
         :CODIGO);

     /* GRAVO DADOS DO ESTORNO */
     UPDATE
       PAGAMENTOS
     SET
       ESTORNO_CODESTORNO = :TEMP_CODESTORNO,
       ESTORNO_CODRELANC  = :TEMP_CODRELANC,
       ESTORNO_CODUSUARIO = :CODUSUARIO,
       ESTORNO_DATA       = CURRENT_TIMESTAMP
     WHERE
       CODIGO = :CODIGO;

   END ELSE EXCEPTION CONTANAOPAGA;

end

^

SET TERM ; ^

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (179, CURRENT_TIMESTAMP);
COMMIT;