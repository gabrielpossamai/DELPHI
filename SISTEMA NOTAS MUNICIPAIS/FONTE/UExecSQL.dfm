object FExecSQL: TFExecSQL
  Left = 192
  Top = 110
  Width = 545
  Height = 361
  Caption = 'FExecSQL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 537
    Height = 30
    Align = alTop
    Alignment = taCenter
    Caption = 'Executar Comando'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -21
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo: TMemo
    Left = 0
    Top = 30
    Width = 537
    Height = 267
    Align = alClient
    TabOrder = 0
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 297
    Width = 537
    Height = 30
    Align = alBottom
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 68
    EdgeBorders = []
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    Images = DM.ImageList
    List = True
    ParentFont = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 1
    object BtnSalvar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Salvar - F12'
      Caption = 'Salvar'
      ImageIndex = 14
      OnClick = BtnSalvarClick
    end
    object ToolButton22: TToolButton
      Left = 68
      Top = 0
      Width = 8
      Caption = 'ToolButton22'
      ImageIndex = 12
      Style = tbsSeparator
    end
    object btnsair: TToolButton
      Left = 76
      Top = 0
      Hint = 'Sair - Esc'
      Caption = 'Sair'
      ImageIndex = 12
      OnClick = btnsairClick
    end
  end
end
