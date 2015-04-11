inherited frmRelatListaCDFPendentes: TfrmRelatListaCDFPendentes
  Left = 219
  Top = 6
  Caption = 'Listagem dos Manifesto de Res'#237'duos'
  ClientHeight = 526
  ClientWidth = 421
  OnCreate = FormCreate
  ExplicitWidth = 437
  ExplicitHeight = 564
  PixelsPerInch = 96
  TextHeight = 13
  object lblEmpresaReceptora: TLabel
    Left = 9
    Top = 152
    Width = 112
    Height = 13
    Caption = 'Empresa Receptora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTituloRelat: TLabel
    Left = 9
    Top = 54
    Width = 108
    Height = 13
    Caption = 'T'#237'tulo do Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSalvarTitulo: TSpeedButton
    Left = 378
    Top = 69
    Width = 41
    Height = 22
    Hint = 'Salvar T'#237'tulo'
    Caption = 'Salvar'
    Enabled = False
    Flat = True
    ParentShowHint = False
    ShowHint = True
  end
  object gbxPeriodo: TGroupBox
    Left = 9
    Top = 97
    Width = 410
    Height = 49
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      410
      49)
    object lblDataInicial: TLabel
      Left = 10
      Top = 26
      Width = 66
      Height = 13
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDataFinal: TLabel
      Left = 271
      Top = 26
      Width = 59
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtDataInicial: TMaskEdit
      Left = 80
      Top = 18
      Width = 65
      Height = 21
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object txtDataFinal: TMaskEdit
      Left = 335
      Top = 18
      Width = 65
      Height = 21
      Anchors = [akTop, akRight]
      EditMask = '!99/99/9999;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object dblEmpresaReceptora: TDBLookupComboBox
    Left = 9
    Top = 167
    Width = 410
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'ID_Empresa'
    ListField = 'RazaoSocial'
    ListSource = dtsNomeFantasia
    ParentFont = False
    TabOrder = 3
  end
  object txtTituloRelat: TEdit
    Left = 9
    Top = 69
    Width = 367
    Height = 21
    TabOrder = 1
    Text = 'Listagem dos Manifestos de Res'#237'duos'
  end
  object btnVisualizarImpressao: TBitBtn
    Left = 313
    Top = 500
    Width = 106
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = btnVisualizarImpressaoClick
  end
  object gbxEmpresaGeradora: TGroupBox
    Left = 9
    Top = 298
    Width = 410
    Height = 95
    Caption = 'Empresa Geradora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object btnGeradoraIncluir: TSpeedButton
      Left = 195
      Top = 16
      Width = 21
      Height = 17
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnGeradoraIncluirClick
    end
    object btnGeradoraIncluirTodos: TSpeedButton
      Left = 195
      Top = 33
      Width = 21
      Height = 17
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnGeradoraIncluirTodosClick
    end
    object btnGeradoraExcluir: TSpeedButton
      Left = 195
      Top = 50
      Width = 21
      Height = 17
      Caption = '<'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnGeradoraExcluirClick
    end
    object btnGeradoraExcluirTodos: TSpeedButton
      Left = 195
      Top = 67
      Width = 21
      Height = 17
      Caption = '<<'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnGeradoraExcluirTodosClick
    end
    object lstEmpresaGeradoraDestino: TDBLookupListBox
      Left = 218
      Top = 16
      Width = 185
      Height = 69
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_Fantasia'
      ListField = 'Descricao'
      ListSource = dtsEmpresaGeradoraDestino
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object lstEmpresaGeradoraOrigem: TDBLookupListBox
      Left = 7
      Top = 16
      Width = 185
      Height = 69
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_Fantasia'
      ListField = 'Descricao'
      ListSource = dtsEmpresaGeradoraOrigem
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object gbxSituacaoManifesto: TGroupBox
    Left = 9
    Top = 196
    Width = 410
    Height = 95
    Caption = 'Situa'#231#227'o do Manifesto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object btnSituacaoIncluir: TSpeedButton
      Left = 195
      Top = 16
      Width = 21
      Height = 17
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnSituacaoIncluirClick
    end
    object btnSituacaoIncluirTodos: TSpeedButton
      Left = 195
      Top = 33
      Width = 21
      Height = 17
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnSituacaoIncluirTodosClick
    end
    object btnSituacaoExcluir: TSpeedButton
      Left = 195
      Top = 50
      Width = 21
      Height = 17
      Caption = '<'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnSituacaoExcluirClick
    end
    object btnSituacaoExcluirTodos: TSpeedButton
      Left = 195
      Top = 67
      Width = 21
      Height = 17
      Caption = '<<'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnSituacaoExcluirTodosClick
    end
    object lstSituacaoOrigem: TDBLookupListBox
      Left = 7
      Top = 16
      Width = 185
      Height = 69
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_Situacao'
      ListField = 'Descricao'
      ListSource = dtsSituacaoOrigem
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object lstSituacaoDestino: TDBLookupListBox
      Left = 218
      Top = 16
      Width = 185
      Height = 69
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_Situacao'
      ListField = 'Descricao'
      ListSource = dtsSituacaoDestino
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object gbxResiduo: TGroupBox
    Left = 9
    Top = 399
    Width = 410
    Height = 95
    Caption = 'Res'#237'duo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object btnResiduoIncluir: TSpeedButton
      Left = 195
      Top = 16
      Width = 21
      Height = 17
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnResiduoIncluirClick
    end
    object btnResiduoIncluirTodos: TSpeedButton
      Left = 195
      Top = 33
      Width = 21
      Height = 17
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnResiduoIncluirTodosClick
    end
    object btnResiduoExcluir: TSpeedButton
      Left = 195
      Top = 50
      Width = 21
      Height = 17
      Caption = '<'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnResiduoExcluirClick
    end
    object btnResiduoExcluirTodos: TSpeedButton
      Left = 195
      Top = 67
      Width = 21
      Height = 17
      Caption = '<<'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnResiduoExcluirTodosClick
    end
    object DBLookupListBox4: TDBLookupListBox
      Left = 218
      Top = 16
      Width = 185
      Height = 69
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_Residuo'
      ListField = 'Descricao'
      ListSource = dtsResiduoDestino
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object DBLookupListBox5: TDBLookupListBox
      Left = 7
      Top = 16
      Width = 185
      Height = 69
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_Residuo'
      ListField = 'Descricao'
      ListSource = dtsResiduoOrigem
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object rdgTipoManifesto: TRadioGroup
    Left = 9
    Top = 7
    Width = 410
    Height = 39
    Caption = 'Tipo Manifesto'
    Columns = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Sem CDF'
      'Com CDF'
      'Todos')
    ParentFont = False
    TabOrder = 0
  end
  object dspNomeFantasia: TDataSetProvider
    Left = 147
    Top = 166
  end
  object cdsNomeFantasia: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNomeFantasia'
    Left = 175
    Top = 166
    object cdsNomeFantasiaID_Empresa: TIntegerField
      FieldName = 'ID_Empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNomeFantasiaRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
  end
  object dtsNomeFantasia: TDataSourceUrb
    DataSet = cdsNomeFantasia
    Left = 203
    Top = 166
  end
  object dspListaCDFPendentes: TDataSetProvider
    Left = 231
    Top = 43
  end
  object cdsListaCDFPendentes: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspListaCDFPendentes'
    Left = 259
    Top = 43
    object cdsListaCDFPendentesGerDtEntrega: TSQLTimeStampField
      FieldName = 'GerDtEntrega'
      Required = True
    end
    object cdsListaCDFPendentesGerID_Empresa: TIntegerField
      FieldName = 'GerID_Empresa'
      Required = True
    end
    object cdsListaCDFPendentesRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsListaCDFPendentesNumero: TStringField
      FieldName = 'Numero'
      Required = True
    end
    object cdsListaCDFPendentesQuantidade: TFMTBCDField
      FieldName = 'Quantidade'
      DisplayFormat = '###,##0.000'
      Precision = 17
      Size = 6
    end
    object cdsListaCDFPendentesCDF: TStringField
      FieldName = 'CDF'
      Size = 45
    end
    object cdsListaCDFPendentesRecepID_Empresa: TIntegerField
      FieldName = 'RecepID_Empresa'
      Required = True
    end
    object cdsListaCDFPendentesID_Residuo: TIntegerField
      FieldName = 'ID_Residuo'
      Required = True
    end
    object cdsListaCDFPendentesResiduo: TStringField
      FieldName = 'Residuo'
      Required = True
      Size = 50
    end
    object cdsListaCDFPendentesID_Fantasia: TIntegerField
      FieldName = 'ID_Fantasia'
      Required = True
    end
    object cdsListaCDFPendentesNomeFantasia: TStringField
      FieldName = 'NomeFantasia'
      Required = True
      Size = 30
    end
    object cdsListaCDFPendentesID_Situacao: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
    end
    object cdsListaCDFPendentesSituacao: TStringField
      FieldName = 'Situacao'
      Required = True
      Size = 30
    end
  end
  object dtsListaCDFPendentes: TDataSourceUrb
    DataSet = cdsListaCDFPendentes
    Left = 287
    Top = 43
  end
  object rdtsListaCDFPendentes: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsListaCDFPendentes
    Left = 315
    Top = 43
  end
  object dspSituacaoOrigem: TDataSetProvider
    Left = 51
    Top = 239
  end
  object cdsSituacaoOrigem: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSituacaoOrigem'
    Left = 79
    Top = 239
    object cdsSituacaoOrigemID_Situacao: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
    end
    object cdsSituacaoOrigemDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object dtsSituacaoOrigem: TDataSourceUrb
    DataSet = cdsSituacaoOrigem
    Left = 107
    Top = 239
  end
  object dspEmpresaGeradoraOrigem: TDataSetProvider
    Left = 35
    Top = 361
  end
  object cdsEmpresaGeradoraOrigem: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresaGeradoraOrigem'
    Left = 55
    Top = 361
    object cdsEmpresaGeradoraOrigemID_Fantasia: TIntegerField
      FieldName = 'ID_Fantasia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEmpresaGeradoraOrigemDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object dtsEmpresaGeradoraOrigem: TDataSourceUrb
    DataSet = cdsEmpresaGeradoraOrigem
    Left = 91
    Top = 361
  end
  object cdsEmpresaGeradoraDestino: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    Left = 287
    Top = 345
    object IntegerField1: TIntegerField
      FieldName = 'ID_Fantasia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object dtsEmpresaGeradoraDestino: TDataSourceUrb
    DataSet = cdsEmpresaGeradoraDestino
    Left = 315
    Top = 345
  end
  object dspResiduoOrigem: TDataSetProvider
    Left = 35
    Top = 443
  end
  object cdsResiduoOrigem: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResiduoOrigem'
    Left = 63
    Top = 443
    object cdsResiduoOrigemID_Residuo: TIntegerField
      FieldName = 'ID_Residuo'
      Required = True
    end
    object cdsResiduoOrigemDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
  end
  object dtsResiduoOrigem: TDataSourceUrb
    DataSet = cdsResiduoOrigem
    Left = 91
    Top = 443
  end
  object cdsSituacaoDestino: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    Left = 287
    Top = 239
    object IntegerField2: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object dtsSituacaoDestino: TDataSourceUrb
    DataSet = cdsSituacaoDestino
    Left = 315
    Top = 239
  end
  object cdsResiduoDestino: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    Left = 279
    Top = 435
    object IntegerField3: TIntegerField
      FieldName = 'ID_Residuo'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
  end
  object dtsResiduoDestino: TDataSourceUrb
    DataSet = cdsResiduoDestino
    Left = 307
    Top = 435
  end
  object sqlListaCDFPendentes: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'iID_Situacao'
        ParamType = ptUnknown
        Value = '2'
      end
      item
        DataType = ftString
        Name = 'sDtChegouIni'
        ParamType = ptUnknown
        Value = '20040101'
      end
      item
        DataType = ftString
        Name = 'sDtChegouFim'
        ParamType = ptUnknown
        Value = '20041231'
      end>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 202
    Top = 43
    object sqlListaCDFPendentesNumero: TStringField
      DisplayLabel = 'N'#186
      FieldName = 'Numero'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlListaCDFPendentesGerDtEntrega: TSQLTimeStampField
      DisplayLabel = 'Dt. Entrega'
      DisplayWidth = 13
      FieldName = 'GerDtEntrega'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object sqlListaCDFPendentesDescGerEmpresa: TStringField
      DisplayLabel = 'Gerador'
      DisplayWidth = 43
      FieldKind = fkLookup
      FieldName = 'DescGerEmpresa'
      LookupKeyFields = 'ID_Empresa'
      LookupResultField = 'RazaoSocial'
      KeyFields = 'GerID_Empresa'
      Size = 50
      Lookup = True
    end
    object sqlListaCDFPendentesDescResiduo: TStringField
      DisplayLabel = 'Tipo de Res'#237'duo'
      DisplayWidth = 23
      FieldKind = fkLookup
      FieldName = 'DescResiduo'
      LookupKeyFields = 'ID_Residuo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Residuo'
      Size = 30
      Lookup = True
    end
    object sqlListaCDFPendentesQuantidade: TFMTBCDField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 12
      FieldName = 'Quantidade'
      DisplayFormat = '#####0.00#'
      Precision = 17
      Size = 6
    end
    object sqlListaCDFPendentesDescUnidade: TStringField
      DisplayLabel = 'Un'
      DisplayWidth = 6
      FieldKind = fkLookup
      FieldName = 'DescUnidade'
      LookupKeyFields = 'ID_UnidadeMedida'
      LookupResultField = 'Sigla'
      KeyFields = 'ID_Unidade'
      Size = 5
      Lookup = True
    end
    object sqlListaCDFPendentesDescProcedencia: TStringField
      DisplayLabel = 'Proced'#234'cia'
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'DescProcedencia'
      LookupKeyFields = 'ID_Procedencia'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Procedencia'
      Size = 30
      Lookup = True
    end
    object sqlListaCDFPendentesDescRecepEmpresa: TStringField
      DisplayLabel = 'Receptor'
      DisplayWidth = 43
      FieldKind = fkLookup
      FieldName = 'DescRecepEmpresa'
      LookupKeyFields = 'ID_Empresa'
      LookupResultField = 'RazaoSocial'
      KeyFields = 'RecepID_Empresa'
      Size = 50
      Lookup = True
    end
    object sqlListaCDFPendentesRecepDtReceb: TSQLTimeStampField
      DisplayLabel = 'Dt. Receb.'
      DisplayWidth = 13
      FieldName = 'RecepDtReceb'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object sqlListaCDFPendentesDescStatus: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 29
      FieldKind = fkLookup
      FieldName = 'DescStatus'
      LookupKeyFields = 'ID_ManifestoEstado'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Status'
      Size = 30
      Lookup = True
    end
    object sqlListaCDFPendentesDtChegou: TSQLTimeStampField
      DisplayLabel = 'Dt. Chegou'
      DisplayWidth = 13
      FieldName = 'DtChegou'
      Required = True
    end
    object sqlListaCDFPendentesDtEnvio: TSQLTimeStampField
      DisplayLabel = 'Dt. Envio'
      DisplayWidth = 12
      FieldName = 'DtEnvio'
    end
    object sqlListaCDFPendentesID_LoteEnvio: TIntegerField
      DisplayLabel = 'N'#186' Lote'
      DisplayWidth = 19
      FieldName = 'ID_LoteEnvio'
    end
    object sqlListaCDFPendentesRecepID_Empresa: TIntegerField
      DisplayWidth = 21
      FieldName = 'RecepID_Empresa'
      Required = True
      Visible = False
    end
    object sqlListaCDFPendentesDescEstadoFisico: TStringField
      DisplayLabel = 'Estado F'#237'sico'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescEstadoFisico'
      LookupKeyFields = 'ID_EstadoFisico'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_EstadoFisico'
      Visible = False
      Size = 30
      Lookup = True
    end
    object sqlListaCDFPendentesDescAcond: TStringField
      DisplayLabel = 'Acond.'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescAcond'
      LookupKeyFields = 'ID_Acondicionamento'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Acond'
      Visible = False
      Size = 30
      Lookup = True
    end
    object sqlListaCDFPendentesDescOrigem: TStringField
      DisplayLabel = 'Origem'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescOrigem'
      LookupKeyFields = 'ID_Origem'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Origem'
      Visible = False
      Size = 30
      Lookup = True
    end
    object sqlListaCDFPendentesDescTratDisp: TStringField
      DisplayLabel = 'Trat./Disp.'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescTratDisp'
      LookupKeyFields = 'ID_TratDisp'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_TratDisp'
      Visible = False
      Size = 30
      Lookup = True
    end
    object sqlListaCDFPendentesDescGerResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldKind = fkLookup
      FieldName = 'DescGerResponsavel'
      LookupKeyFields = 'ID_Responsavel'
      LookupResultField = 'Nome'
      KeyFields = 'GerID_Responsavel'
      Visible = False
      Size = 50
      Lookup = True
    end
    object sqlListaCDFPendentesDescTransEmpresa: TStringField
      DisplayLabel = 'Gerador'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'DescTransEmpresa'
      LookupKeyFields = 'ID_Empresa'
      LookupResultField = 'RazaoSocial'
      KeyFields = 'TransID_Empresa'
      Visible = False
      Size = 50
      Lookup = True
    end
    object sqlListaCDFPendentesDescTransResponsavel: TStringField
      FieldKind = fkLookup
      FieldName = 'DescTransResponsavel'
      LookupKeyFields = 'ID_Responsavel'
      LookupResultField = 'Nome'
      KeyFields = 'TransID_Responsavel'
      Visible = False
      Size = 50
      Lookup = True
    end
    object sqlListaCDFPendentesDescRecepResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldKind = fkLookup
      FieldName = 'DescRecepResponsavel'
      LookupKeyFields = 'ID_Responsavel'
      LookupResultField = 'Nome'
      KeyFields = 'RecepID_Responsavel'
      Visible = False
      Size = 50
      Lookup = True
    end
    object sqlListaCDFPendentesDescSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'DescSituacao'
      LookupKeyFields = 'ID_Situacao'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Situacao'
      Visible = False
      Size = 30
      Lookup = True
    end
    object sqlListaCDFPendentesNumCertificado: TIntegerField
      DisplayWidth = 17
      FieldName = 'NumCertificado'
      Visible = False
    end
    object sqlListaCDFPendentesID_Unidade: TIntegerField
      DisplayWidth = 14
      FieldName = 'ID_Unidade'
      Required = True
      Visible = False
    end
    object sqlListaCDFPendentesID_Residuo: TIntegerField
      DisplayWidth = 13
      FieldName = 'ID_Residuo'
      Required = True
      Visible = False
    end
    object sqlListaCDFPendentesID_EstadoFisico: TIntegerField
      DisplayWidth = 19
      FieldName = 'ID_EstadoFisico'
      Visible = False
    end
    object sqlListaCDFPendentesID_Acond: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_Acond'
      Visible = False
    end
    object sqlListaCDFPendentesID_Origem: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_Origem'
      Visible = False
    end
    object sqlListaCDFPendentesID_Procedencia: TIntegerField
      DisplayWidth = 18
      FieldName = 'ID_Procedencia'
      Required = True
      Visible = False
    end
    object sqlListaCDFPendentesID_TratDisp: TIntegerField
      DisplayWidth = 14
      FieldName = 'ID_TratDisp'
      Visible = False
    end
    object sqlListaCDFPendentesID_Status: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_Status'
      Required = True
      Visible = False
    end
    object sqlListaCDFPendentesGerID_Empresa: TIntegerField
      DisplayWidth = 18
      FieldName = 'GerID_Empresa'
      Required = True
      Visible = False
    end
    object sqlListaCDFPendentesGerNumInventario: TStringField
      DisplayWidth = 36
      FieldName = 'GerNumInventario'
      Visible = False
      Size = 30
    end
    object sqlListaCDFPendentesGerID_Responsavel: TIntegerField
      DisplayWidth = 23
      FieldName = 'GerID_Responsavel'
      Visible = False
    end
    object sqlListaCDFPendentesTransDtReceb: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'TransDtReceb'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object sqlListaCDFPendentesTransID_Empresa: TIntegerField
      DisplayWidth = 20
      FieldName = 'TransID_Empresa'
      Required = True
      Visible = False
    end
    object sqlListaCDFPendentesTransID_Responsavel: TIntegerField
      DisplayWidth = 25
      FieldName = 'TransID_Responsavel'
      Visible = False
    end
    object sqlListaCDFPendentesTransNomeMotorista: TStringField
      DisplayWidth = 36
      FieldName = 'TransNomeMotorista'
      Visible = False
      Size = 30
    end
    object sqlListaCDFPendentesTransPlacaVeiculo: TStringField
      DisplayWidth = 36
      FieldName = 'TransPlacaVeiculo'
      Visible = False
      Size = 30
    end
    object sqlListaCDFPendentesTransCertificado: TStringField
      DisplayWidth = 36
      FieldName = 'TransCertificado'
      Visible = False
      Size = 30
    end
    object sqlListaCDFPendentesRecepNumInventario: TStringField
      DisplayWidth = 36
      FieldName = 'RecepNumInventario'
      Visible = False
      Size = 30
    end
    object sqlListaCDFPendentesRecepID_Responsavel: TIntegerField
      DisplayWidth = 26
      FieldName = 'RecepID_Responsavel'
      Visible = False
    end
    object sqlListaCDFPendentesID_Situacao: TIntegerField
      DisplayWidth = 14
      FieldName = 'ID_Situacao'
      Required = True
      Visible = False
    end
    object sqlListaCDFPendentesObs: TBlobField
      DisplayWidth = 12
      FieldName = 'Obs'
      Visible = False
      Size = 1
    end
    object sqlListaCDFPendentesGerResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 30
      FieldName = 'GerResponsavel'
      Visible = False
      Size = 50
    end
    object sqlListaCDFPendentesTransResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 30
      FieldName = 'TransResponsavel'
      Visible = False
      Size = 50
    end
    object sqlListaCDFPendentesRecepResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 30
      FieldName = 'RecepResponsavel'
      Visible = False
      Size = 50
    end
    object sqlListaCDFPendentesCDF: TStringField
      FieldName = 'CDF'
      Size = 45
    end
  end
end
