inherited frmCadEelitores: TfrmCadEelitores
  Left = 166
  Top = 192
  Caption = 'Eleitores'
  ClientHeight = 420
  ClientWidth = 664
  ExplicitWidth = 672
  ExplicitHeight = 447
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 582
    Height = 393
    ExplicitWidth = 582
    ExplicitHeight = 393
    DesignSize = (
      582
      393)
    inherited pgcManutencaoBD: TPageControl
      Width = 562
      Height = 375
      ExplicitWidth = 562
      ExplicitHeight = 375
      inherited tbsListagem: TTabSheet
        inherited pnlListagem: TPanel
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 554
            Height = 365
          end
        end
      end
      inherited tbsCadastro: TTabSheet
        inherited pnlCadastro: TPanel
          Width = 554
          Height = 365
          ExplicitWidth = 554
          ExplicitHeight = 365
          object gbxEndereco: TGroupBox
            Left = 10
            Top = 118
            Width = 533
            Height = 133
            Caption = 'Endere'#231'o'
            TabOrder = 0
            object Label5: TLabel
              Left = 14
              Top = 25
              Width = 54
              Height = 13
              Caption = 'Tipo Logra.'
            end
            object Label6: TLabel
              Left = 153
              Top = 25
              Width = 54
              Height = 13
              Caption = 'Logradouro'
              FocusControl = DBEdit6
            end
            object Label7: TLabel
              Left = 419
              Top = 25
              Width = 12
              Height = 13
              Caption = 'N'#186
              FocusControl = DBEdit7
            end
            object Label8: TLabel
              Left = 14
              Top = 55
              Width = 64
              Height = 13
              Caption = 'Complemento'
              FocusControl = DBEdit8
            end
            object Label9: TLabel
              Left = 14
              Top = 81
              Width = 27
              Height = 13
              Caption = 'Bairro'
            end
            object Label10: TLabel
              Left = 419
              Top = 52
              Width = 21
              Height = 13
              Caption = 'CEP'
              FocusControl = DBEdit10
            end
            object Label11: TLabel
              Left = 230
              Top = 81
              Width = 33
              Height = 13
              Caption = 'Cidade'
              FocusControl = DBEdit11
            end
            object Label12: TLabel
              Left = 419
              Top = 81
              Width = 14
              Height = 13
              Caption = 'UF'
              FocusControl = DBEdit12
            end
            object Label13: TLabel
              Left = 14
              Top = 109
              Width = 25
              Height = 13
              Caption = 'Email'
              FocusControl = DBEdit13
            end
            object DBEdit6: TDBEdit
              Left = 211
              Top = 17
              Width = 197
              Height = 21
              DataField = 'LograDescricao'
              DataSource = dtsManuBD
              TabOrder = 0
            end
            object DBEdit7: TDBEdit
              Left = 444
              Top = 17
              Width = 75
              Height = 21
              DataField = 'LograNumero'
              DataSource = dtsManuBD
              TabOrder = 1
            end
            object DBEdit8: TDBEdit
              Left = 85
              Top = 45
              Width = 324
              Height = 21
              DataField = 'LograComplemento'
              DataSource = dtsManuBD
              TabOrder = 2
            end
            object DBEdit10: TDBEdit
              Left = 444
              Top = 44
              Width = 75
              Height = 21
              DataField = 'LograCEP'
              DataSource = dtsManuBD
              TabOrder = 3
            end
            object DBEdit11: TDBEdit
              Left = 270
              Top = 73
              Width = 139
              Height = 21
              DataField = 'LograCidade'
              DataSource = dtsManuBD
              TabOrder = 4
            end
            object DBEdit12: TDBEdit
              Left = 444
              Top = 73
              Width = 75
              Height = 21
              DataField = 'LograUF'
              DataSource = dtsManuBD
              TabOrder = 5
            end
            object DBEdit13: TDBEdit
              Left = 85
              Top = 101
              Width = 435
              Height = 21
              DataField = 'Email'
              DataSource = dtsManuBD
              TabOrder = 6
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 85
              Top = 17
              Width = 65
              Height = 21
              DataField = 'DescLogra'
              DataSource = dtsManuBD
              TabOrder = 7
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 85
              Top = 73
              Width = 140
              Height = 21
              DataField = 'DescBairro'
              DataSource = dtsManuBD
              TabOrder = 8
            end
          end
          object gbxDadosPessoais: TGroupBox
            Left = 10
            Top = 8
            Width = 533
            Height = 105
            Caption = 'Dados Pessoais'
            TabOrder = 1
            object Label1: TLabel
              Left = 14
              Top = 25
              Width = 9
              Height = 13
              Caption = 'Id'
              FocusControl = DBEdit1
            end
            object Label2: TLabel
              Left = 181
              Top = 25
              Width = 28
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdit2
            end
            object Label3: TLabel
              Left = 14
              Top = 53
              Width = 59
              Height = 13
              Caption = 'Sobre-Nome'
              FocusControl = DBEdit3
            end
            object Label4: TLabel
              Left = 14
              Top = 81
              Width = 35
              Height = 13
              Caption = 'Apelido'
              FocusControl = DBEdit4
            end
            object Label15: TLabel
              Left = 383
              Top = 81
              Width = 45
              Height = 13
              Caption = 'Dt. Nasc.'
              FocusControl = DBEdit15
            end
            object Label14: TLabel
              Left = 210
              Top = 81
              Width = 24
              Height = 13
              Caption = 'Sexo'
              FocusControl = DBLookupComboBox1
            end
            object DBEdit1: TDBEdit
              Left = 85
              Top = 17
              Width = 60
              Height = 21
              Color = cl3DLight
              DataField = 'ID_Eleitor'
              DataSource = dtsManuBD
              Enabled = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 214
              Top = 17
              Width = 299
              Height = 21
              DataField = 'NomePrimeiro'
              DataSource = dtsManuBD
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 85
              Top = 45
              Width = 430
              Height = 21
              DataField = 'NomeRestante'
              DataSource = dtsManuBD
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 85
              Top = 73
              Width = 96
              Height = 21
              DataField = 'Apelido'
              DataSource = dtsManuBD
              TabOrder = 3
            end
            object DBEdit15: TDBEdit
              Left = 434
              Top = 73
              Width = 81
              Height = 21
              DataField = 'DataNasc'
              DataSource = dtsManuBD
              TabOrder = 4
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 242
              Top = 73
              Width = 101
              Height = 21
              DataField = 'DescSexo'
              DataSource = dtsManuBD
              TabOrder = 5
            end
          end
          object gbxDocumentacao: TGroupBox
            Left = 10
            Top = 257
            Width = 533
            Height = 47
            Caption = 'Documenta'#231#227'o'
            TabOrder = 2
            object Label16: TLabel
              Left = 8
              Top = 24
              Width = 28
              Height = 13
              Caption = 'T'#237'tulo'
              FocusControl = DBEdit16
            end
            object Label17: TLabel
              Left = 184
              Top = 24
              Width = 25
              Height = 13
              Caption = 'Zona'
              FocusControl = DBEdit17
            end
            object Label18: TLabel
              Left = 270
              Top = 24
              Width = 31
              Height = 13
              Caption = 'Se'#231#227'o'
              FocusControl = DBEdit18
            end
            object Label19: TLabel
              Left = 368
              Top = 24
              Width = 20
              Height = 13
              Caption = 'CPF'
              FocusControl = DBEdit19
            end
            object DBEdit16: TDBEdit
              Left = 40
              Top = 16
              Width = 137
              Height = 21
              DataField = 'TitNumero'
              DataSource = dtsManuBD
              TabOrder = 0
            end
            object DBEdit17: TDBEdit
              Left = 216
              Top = 16
              Width = 43
              Height = 21
              DataField = 'TitZona'
              DataSource = dtsManuBD
              TabOrder = 1
            end
            object DBEdit18: TDBEdit
              Left = 310
              Top = 16
              Width = 43
              Height = 21
              DataField = 'TitSecao'
              DataSource = dtsManuBD
              TabOrder = 2
            end
            object DBEdit19: TDBEdit
              Left = 392
              Top = 16
              Width = 127
              Height = 21
              DataField = 'CPF'
              DataSource = dtsManuBD
              TabOrder = 3
            end
          end
          object gbxOutros: TGroupBox
            Left = 10
            Top = 311
            Width = 533
            Height = 47
            Caption = 'Outros'
            TabOrder = 3
            object Label20: TLabel
              Left = 10
              Top = 24
              Width = 62
              Height = 13
              Caption = 'Classifica'#231#227'o'
              FocusControl = DBLookupComboBox4
            end
            object Label21: TLabel
              Left = 267
              Top = 24
              Width = 78
              Height = 13
              Caption = 'Conquistado Por'
              FocusControl = DBLookupComboBox5
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 82
              Top = 16
              Width = 165
              Height = 21
              DataField = 'DescClassificacao'
              DataSource = dtsManuBD
              TabOrder = 0
            end
            object DBLookupComboBox5: TDBLookupComboBox
              Left = 355
              Top = 16
              Width = 165
              Height = 21
              DataField = 'DescConquistadoPor'
              DataSource = dtsManuBD
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited stbManutencaoBD: TStatusBar
    Top = 401
    Width = 664
    ExplicitTop = 401
    ExplicitWidth = 664
  end
  inherited pnlBotoes: TPanel
    Left = 592
    Height = 393
    ExplicitLeft = 592
    ExplicitHeight = 393
    inherited btnAtualizar: TSpeedButton
      Caption = 'A&tualiza'
    end
  end
  inherited actManutencaoBD: TActionList
    Top = 65532
  end
  inherited imgManutencaoBD: TImageList
    Top = 65532
  end
  inherited cdsManuBD: TClientDataSetUrb
    ProviderName = 'dspEleitor'
    Top = 65532
    object cdsManuBDID_Eleitor: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_Eleitor'
      Required = True
    end
    object cdsManuBDNomePrimeiro: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 15
      FieldName = 'NomePrimeiro'
      Required = True
    end
    object cdsManuBDNomeRestante: TStringField
      DisplayLabel = 'Sobre-Nome'
      DisplayWidth = 20
      FieldName = 'NomeRestante'
      Required = True
      Size = 30
    end
    object cdsManuBDApelido: TStringField
      DisplayWidth = 15
      FieldName = 'Apelido'
    end
    object cdsManuBDLograID_Tipo: TIntegerField
      DisplayLabel = 'Id Tipo Logra.'
      FieldName = 'LograID_Tipo'
      Required = True
    end
    object cdsManuBDLograDescricao: TStringField
      DisplayLabel = 'Logradouro'
      DisplayWidth = 20
      FieldName = 'LograDescricao'
      Required = True
      Size = 30
    end
    object cdsManuBDLograNumero: TBCDField
      DisplayLabel = 'N'#186
      DisplayWidth = 5
      FieldName = 'LograNumero'
      Precision = 7
      Size = 0
    end
    object cdsManuBDLograComplemento: TStringField
      DisplayLabel = 'Complemento'
      DisplayWidth = 20
      FieldName = 'LograComplemento'
      Size = 30
    end
    object cdsManuBDLograID_Bairro: TIntegerField
      DisplayLabel = 'Id Bairro'
      FieldName = 'LograID_Bairro'
      Required = True
    end
    object cdsManuBDLograCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'LograCEP'
      Required = True
      Size = 8
    end
    object cdsManuBDLograCidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 20
      FieldName = 'LograCidade'
      Required = True
      Size = 30
    end
    object cdsManuBDLograUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'LograUF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsManuBDID_Classificacao: TIntegerField
      DisplayLabel = 'Id Classifica'#231#227'o'
      FieldName = 'ID_Classificacao'
      Required = True
    end
    object cdsManuBDID_Sexo: TIntegerField
      DisplayLabel = 'Id Sexo'
      FieldName = 'ID_Sexo'
      Required = True
    end
    object cdsManuBDEmail: TStringField
      DisplayWidth = 25
      FieldName = 'Email'
      Size = 50
    end
    object cdsManuBDDataNasc: TSQLTimeStampField
      DisplayLabel = 'Dt. Nasc.'
      DisplayWidth = 10
      FieldName = 'DataNasc'
      Required = True
    end
    object cdsManuBDTitNumero: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'TitNumero'
      Size = 11
    end
    object cdsManuBDTitZona: TStringField
      DisplayLabel = 'Zona'
      FieldName = 'TitZona'
      FixedChar = True
      Size = 3
    end
    object cdsManuBDTitSecao: TStringField
      DisplayLabel = 'Se'#231#227'o'
      FieldName = 'TitSecao'
      FixedChar = True
      Size = 3
    end
    object cdsManuBDCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsManuBDConquistadoPor: TIntegerField
      DisplayLabel = 'Id. Conquistado Por'
      FieldName = 'ConquistadoPor'
    end
    object cdsManuBDDescSexo: TStringField
      DisplayLabel = 'Sexo'
      FieldKind = fkLookup
      FieldName = 'DescSexo'
      LookupDataSet = cdsSexo
      LookupKeyFields = 'ID_Sexo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Sexo'
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescLogra: TStringField
      DisplayLabel = 'Tipo Logra.'
      FieldKind = fkLookup
      FieldName = 'DescLogra'
      LookupDataSet = cdsTipoLogra
      LookupKeyFields = 'ID_Tipo'
      LookupResultField = 'Descricao'
      KeyFields = 'LograID_Tipo'
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescBairro: TStringField
      DisplayLabel = 'Bairro'
      FieldKind = fkLookup
      FieldName = 'DescBairro'
      LookupDataSet = cdsBairro
      LookupKeyFields = 'ID_Bairro'
      LookupResultField = 'Descricao'
      KeyFields = 'LograID_Bairro'
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescClassificacao: TStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'DescClassificacao'
      LookupDataSet = cdsClassificacao
      LookupKeyFields = 'ID_Classificacao'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Classificacao'
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescConquistadoPor: TStringField
      DisplayLabel = 'Conquistado Por'
      FieldKind = fkLookup
      FieldName = 'DescConquistadoPor'
      LookupDataSet = cdsIndicadoPor
      LookupKeyFields = 'ID_Eleitor'
      LookupResultField = 'NomePrimeiro'
      KeyFields = 'ConquistadoPor'
      Size = 30
      Lookup = True
    end
  end
  inherited dtsManuBD: TDataSourceUrb
    Top = 65532
  end
  object cdsSexo: TClientDataSetUrb [7]
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSexo'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 454
    Top = 12
    object cdsSexoID_Sexo: TIntegerField
      FieldName = 'ID_Sexo'
      Required = True
    end
    object cdsSexoDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  object dtsSexo: TDataSourceUrb [8]
    AutoEdit = False
    DataSet = cdsSexo
    Left = 482
    Top = 12
  end
  inherited ppmRelatorios: TPopupMenu
    Left = 528
    Top = 12
  end
  object cdsTipoLogra: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogradouroTipo'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 454
    Top = 40
    object cdsTipoLograID_Tipo: TIntegerField
      FieldName = 'ID_Tipo'
      Required = True
    end
    object cdsTipoLograDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  object dtsTipoLogra: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTipoLogra
    Left = 482
    Top = 40
  end
  object dtsBairro: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsBairro
    Left = 482
    Top = 68
  end
  object cdsBairro: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBairro'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 454
    Top = 68
    object cdsBairroID_Bairro: TIntegerField
      FieldName = 'ID_Bairro'
      Required = True
    end
    object cdsBairroDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  object cdsClassificacao: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClassificacao'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 454
    Top = 96
    object cdsClassificacaoID_Classificacao: TIntegerField
      FieldName = 'ID_Classificacao'
      Required = True
    end
    object cdsClassificacaoDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  object dtsClassificacao: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsClassificacao
    Left = 482
    Top = 96
  end
  object cdsIndicadoPor: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEleitor'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 454
    Top = 124
    object cdsIndicadoPorID_Eleitor: TIntegerField
      FieldName = 'ID_Eleitor'
      Required = True
    end
    object cdsIndicadoPorNomePrimeiro: TStringField
      FieldName = 'NomePrimeiro'
      Required = True
      FixedChar = True
    end
  end
  object dtsIndicadoPor: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsIndicadoPor
    Left = 482
    Top = 124
  end
end
