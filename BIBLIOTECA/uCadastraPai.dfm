object CadastraPai: TCadastraPai
  Left = 0
  Top = 0
  Caption = 'Cadastra'
  ClientHeight = 299
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Codigo: TLabel
    Left = 24
    Top = 24
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object edt_Codigo: TEdit
    Left = 24
    Top = 43
    Width = 65
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object btn_Salvar: TButton
    Left = 142
    Top = 256
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 1
    OnClick = btn_SalvarClick
  end
  object btn_Sair: TButton
    Left = 238
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Sai&r'
    TabOrder = 2
    OnClick = btn_SairClick
  end
end
