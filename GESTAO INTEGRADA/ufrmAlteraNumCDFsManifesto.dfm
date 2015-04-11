inherited frmAlteraNumCDFsManifesto: TfrmAlteraNumCDFsManifesto
  Left = 418
  Top = 181
  Width = 445
  Height = 280
  Caption = 'Altera N'#186' do CDF do Manifesto de Res'#237'duo'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblNumManifesto: TLabel
    Left = 9
    Top = 19
    Width = 169
    Height = 13
    Caption = 'Digite o N'#250'mero do Manifesto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnVisializar: TSpeedButton
    Left = 336
    Top = 217
    Width = 95
    Height = 25
    Caption = '&Gravar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnVisializarClick
  end
  object lblDtEntrega: TLabel
    Left = 9
    Top = 50
    Width = 66
    Height = 13
    Caption = 'Dt. Entrega'
    Enabled = False
    FocusControl = txtDtEntrega
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblQuantidade: TLabel
    Left = 9
    Top = 81
    Width = 66
    Height = 13
    Caption = 'Quantidade'
    Enabled = False
    FocusControl = txtQuantidade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtNumManifesto: TEdit
    Left = 185
    Top = 11
    Width = 246
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
    OnExit = txtNumManifestoExit
  end
  object txtDtEntrega: TDBEdit
    Left = 185
    Top = 42
    Width = 71
    Height = 21
    Color = cl3DLight
    DataField = 'GerDtEntrega'
    DataSource = dtsManifesto
    Enabled = False
    TabOrder = 4
  end
  object txtQuantidade: TDBEdit
    Left = 185
    Top = 73
    Width = 246
    Height = 21
    Color = cl3DLight
    DataField = 'Quantidade'
    DataSource = dtsManifesto
    Enabled = False
    TabOrder = 5
  end
  object rdgTipoCDF: TRadioGroup
    Left = 10
    Top = 109
    Width = 421
    Height = 99
    Caption = 'Tipo do CDF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Com n'#250'mero'
      'Laudo da Empresa')
    ParentFont = False
    TabOrder = 1
    OnClick = rdgTipoCDFClick
  end
  object txtNumCDF: TDBEdit
    Left = 171
    Top = 131
    Width = 246
    Height = 21
    DataField = 'CDF'
    DataSource = dtsManifesto
    TabOrder = 2
  end
  object dblLaudo: TDBLookupComboBox
    Left = 171
    Top = 172
    Width = 246
    Height = 21
    Color = cl3DLight
    Enabled = False
    KeyField = 'ID_Fantasia'
    ListField = 'Descricao'
    ListSource = dtsNomeFantasia
    TabOrder = 3
  end
  object cdsManifesto: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspManifesto'
    Left = 120
    Top = 7
    object cdsManifestoNumero: TStringField
      DisplayLabel = 'N'#186
      DisplayWidth = 14
      FieldName = 'Numero'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsManifestoGerDtEntrega: TSQLTimeStampField
      DisplayLabel = 'Dt. Entrega'
      DisplayWidth = 12
      FieldName = 'GerDtEntrega'
      Required = True
    end
    object cdsManifestoQuantidade: TFMTBCDField
      FieldName = 'Quantidade'
      DisplayFormat = '###,##0.00 Ton'
      Precision = 17
      Size = 6
    end
    object cdsManifestoCDF: TStringField
      DisplayWidth = 20
      FieldName = 'CDF'
      Size = 45
    end
  end
  object dtsManifesto: TDataSourceUrb
    DataSet = cdsManifesto
    Left = 148
    Top = 7
  end
  object dspManifesto: TDataSetProvider
    DataSet = sqlManifesto
    Left = 92
    Top = 7
  end
  object dspNomeFantasia: TDataSetProvider
    DataSet = sqlNomeFantasia
    Left = 93
    Top = 35
  end
  object cdsNomeFantasia: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNomeFantasia'
    Left = 121
    Top = 35
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
    DataSet = cdsNomeFantasia
    Left = 149
    Top = 35
  end
  object sqlManifesto: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 64
    Top = 7
  end
  object sqlNomeFantasia: TSQLDataSet
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 64
    Top = 35
  end
end
