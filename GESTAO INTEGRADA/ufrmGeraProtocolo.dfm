inherited frmGeraProtocolo: TfrmGeraProtocolo
  Left = 213
  Top = 150
  Width = 559
  Height = 386
  Caption = 'Gera'#231#227'o de Protocolo'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnVisializar: TSpeedButton
    Left = 339
    Top = 319
    Width = 95
    Height = 25
    Caption = '&Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnVisializarClick
  end
  object btnImprimirTodos: TSpeedButton
    Left = 445
    Top = 319
    Width = 95
    Height = 25
    Caption = '&Imprimir Todos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object gbxEmpresa: TGroupBox
    Left = 8
    Top = 7
    Width = 532
    Height = 57
    Caption = 'Selecione a Empresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object btnBuscar: TSpeedButton
      Left = 419
      Top = 20
      Width = 95
      Height = 25
      Caption = '&Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dblNomeFantasia: TDBLookupComboBox
      Left = 16
      Top = 24
      Width = 385
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_Fantasia'
      ListField = 'Descricao'
      ListSource = dtsNomeFantasia
      ParentFont = False
      TabOrder = 0
    end
  end
  object dbgGerador: TDBGridUrb
    Left = 8
    Top = 83
    Width = 532
    Height = 227
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object cdsNomeFantasia: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNomeFantasia'
    Left = 204
    Top = 18
    object cdsNomeFantasiaID_Fantasia: TIntegerField
      FieldName = 'ID_Fantasia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNomeFantasiaDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object dtsNomeFantasia: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsNomeFantasia
    Left = 232
    Top = 18
  end
  object cdsProtocEmp: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProtocEmp'
    Left = 160
    Top = 139
    object cdsProtocEmpID_Fantasia: TIntegerField
      FieldName = 'ID_Fantasia'
      Required = True
    end
    object cdsProtocEmpDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
    object cdsProtocEmpRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsProtocEmpEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object cdsProtocEmpMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsProtocEmpUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsProtocEmpResponsavel: TStringField
      FieldName = 'Responsavel'
      Size = 50
    end
  end
  object dtsProtocEmp: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsProtocEmp
    Left = 188
    Top = 139
  end
  object rdtsProtocEmp: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsProtocEmp
    Left = 216
    Top = 139
  end
  object cdsProtocManif: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProtocManif'
    Left = 160
    Top = 167
  end
  object dtsProtocManif: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsProtocManif
    Left = 188
    Top = 167
  end
  object rdtsProtocManif: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsProtocManif
    Left = 216
    Top = 167
  end
  object cdsProtocEmpresa: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    Left = 160
    Top = 97
    object cdsProtocEmpresaID_Fantasia: TIntegerField
      FieldName = 'ID_Fantasia'
      Required = True
    end
    object cdsProtocEmpresaDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
    object cdsProtocEmpresaRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsProtocEmpresaEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object cdsProtocEmpresaMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsProtocEmpresaUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsProtocEmpresaResponsavel: TStringField
      FieldName = 'Responsavel'
      Size = 50
    end
    object cdsProtocEmpresaTextProtoc: TBlobField
      FieldName = 'TextProtoc'
    end
  end
  object dtsProtocEmpresa: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsProtocEmpresa
    Left = 188
    Top = 97
  end
  object rdtsProtocEmpresa: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsProtocEmpresa
    Left = 216
    Top = 97
  end
  object sqlNomeFantasia: TSQLDataSet
    GetMetadata = False
    CommandText = 'select ID_Fantasia, Descricao from fantasia order by Descricao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 148
    Top = 18
  end
  object dspNomeFantasia: TDataSetProvider
    DataSet = sqlNomeFantasia
    Left = 176
    Top = 18
  end
  object sqlProtocEmp: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10'       E.ID_Fantasia,'#13#10'       F.Descricao,'#13#10'       E.Raz' +
      'aoSocial,'#13#10'       E.Endereco,'#13#10'       E.Municipio,'#13#10'       E.UF,' +
      #13#10'       E.Responsavel'#13#10'FROM   empresa E,'#13#10'       fantasia F'#13#10'WH' +
      'ERE  (E.ID_Fantasia = F.ID_Fantasia)'#13#10'GROUP BY E.ID_Fantasia'#13#10'OR' +
      'DER BY E.ID_Fantasia'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 104
    Top = 139
  end
  object dspProtocEmp: TDataSetProvider
    DataSet = sqlProtocEmp
    Left = 132
    Top = 139
  end
  object dspProtocManif: TDataSetProvider
    DataSet = sqlProtocManif
    Left = 132
    Top = 167
  end
  object sqlProtocManif: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10'       P.Descricao AS ProcedenciaDesc,'#13#10'       DATE_FORM' +
      'AT(M.GerDtEntrega, '#39'%Y%m'#39') AS ANO_MES,'#13#10'       M.Numero,'#13#10'      ' +
      ' E.ID_Fantasia,'#13#10'       F.Descricao,'#13#10'       M.GerDtEntrega,'#13#10'  ' +
      '     MONTH(M.GerDtEntrega) AS MES,'#13#10'       YEAR(M.GerDtEntrega) ' +
      'AS ANO,'#13#10'       E.RazaoSocial,'#13#10'       E.Endereco,'#13#10'       E.Mun' +
      'icipio,'#13#10'       E.UF,'#13#10'       E.Responsavel,'#13#10'       M.ID_Situac' +
      'ao,'#13#10'       M.ID_Procedencia,'#13#10'       M.GerID_Empresa,'#13#10'       F' +
      '.ID_Fantasia'#13#10'FROM   manifesto M,'#13#10'       empresa E,'#13#10'       fan' +
      'tasia F,'#13#10'       procedencia P'#13#10'WHERE  (E.ID_Fantasia    =  F.ID' +
      '_Fantasia)'#13#10'  AND  (M.GerID_Empresa  =  E.ID_Empresa)'#13#10'  AND  (E' +
      '.ID_Fantasia    =  :iID_Fantasia)'#13#10'  AND  ( M.GerDtEntrega      ' +
      '>= :sDataIni        )'#13#10'  AND  ( M.GerDtEntrega      <= :sDataFim' +
      '        )'#13#10'  AND  (M.ID_Situacao    =  2)'#13#10'  AND  (M.ID_Status  ' +
      '    <> 1)'#13#10'  AND  (M.ID_Procedencia =  P.ID_Procedencia)'#13#10'ORDER ' +
      'BY 1, 2, 3'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'iID_Fantasia'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'sDataIni'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'sDataFim'
        ParamType = ptInput
      end>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 104
    Top = 167
  end
end
