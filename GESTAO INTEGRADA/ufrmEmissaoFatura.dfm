inherited frmEmissaoFatura: TfrmEmissaoFatura
  Left = 166
  Top = 80
  Caption = 'Emiss'#227'o de Faturas'
  ClientHeight = 428
  ClientWidth = 457
  OnCreate = FormCreate
  ExplicitWidth = 473
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 13
  object btnVisializar: TSpeedButton
    Left = 354
    Top = 389
    Width = 95
    Height = 25
    Caption = '&Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = btnVisializarClick
  end
  object gbxEmissao: TGroupBox
    Left = 8
    Top = 5
    Width = 441
    Height = 62
    Caption = 'Emiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblDtEmissao: TLabel
      Left = 50
      Top = 14
      Width = 65
      Height = 13
      Caption = 'Data Emiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 145
      Top = 14
      Width = 86
      Height = 13
      Caption = 'Empresa Emissora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dtpDtEmissao: TDateTimePicker
      Left = 50
      Top = 30
      Width = 85
      Height = 21
      Date = 38989.639939409720000000
      Time = 38989.639939409720000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dblEmpresaEmissora: TDBLookupComboBox
      Left = 145
      Top = 30
      Width = 290
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_Empresa'
      ListField = 'RazaoSocial'
      ListSource = dtsEmpresaEmissora
      ParentFont = False
      TabOrder = 1
    end
  end
  object gbxDuplicata: TGroupBox
    Left = 8
    Top = 135
    Width = 441
    Height = 106
    Caption = 'Duplicata'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 50
      Top = 14
      Width = 45
      Height = 13
      Caption = 'Fatura N'#186
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 145
      Top = 14
      Width = 57
      Height = 13
      Caption = 'Fatura Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 240
      Top = 14
      Width = 61
      Height = 13
      Caption = 'N'#186' de Ordem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 335
      Top = 14
      Width = 56
      Height = 13
      Caption = 'Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 50
      Top = 58
      Width = 40
      Height = 13
      Caption = 'Cliente'
    end
    object txtDupFatNum: TEdit
      Left = 50
      Top = 30
      Width = 85
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object txtDupNumOrdem: TEdit
      Left = 240
      Top = 30
      Width = 85
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object txtDupFatValor: TMaskEdit
      Left = 145
      Top = 30
      Width = 85
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dblDupCliente: TDBLookupComboBox
      Left = 50
      Top = 74
      Width = 370
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_Empresa'
      ListField = 'RazaoSocial'
      ListSource = dtsGerEmpresa
      ParentFont = False
      TabOrder = 4
    end
    object txtDtVencimento: TEdit
      Left = 335
      Top = 30
      Width = 85
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object gbxNotaFiscal: TGroupBox
    Left = 8
    Top = 70
    Width = 441
    Height = 62
    Caption = 'Nota Fiscal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label7: TLabel
      Left = 50
      Top = 14
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 145
      Top = 14
      Width = 24
      Height = 13
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object txtNFNum: TEdit
      Left = 50
      Top = 30
      Width = 85
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = txtDupFatNumExit
    end
    object txtNFValor: TMaskEdit
      Left = 145
      Top = 30
      Width = 85
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = txtNFValorExit
    end
    object chkColocar_S: TCheckBox
      Left = 236
      Top = 34
      Width = 195
      Height = 17
      Caption = 'Colocar a Letra "S" na Duplicata'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      OnClick = chkColocar_SClick
    end
  end
  object gbxObs: TGroupBox
    Left = 8
    Top = 244
    Width = 441
    Height = 71
    Caption = 'Obs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object gbxOutros: TGroupBox
    Left = 8
    Top = 319
    Width = 441
    Height = 62
    Caption = 'Outros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label9: TLabel
      Left = 50
      Top = 14
      Width = 91
      Height = 13
      Caption = 'P'#231'a do Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object txtPracaPg: TEdit
      Left = 50
      Top = 30
      Width = 85
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Acima'
      OnExit = txtDupFatNumExit
    end
  end
  object cdsGerEmpresa: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGerEmpresa'
    Left = 130
    Top = 190
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
    object cdsGerEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object cdsGerEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 15
    end
    object cdsGerEmpresaInscEstado: TStringField
      FieldName = 'InscEstado'
      Size = 9
    end
  end
  object dtsGerEmpresa: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsGerEmpresa
    Left = 158
    Top = 190
  end
  object sqlGerEmpresa: TSQLDataSet
    SchemaName = 'andre'
    GetMetadata = False
    CommandText = 
      'SELECT ID_Empresa,'#13#10'       RazaoSocial,'#13#10'       Endereco,'#13#10'     ' +
      '  Municipio,'#13#10'       UF,'#13#10'       Telefone,'#13#10'       CEP,'#13#10'       ' +
      'CNPJ,'#13#10'       InscEstado'#13#10'FROM   empresa'#13#10'ORDER BY RazaoSocial'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 58
    Top = 189
  end
  object dspGerEmpresa: TDataSetProvider
    DataSet = sqlGerEmpresa
    Left = 98
    Top = 189
  end
  object sqlEmpresaEmissora: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT ID_Empresa,'#13#10'       concat(RazaoSocial, '#39' - '#39', Municipio)' +
      ' AS RazaoSocial,'#13#10'       Endereco,'#13#10'       Municipio,'#13#10'       UF' +
      ','#13#10'       Telefone,'#13#10'       CEP,'#13#10'       CNPJ,'#13#10'       InscEstad' +
      'o,'#13#10'       InscMunic,'#13#10'       TelefoneII,'#13#10'       Email'#13#10'FROM   ' +
      'empresa'#13#10'WHERE  (RazaoSocial = '#39'Ferpan Comercio de Metais Ltda'#39')' +
      #13#10'ORDER BY RazaoSocial;'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 151
    Top = 58
  end
  object dspEmpresaEmissora: TDataSetProvider
    DataSet = sqlEmpresaEmissora
    Left = 183
    Top = 58
  end
  object cdsEmpresaEmissora: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresaEmissora'
    Left = 215
    Top = 59
    object cdsEmpresaEmissoraID_Empresa: TIntegerField
      FieldName = 'ID_Empresa'
      Required = True
    end
    object cdsEmpresaEmissoraRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Size = 83
    end
    object cdsEmpresaEmissoraEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object cdsEmpresaEmissoraMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsEmpresaEmissoraUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaEmissoraTelefone: TStringField
      FieldName = 'Telefone'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 15
    end
    object cdsEmpresaEmissoraCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object cdsEmpresaEmissoraCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 15
    end
    object cdsEmpresaEmissoraInscEstado: TStringField
      FieldName = 'InscEstado'
      Size = 9
    end
    object cdsEmpresaEmissoraInscMunic: TStringField
      FieldName = 'InscMunic'
      Size = 9
    end
    object cdsEmpresaEmissoraTelefoneII: TStringField
      FieldName = 'TelefoneII'
      Size = 15
    end
    object cdsEmpresaEmissoraEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
  end
  object dtsEmpresaEmissora: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsEmpresaEmissora
    Left = 243
    Top = 59
  end
end
