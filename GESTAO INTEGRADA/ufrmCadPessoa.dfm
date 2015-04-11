inherited frmCadPessoa: TfrmCadPessoa
  Left = 359
  Top = 196
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 312
  ClientWidth = 582
  ExplicitWidth = 590
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 499
    Height = 285
    ExplicitWidth = 499
    ExplicitHeight = 285
    inherited pgcManutencaoBD: TPageControl
      Width = 479
      Height = 267
      ExplicitWidth = 479
      ExplicitHeight = 267
      inherited tbsListagem: TTabSheet
        inherited pnlListagem: TPanel
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 471
            Height = 257
          end
        end
      end
      inherited tbsCadastro: TTabSheet
        inherited pnlCadastro: TPanel
          Width = 471
          Height = 257
          ExplicitWidth = 471
          ExplicitHeight = 257
          object pgcPessoas: TPageControl
            Left = 13
            Top = 11
            Width = 445
            Height = 235
            ActivePage = tshEndereco
            TabOrder = 0
            object tshDados: TTabSheet
              Caption = 'Dados'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object Label1: TLabel
                Left = 232
                Top = 5
                Width = 76
                Height = 13
                Caption = 'Classifica'#231#227'o'
                FocusControl = DBLookupComboBox1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object pnlFisica: TPanel
                Left = 8
                Top = 56
                Width = 421
                Height = 137
                TabOrder = 2
                Visible = False
                object Label2: TLabel
                  Left = 24
                  Top = 8
                  Width = 33
                  Height = 13
                  Caption = 'Nome'
                  FocusControl = DBEdit1
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label3: TLabel
                  Left = 126
                  Top = 8
                  Width = 70
                  Height = 13
                  Caption = 'Sobre-Nome'
                  FocusControl = DBEdit2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label4: TLabel
                  Left = 24
                  Top = 48
                  Width = 34
                  Height = 13
                  Caption = 'Cargo'
                  FocusControl = DBLookupComboBox2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit1: TDBEdit
                  Left = 24
                  Top = 24
                  Width = 100
                  Height = 21
                  DataField = 'NomePrimeiro'
                  DataSource = dtsPessoaFisica
                  TabOrder = 0
                end
                object DBEdit2: TDBEdit
                  Left = 126
                  Top = 24
                  Width = 200
                  Height = 21
                  DataField = 'NomeRestante'
                  DataSource = dtsPessoaFisica
                  TabOrder = 1
                end
                object DBLookupComboBox2: TDBLookupComboBox
                  Left = 24
                  Top = 64
                  Width = 300
                  Height = 21
                  DataField = 'DescCargo'
                  DataSource = dtsPessoaFisica
                  TabOrder = 2
                end
              end
              object pnlJuridica: TPanel
                Left = 8
                Top = 56
                Width = 421
                Height = 137
                TabOrder = 3
                Visible = False
                object Label5: TLabel
                  Left = 24
                  Top = 16
                  Width = 76
                  Height = 13
                  Caption = 'Raz'#227'o Social'
                  FocusControl = DBEdit3
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBEdit3: TDBEdit
                  Left = 24
                  Top = 32
                  Width = 300
                  Height = 21
                  DataField = 'RazaoSocial'
                  DataSource = dtsPessoaJuridica
                  TabOrder = 0
                end
              end
              object dbgTipo: TDBRadioGroup
                Left = 8
                Top = 5
                Width = 218
                Height = 35
                Caption = 'Tipo'
                Columns = 2
                DataField = 'ID_Tipo'
                DataSource = dtsManuBD
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                Items.Strings = (
                  'F'#237'sica'
                  'J'#250'ridica')
                ParentBackground = True
                ParentFont = False
                TabOrder = 0
                Values.Strings = (
                  '1'
                  '2')
                OnClick = dbgTipoClick
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 232
                Top = 19
                Width = 198
                Height = 21
                DataField = 'DescClassificacao'
                DataSource = dtsManuBD
                TabOrder = 1
              end
            end
            object tshEndereco: TTabSheet
              Caption = 'Endere'#231'o'
              ImageIndex = 1
            end
          end
        end
      end
    end
  end
  inherited stbManutencaoBD: TStatusBar
    Top = 293
    Width = 582
    ExplicitTop = 293
    ExplicitWidth = 582
  end
  inherited pnlBotoes: TPanel
    Left = 510
    Height = 285
    ExplicitLeft = 510
    ExplicitHeight = 285
  end
  inherited cdsManuBD: TClientDataSetUrb
    ProviderName = 'dspPessoa'
    object cdsManuBDID_Pessoa: TIntegerField
      DisplayLabel = 'ID. Pessoa'
      FieldName = 'ID_Pessoa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDID_Tipo: TIntegerField
      FieldName = 'ID_Tipo'
      Required = True
      Visible = False
    end
    object cdsManuBDID_Classificacao: TIntegerField
      FieldName = 'ID_Classificacao'
      Required = True
      Visible = False
    end
    object cdsManuBDDescCalssificacao: TStringField
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
    object cdsManuBDEndereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'Endereco'
      Required = True
      Size = 50
    end
    object cdsManuBDMunicipio: TStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsManuBDUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsManuBDTelefone: TStringField
      FieldName = 'Telefone'
      Required = True
      Size = 15
    end
    object cdsManuBDNumLicencaFEEMA: TStringField
      DisplayLabel = 'N'#186' Licen'#231'a'
      FieldName = 'NumLicencaFEEMA'
      Size = 30
    end
  end
  inherited ppmRelatorios: TPopupMenu
    Left = 488
    Top = 116
  end
  object cdsPessoaFisica: TClientDataSetUrb
    Aggregates = <>
    IndexFieldNames = 'ID_Pessoa'
    MasterFields = 'ID_Pessoa'
    MasterSource = dtsManuBD
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspPessoaFisica'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 391
    Top = 5
    object cdsPessoaFisicaID_PessoaFisica: TIntegerField
      FieldName = 'ID_PessoaFisica'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaFisicaID_Pessoa: TIntegerField
      FieldName = 'ID_Pessoa'
      Required = True
    end
    object cdsPessoaFisicaID_Sexo: TIntegerField
      FieldName = 'ID_Sexo'
      Required = True
    end
    object cdsPessoaFisicaNomePrimeiro: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NomePrimeiro'
      Required = True
    end
    object cdsPessoaFisicaNomeRestante: TStringField
      DisplayLabel = 'Sobre-Nome'
      FieldName = 'NomeRestante'
      Required = True
      Size = 30
    end
    object cdsPessoaFisicaApelido: TStringField
      FieldName = 'Apelido'
    end
    object cdsPessoaFisicaDataNasc: TSQLTimeStampField
      FieldName = 'DataNasc'
      Required = True
    end
    object cdsPessoaFisicaID_Cargo: TIntegerField
      FieldName = 'ID_Cargo'
      Required = True
    end
    object cdsPessoaFisicaDescCargo: TStringField
      DisplayLabel = 'Cargo'
      FieldKind = fkLookup
      FieldName = 'DescCargo'
      LookupDataSet = cdsCargo
      LookupKeyFields = 'ID_Cargo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Cargo'
      Size = 30
      Lookup = True
    end
  end
  object cdsPessoaJuridica: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaJuridica'
    RemoteServer = frmPrincipal.SharedConnection
    BeforePost = cdsPessoaJuridicaBeforePost
    Left = 466
    Top = 5
    object cdsPessoaJuridicaID_PessoaJuridica: TIntegerField
      FieldName = 'ID_PessoaJuridica'
      Required = True
      Visible = False
    end
    object cdsPessoaJuridicaID_Pessoa: TIntegerField
      FieldName = 'ID_Pessoa'
      Required = True
      Visible = False
    end
    object cdsPessoaJuridicaRazaoSocial: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RazaoSocial'
      Required = True
      Size = 30
    end
  end
  object cdsClassificacao: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClassificacao'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 250
    Top = 31
  end
  object dtsPessoaFisica: TDataSource
    DataSet = cdsPessoaFisica
    Left = 419
    Top = 5
  end
  object cdsCargo: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCargo'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 391
    Top = 33
  end
  object dtsPessoaJuridica: TDataSource
    DataSet = cdsPessoaJuridica
    Left = 494
    Top = 5
  end
end
