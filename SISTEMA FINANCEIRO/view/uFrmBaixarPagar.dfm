object frmBaixarPagar: TfrmBaixarPagar
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Baixar documento'
  ClientHeight = 271
  ClientWidth = 361
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 345
    Height = 145
    Caption = ' Documento: '
    TabOrder = 0
    object Label2: TLabel
      Left = 9
      Top = 19
      Width = 80
      Height = 18
      Caption = 'Documento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblDocumento: TLabel
      Left = 95
      Top = 19
      Width = 102
      Height = 18
      Caption = 'lblDocumento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 9
      Top = 43
      Width = 51
      Height = 18
      Caption = 'Parcela:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblParcela: TLabel
      Left = 95
      Top = 43
      Width = 102
      Height = 18
      Caption = 'lblDocumento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 67
      Width = 81
      Height = 18
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblVencimento: TLabel
      Left = 95
      Top = 67
      Width = 102
      Height = 18
      Caption = 'lblDocumento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblVlrParcela: TLabel
      Left = 95
      Top = 91
      Width = 102
      Height = 18
      Caption = 'lblDocumento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 91
      Width = 72
      Height = 18
      Caption = 'Vlr.Parcela:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 10
      Top = 115
      Width = 74
      Height = 18
      Caption = 'Vlr.Abatido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblVlrAbatido: TLabel
      Left = 95
      Top = 115
      Width = 102
      Height = 18
      Caption = 'lblDocumento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 159
    Width = 345
    Height = 105
    Caption = ' Detalhes: '
    TabOrder = 1
    object Label6: TLabel
      Left = 8
      Top = 21
      Width = 62
      Height = 13
      Caption = 'Observa'#231#227'o:'
    end
    object Label7: TLabel
      Left = 8
      Top = 48
      Width = 28
      Height = 13
      Caption = 'Valor:'
    end
    object edtObservacao: TEdit
      Left = 76
      Top = 18
      Width = 261
      Height = 21
      MaxLength = 255
      TabOrder = 0
    end
    object edtValor: TtpEdit
      Left = 76
      Top = 45
      Width = 121
      Height = 21
      Alignment = taRightJustify
      CharCase = ecUpperCase
      TabOrder = 1
      Text = '0,00'
      Caracter = tcReal
      UF = '[Only for Check = ckIe ]'
    end
    object btnBaixar: TBitBtn
      Left = 76
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Baixar'
      TabOrder = 2
    end
  end
end
