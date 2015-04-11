object ConsultaPai: TConsultaPai
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Consulta'
  ClientHeight = 409
  ClientWidth = 610
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edt_Consulta: TEdit
    Left = 24
    Top = 24
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object btn_Consultar: TButton
    Left = 311
    Top = 22
    Width = 75
    Height = 25
    Caption = '&Consultar'
    TabOrder = 1
  end
  object ListViewConsulta: TListView
    Left = 24
    Top = 64
    Width = 553
    Height = 289
    Columns = <>
    TabOrder = 2
  end
  object btn_Novo: TButton
    Left = 222
    Top = 369
    Width = 75
    Height = 25
    Caption = '&Novo'
    TabOrder = 3
    OnClick = btn_NovoClick
  end
  object btn_Alterar: TButton
    Left = 311
    Top = 369
    Width = 75
    Height = 25
    Caption = '&Alterar'
    TabOrder = 4
    OnClick = btn_AlterarClick
  end
  object btn_Excluir: TButton
    Left = 408
    Top = 369
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 5
    OnClick = btn_ExcluirClick
  end
  object btn_Sair: TButton
    Left = 502
    Top = 369
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 6
    OnClick = btn_SairClick
  end
end
