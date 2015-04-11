object FrmGraficoFornecedor: TFrmGraficoFornecedor
  Left = 190
  Top = 103
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gr'#225'fico de Fornecedores por Cidade'
  ClientHeight = 442
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
    Height = 442
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'Fornecedores por Cidade')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
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
    object ForCid: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      Title = 'Cidades'
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
  object QForCid: TADOQuery
    Connection = DM.Conexao
    Parameters = <>
    SQL.Strings = (
      
        'Select Count(*) as Qtde, ForCid From Fornecedores Group By ForCi' +
        'd')
    Left = 480
    Top = 8
    object QForCidQtde: TIntegerField
      FieldName = 'Qtde'
    end
    object QForCidForCid: TWideStringField
      FieldName = 'ForCid'
      Size = 35
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 440
    Top = 8
  end
end
