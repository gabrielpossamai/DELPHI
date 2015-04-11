object FrmPesCliCid: TFrmPesCliCid
  Left = 442
  Top = 427
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Seleciona Clientes por Cidade'
  ClientHeight = 86
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 18
    Top = 23
    Width = 289
    Height = 41
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 44
      Height = 13
      Caption = 'Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtCidade: TEdit
      Left = 64
      Top = 10
      Width = 153
      Height = 21
      TabOrder = 0
      OnKeyPress = EdtCidadeKeyPress
    end
    object Button1: TButton
      Left = 232
      Top = 8
      Width = 49
      Height = 25
      Caption = '&OK'
      Default = True
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
