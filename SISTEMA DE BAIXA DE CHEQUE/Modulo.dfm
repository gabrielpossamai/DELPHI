object DmWinBank: TDmWinBank
  OldCreateOrder = False
  Height = 262
  Width = 476
  object IdbWinbank: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\Delphi\Desktop\winbank\Debug\Win32\dados\WINBANK.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IbtWbTrans
    Left = 32
    Top = 24
  end
  object IbtWbTrans: TIBTransaction
    Active = True
    DefaultDatabase = IdbWinbank
    Left = 128
    Top = 24
  end
  object IbtClientes: TIBTable
    Database = IdbWinbank
    Transaction = IbtWbTrans
    Active = True
    FieldDefs = <
      item
        Name = 'CNPJ'
        Attributes = [faRequired, faFixed]
        DataType = ftWideString
        Size = 14
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 45
      end
      item
        Name = 'FONE'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'DTULTALT'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY38'
        Fields = 'CNPJ'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IDX_CLIENTES_NOME'
        Fields = 'NOME'
      end>
    StoreDefs = True
    TableName = 'CLIENTES'
    Left = 216
    Top = 24
    object IbtClientesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Required = True
      FixedChar = True
      Size = 14
    end
    object IbtClientesNOME: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 45
    end
    object IbtClientesFONE: TIBStringField
      FieldName = 'FONE'
      Required = True
      Size = 15
    end
    object IbtClientesDTULTALT: TDateField
      FieldName = 'DTULTALT'
    end
  end
  object DsClientes: TDataSource
    DataSet = IbtClientes
    Left = 288
    Top = 24
  end
  object IbtBancos: TIBTable
    Database = IdbWinbank
    Transaction = IbtWbTrans
    ForcedRefresh = True
    Active = True
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY37'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'IDX_BANCOS_NOME'
        Fields = 'NOME'
      end>
    StoreDefs = True
    TableName = 'BANCOS'
    Left = 216
    Top = 80
    object IbtBancosCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Required = True
    end
    object IbtBancosNOME: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 50
    end
  end
  object DsBancos: TDataSource
    DataSet = IbtBancos
    Left = 288
    Top = 80
  end
  object IbtCheques: TIBTable
    Database = IdbWinbank
    Transaction = IbtWbTrans
    OnCalcFields = IbtChequesCalcFields
    Active = True
    FieldDefs = <
      item
        Name = 'CNPJ'
        Attributes = [faRequired, faFixed]
        DataType = ftWideString
        Size = 14
      end
      item
        Name = 'BANCO'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'AGENCIA'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'CONTA'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'NUMERO'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'VALOR'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'EMISSAO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'ALINEA'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'DATAPGTO'
        DataType = ftDate
      end
      item
        Name = 'JUROSPAGOS'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY39'
        Fields = 'CNPJ;BANCO;AGENCIA;CONTA;NUMERO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN40'
        Fields = 'ALINEA'
      end
      item
        Name = 'RDB$FOREIGN41'
        Fields = 'BANCO'
      end
      item
        Name = 'RDB$FOREIGN42'
        Fields = 'CNPJ'
      end>
    IndexFieldNames = 'CNPJ;BANCO;AGENCIA;CONTA;NUMERO'
    MasterFields = 'CNPJ'
    MasterSource = DsClientes
    StoreDefs = True
    TableName = 'CHEQUES'
    Left = 216
    Top = 136
    object IbtChequesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Required = True
      Size = 14
    end
    object IbtChequesBANCO: TSmallintField
      FieldName = 'BANCO'
      Required = True
    end
    object IbtChequesAGENCIA: TSmallintField
      FieldName = 'AGENCIA'
      Required = True
    end
    object IbtChequesCONTA: TSmallintField
      FieldName = 'CONTA'
      Required = True
    end
    object IbtChequesNUMERO: TSmallintField
      FieldName = 'NUMERO'
      Required = True
    end
    object IbtChequesVALOR: TFloatField
      FieldName = 'VALOR'
      Required = True
    end
    object IbtChequesEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object IbtChequesALINEA: TSmallintField
      FieldName = 'ALINEA'
      Required = True
    end
    object IbtChequesDATAPGTO: TDateField
      FieldName = 'DATAPGTO'
    end
    object IbtChequesJUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
    end
    object IbtChequesNOMEBANCO: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMEBANCO'
      LookupDataSet = IbtBancos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'BANCO'
      Lookup = True
    end
    object IbtChequesVALORPAGO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VALORPAGO'
      Calculated = True
    end
    object IbtChequesATRASO: TDateField
      FieldKind = fkCalculated
      FieldName = 'ATRASO'
      Calculated = True
    end
  end
  object DsCheques: TDataSource
    DataSet = IbtCheques
    Left = 288
    Top = 136
  end
  object IbtAlineas: TIBTable
    Database = IdbWinbank
    Transaction = IbtWbTrans
    Active = True
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'DESCRICAO'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY36'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'ALINEAS'
    Left = 216
    Top = 192
    object IbtAlineasCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Required = True
    end
    object IbtAlineasDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 255
    end
  end
  object DsAlineas: TDataSource
    DataSet = IbtAlineas
    Left = 288
    Top = 192
  end
  object IbqConsulta: TIBQuery
    Database = IdbWinbank
    Transaction = IbtWbTrans
    SQL.Strings = (
      'SELECT'
      '    cli.nome as nomeCliente,'
      '    cli.cnpj,'
      '    ban.nome as nomeBanco,'
      '    che.*,'
      '    (che.valor + che.jurosPagos) as valorPago'
      'FROM'
      '    CLIENTES cli,'
      '    CHEQUES che,'
      '    BANCOS ban'
      'WHERE'
      '    che.cnpj = cli.cnpj'
      '    AND che.banco = ban.codigo'
      'ORDER BY'
      '    emissao')
    Left = 352
    Top = 24
    object IbqConsultaNOMECLIENTE: TIBStringField
      FieldName = 'NOMECLIENTE'
      Origin = '"CLIENTES"."NOME"'
      Required = True
      Size = 45
    end
    object IbqConsultaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CLIENTES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object IbqConsultaNOMEBANCO: TIBStringField
      FieldName = 'NOMEBANCO'
      Origin = '"BANCOS"."NOME"'
      Required = True
      Size = 50
    end
    object IbqConsultaCNPJ1: TIBStringField
      FieldName = 'CNPJ1'
      Origin = '"CHEQUES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object IbqConsultaBANCO: TSmallintField
      FieldName = 'BANCO'
      Origin = '"CHEQUES"."BANCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IbqConsultaAGENCIA: TSmallintField
      FieldName = 'AGENCIA'
      Origin = '"CHEQUES"."AGENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IbqConsultaCONTA: TSmallintField
      FieldName = 'CONTA'
      Origin = '"CHEQUES"."CONTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IbqConsultaNUMERO: TSmallintField
      FieldName = 'NUMERO'
      Origin = '"CHEQUES"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IbqConsultaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"CHEQUES"."VALOR"'
      Required = True
      currency = True
    end
    object IbqConsultaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"CHEQUES"."EMISSAO"'
      Required = True
    end
    object IbqConsultaALINEA: TSmallintField
      FieldName = 'ALINEA'
      Origin = '"CHEQUES"."ALINEA"'
      Required = True
    end
    object IbqConsultaDATAPGTO: TDateField
      FieldName = 'DATAPGTO'
      Origin = '"CHEQUES"."DATAPGTO"'
    end
    object IbqConsultaJUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
      Origin = '"CHEQUES"."JUROSPAGOS"'
      currency = True
    end
    object IbqConsultaVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
      ProviderFlags = []
      currency = True
    end
  end
  object DsConsulta: TDataSource
    DataSet = IbqConsulta
    Left = 424
    Top = 24
  end
  object IbqChequeUpdate: TIBQuery
    Database = IdbWinbank
    Transaction = IbtWbTrans
    SQL.Strings = (
      'UPDATE'
      #9'CHEQUES'
      'SET'
      #9'DATAPGTO = :UpDataPgto,'
      #9'JUROSPAGOS = :UpJurosPagos'
      'WHERE'
      #9'CNPJ = :UpCnpj'
      #9'AND BANCO = :UpBanco'
      #9'AND AGENCIA = :UpAgencia'
      #9'AND CONTA = :UpConta'
      #9'AND NUMERO = :UpNumero;')
    Left = 352
    Top = 80
    ParamData = <
      item
        DataType = ftDate
        Name = 'UpDataPgto'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'UpJurosPagos'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'UpCnpj'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'UpBanco'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'UpAgencia'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'UpConta'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'UpNumero'
        ParamType = ptInput
      end>
  end
end
