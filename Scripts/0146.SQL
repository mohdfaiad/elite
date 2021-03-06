/*
** PREENCHE TEMPOS DE OS - PARTE 1/3
*/

SET TERM ^ ;

CREATE PROCEDURE PREENCHE_TEMPOS
AS
DECLARE VARIABLE CODIGO INTEGER;
DECLARE VARIABLE DATA TIMESTAMP;
DECLARE VARIABLE DATAFECHAMENTO TIMESTAMP;
DECLARE VARIABLE PRIMEIRO TIMESTAMP;
DECLARE VARIABLE ULTIMO TIMESTAMP;
DECLARE VARIABLE TOTAL DOUBLE PRECISION;
DECLARE VARIABLE TEMPO_CHEGADA DOUBLE PRECISION;
DECLARE VARIABLE TEMPO_CONCLUSAO DOUBLE PRECISION;
DECLARE VARIABLE TEMPO_LANCAMENTO DOUBLE PRECISION;
DECLARE VARIABLE DATAINICIO TIMESTAMP;
DECLARE VARIABLE DATATERMINO TIMESTAMP;
begin

  for
  select
    codigo,
    data,
    datafechamento
  from
    movimentos
  where
    tipo = 3
  into
    :codigo,
    :data,
    :datafechamento
  do
  begin

    SELECT
      MIN(DATAINI),
      MAX(DATAFIM),
      SUM(THORAS)
    FROM
      OS_VENDER
    WHERE
      CODMOVIMENTO = :CODIGO
    INTO
      :PRIMEIRO,
      :ULTIMO,
      :TOTAL;

    IF (PRIMEIRO IS NULL) THEN
     BEGIN
      TEMPO_CHEGADA    = NULL;
      TEMPO_CONCLUSAO  = NULL;
      TEMPO_LANCAMENTO = NULL;
      DATAINICIO       = NULL;
      DATATERMINO      = NULL;
     END ELSE
     BEGIN
      TEMPO_CHEGADA = CAST(
           UDF_MINUTESBETWEEN(:DATA, :PRIMEIRO)
           AS DOUBLE PRECISION) / 60;
      TEMPO_CONCLUSAO = CAST(
           UDF_MINUTESBETWEEN(:DATA, :ULTIMO)
           AS DOUBLE PRECISION) / 60;
      TEMPO_LANCAMENTO = CAST(
           UDF_MINUTESBETWEEN(:ULTIMO, :DATAFECHAMENTO)
           AS DOUBLE PRECISION) / 60;
      DATAINICIO  = :PRIMEIRO;
      DATATERMINO = :ULTIMO;
     END

    UPDATE
      MOVIMENTOS
    SET
      TEMPO_CHEGADA = :TEMPO_CHEGADA,
      TEMPO_CONCLUSAO = :TEMPO_CONCLUSAO,
      TEMPO_LANCAMENTO = :TEMPO_LANCAMENTO,
      TEMPO_TECNICOS = :TOTAL,
      DATAINICIO  = :DATAINICIO,
      DATATERMINO = :DATATERMINO,
      TEMPO_CICLO = CAST(
        UDF_MINUTESBETWEEN(:DATA, :DATAFECHAMENTO)
        AS DOUBLE PRECISION) / 60
    WHERE
      CODIGO = :CODIGO;

  end

end

^

SET TERM ; ^

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (146, CURRENT_TIMESTAMP);
