object FCalendario: TFCalendario
  Left = 231
  Top = 160
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Rech Center'
  ClientHeight = 381
  ClientWidth = 373
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MonthCalendar1: TMonthCalendar
    Left = 0
    Top = 0
    Width = 373
    Height = 357
    Align = alClient
    CalColors.TextColor = clTeal
    CalColors.TitleBackColor = clNavy
    CalColors.TitleTextColor = clTeal
    Date = 38556.034694375000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = 33023
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 357
    Width = 373
    Height = 24
    Align = alBottom
    Caption = 'Panel1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 33023
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object ToolBarNavegacao: TToolBar
      Left = 1
      Top = 2
      Width = 371
      Height = 21
      Align = alBottom
      AutoSize = True
      ButtonHeight = 21
      ButtonWidth = 88
      EdgeBorders = []
      Flat = True
      Images = DM.ImageListPageControl
      Indent = 150
      List = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object btnsair: TToolButton
        Left = 150
        Top = 0
        Hint = 'Sair - Esc'
        ImageIndex = 3
        OnClick = btnsairClick
      end
    end
  end
end
