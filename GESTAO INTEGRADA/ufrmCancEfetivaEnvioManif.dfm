inherited frmCancEfetivaEnvioManif: TfrmCancEfetivaEnvioManif
  Left = 275
  Top = 101
  BorderStyle = bsDialog
  Caption = 'Cancela Efetiva'#231#227'o de Envio do Manifesto'
  ClientHeight = 311
  ClientWidth = 640
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnCancelar: TSpeedButton
    Left = 570
    Top = 267
    Width = 62
    Height = 22
    Anchors = [akTop, akRight]
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnCancelarClick
  end
  object dbgManutencaoBD: TDBGridUrb
    Left = 7
    Top = 8
    Width = 625
    Height = 254
    DataSource = dtsManuBD
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    ClientDataSet = cdsManuBD
  end
  object stbManutencaoBD: TStatusBar
    Left = 0
    Top = 292
    Width = 640
    Height = 19
    Panels = <
      item
        Width = 150
      end>
  end
  object cdsManuBD: TClientDataSetUrb
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'iID_Situacao'
        ParamType = ptUnknown
        Value = 3
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
    ProviderName = 'dspManifesto'
    RemoteServer = frmPrincipal.SharedConnection
    AfterScroll = cdsManuBDAfterScroll
    Left = 82
    Top = 77
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
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'DescResiduo'
      LookupDataSet = cdsResiduo
      LookupKeyFields = 'ID_Residuo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Residuo'
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescUnidade: TStringField
      DisplayLabel = 'Un'
      DisplayWidth = 6
      FieldKind = fkLookup
      FieldName = 'DescUnidade'
      LookupDataSet = cdsUnidadeMedida
      LookupKeyFields = 'ID_UnidadeMedida'
      LookupResultField = 'Sigla'
      KeyFields = 'ID_Unidade'
      Size = 5
      Lookup = True
    end
    object cdsManuBDDescRecepEmpresa: TStringField
      DisplayLabel = 'Receptor'
      DisplayWidth = 38
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
      DisplayWidth = 24
      FieldKind = fkLookup
      FieldName = 'DescStatus'
      LookupDataSet = cdsStatus
      LookupKeyFields = 'ID_ManifestoEstado'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Status'
      Size = 30
      Lookup = True
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
      Visible = False
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
    object cdsManuBDID_Manifesto: TIntegerField
      FieldName = 'ID_Manifesto'
      Required = True
    end
    object cdsManuBDNumero: TIntegerField
      FieldName = 'Numero'
      Required = True
    end
    object cdsManuBDNumCertificado: TIntegerField
      FieldName = 'NumCertificado'
    end
    object cdsManuBDQuantidade: TFMTBCDField
      FieldName = 'Quantidade'
      Precision = 17
      Size = 6
    end
    object cdsManuBDID_Unidade: TIntegerField
      FieldName = 'ID_Unidade'
      Required = True
    end
    object cdsManuBDID_Residuo: TIntegerField
      FieldName = 'ID_Residuo'
      Required = True
    end
    object cdsManuBDID_EstadoFisico: TIntegerField
      FieldName = 'ID_EstadoFisico'
      Required = True
    end
    object cdsManuBDID_Acond: TIntegerField
      FieldName = 'ID_Acond'
      Required = True
    end
    object cdsManuBDID_Origem: TIntegerField
      FieldName = 'ID_Origem'
      Required = True
    end
    object cdsManuBDID_Procedencia: TIntegerField
      FieldName = 'ID_Procedencia'
      Required = True
    end
    object cdsManuBDID_TratDisp: TIntegerField
      FieldName = 'ID_TratDisp'
      Required = True
    end
    object cdsManuBDID_Status: TIntegerField
      FieldName = 'ID_Status'
      Required = True
    end
    object cdsManuBDGerDtEntrega: TSQLTimeStampField
      FieldName = 'GerDtEntrega'
    end
    object cdsManuBDGerID_Empresa: TIntegerField
      FieldName = 'GerID_Empresa'
      Required = True
    end
    object cdsManuBDGerNumInventario: TStringField
      FieldName = 'GerNumInventario'
      Size = 30
    end
    object cdsManuBDGerID_Responsavel: TIntegerField
      FieldName = 'GerID_Responsavel'
      Required = True
    end
    object cdsManuBDTransDtReceb: TSQLTimeStampField
      FieldName = 'TransDtReceb'
    end
    object cdsManuBDTransID_Empresa: TIntegerField
      FieldName = 'TransID_Empresa'
      Required = True
    end
    object cdsManuBDTransID_Responsavel: TIntegerField
      FieldName = 'TransID_Responsavel'
      Required = True
    end
    object cdsManuBDTransNomeMotorista: TStringField
      FieldName = 'TransNomeMotorista'
      Size = 30
    end
    object cdsManuBDTransPlacaVeiculo: TStringField
      FieldName = 'TransPlacaVeiculo'
      Size = 30
    end
    object cdsManuBDTransCertificado: TStringField
      FieldName = 'TransCertificado'
      Size = 30
    end
    object cdsManuBDRecepDtReceb: TSQLTimeStampField
      FieldName = 'RecepDtReceb'
    end
    object cdsManuBDRecepID_Empresa: TIntegerField
      FieldName = 'RecepID_Empresa'
      Required = True
    end
    object cdsManuBDRecepNumInventario: TStringField
      FieldName = 'RecepNumInventario'
      Size = 30
    end
    object cdsManuBDRecepID_Responsavel: TIntegerField
      FieldName = 'RecepID_Responsavel'
      Required = True
    end
    object cdsManuBDDtChegou: TSQLTimeStampField
      FieldName = 'DtChegou'
      Required = True
    end
    object cdsManuBDDtEnvio: TSQLTimeStampField
      FieldName = 'DtEnvio'
    end
    object cdsManuBDID_Situacao: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
    end
    object cdsManuBDID_LoteEnvio: TIntegerField
      FieldName = 'ID_LoteEnvio'
    end
    object cdsManuBDObs: TBlobField
      FieldName = 'Obs'
      Size = 1
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
    ProviderName = 'dspCadResiduo'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 84
    Top = 105
  end
  object dtsResiduo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsResiduo
    Left = 112
    Top = 105
  end
  object cdsEstadoFisico: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadEstadoFisico'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 84
    Top = 125
  end
  object dtsEstadoFisico: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsEstadoFisico
    Left = 112
    Top = 125
  end
  object cdsAcond: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadAcond'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 84
    Top = 153
  end
  object dtsAcond: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsAcond
    Left = 112
    Top = 153
  end
  object cdsOrigem: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrigem'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 84
    Top = 181
  end
  object dtsOrigem: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsOrigem
    Left = 112
    Top = 181
  end
  object cdsProcedencia: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProcedencia'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 84
    Top = 209
  end
  object dspProcedencia: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsProcedencia
    Left = 112
    Top = 209
  end
  object cdsTratDisp: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTratDisp'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 84
    Top = 237
  end
  object dtsTratDisp: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTratDisp
    Left = 112
    Top = 237
  end
  object cdsGerEmpresa: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 146
    Top = 81
    object cdsGerEmpresaID_Empresa: TIntegerField
      FieldName = 'ID_Empresa'
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
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object cdsGerEmpresaMunicipio: TStringField
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
      Size = 15
    end
    object cdsGerEmpresaNumLicencaFEEMA: TStringField
      FieldName = 'NumLicencaFEEMA'
      Size = 30
    end
    object cdsGerEmpresaValorContrato: TBCDField
      FieldName = 'ValorContrato'
      Precision = 14
      Size = 2
    end
    object cdsGerEmpresaValorTonelada: TBCDField
      FieldName = 'ValorTonelada'
      Precision = 14
      Size = 2
    end
    object cdsGerEmpresaFlagRelContaminado: TStringField
      FieldName = 'FlagRelContaminado'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsGerEmpresaFlagRelReciclavel: TStringField
      FieldName = 'FlagRelReciclavel'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsGerEmpresaFlagRelSucata: TStringField
      FieldName = 'FlagRelSucata'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsGerEmpresaTipoResumoGeral: TIntegerField
      FieldName = 'TipoResumoGeral'
      Required = True
    end
  end
  object dtsGerEmpresa: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsGerEmpresa
    Left = 174
    Top = 81
  end
  object cdsGerResponsavel: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResponsavel'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 146
    Top = 109
    object cdsGerResponsavelID_Responsavel: TIntegerField
      FieldName = 'ID_Responsavel'
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
    object cdsGerResponsavelID_Tratamento: TIntegerField
      FieldName = 'ID_Tratamento'
      Required = True
    end
    object cdsGerResponsavelDescCargo: TStringField
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
    Left = 174
    Top = 109
  end
  object cdsGerCargo: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCargo'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 146
    Top = 129
  end
  object dtsGerCargo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsGerCargo
    Left = 174
    Top = 129
  end
  object cdsTransEmpresa: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 210
    Top = 81
    object cdsTransEmpresaID_Empresa: TIntegerField
      FieldName = 'ID_Empresa'
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
      Size = 80
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
      Size = 15
    end
    object cdsTransEmpresaNumLicencaFEEMA: TStringField
      FieldName = 'NumLicencaFEEMA'
      Size = 30
    end
    object cdsTransEmpresaValorContrato: TBCDField
      FieldName = 'ValorContrato'
      Precision = 14
      Size = 2
    end
    object cdsTransEmpresaValorTonelada: TBCDField
      FieldName = 'ValorTonelada'
      Precision = 14
      Size = 2
    end
    object cdsTransEmpresaFlagRelContaminado: TStringField
      FieldName = 'FlagRelContaminado'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransEmpresaFlagRelReciclavel: TStringField
      FieldName = 'FlagRelReciclavel'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransEmpresaFlagRelSucata: TStringField
      FieldName = 'FlagRelSucata'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransEmpresaTipoResumoGeral: TIntegerField
      FieldName = 'TipoResumoGeral'
      Required = True
    end
  end
  object dtsTransEmpresa: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTransEmpresa
    Left = 238
    Top = 81
  end
  object cdsTransResponsavel: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResponsavel'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 210
    Top = 109
    object cdsTransResponsavelID_Responsavel: TIntegerField
      FieldName = 'ID_Responsavel'
      Required = True
    end
    object cdsTransResponsavelNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object cdsTransResponsavelID_Cargo: TIntegerField
      FieldName = 'ID_Cargo'
    end
    object cdsTransResponsavelID_Tratamento: TIntegerField
      FieldName = 'ID_Tratamento'
      Required = True
    end
    object cdsTransResponsavelDescCargo: TStringField
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
    Left = 238
    Top = 109
  end
  object cdsTransCargo: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCargo'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 210
    Top = 129
  end
  object dtsTransCargo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTransCargo
    Left = 238
    Top = 129
  end
  object cdsRecepCargo: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCargo'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 272
    Top = 129
  end
  object cdsRecepResponsavel: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResponsavel'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 272
    Top = 109
    object cdsRecepResponsavelID_Responsavel: TIntegerField
      FieldName = 'ID_Responsavel'
      Required = True
    end
    object cdsRecepResponsavelNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object cdsRecepResponsavelID_Cargo: TIntegerField
      FieldName = 'ID_Cargo'
    end
    object cdsRecepResponsavelID_Tratamento: TIntegerField
      FieldName = 'ID_Tratamento'
      Required = True
    end
    object cdsRecepResponsavelDescCargo: TStringField
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
    ProviderName = 'dspEmpresa'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 272
    Top = 81
    object cdsRecepEmpresaID_Empresa: TIntegerField
      FieldName = 'ID_Empresa'
      Required = True
    end
    object cdsRecepEmpresaRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsRecepEmpresaID_Classificacao: TIntegerField
      FieldName = 'ID_Classificacao'
      Required = True
    end
    object cdsRecepEmpresaEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object cdsRecepEmpresaMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsRecepEmpresaUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsRecepEmpresaTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object cdsRecepEmpresaNumLicencaFEEMA: TStringField
      FieldName = 'NumLicencaFEEMA'
      Size = 30
    end
    object cdsRecepEmpresaValorContrato: TBCDField
      FieldName = 'ValorContrato'
      Precision = 14
      Size = 2
    end
    object cdsRecepEmpresaValorTonelada: TBCDField
      FieldName = 'ValorTonelada'
      Precision = 14
      Size = 2
    end
    object cdsRecepEmpresaFlagRelContaminado: TStringField
      FieldName = 'FlagRelContaminado'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsRecepEmpresaFlagRelReciclavel: TStringField
      FieldName = 'FlagRelReciclavel'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsRecepEmpresaFlagRelSucata: TStringField
      FieldName = 'FlagRelSucata'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsRecepEmpresaTipoResumoGeral: TIntegerField
      FieldName = 'TipoResumoGeral'
      Required = True
    end
  end
  object dtsRecepEmpresa: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsRecepEmpresa
    Left = 300
    Top = 81
  end
  object dtsRecepResponsavel: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsRecepResponsavel
    Left = 300
    Top = 109
  end
  object dtsRecepCargo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsRecepCargo
    Left = 300
    Top = 129
  end
  object cdsUnidadeMedida: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadUniMedida'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 276
    Top = 166
  end
  object dtsUnidadeMedida: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsUnidadeMedida
    Left = 304
    Top = 166
  end
  object cdsStatus: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspManifestoEstado'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 276
    Top = 194
  end
  object dtsStatus: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsStatus
    Left = 304
    Top = 194
  end
  object cdsSituacaoDesc: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSituacao'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 276
    Top = 230
  end
  object dtsSituacaoDesc: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsSituacaoDesc
    Left = 304
    Top = 230
  end
  object actManutencaoBD: TActionList
    Left = 10
    Top = 138
    object datasetIncluir: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Incluir'
      DataSource = dtsManuBD
    end
    object datasetExcluir: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Excluir'
      DataSource = dtsManuBD
    end
    object datasetAlterar: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Alterar'
      DataSource = dtsManuBD
    end
    object datasetSalvar: TDataSetPost
      Category = 'Dataset'
      Caption = '&Salvar'
      DataSource = dtsManuBD
    end
    object datasetCancelar: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancelar'
      DataSource = dtsManuBD
    end
    object datasetAtualizar: TDataSetRefresh
      Category = 'Dataset'
      Caption = 'A&tualizar'
      DataSource = dtsManuBD
    end
    object datasetAplicar: TClientDataSetApply
      Category = 'Dataset'
      Caption = 'Aplicar'
      ImageIndex = 2
      DataSource = dtsManuBD
      DisplayErrorDlg = False
    end
    object ClientDataSetRevert1: TClientDataSetRevert
      Category = 'Dataset'
      Caption = 'Revert'
      ImageIndex = 1
      DataSource = dtsManuBD
    end
    object ClientDataSetUndo1: TClientDataSetUndo
      Category = 'Dataset'
      Caption = 'Undo'
      ImageIndex = 0
      DataSource = dtsManuBD
      FollowChange = False
    end
    object Incluir: TAction
      Caption = '&Incluir'
    end
    object Alterar: TAction
      Caption = '&Alterar'
    end
    object Excluir: TAction
      Caption = '&Excluir'
    end
    object Consultar: TAction
      Caption = '&Consultar'
    end
    object Salvar: TAction
      Caption = '&Salvar'
    end
    object Cancelar: TAction
      Caption = '&Cancelar'
    end
    object Atualizar: TAction
      Caption = 'A&tualizar'
    end
  end
end
