inherited frmEfetivaEnvioManifesto: TfrmEfetivaEnvioManifesto
  Left = 237
  Top = 195
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Altera Situa'#231#227'o do Manifesto'
  ClientHeight = 383
  ClientWidth = 738
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgManutencaoBD: TDBGridUrb
    Left = 8
    Top = 104
    Width = 721
    Height = 252
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtsManuBD
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    ClientDataSet = cdsManuBD
  end
  object stbManutencaoBD: TStatusBar
    Left = 0
    Top = 364
    Width = 738
    Height = 19
    Panels = <
      item
        Width = 150
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 7
    Width = 356
    Height = 86
    Caption = 'Selecione os manifestos que receber'#227'o a nova situa'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 11
      Top = 18
      Width = 56
      Height = 13
      Caption = 'Dt. Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 107
      Top = 18
      Width = 49
      Height = 13
      Caption = 'Dt. Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnBuscar: TSpeedButton
      Left = 277
      Top = 58
      Width = 65
      Height = 22
      Caption = '&Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnBuscarClick
    end
    object Label4: TLabel
      Left = 203
      Top = 18
      Width = 84
      Height = 13
      Caption = 'Situa'#231#227'o Atual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtpBuscarIni: TDateTimePicker
      Left = 11
      Top = 32
      Width = 83
      Height = 21
      Date = 38319.542181527780000000
      Time = 38319.542181527780000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = dtpEfetivarChange
    end
    object dtpBuscarFim: TDateTimePicker
      Left = 107
      Top = 32
      Width = 83
      Height = 21
      Date = 38319.542181527780000000
      Time = 38319.542181527780000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = dtpEfetivarChange
    end
    object dblBuscarSituacao: TDBLookupComboBox
      Left = 203
      Top = 32
      Width = 139
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_Situacao'
      ListField = 'Descricao'
      ListSource = dtsBuscarSituacao
      ParentFont = False
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 373
    Top = 7
    Width = 356
    Height = 86
    Anchors = [akTop, akRight]
    Caption = 'Informe os novos valores para os manifestos selecionados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label43: TLabel
      Left = 11
      Top = 18
      Width = 76
      Height = 13
      Caption = 'Dt. Altera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 107
      Top = 18
      Width = 85
      Height = 13
      Caption = 'Situa'#231#227'o Nova'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label48: TLabel
      Left = 248
      Top = 18
      Width = 26
      Height = 13
      Caption = 'Lote'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnEfetivar: TSpeedButton
      Left = 279
      Top = 58
      Width = 65
      Height = 22
      Caption = '&Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEfetivarClick
    end
    object dtpEfetivar: TDateTimePicker
      Left = 11
      Top = 32
      Width = 83
      Height = 21
      Date = 0.542181527780485300
      Time = 0.542181527780485300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = dtpEfetivarChange
    end
    object dblEfetivarSituacao: TDBLookupComboBox
      Left = 107
      Top = 32
      Width = 129
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_Situacao'
      ListField = 'Descricao'
      ListSource = dtsEfetivarSituacao
      ParentFont = False
      TabOrder = 1
    end
    object txtLote: TEdit
      Left = 248
      Top = 32
      Width = 96
      Height = 21
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 2
    end
  end
  object cdsManuBD: TClientDataSetUrb
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftString
        Name = 'iID_Situacao'
        ParamType = ptUnknown
        Value = 2
      end
      item
        DataType = ftString
        Name = 'sDtChegouIni'
        ParamType = ptUnknown
        Value = #39'20041101'#39
      end
      item
        DataType = ftString
        Name = 'sDtChegouFim'
        ParamType = ptUnknown
        Value = #39'20041130'#39
      end>
    ProviderName = 'dspManuBD'
    AfterScroll = cdsManuBDAfterScroll
    Left = 82
    Top = 77
    object cdsManuBDNumero: TStringField
      DisplayLabel = 'N'#186
      FieldName = 'Numero'
      Required = True
    end
    object cdsManuBDGerDtEntrega: TSQLTimeStampField
      DisplayLabel = 'Dt. Entrega'
      DisplayWidth = 10
      FieldName = 'GerDtEntrega'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsManuBDDescGerEmpresa: TStringField
      DisplayLabel = 'Gerador'
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'DescGerEmpresa'
      LookupDataSet = cdsGerEmpresa
      LookupKeyFields = 'ID_Empresa'
      LookupResultField = 'RazaoSocial'
      KeyFields = 'GerID_Empresa'
      Size = 50
      Lookup = True
    end
    object cdsManuBDDescResiduo: TStringField
      DisplayLabel = 'Tipo de Res'#237'duo'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescResiduo'
      LookupDataSet = cdsResiduo
      LookupKeyFields = 'ID_Residuo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Residuo'
      Size = 30
      Lookup = True
    end
    object cdsManuBDQuantidade: TFMTBCDField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 8
      FieldName = 'Quantidade'
      DisplayFormat = '###,##0.00'
      Precision = 17
      Size = 6
    end
    object cdsManuBDDescUnidade: TStringField
      DisplayLabel = 'Un'
      FieldKind = fkLookup
      FieldName = 'DescUnidade'
      LookupDataSet = cdsUnidadeMedida
      LookupKeyFields = 'ID_UnidadeMedida'
      LookupResultField = 'Sigla'
      KeyFields = 'ID_Unidade'
      Size = 5
      Lookup = True
    end
    object cdsManuBDID_Unidade: TIntegerField
      DisplayLabel = 'ID. Unidade'
      FieldName = 'ID_Unidade'
      Required = True
      Visible = False
    end
    object cdsManuBDDescRecepEmpresa: TStringField
      DisplayLabel = 'Receptor'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'DescRecepEmpresa'
      LookupDataSet = cdsRecepEmpresa
      LookupKeyFields = 'ID_Empresa'
      LookupResultField = 'RazaoSocial'
      KeyFields = 'RecepID_Empresa'
      Size = 50
      Lookup = True
    end
    object cdsManuBDDescStatus: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'DescStatus'
      LookupDataSet = cdsStatus
      LookupKeyFields = 'ID_ManifestoEstado'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Status'
      Size = 30
      Lookup = True
    end
    object cdsManuBDDtChegou: TSQLTimeStampField
      DisplayLabel = 'Dt. Chegou'
      DisplayWidth = 10
      FieldName = 'DtChegou'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsManuBDDtEnvio: TSQLTimeStampField
      DisplayLabel = 'Dt. Envio'
      DisplayWidth = 10
      FieldName = 'DtEnvio'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsManuBDID_LoteEnvio: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'ID_LoteEnvio'
    end
    object cdsManuBDID_Residuo: TIntegerField
      FieldName = 'ID_Residuo'
      Required = True
      Visible = False
    end
    object cdsManuBDID_EstadoFisico: TIntegerField
      FieldName = 'ID_EstadoFisico'
      Required = True
      Visible = False
    end
    object cdsManuBDID_Acond: TIntegerField
      FieldName = 'ID_Acond'
      Required = True
      Visible = False
    end
    object cdsManuBDID_Origem: TIntegerField
      FieldName = 'ID_Origem'
      Required = True
      Visible = False
    end
    object cdsManuBDID_Procedencia: TIntegerField
      FieldName = 'ID_Procedencia'
      Required = True
      Visible = False
    end
    object cdsManuBDID_TratDisp: TIntegerField
      FieldName = 'ID_TratDisp'
      Required = True
      Visible = False
    end
    object cdsManuBDDescEstadoFisico: TStringField
      DisplayLabel = 'Estado F'#237'sico'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescEstadoFisico'
      LookupDataSet = cdsEstadoFisico
      LookupKeyFields = 'ID_EstadoFisico'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_EstadoFisico'
      Visible = False
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescAcond: TStringField
      DisplayLabel = 'Acond.'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescAcond'
      LookupDataSet = cdsAcond
      LookupKeyFields = 'ID_Acondicionamento'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Acond'
      Visible = False
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescOrigem: TStringField
      DisplayLabel = 'Origem'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescOrigem'
      LookupDataSet = cdsOrigem
      LookupKeyFields = 'ID_Origem'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Origem'
      Visible = False
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescProcedencia: TStringField
      DisplayLabel = 'Proced'#234'cia'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescProcedencia'
      LookupDataSet = cdsProcedencia
      LookupKeyFields = 'ID_Procedencia'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Procedencia'
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescTratDisp: TStringField
      DisplayLabel = 'Trat./Disp.'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescTratDisp'
      LookupDataSet = cdsTratDisp
      LookupKeyFields = 'ID_TratDisp'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_TratDisp'
      Visible = False
      Size = 30
      Lookup = True
    end
    object cdsManuBDNumCertificado: TIntegerField
      DisplayLabel = 'N'#186' Certif.'
      FieldName = 'NumCertificado'
      Visible = False
    end
    object cdsManuBDID_Status: TIntegerField
      FieldName = 'ID_Status'
      Required = True
      Visible = False
    end
    object cdsManuBDGerID_Empresa: TIntegerField
      FieldName = 'GerID_Empresa'
      Required = True
      Visible = False
    end
    object cdsManuBDGerNumInventario: TStringField
      DisplayLabel = 'N'#186' Invent'#225'rio'
      FieldName = 'GerNumInventario'
      Visible = False
      Size = 30
    end
    object cdsManuBDGerID_Responsavel: TIntegerField
      FieldName = 'GerID_Responsavel'
      Required = True
      Visible = False
    end
    object cdsManuBDDescGerResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldKind = fkLookup
      FieldName = 'DescGerResponsavel'
      LookupDataSet = cdsGerResponsavel
      LookupKeyFields = 'ID_Responsavel'
      LookupResultField = 'Nome'
      KeyFields = 'GerID_Responsavel'
      Visible = False
      Size = 50
      Lookup = True
    end
    object cdsManuBDTransDtReceb: TSQLTimeStampField
      DisplayLabel = 'Dt. Receb.'
      FieldName = 'TransDtReceb'
      Required = True
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsManuBDTransID_Empresa: TIntegerField
      FieldName = 'TransID_Empresa'
      Required = True
      Visible = False
    end
    object cdsManuBDTransID_Responsavel: TIntegerField
      FieldName = 'TransID_Responsavel'
      Required = True
      Visible = False
    end
    object cdsManuBDDescTransEmpresa: TStringField
      DisplayLabel = 'Gerador'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'DescTransEmpresa'
      LookupDataSet = cdsTransEmpresa
      LookupKeyFields = 'ID_Empresa'
      LookupResultField = 'RazaoSocial'
      KeyFields = 'TransID_Empresa'
      Visible = False
      Size = 50
      Lookup = True
    end
    object cdsManuBDDescTransResponsavel: TStringField
      FieldKind = fkLookup
      FieldName = 'DescTransResponsavel'
      LookupDataSet = cdsTransResponsavel
      LookupKeyFields = 'ID_Responsavel'
      LookupResultField = 'Nome'
      KeyFields = 'TransID_Responsavel'
      Visible = False
      Size = 50
      Lookup = True
    end
    object cdsManuBDTransNomeMotorista: TStringField
      DisplayLabel = 'Nome do Motorista'
      FieldName = 'TransNomeMotorista'
      Visible = False
      Size = 30
    end
    object cdsManuBDTransPlacaVeiculo: TStringField
      DisplayLabel = 'Placa Completa'
      FieldName = 'TransPlacaVeiculo'
      Visible = False
      Size = 30
    end
    object cdsManuBDTransCertificado: TStringField
      DisplayLabel = 'N'#186' Certificado'
      FieldName = 'TransCertificado'
      Visible = False
      Size = 30
    end
    object cdsManuBDRecepDtReceb: TSQLTimeStampField
      FieldName = 'RecepDtReceb'
      Required = True
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;_'
    end
    object cdsManuBDRecepID_Empresa: TIntegerField
      FieldName = 'RecepID_Empresa'
      Required = True
      Visible = False
    end
    object cdsManuBDRecepNumInventario: TStringField
      FieldName = 'RecepNumInventario'
      Visible = False
      Size = 30
    end
    object cdsManuBDRecepID_Responsavel: TIntegerField
      FieldName = 'RecepID_Responsavel'
      Required = True
      Visible = False
    end
    object cdsManuBDDescRecepResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldKind = fkLookup
      FieldName = 'DescRecepResponsavel'
      LookupDataSet = cdsRecepResponsavel
      LookupKeyFields = 'ID_Responsavel'
      LookupResultField = 'Nome'
      KeyFields = 'RecepID_Responsavel'
      Visible = False
      Size = 50
      Lookup = True
    end
    object cdsManuBDObs: TBlobField
      FieldName = 'Obs'
      Visible = False
      Size = 1
    end
    object cdsManuBDID_Situacao: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
      Visible = False
    end
    object cdsManuBDDescSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'DescSituacao'
      LookupDataSet = cdsSituacaoDesc
      LookupKeyFields = 'ID_Situacao'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Situacao'
      Visible = False
      Size = 30
      Lookup = True
    end
  end
  object dtsManuBD: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsManuBD
    Left = 110
    Top = 77
  end
  object cdsResiduo: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResiduo'
    Left = 82
    Top = 105
  end
  object dtsResiduo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsResiduo
    Left = 110
    Top = 105
  end
  object cdsEstadoFisico: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstadoFisico'
    Left = 82
    Top = 133
  end
  object dtsEstadoFisico: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsEstadoFisico
    Left = 110
    Top = 133
  end
  object cdsAcond: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAcond'
    Left = 82
    Top = 161
  end
  object dtsAcond: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsAcond
    Left = 110
    Top = 161
  end
  object cdsOrigem: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrigem'
    Left = 82
    Top = 189
  end
  object dtsOrigem: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsOrigem
    Left = 110
    Top = 189
  end
  object cdsProcedencia: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProcedencia'
    Left = 82
    Top = 217
  end
  object dtsProcedencia: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsProcedencia
    Left = 110
    Top = 217
  end
  object cdsTratDisp: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTratDisp'
    Left = 82
    Top = 245
  end
  object dtsTratDisp: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTratDisp
    Left = 110
    Top = 245
  end
  object cdsGerEmpresa: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGerEmpresa'
    Left = 234
    Top = 77
    object cdsGerEmpresaID_Empresa: TIntegerField
      FieldName = 'ID_Empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGerEmpresaRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsGerEmpresaID_Classificacao: TIntegerField
      FieldName = 'ID_Classificacao'
      Required = True
    end
    object cdsGerEmpresaEndereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'Endereco'
      Required = True
      Size = 50
    end
    object cdsGerEmpresaMunicipio: TStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsGerEmpresaUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsGerEmpresaTelefone: TStringField
      FieldName = 'Telefone'
      Required = True
      Size = 15
    end
    object cdsGerEmpresaNumLicencaFEEMA: TStringField
      DisplayLabel = 'N'#186' Licen'#231'a'
      FieldName = 'NumLicencaFEEMA'
      Size = 30
    end
  end
  object dtsGerEmpresa: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsGerEmpresa
    Left = 262
    Top = 77
  end
  object cdsGerResponsavel: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGerResponsavel'
    Left = 234
    Top = 105
    object cdsGerResponsavelID_Responsavel: TIntegerField
      FieldName = 'ID_Responsavel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGerResponsavelNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object cdsGerResponsavelID_Cargo: TIntegerField
      FieldName = 'ID_Cargo'
    end
    object cdsGerResponsavelDescCargo: TStringField
      DisplayLabel = 'Cargo'
      FieldKind = fkLookup
      FieldName = 'DescCargo'
      LookupDataSet = cdsGerCargo
      LookupKeyFields = 'ID_Cargo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Cargo'
      Size = 30
      Lookup = True
    end
  end
  object dtsGerResponsavel: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsGerResponsavel
    Left = 262
    Top = 105
  end
  object cdsGerCargo: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGerCargo'
    Left = 234
    Top = 133
  end
  object dtsGerCargo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsGerCargo
    Left = 262
    Top = 133
  end
  object cdsTransEmpresa: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransEmpresa'
    Left = 234
    Top = 161
    object cdsTransEmpresaID_Empresa: TIntegerField
      FieldName = 'ID_Empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTransEmpresaRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsTransEmpresaID_Classificacao: TIntegerField
      FieldName = 'ID_Classificacao'
      Required = True
    end
    object cdsTransEmpresaEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 50
    end
    object cdsTransEmpresaMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsTransEmpresaUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsTransEmpresaTelefone: TStringField
      FieldName = 'Telefone'
      Required = True
      Size = 15
    end
    object cdsTransEmpresaNumLicencaFEEMA: TStringField
      FieldName = 'NumLicencaFEEMA'
      Size = 30
    end
  end
  object dtsTransEmpresa: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTransEmpresa
    Left = 262
    Top = 161
  end
  object cdsTransResponsavel: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransResponsavel'
    Left = 234
    Top = 189
    object IntegerField1: TIntegerField
      FieldName = 'ID_Responsavel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_Cargo'
    end
    object StringField2: TStringField
      DisplayLabel = 'Cargo'
      FieldKind = fkLookup
      FieldName = 'DescCargo'
      LookupDataSet = cdsTransCargo
      LookupKeyFields = 'ID_Cargo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Cargo'
      Size = 30
      Lookup = True
    end
  end
  object dtsTransResponsavel: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTransResponsavel
    Left = 262
    Top = 189
  end
  object cdsTransCargo: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransCargo'
    Left = 234
    Top = 217
  end
  object dtsTransCargo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTransCargo
    Left = 262
    Top = 217
  end
  object cdsRecepCargo: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecepCargo'
    Left = 234
    Top = 301
  end
  object cdsRecepResponsavel: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecepResponsavel'
    Left = 234
    Top = 273
    object IntegerField5: TIntegerField
      FieldName = 'ID_Responsavel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField9: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object IntegerField6: TIntegerField
      FieldName = 'ID_Cargo'
    end
    object StringField10: TStringField
      DisplayLabel = 'Cargo'
      FieldKind = fkLookup
      FieldName = 'DescCargo'
      LookupDataSet = cdsRecepCargo
      LookupKeyFields = 'ID_Cargo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Cargo'
      Size = 30
      Lookup = True
    end
  end
  object cdsRecepEmpresa: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecepEmpresa'
    Left = 234
    Top = 245
    object IntegerField3: TIntegerField
      FieldName = 'ID_Empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_Classificacao'
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object StringField7: TStringField
      FieldName = 'Telefone'
      Required = True
      Size = 15
    end
    object StringField8: TStringField
      FieldName = 'NumLicencaFEEMA'
      Size = 30
    end
  end
  object dtsRecepEmpresa: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsRecepEmpresa
    Left = 262
    Top = 245
  end
  object dtsRecepResponsavel: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsRecepResponsavel
    Left = 262
    Top = 273
  end
  object dtsRecepCargo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsRecepCargo
    Left = 262
    Top = 301
  end
  object cdsUnidadeMedida: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidadeMedida'
    Left = 418
    Top = 77
  end
  object dtsUnidadeMedida: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsUnidadeMedida
    Left = 446
    Top = 77
  end
  object cdsStatus: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStatus'
    Left = 418
    Top = 105
  end
  object dtsStatus: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsStatus
    Left = 446
    Top = 105
  end
  object cdsSituacaoDesc: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSituacaoDesc'
    Left = 418
    Top = 133
  end
  object dtsSituacaoDesc: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsSituacaoDesc
    Left = 446
    Top = 133
  end
  object cdsEfetivarSituacao: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEfetivarSituacao'
    Left = 418
    Top = 161
  end
  object dtsEfetivarSituacao: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsEfetivarSituacao
    Left = 446
    Top = 161
  end
  object cdsBuscarSituacao: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBuscarSituacao'
    Left = 418
    Top = 189
  end
  object dtsBuscarSituacao: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsBuscarSituacao
    Left = 446
    Top = 189
  end
  object sqlManuBD: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 26
    Top = 77
  end
  object dspManuBD: TDataSetProviderUrb
    DataSet = sqlManuBD
    Options = [poAllowCommandText]
    Left = 54
    Top = 77
  end
  object sqlResiduo: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_Residuo, Descricao, FlagContaminado, ValorMercado from' +
      ' residuo order by Descricao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 26
    Top = 105
  end
  object dspResiduo: TDataSetProviderUrb
    DataSet = sqlResiduo
    Options = [poAllowCommandText]
    Left = 54
    Top = 105
  end
  object sqlEstadoFisico: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_EstadoFisico, Descricao from estadofisico order by Des' +
      'cricao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 26
    Top = 133
  end
  object dspEstadoFisico: TDataSetProviderUrb
    DataSet = sqlEstadoFisico
    Options = [poAllowCommandText]
    Left = 54
    Top = 133
  end
  object sqlAcond: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_Acondicionamento, Descricao from acondicionamento orde' +
      'r by Descricao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 26
    Top = 161
  end
  object dspAcond: TDataSetProviderUrb
    DataSet = sqlAcond
    Options = [poAllowCommandText]
    Left = 54
    Top = 161
  end
  object sqlOrigem: TSQLDataSet
    GetMetadata = False
    CommandText = 'select ID_Origem, Descricao from origem order by Descricao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 26
    Top = 189
  end
  object dspOrigem: TDataSetProviderUrb
    DataSet = sqlOrigem
    Options = [poAllowCommandText]
    Left = 54
    Top = 189
  end
  object sqlProcedencia: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_Procedencia, Descricao from procedencia order by Descr' +
      'icao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 26
    Top = 217
  end
  object dspProcedencia: TDataSetProviderUrb
    DataSet = sqlProcedencia
    Options = [poAllowCommandText]
    Left = 54
    Top = 217
  end
  object sqlTratDisp: TSQLDataSet
    GetMetadata = False
    CommandText = 'select ID_TratDisp, Descricao from tratdisp order by Descricao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 26
    Top = 245
  end
  object dspTratDisp: TDataSetProviderUrb
    DataSet = sqlTratDisp
    Options = [poAllowCommandText]
    Left = 54
    Top = 245
  end
  object sqlGerEmpresa: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 178
    Top = 77
  end
  object dspGerEmpresa: TDataSetProviderUrb
    DataSet = sqlGerEmpresa
    Options = [poAllowCommandText]
    Left = 206
    Top = 77
  end
  object sqlUnidadeMedida: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_UnidadeMedida, Descricao, Sigla from unidademedida ord' +
      'er by Sigla'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 362
    Top = 77
  end
  object dspUnidadeMedida: TDataSetProviderUrb
    DataSet = sqlUnidadeMedida
    Options = [poAllowCommandText]
    Left = 390
    Top = 77
  end
  object sqlGerResponsavel: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 178
    Top = 105
  end
  object dspGerResponsavel: TDataSetProviderUrb
    DataSet = sqlGerResponsavel
    Options = [poAllowCommandText]
    Left = 206
    Top = 105
  end
  object sqlGerCargo: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 178
    Top = 133
  end
  object dspGerCargo: TDataSetProviderUrb
    DataSet = sqlGerCargo
    Options = [poAllowCommandText]
    Left = 206
    Top = 133
  end
  object sqlTransEmpresa: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 178
    Top = 161
  end
  object dspTransEmpresa: TDataSetProviderUrb
    DataSet = sqlTransEmpresa
    Options = [poAllowCommandText]
    Left = 206
    Top = 161
  end
  object sqlTransResponsavel: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 178
    Top = 189
  end
  object dspTransResponsavel: TDataSetProviderUrb
    DataSet = sqlTransResponsavel
    Options = [poAllowCommandText]
    Left = 206
    Top = 189
  end
  object sqlTransCargo: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 178
    Top = 217
  end
  object dspTransCargo: TDataSetProviderUrb
    DataSet = sqlTransCargo
    Options = [poAllowCommandText]
    Left = 206
    Top = 217
  end
  object sqlRecepEmpresa: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 178
    Top = 245
  end
  object dspRecepEmpresa: TDataSetProviderUrb
    DataSet = sqlRecepEmpresa
    Options = [poAllowCommandText]
    Left = 206
    Top = 245
  end
  object sqlRecepResponsavel: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 178
    Top = 273
  end
  object dspRecepResponsavel: TDataSetProviderUrb
    DataSet = sqlRecepResponsavel
    Options = [poAllowCommandText]
    Left = 206
    Top = 273
  end
  object sqlRecepCargo: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 178
    Top = 301
  end
  object dspRecepCargo: TDataSetProviderUrb
    DataSet = sqlRecepCargo
    Options = [poAllowCommandText]
    Left = 206
    Top = 301
  end
  object sqlStatus: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_ManifestoEstado, Descricao from manifestoestado order ' +
      'by Descricao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 362
    Top = 105
  end
  object dspStatus: TDataSetProviderUrb
    DataSet = sqlStatus
    Options = [poAllowCommandText]
    Left = 390
    Top = 105
  end
  object sqlSituacaoDesc: TSQLDataSet
    GetMetadata = False
    CommandText = 'select ID_Situacao, Descricao from situacao order by Descricao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 362
    Top = 133
  end
  object dspSituacaoDesc: TDataSetProviderUrb
    DataSet = sqlSituacaoDesc
    Options = [poAllowCommandText]
    Left = 390
    Top = 133
  end
  object sqlEfetivarSituacao: TSQLDataSet
    GetMetadata = False
    CommandText = 'select ID_Situacao, Descricao from situacao order by Descricao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 362
    Top = 161
  end
  object dspEfetivarSituacao: TDataSetProviderUrb
    DataSet = sqlEfetivarSituacao
    Options = [poAllowCommandText]
    Left = 390
    Top = 161
  end
  object sqlBuscarSituacao: TSQLDataSet
    GetMetadata = False
    CommandText = 'select ID_Situacao, Descricao from situacao order by Descricao'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 362
    Top = 189
  end
  object dspBuscarSituacao: TDataSetProviderUrb
    DataSet = sqlBuscarSituacao
    Options = [poAllowCommandText]
    Left = 390
    Top = 189
  end
end
