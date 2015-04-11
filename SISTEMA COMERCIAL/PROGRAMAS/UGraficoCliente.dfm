object FrmGraficoCliente: TFrmGraficoCliente
  Left = 346
  Top = 146
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gr'#225'fico de Clientes por Cidade'
  ClientHeight = 462
  ClientWidth = 624
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
  object chtGrafico: TChart
    Left = 0
    Top = 0
    Width = 624
    Height = 462
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Clientes por Cidade')
    View3D = False
    Align = alClient
    TabOrder = 0
    object sbImprimir: TSpeedButton
      Left = 528
      Top = 8
      Width = 73
      Height = 25
      Caption = '&Imprimir'
      OnClick = sbImprimirClick
    end
    object CliCid: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      Title = 'Cidades'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object QCliCid: TADOQuery
    Connection = DM.Conexao
    Parameters = <>
    SQL.Strings = (
      'Select Count(*) as Qtde, CliCid From Clientes Group By CliCid')
    Left = 464
    Top = 8
    object QCliCidQtde: TIntegerField
      FieldName = 'Qtde'
    end
    object QCliCidCliCid: TWideStringField
      FieldName = 'CliCid'
      Size = 35
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 424
    Top = 8
  end
end
