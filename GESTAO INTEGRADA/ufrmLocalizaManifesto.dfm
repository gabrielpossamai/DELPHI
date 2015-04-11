inherited frmLocalizaManifesto: TfrmLocalizaManifesto
  Left = 667
  Top = 212
  Caption = 'Localiza Manifesto'
  ClientHeight = 196
  ClientWidth = 358
  WindowState = wsMaximized
  ExplicitWidth = 366
  ExplicitHeight = 223
  PixelsPerInch = 96
  TextHeight = 13
  object lblSample: TLabel
    Left = 13
    Top = 24
    Width = 92
    Height = 13
    Caption = 'N'#186' do Manifesto'
    FocusControl = txtNumManifesto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtNumManifesto: TEdit
    Left = 109
    Top = 16
    Width = 0
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object btnFind: TButton
    Left = 266
    Top = 14
    Width = 84
    Height = 25
    Anchors = [akTop, akRight]
    Caption = '&Procurar'
    Default = True
    TabOrder = 1
    OnClick = btnFindClick
  end
  object dbgManutencaoBD: TDBGridUrb
    Left = 13
    Top = 47
    Width = 78
    Height = 0
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtsManifesto
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
    ClientDataSet = cdsManifesto
  end
  object cdsManifesto: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspManifesto'
    Left = 79
    Top = 104
  end
  object dtsManifesto: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsManifesto
    Left = 107
    Top = 104
  end
  object dspManifesto: TDataSetProvider
    DataSet = sqlManifesto
    Left = 51
    Top = 104
  end
  object sqlManifesto: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 23
    Top = 104
  end
end
