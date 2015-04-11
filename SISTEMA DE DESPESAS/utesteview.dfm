object Form1: TForm1
  Left = 178
  Top = 202
  Width = 696
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 400
    Top = 144
    Width = 250
    Height = 200
    TabOrder = 0
    object cxGrid1DBCardView1: TcxGridDBCardView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = srcCadtipoDespesas
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBCardView1
    end
  end
  object srcCadtipoDespesas: TDataSource
    DataSet = QryCadTipoDespesas
    Left = 516
    Top = 284
  end
  object QryCadTipoDespesas: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 516
    Top = 256
  end
end
