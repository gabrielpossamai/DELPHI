object Form1F: TForm1F
  Left = 285
  Top = 140
  Width = 528
  Height = 268
  Caption = 'Form1F'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 224
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 209
    Height = 21
    TabOrder = 1
    Text = 'Teste3.xls'
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 56
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Racas33i: TTable
    Active = True
    DatabaseName = 'DBDEMOS'
    TableName = 'animals.dbf'
    Left = 424
    Top = 104
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'XLS'
    Filter = 'Arquivo Excel (*.xls)|*.xls'
    InitialDir = 'c:\temp'
    Left = 424
    Top = 156
  end
  object QMovim05i: TQuery
    DatabaseName = 'DBDEMOS'
    SQL.Strings = (
      'select * from  animals')
    Left = 424
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = Racas33i
    Left = 424
    Top = 40
  end
end
