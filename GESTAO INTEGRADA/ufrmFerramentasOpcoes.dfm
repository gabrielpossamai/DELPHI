inherited frmFerramentasOpcoes: TfrmFerramentasOpcoes
  Left = 342
  Top = 155
  Caption = 'Op'#231#245'es'
  ClientHeight = 319
  ClientWidth = 435
  OnCreate = FormCreate
  ExplicitWidth = 443
  ExplicitHeight = 346
  PixelsPerInch = 96
  TextHeight = 13
  object btnCancelar: TSpeedButton
    Left = 192
    Top = 285
    Width = 73
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '&Cancelar'
    OnClick = btnCancelarClick
  end
  object btnAplicar: TSpeedButton
    Left = 272
    Top = 285
    Width = 73
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '&Aplicar'
    OnClick = btnAplicarClick
  end
  object btnOk: TSpeedButton
    Left = 352
    Top = 285
    Width = 73
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '&Ok'
    OnClick = btnOkClick
  end
  object pgcOpcoes: TPageControl
    Left = 10
    Top = 10
    Width = 417
    Height = 268
    ActivePage = tshDadosSistema
    TabOrder = 0
    object tshDadosEmpresa: TTabSheet
      Caption = 'Empresa'
      object gbxEmpresaPrincipal: TGroupBox
        Left = 10
        Top = 3
        Width = 387
        Height = 128
        Caption = 'Principal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lblRazaoSocial: TLabel
          Left = 10
          Top = 20
          Width = 63
          Height = 13
          Caption = 'Raz'#227'o Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblNomeFantasia: TLabel
          Left = 10
          Top = 47
          Width = 71
          Height = 13
          Caption = 'Nome Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblCNPJ: TLabel
          Left = 10
          Top = 75
          Width = 27
          Height = 13
          Caption = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblInscEst: TLabel
          Left = 224
          Top = 75
          Width = 44
          Height = 13
          Caption = 'Insc. Est.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblSite: TLabel
          Left = 10
          Top = 103
          Width = 18
          Height = 13
          Caption = 'Site'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblInscMun: TLabel
          Left = 224
          Top = 103
          Width = 50
          Height = 13
          Caption = 'Insc. Mun.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object txtRazaoSocial: TEdit
          Left = 91
          Top = 12
          Width = 286
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 
            'S.W Com'#233'rcio e Servi'#231'os de Comunica'#231#227'o Multim'#237'dia de Internet Lt' +
            'da ME'
        end
        object txtNomeFantasia: TEdit
          Left = 91
          Top = 39
          Width = 286
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'Speedy West'
        end
        object txtCNPJ: TEdit
          Left = 91
          Top = 67
          Width = 122
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '08.890.198/0001-38'
        end
        object txtInscEst: TEdit
          Left = 275
          Top = 67
          Width = 103
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = '4023340'
        end
        object txtSite: TEdit
          Left = 91
          Top = 95
          Width = 122
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = 'http://www.speedywest.com.br'
        end
        object txtInscMun: TEdit
          Left = 275
          Top = 95
          Width = 103
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object gbxLogradouro: TGroupBox
        Left = 10
        Top = 137
        Width = 387
        Height = 92
        Caption = 'Logradouro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object lblEndereco: TLabel
          Left = 10
          Top = 30
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblTelefone: TLabel
          Left = 10
          Top = 57
          Width = 42
          Height = 13
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object txtEndereco: TEdit
          Left = 91
          Top = 22
          Width = 286
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object txtTelefone: TEdit
          Left = 91
          Top = 49
          Width = 286
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object tshDadosSistema: TTabSheet
      Caption = 'Sistema'
      ImageIndex = 1
      object gbxSistemaPrincipal: TGroupBox
        Left = 10
        Top = 3
        Width = 387
        Height = 128
        Caption = 'Principal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lblDescriao: TLabel
          Left = 10
          Top = 22
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblVersao: TLabel
          Left = 10
          Top = 51
          Width = 33
          Height = 13
          Caption = 'Vers'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object txtDescriao: TEdit
          Left = 92
          Top = 14
          Width = 286
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'Sistema de Gest'#227'o Administrativa Integrado'
        end
        object txtVersao: TEdit
          Left = 92
          Top = 43
          Width = 286
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '1.00.00'
        end
      end
    end
  end
end
