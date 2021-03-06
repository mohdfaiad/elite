/*
** Logradouro de 60 caracteres
*/

ALTER PROCEDURE REL_NOTACORPO (
    CODMOVIMENTO INTEGER)
RETURNS (
    ES SMALLINT,
    CODCLIENTE INTEGER,
    DATA TIMESTAMP,
    SERVICOS VARCHAR(254) CHARACTER SET NONE,
    VALOR_SERVICOS NUMERIC(9,2),
    VALOR_ITENS NUMERIC(9,2),
    DESCONTO NUMERIC(9,2),
    VALOR_PRODUTOS NUMERIC(9,2),
    VALOR_ICMS NUMERIC(9,2),
    VALOR_TOTAL NUMERIC(9,2),
    OBSERVACOES VARCHAR(254) CHARACTER SET NONE,
    NOTA_NUMERO INTEGER,
    NOTA_DATAEMISSAO TIMESTAMP,
    NOTA_CODNATUOPER VARCHAR(10) CHARACTER SET NONE,
    NOTA_CODTRANSPORTADOR INTEGER,
    NOTA_PLACAVEICULO VARCHAR(10) CHARACTER SET NONE,
    NOTA_UFVEICULO VARCHAR(2) CHARACTER SET NONE,
    NOTA_FRETE SMALLINT,
    NOTA_VALOR_FRETE NUMERIC(9,2),
    NOTA_VALOR_SEGURO NUMERIC(9,2),
    NOTA_VALOR_OUTROS NUMERIC(9,2),
    NOTA_VALOR_TOTAL NUMERIC(9,2),
    NOTA_QUANTIDADE NUMERIC(9,2),
    NOTA_ESPECIE VARCHAR(30) CHARACTER SET NONE,
    NOTA_MARCA VARCHAR(20) CHARACTER SET NONE,
    NOTA_VOLNUM INTEGER,
    NOTA_PESOBRUTO NUMERIC(9,2),
    NOTA_PESOLIQUIDO NUMERIC(9,2),
    NOTA_DADOSADICIONAIS VARCHAR(254) CHARACTER SET NONE,
    CODVENDEDOR INTEGER,
    STATUS VARCHAR(20) CHARACTER SET NONE,
    CONDICAO VARCHAR(40) CHARACTER SET NONE,
    DATAINICIO TIMESTAMP,
    DATATERMINO TIMESTAMP,
    ICMSSIMPLES CHAR(1) CHARACTER SET NONE,
    ICMSSIMPALIQ NUMERIC(9,4),
    ISSALIQ NUMERIC(9,4),
    VALOR_ISS NUMERIC(9,2),
    NOTA_IESUBST VARCHAR(20) CHARACTER SET NONE,
    NOTA_DATASAIDA TIMESTAMP,
    NOTA_BASEICMS NUMERIC(9,4),
    NOTA_BASEICMSSUBST NUMERIC(9,4),
    NOTA_VALORICMSSUBST NUMERIC(9,2),
    VALOR_IPI NUMERIC(9,2),
    CODVENDEDOR_ABRE INTEGER,
    DESCONTOTXT VARCHAR(40) CHARACTER SET NONE,
    CLI_NOME VARCHAR(40) CHARACTER SET NONE,
    CLI_LOGRADOURO VARCHAR(60) CHARACTER SET NONE,
    CLI_NUMERO INTEGER,
    CLI_COMPLEMENTO VARCHAR(40) CHARACTER SET NONE,
    CLI_BAIRRO VARCHAR(60) CHARACTER SET NONE,
    CLI_CEP VARCHAR(10) CHARACTER SET NONE,
    CLI_CIDADE VARCHAR(60) CHARACTER SET NONE,
    CLI_ESTADO VARCHAR(2) CHARACTER SET NONE,
    CLI_FONE VARCHAR(20) CHARACTER SET NONE,
    CLI_FAX VARCHAR(20) CHARACTER SET NONE,
    CLI_EMAIL VARCHAR(50) CHARACTER SET NONE,
    CLI_RGIE VARCHAR(20) CHARACTER SET NONE,
    CLI_CPFCGC VARCHAR(20) CHARACTER SET NONE,
    TRA_NOME VARCHAR(40) CHARACTER SET NONE,
    TRA_LOGRADOURO VARCHAR(60) CHARACTER SET NONE,
    TRA_NUMERO INTEGER,
    TRA_COMPLEMENTO VARCHAR(40) CHARACTER SET NONE,
    TRA_BAIRRO VARCHAR(60) CHARACTER SET NONE,
    TRA_CEP VARCHAR(10) CHARACTER SET NONE,
    TRA_CIDADE VARCHAR(60) CHARACTER SET NONE,
    TRA_ESTADO VARCHAR(2) CHARACTER SET NONE,
    TRA_FONE VARCHAR(20) CHARACTER SET NONE,
    TRA_FAX VARCHAR(20) CHARACTER SET NONE,
    TRA_EMAIL VARCHAR(50) CHARACTER SET NONE,
    TRA_RGIE VARCHAR(20) CHARACTER SET NONE,
    TRA_CPFCGC VARCHAR(20) CHARACTER SET NONE,
    CODIGO INTEGER,
    MARCA VARCHAR(40) CHARACTER SET NONE,
    MODELO VARCHAR(40) CHARACTER SET NONE,
    DEFEITO VARCHAR(40) CHARACTER SET NONE,
    GARANTIA CHAR(1) CHARACTER SET NONE,
    SERIE VARCHAR(40) CHARACTER SET NONE,
    ACESSORIOS VARCHAR(50) CHARACTER SET NONE,
    CONDICAOEXTERNA VARCHAR(40) CHARACTER SET NONE,
    SOLICITANTE VARCHAR(40) CHARACTER SET NONE,
    VENDEDORABRE VARCHAR(40) CHARACTER SET NONE,
    VENDEDOR VARCHAR(40) CHARACTER SET NONE,
    USUARIO VARCHAR(40) CHARACTER SET NONE,
    CLI_CONTRATO CHAR(1) CHARACTER SET NONE,
    CLI_KM INTEGER,
    NATUREZAOPERACAO VARCHAR(30) CHARACTER SET NONE,
    CODEMPRESA INTEGER,
    EMPRESA_NOME VARCHAR(40) CHARACTER SET NONE,
    EMPRESA_RAZAOSOCIAL VARCHAR(40) CHARACTER SET NONE,
    EMPRESA_CNPJ VARCHAR(20) CHARACTER SET NONE,
    EMPRESA_IE VARCHAR(20) CHARACTER SET NONE,
    EMPRESA_LOGRADOURO VARCHAR(60) CHARACTER SET NONE,
    EMPRESA_NUMERO INTEGER,
    EMPRESA_COMPLEMENTO VARCHAR(40) CHARACTER SET NONE,
    EMPRESA_BAIRRO VARCHAR(60) CHARACTER SET NONE,
    EMPRESA_CIDADE VARCHAR(60) CHARACTER SET NONE,
    EMPRESA_ESTADO CHAR(2) CHARACTER SET NONE,
    EMPRESA_CEP VARCHAR(9) CHARACTER SET NONE,
    EMPRESA_FONE VARCHAR(20) CHARACTER SET NONE,
    TIPOOS VARCHAR(40) CHARACTER SET NONE)
AS
DECLARE VARIABLE TEMP_PESSOAFISICA CHAR(1);
DECLARE VARIABLE TEMP_RAZAOSOCIAL VARCHAR(40);
DECLARE VARIABLE TEMP_IE VARCHAR(20);
DECLARE VARIABLE TEMP_CGC VARCHAR(20);
DECLARE VARIABLE CODMARCA INTEGER;
DECLARE VARIABLE CODMODELO INTEGER;
DECLARE VARIABLE CODDEFEITO INTEGER;
DECLARE VARIABLE OSTIPO INTEGER;
BEGIN
  SELECT
    CODIGO,
    ES,
    CODCLIENTE,
    DATA,
    F_LEFT(SERVICOS, 254),
    VALOR_SERVICOS,
    VALOR_ITENS,
    DESCONTO,
    VALOR_PRODUTOS,
    VALOR_ICMS,
    VALOR_TOTAL,
    F_LEFT(OBSERVACOES, 254),
    NOTA_NUMERO,
    NOTA_DATAEMISSAO,
    NOTA_CODNATUOPER,
    NOTA_CODTRANSPORTADOR,
    NOTA_PLACAVEICULO,
    NOTA_UFVEICULO,
    NOTA_FRETE,
    NOTA_VALOR_FRETE,
    NOTA_VALOR_SEGURO,
    NOTA_VALOR_OUTROS,
    NOTA_VALOR_TOTAL,
    NOTA_QUANTIDADE,
    NOTA_ESPECIE,
    NOTA_MARCA,
    NOTA_VOLNUM,
    NOTA_PESOBRUTO,
    NOTA_PESOLIQUIDO,
    F_LEFT(NOTA_DADOSADICIONAIS, 254),
    CODVENDEDOR,
    STATUS,
    CONDICAO,
    DATAINICIO,
    DATATERMINO,
    ICMSSIMPLES,
    ICMSSIMPALIQ,
    ISSALIQ,
    VALOR_ISS,
    NOTA_IESUBST,
    NOTA_DATASAIDA,
    NOTA_BASEICMS,
    NOTA_BASEICMSSUBST,
    NOTA_VALORICMSSUBST,
    VALOR_IPI,
    CODVENDEDOR_ABRE,
    DESCONTOTXT,
    CODMARCA,
    CODMODELO,
    CODDEFEITO,
    GARANTIA,
    SERIE,
    ACESSORIOS,
    CONDICAOEXTERNA,
    SOLICITANTE,
    CODEMPRESA,
    OSTIPO
  FROM
    MOVIMENTOS MO
  WHERE
    CODIGO = :CODMOVIMENTO
  INTO
    :CODIGO,
    :ES,
    :CODCLIENTE,
    :DATA,
    :SERVICOS,
    :VALOR_SERVICOS,
    :VALOR_ITENS,
    :DESCONTO,
    :VALOR_PRODUTOS,
    :VALOR_ICMS,
    :VALOR_TOTAL,
    :OBSERVACOES,
    :NOTA_NUMERO,
    :NOTA_DATAEMISSAO,
    :NOTA_CODNATUOPER,
    :NOTA_CODTRANSPORTADOR,
    :NOTA_PLACAVEICULO,
    :NOTA_UFVEICULO,
    :NOTA_FRETE,
    :NOTA_VALOR_FRETE,
    :NOTA_VALOR_SEGURO,
    :NOTA_VALOR_OUTROS,
    :NOTA_VALOR_TOTAL,
    :NOTA_QUANTIDADE,
    :NOTA_ESPECIE,
    :NOTA_MARCA,
    :NOTA_VOLNUM,
    :NOTA_PESOBRUTO,
    :NOTA_PESOLIQUIDO,
    :NOTA_DADOSADICIONAIS,
    :CODVENDEDOR,
    :STATUS,
    :CONDICAO,
    :DATAINICIO,
    :DATATERMINO,
    :ICMSSIMPLES,
    :ICMSSIMPALIQ,
    :ISSALIQ,
    :VALOR_ISS,
    :NOTA_IESUBST,
    :NOTA_DATASAIDA,
    :NOTA_BASEICMS,
    :NOTA_BASEICMSSUBST,
    :NOTA_VALORICMSSUBST,
    :VALOR_IPI,
    :CODVENDEDOR_ABRE,
    :DESCONTOTXT,
    :CODMARCA,
    :CODMODELO,
    :CODDEFEITO,
    :GARANTIA,
    :SERIE,
    :ACESSORIOS,
    :CONDICAOEXTERNA,
    :SOLICITANTE,
    :CODEMPRESA,
    :OSTIPO;

  SELECT
    CL.NOME,
    F_LEFT(CL.RAZAOSOCIAL, 40),
    CL.PESSOAFISICA,
    CL.NUMERO,
    CL.COMPLEMENTO,
    CL.ESTADO,
    CL.FONE,
    CL.FAX,
    CL.EMAIL,
    CL.RG,
    CL.CPF,
    CL.IE,
    CL.CGC,
    CL.CONTRATO,
    CL.KMS,
    LO.LOGRADOURO,
    BA.BAIRRO,
    CI.CIDADE,
    LO.CEP
  FROM
    CLIENTES CL
    LEFT JOIN LOGRADOUROS LO ON
      ( LO.CODIGO = CL.LOCALIZACAO AND
        LO.BAIRRO = CL.BAIRRO AND
        LO.CIDADE = CL.CIDADE AND
        LO.ESTADO = CL.ESTADO )
    LEFT JOIN BAIRROS BA ON
      ( BA.CODIGO = CL.BAIRRO AND
        BA.CIDADE = CL.CIDADE AND
        BA.ESTADO = CL.ESTADO )
    LEFT JOIN CIDADES CI ON
      ( CI.CODIGO = CL.CIDADE AND
        CI.ESTADO = CL.ESTADO )
  WHERE
    CL.CODIGO = :CODCLIENTE
  INTO
    :CLI_NOME,
    :TEMP_RAZAOSOCIAL,
    :TEMP_PESSOAFISICA,
    :CLI_NUMERO,
    :CLI_COMPLEMENTO,
    :CLI_ESTADO,
    :CLI_FONE,
    :CLI_FAX,
    :CLI_EMAIL,
    :CLI_RGIE,
    :CLI_CPFCGC,
    :TEMP_IE,
    :TEMP_CGC,
    :CLI_CONTRATO,
    :CLI_KM,
    :CLI_LOGRADOURO,
    :CLI_BAIRRO,
    :CLI_CIDADE,
    :CLI_CEP;
  IF ( TEMP_PESSOAFISICA = 'J' ) THEN
   BEGIN
     CLI_RGIE   = TEMP_IE;
     CLI_CPFCGC = TEMP_CGC;
   END

  SELECT
    TR.NOME,
    F_LEFT(TR.RAZAOSOCIAL, 40),
    TR.PESSOAFISICA,
    TR.NUMERO,
    TR.COMPLEMENTO,
    TR.ESTADO,
    TR.FONE,
    TR.FAX,
    TR.EMAIL,
    TR.RG,
    TR.CPF,
    TR.IE,
    TR.CGC,
    LO.LOGRADOURO,
    BA.BAIRRO,
    CI.CIDADE,
    LO.CEP
  FROM
    CLIENTES TR
    LEFT JOIN LOGRADOUROS LO ON
      ( LO.CODIGO = TR.LOCALIZACAO AND
        LO.BAIRRO = TR.BAIRRO AND
        LO.CIDADE = TR.CIDADE AND
        LO.ESTADO = TR.ESTADO )
    LEFT JOIN BAIRROS BA ON
      ( BA.CODIGO = TR.BAIRRO AND
        BA.CIDADE = TR.CIDADE AND
        BA.ESTADO = TR.ESTADO )
    LEFT JOIN CIDADES CI ON
      ( CI.CODIGO = TR.CIDADE AND
        CI.ESTADO = TR.ESTADO )
  WHERE
    TR.CODIGO = :NOTA_CODTRANSPORTADOR
  INTO
    :TRA_NOME,
    :TEMP_RAZAOSOCIAL,
    :TEMP_PESSOAFISICA,
    :TRA_NUMERO,
    :TRA_COMPLEMENTO,
    :TRA_ESTADO,
    :TRA_FONE,
    :TRA_FAX,
    :TRA_EMAIL,
    :TRA_RGIE,
    :TRA_CPFCGC,
    :TEMP_IE,
    :TEMP_CGC,
    :TRA_LOGRADOURO,
    :TRA_BAIRRO,
    :TRA_CIDADE,
    :TRA_CEP;
  IF ( TEMP_PESSOAFISICA = 'J' ) THEN
   BEGIN
     TRA_RGIE   = TEMP_IE;
     TRA_CPFCGC = TEMP_CGC;
   END

  SELECT
    NOME
  FROM
    CLIENTES
  WHERE
    CODIGO = :CODVENDEDOR_ABRE
  INTO
    :VENDEDORABRE;

  SELECT
    NOME
  FROM
    CLIENTES
  WHERE
    CODIGO = :CODVENDEDOR
  INTO
    :VENDEDOR;

  SELECT
    DESCRICAO
  FROM
    MARCAS
  WHERE
    CODIGO = :CODMARCA
  INTO
    :MARCA;

  SELECT
    DESCRICAO
  FROM
    MODELOS
  WHERE
    CODIGO = :CODMODELO AND
    CODEQUIPAMENTO = :CODMARCA
  INTO
    :MODELO;

  SELECT
    DESCRICAO
  FROM
    DEFEITOS
  WHERE
    CODIGO = :CODDEFEITO
  INTO
    :DEFEITO;

  SELECT
    NATUREZA
  FROM
    NATUOPER
  WHERE
    CODIGO = :NOTA_CODNATUOPER
  INTO
    :NATUREZAOPERACAO;

  SELECT
    TIPO
  FROM
    OSTIPOS
  WHERE
    CODIGO = :OSTIPO
  INTO
    :TIPOOS;

  SELECT
    CL.NOME,
    CL.RAZAOSOCIAL,
    CL.CGC,
    CL.IE,
    CL.LOGRADOURO,
    CL.NUMERO,
    CL.COMPLEMENTO,
    CL.BAIRRO,
    CL.CIDADE,
    CL.ESTADO,
    CL.CEP,
    CL.FONE
  FROM
    SISCONFIG SI
    JOIN REL_CLIENTES CL ON
      (SI.CODCLIENTE = CL.CODIGO)
  WHERE
    SI.CODIGO = :CODEMPRESA
  INTO
    :EMPRESA_NOME,
    :EMPRESA_RAZAOSOCIAL,
    :EMPRESA_CNPJ,
    :EMPRESA_IE,
    :EMPRESA_LOGRADOURO,
    :EMPRESA_NUMERO,
    :EMPRESA_COMPLEMENTO,
    :EMPRESA_BAIRRO,
    :EMPRESA_CIDADE,
    :EMPRESA_ESTADO,
    :EMPRESA_CEP,
    :EMPRESA_FONE;

  USUARIO = USER;

 SUSPEND;
END!

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (92, CURRENT_TIMESTAMP)!