object FrmCadPadrao: TFrmCadPadrao
  Left = 327
  Top = 118
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Sistema Comercial 1.0'
  ClientHeight = 442
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000330000000000000000000000033303303303300000000000000
    0003303330333003003300000000000000033003330330002333000000000000
    0030000033003033333000000000000033333330000003330003330000000803
    33333333333333300233330000000F033333333333333302333BB03000004F83
    33333333333333333BB003BB00004FF3333333333333B33BB0033BBB00004FF3
    33333333B3BB3BB0033BBBB000004FF83B333B3B3B3BBBB03BBBBB0300F04FFF
    33B3B3B3BBBBBBBBBBBB00330FF04FFF8B3B3333BBBBBBBBBB0033330FF044FF
    F8BBB03033BBBBB330333330FFF444FFF8BB0BB3003B330003333330FF44444F
    F88B3BBB300000033333B33FFF44444FFF3BB0BBB3000333B33BB38FF4444444
    FF003B0BB333333BBBBBB3FFF44444444FF00030BBBBBBBBBBBBBBFF44444444
    0000000303BBB3300000BFF444444400000000000000000000000FF444440000
    0000000000000000000000444444000000000000000000000000000044440000
    0000000000000000000000000444000000000000000000000000000000040000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFF1FFFFF8003FFFC0000FFF800007FF800007FE000003F0000
    001F0000001F0000000F00000007000000070000000000000000000000000000
    00000000000000000000000000000000000000000000000000000000000000C0
    00000FE01F003FFFFF80FFFFFFC0FFFFFFF0FFFFFFF8FFFFFFFEFFFFFFFF}
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 624
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 18
      Width = 93
      Height = 13
      Caption = 'Campo pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbPesquisar: TSpeedButton
      Left = 272
      Top = 18
      Width = 71
      Height = 22
      Caption = '&Pesquisar'
    end
    object sbImprimir: TSpeedButton
      Left = 432
      Top = 18
      Width = 87
      Height = 22
      Caption = '&Imprimir'
    end
    object sbFechar: TSpeedButton
      Left = 536
      Top = 18
      Width = 81
      Height = 22
      Caption = '&Fechar'
      OnClick = sbFecharClick
    end
    object ValorCampo: TEdit
      Left = 104
      Top = 18
      Width = 161
      Height = 21
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 57
    Width = 624
    Height = 176
    Align = alTop
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 620
      Height = 159
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 233
    Width = 624
    Height = 48
    Align = alTop
    TabOrder = 2
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 15
      Width = 240
      Height = 31
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      TabOrder = 0
    end
    object DBNavigator2: TDBNavigator
      Left = 242
      Top = 15
      Width = 240
      Height = 31
      VisibleButtons = [nbInsert, nbDelete, nbEdit]
      Align = alLeft
      TabOrder = 1
      BeforeAction = DBNavigator2BeforeAction
    end
    object DBNavigator3: TDBNavigator
      Left = 482
      Top = 15
      Width = 240
      Height = 31
      VisibleButtons = [nbPost, nbCancel, nbRefresh]
      Align = alLeft
      TabOrder = 2
      OnClick = DBNavigator3Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 281
    Width = 624
    Height = 144
    Align = alTop
    TabOrder = 3
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 423
    Width = 624
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
end
