inherited frmRelatMensal: TfrmRelatMensal
  Left = 504
  Top = 174
  Width = 363
  Height = 316
  Caption = 'Relat'#243'rio de Retirada de Res'#237'duos por Per'#237'odo'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnVisualizarAtual: TBitBtn
    Left = 146
    Top = 259
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Visualizar Atual'
    TabOrder = 0
    OnClick = btnVisualizarAtualClick
  end
  object pgcRelatMensal: TPageControl
    Left = 9
    Top = 68
    Width = 337
    Height = 186
    ActivePage = tshGerador
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object tshGerador: TTabSheet
      Caption = 'Gerador'
      object dbgGerador: TDBGridUrb
        Left = 0
        Top = 0
        Width = 329
        Height = 158
        Align = alClient
        DataSource = dtsListaGerador
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        ClientDataSet = cdsListaGerador
      end
    end
    object tshResumoGeral: TTabSheet
      Caption = 'Resumo Geral'
      ImageIndex = 1
      OnShow = tshResumoGeralShow
      object dbgResumoGeral: TDBGridUrb
        Left = 0
        Top = 0
        Width = 329
        Height = 170
        Align = alClient
        DataSource = dtsResumoGeral
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        ClientDataSet = cdsResumoGeral
      end
    end
  end
  object btnImprimirTodos: TBitBtn
    Left = 257
    Top = 259
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Imprimir Todos'
    TabOrder = 2
  end
  object gbxPeriodo: TGroupBox
    Left = 9
    Top = 3
    Width = 337
    Height = 58
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      337
      58)
    object Label1: TLabel
      Left = 54
      Top = 14
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
    object Label2: TLabel
      Left = 150
      Top = 14
      Width = 59
      Height = 13
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtpInicial: TDateTimePicker
      Left = 54
      Top = 28
      Width = 89
      Height = 21
      Date = 38312.389776655100000000
      Time = 38312.389776655100000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dtpFinal: TDateTimePicker
      Left = 150
      Top = 28
      Width = 89
      Height = 21
      Date = 38312.389776655100000000
      Time = 38312.389776655100000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnBuscar: TBitBtn
      Left = 248
      Top = 24
      Width = 73
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnBuscarClick
    end
  end
  object rdtsGerador_New: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsGerador
    Left = 272
    Top = 96
  end
  object cdsGerador: TClientDataSetUrb
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'sDataIni'
        ParamType = ptUnknown
        Value = #39'20040101'#39
      end
      item
        DataType = ftString
        Name = 'sDataFim'
        ParamType = ptUnknown
        Value = #39'20041231'#39
      end
      item
        DataType = ftString
        Name = 'iID_Empresa'
        ParamType = ptUnknown
        Value = 2
      end>
    ProviderName = 'dspRelMesEmpresas'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 216
    Top = 96
    object cdsGeradorGerID_Empresa: TIntegerField
      DisplayLabel = 'ID. Empresa'
      FieldName = 'GerID_Empresa'
      Required = True
      Visible = False
      DisplayFormat = '000000'
    end
    object cdsGeradorRazaoSocial: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RazaoSocial'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsGeradorEndereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'Endereco'
      Required = True
      Visible = False
      FixedChar = True
      Size = 80
    end
    object cdsGeradorMunicipio: TStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'Municipio'
      Required = True
      Visible = False
      FixedChar = True
      Size = 30
    end
    object cdsGeradorUF: TStringField
      FieldName = 'UF'
      Required = True
      Visible = False
      FixedChar = True
      Size = 2
    end
  end
  object dtsGerador: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsGerador
    Left = 244
    Top = 96
  end
  object cdsResumoGeral: TClientDataSetUrb
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'sDataIni'
        ParamType = ptUnknown
        Value = #39'20040101'#39
      end
      item
        DataType = ftString
        Name = 'sDataFim'
        ParamType = ptUnknown
        Value = #39'20041231'#39
      end
      item
        DataType = ftString
        Name = 'iID_Empresa'
        ParamType = ptUnknown
        Value = 2
      end>
    ProviderName = 'dspRelMesResumoGeral'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 216
    Top = 124
    object cdsResumoGeralGerID_Empresa: TIntegerField
      FieldName = 'GerID_Empresa'
      Required = True
      Visible = False
    end
    object cdsResumoGeralID_Residuo: TIntegerField
      FieldName = 'ID_Residuo'
      Required = True
      Visible = False
    end
    object cdsResumoGeralDescricao: TStringField
      DisplayLabel = 'Res'#237'duo'
      DisplayWidth = 33
      FieldName = 'Descricao'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsResumoGeralTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
  end
  object dtsResumoGeral: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsResumoGeral
    Left = 244
    Top = 124
  end
  object rdtsResumoGeral_New: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsResumoGeral
    Left = 272
    Top = 124
  end
  object cdsListaGerador: TClientDataSetUrb
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'sDataIni'
        ParamType = ptUnknown
        Value = #39'20040101'#39
      end
      item
        DataType = ftString
        Name = 'sDataFim'
        ParamType = ptUnknown
        Value = #39'20041231'#39
      end>
    ProviderName = 'dspListaGestor'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 16
    Top = 132
    object cdsListaGeradorGerID_Empresa: TIntegerField
      FieldName = 'GerID_Empresa'
      Required = True
      Visible = False
    end
    object cdsListaGeradorRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsListaGeradorEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Visible = False
      FixedChar = True
      Size = 80
    end
    object cdsListaGeradorMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Visible = False
      FixedChar = True
      Size = 30
    end
    object cdsListaGeradorUF: TStringField
      FieldName = 'UF'
      Required = True
      Visible = False
      FixedChar = True
      Size = 2
    end
  end
  object dtsListaGerador: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsListaGerador
    Left = 44
    Top = 132
  end
  object cdsTotLixoCont: TClientDataSetUrb
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'sDataIni'
        ParamType = ptUnknown
        Value = #39'20040101'#39
      end
      item
        DataType = ftString
        Name = 'sDataFim'
        ParamType = ptUnknown
        Value = #39'20041231'#39
      end
      item
        DataType = ftString
        Name = 'iID_Empresa'
        ParamType = ptUnknown
        Value = 2
      end>
    ProviderName = 'dspRelMesResumoGeral'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 216
    Top = 152
  end
  object dtsTotLixoCont: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTotLixoCont
    Left = 244
    Top = 152
  end
  object rdtsTotLixoCont_New: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsTotLixoCont
    Left = 272
    Top = 152
  end
end
