object dmoSisconfig: TdmoSisconfig
  OldCreateOrder = False
  Left = 12
  Top = 76
  Height = 480
  Width = 760
  object traComum: TIBTransaction
    Active = False
    DefaultDatabase = dmoPrincipal.Database
    IdleTimer = 1024
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version'
      'wait')
    AutoStopAction = saCommit
    Left = 25
    Top = 13
  end
  object qryGRUPO_SER: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traComum
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT GRUPO FROM GRUPOS'
      'WHERE CODIGO = :GRUPO_SER')
    UniDirectional = True
    Left = 97
    Top = 271
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRUPO_SER'
        ParamType = ptUnknown
      end>
  end
  object qryMEDIDA_SER: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traComum
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT UNIDADE FROM MEDIDAS'
      'WHERE SIGLA = :MEDIDA_SER')
    UniDirectional = True
    Left = 185
    Top = 271
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MEDIDA_SER'
        ParamType = ptUnknown
      end>
  end
  object dsrGRUPO_SER: TDataSource
    AutoEdit = False
    DataSet = qryGRUPO_SER
    Left = 97
    Top = 319
  end
  object dsrMEDIDA_SER: TDataSource
    AutoEdit = False
    DataSet = qryMEDIDA_SER
    Left = 185
    Top = 319
  end
  object qryEmpresa: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traComum
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT NOME FROM CLIENTES'
      'WHERE CODIGO = :CODCLIENTE')
    UniDirectional = True
    Left = 89
    Top = 15
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODCLIENTE'
        ParamType = ptUnknown
      end>
  end
  object dsrEmpresa: TDataSource
    AutoEdit = False
    DataSet = qryEmpresa
    Left = 89
    Top = 63
  end
  object qryCliente: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traComum
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT NOME FROM CLIENTES'
      'WHERE CODIGO = :CODCLIENTE_PADRAO')
    UniDirectional = True
    Left = 153
    Top = 15
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODCLIENTE_PADRAO'
        ParamType = ptUnknown
      end>
  end
  object dsrCliente: TDataSource
    AutoEdit = False
    DataSet = qryCliente
    Left = 153
    Top = 63
  end
  object qryCCD: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traComum
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT CONTA FROM CONTAS'
      'WHERE CODIGO = :CODCONTA_COMPRADEB')
    UniDirectional = True
    Left = 417
    Top = 15
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODCONTA_COMPRADEB'
        ParamType = ptUnknown
      end>
  end
  object dsrCCD: TDataSource
    AutoEdit = False
    DataSet = qryCCD
    Left = 417
    Top = 63
  end
  object qryCVC: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traComum
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT CONTA FROM CONTAS'
      'WHERE CODIGO = :CODCONTA_VENDACRE')
    UniDirectional = True
    Left = 457
    Top = 15
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODCONTA_VENDACRE'
        ParamType = ptUnknown
      end>
  end
  object dsrCVC: TDataSource
    AutoEdit = False
    DataSet = qryCVC
    Left = 457
    Top = 63
  end
  object qryDOCvista: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traComum
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT DOCUMENTO FROM DOCUMENTOS'
      'WHERE CODIGO = :CODDOC_AVISTA')
    UniDirectional = True
    Left = 225
    Top = 15
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODDOC_AVISTA'
        ParamType = ptUnknown
      end>
  end
  object dsrDOCvista: TDataSource
    AutoEdit = False
    DataSet = qryDOCvista
    Left = 225
    Top = 63
  end
  object qryDOCprazo: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traComum
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT DOCUMENTO FROM DOCUMENTOS'
      'WHERE CODIGO = :CODDOC_PRAZO')
    UniDirectional = True
    Left = 297
    Top = 15
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODDOC_PRAZO'
        ParamType = ptUnknown
      end>
  end
  object dsrDOCprazo: TDataSource
    AutoEdit = False
    DataSet = qryDOCprazo
    Left = 297
    Top = 63
  end
  object qryImpNota: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traComum
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT DESCRICAO FROM IMPNOTA'
      'WHERE NUMIMPNOTA = :NOTA_PADRAO')
    UniDirectional = True
    Left = 89
    Top = 135
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NOTA_PADRAO'
        ParamType = ptUnknown
      end>
  end
  object dsrImpNota: TDataSource
    AutoEdit = False
    DataSet = qryImpNota
    Left = 89
    Top = 183
  end
  object qryOSaberta: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = dmoPrincipal.traDefault
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT DESCRICAO FROM IMPNOTA'
      'WHERE NUMIMPNOTA = :OSABERTA_PADRAO')
    UniDirectional = True
    Left = 154
    Top = 135
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OSABERTA_PADRAO'
        ParamType = ptUnknown
      end>
  end
  object dsrOSaberta: TDataSource
    AutoEdit = False
    DataSet = qryOSaberta
    Left = 154
    Top = 183
  end
  object qryOSfechada: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = dmoPrincipal.traDefault
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT DESCRICAO FROM IMPNOTA'
      'WHERE NUMIMPNOTA = :OSFECHADA_PADRAO')
    UniDirectional = True
    Left = 298
    Top = 135
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'OSFECHADA_PADRAO'
        ParamType = ptUnknown
      end>
  end
  object dsrOSfechada: TDataSource
    AutoEdit = False
    DataSet = qryOSfechada
    Left = 298
    Top = 183
  end
  object qryOSaberta2: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = dmoPrincipal.traDefault
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT DESCRICAO FROM IMPNOTA'
      'WHERE NUMIMPNOTA = :OSABERTA_PADRAO_2A')
    UniDirectional = True
    Left = 226
    Top = 135
    ParamData = <
      item
        DataType = ftInteger
        Name = 'OSABERTA_PADRAO_2A'
        ParamType = ptUnknown
      end>
  end
  object dsrOSaberta2: TDataSource
    AutoEdit = False
    DataSet = qryOSaberta2
    Left = 226
    Top = 183
  end
  object qryRecibo: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = dmoPrincipal.traDefault
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT DESCRICAO FROM IMPBOLETO'
      'WHERE NUMIMPBOLETO = :RECIBO_PADRAO')
    UniDirectional = True
    Left = 370
    Top = 135
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RECIBO_PADRAO'
        ParamType = ptUnknown
      end>
  end
  object dsrRecibo: TDataSource
    AutoEdit = False
    DataSet = qryRecibo
    Left = 370
    Top = 183
  end
  object qryNatuoper: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traComum
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT'
      '  NATUREZA'
      'FROM'
      '  NATUOPER'
      'WHERE'
      '  CODIGO = :NATUOPER_PADRAO')
    UniDirectional = True
    Left = 297
    Top = 271
    ParamData = <
      item
        DataType = ftString
        Name = 'NATUOPER_PADRAO'
        ParamType = ptUnknown
      end>
  end
  object dsrNatuoper: TDataSource
    AutoEdit = False
    DataSet = qryNatuoper
    Left = 297
    Top = 319
  end
  object qryNatuoperC: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traComum
    BufferChunks = 100
    CachedUpdates = False
    DataSource = formSisConfig.dsrDetalhes
    SQL.Strings = (
      'SELECT'
      '  NATUREZA'
      'FROM'
      '  NATUOPER'
      'WHERE'
      '  CODIGO = :NATUOPER_COMPRA')
    UniDirectional = True
    Left = 369
    Top = 271
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NATUOPER_COMPRA'
        ParamType = ptUnknown
      end>
  end
  object dsrNatuoperC: TDataSource
    AutoEdit = False
    DataSet = qryNatuoperC
    Left = 369
    Top = 319
  end
end
