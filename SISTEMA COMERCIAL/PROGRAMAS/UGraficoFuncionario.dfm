object FrmGraficoFuncionario: TFrmGraficoFuncionario
  Left = 192
  Top = 124
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Gr'#225'fico de Funcion'#225'rios por Sal'#225'rio'
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
      'Funcion'#225'rios por Sal'#225'rio')
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
    object FunSalario: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      Title = 'Funcion'#225'rios'
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
  object QFunSalario: TADOQuery
    Connection = DM.Conexao
    Parameters = <>
    SQL.Strings = (
      
        'Select Count(*) as Qtde, FunSalario From Funcionarios Group By F' +
        'unSalario')
    Left = 424
    Top = 16
    object QFunSalarioQtde: TIntegerField
      FieldName = 'Qtde'
    end
    object QFunSalarioFunSalario: TBCDField
      FieldName = 'FunSalario'
      Precision = 19
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 384
    Top = 16
  end
end
