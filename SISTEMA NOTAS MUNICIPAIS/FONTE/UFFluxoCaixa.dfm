object FFFluxoCaixa: TFFFluxoCaixa
  Left = 462
  Top = 234
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Rech Center'
  ClientHeight = 141
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 416
    Height = 30
    Align = alTop
    Alignment = taCenter
    Caption = 'Fluxo de Caixa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -21
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 30
    Width = 416
    Height = 73
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 12
      Top = 17
      Width = 30
      Height = 16
      Caption = 'Grupo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btngrupo: TRxSpeedButton
      Left = 184
      Top = 14
      Width = 23
      Height = 22
      Hint = 'Abrir Cadastro'
      Flat = True
      Glyph.Data = {
        42060000424D360A000000000000360800002800000010000000100000000100
        1000030000000002000000000000000000000001000000000000007C0000E003
        00001F0000000000000000008000008000000080800080000000800080008080
        0000C0C0C000C0DCC000F0CAA600330000000000330033003300333300001616
        16001C1C1C002222220029292900555555004D4D4D004242420039393900807C
        FF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD0000FF33000000
        6600000099000000CC00003300000033330000336600003399000033CC000033
        FF00006600000066330000666600006699000066CC000066FF00009900000099
        330000996600009999000099CC000099FF0000CC000000CC330000CC660000CC
        990000CCCC0000CCFF0000FF660000FF990000FFCC0033FF0000FF0033003300
        6600330099003300CC003300FF00FF3300003333330033336600333399003333
        CC003333FF00336600003366330033666600336699003366CC003366FF003399
        00003399330033996600339999003399CC003399FF0033CC000033CC330033CC
        660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FFCC0033FF
        FF00660000006600330066006600660099006600CC006600FF00663300006633
        330066336600663399006633CC006633FF006666000066663300666666006666
        99006666CC00669900006699330066996600669999006699CC006699FF0066CC
        000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF990066FF
        CC00CC00FF00FF00CC009999000099339900990099009900CC00990000009933
        3300990066009933CC009900FF00996600009966330099336600996699009966
        CC009933FF009999330099996600999999009999CC009999FF0099CC000099CC
        330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC660099FF
        990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00CC009933
        0000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC6633009966
        6600CC669900CC66CC009966FF00CC990000CC993300CC996600CC999900CC99
        CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF
        0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF006600FF00
        9900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF660000FF66
        3300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF996600FF99
        9900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCC
        FF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FFFF00FF66
        6600FF66FF00FFFF66002100A5005F5F5F00777777008686860096969600CBCB
        CB00B2B2B200D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FB
        FF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
        0000FFFFFF001F7C205E205E205E205E205E205E205E205E205E205E205E205E
        1F7C1F7C1F7C205E846A0E77507F2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7FA76E
        63661F7C1F7C205EE972A76A947F4D7F4D7F4D7F4D7F4D7F4D7F4D7F4D7FC76E
        D97B205E1F7C205E4E7F205EB57F6F7F6F7F6F7F6F7F6F7F6F7F6F7F6F7FC86E
        D97B205E1F7C205E6F7F6362737B927F907F907F907F907F907F907F907FE96E
        D97B42621F7C205E907FC86E0C73D57FB17FB17FB17FB17FB17FB17FB17FE96E
        D97BD97B205E205EB17F6E7B6462FF7FD97FD97FD97FD97FD97FD97FD97F5373
        FD7FDA7F205E205ED27FD27F4262205E205E205E205E205E205E205E205E205E
        205E205E205E205ED37FD37FD37FD37FD37FD37FD37FD37FD37FD37FD37F215E
        1F7C1F7C1F7C205EFF7FF47FF47FF47FF47FF47FF47FF47FF47FF47FF47F215E
        1F7C1F7C1F7C1F7C205EFF7FF47FF47FF47F205E205E205E205E205E205E1F7C
        1F7C1F7C1F7C1F7C1F7C205E205E205E205E1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      OnClick = btngrupoClick
    end
    object Label1: TLabel
      Left = 227
      Top = 19
      Width = 20
      Height = 16
      Caption = 'Ano'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 12
      Top = 41
      Width = 58
      Height = 16
      Caption = 'Saldo Ant.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtgrupo: TWSEdit
      Left = 80
      Top = 17
      Width = 99
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 0
      OnKeyDown = txtgrupoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtano: TWSMaskEdit
      Left = 304
      Top = 17
      Width = 95
      height = 17
      BevelInner = bvNone
      EditMask = '9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      ParentShowHint = False
      TabOrder = 2
      Text = '    '
      OnKeyPress = txtanoKeyPress
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtsaldo: TWSEdit
      Left = 80
      Top = 41
      Width = 99
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 1
      Text = '0'
      OnKeyDown = txtgrupoKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 103
    Width = 416
    Height = 38
    Align = alBottom
    AutoSize = True
    BorderWidth = 2
    ButtonHeight = 30
    ButtonWidth = 88
    EdgeBorders = []
    EdgeOuter = esNone
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    Images = DM.ImageList
    List = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Wrapable = False
    object BtnImprimir: TToolButton
      Left = 0
      Top = 0
      Hint = 'Imprimir - F8'
      Caption = '&Imprimir'
      ImageIndex = 8
      OnClick = BtnImprimirClick
    end
    object ToolButton1: TToolButton
      Left = 88
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object btnsair: TToolButton
      Left = 96
      Top = 0
      Hint = 'Sair - Esc'
      Caption = '&Sair'
      ImageIndex = 12
      OnClick = btnsairClick
    end
  end
  object RLReport: TRLReport
    Left = 61
    Top = 125
    Width = 1123
    Height = 794
    DataSource = DSFluxo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    Visible = False
    BeforePrint = RLReportBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 231
      Width = 1047
      Height = 55
      BandType = btFooter
      object RLDBText1: TRLDBText
        Left = 189
        Top = 3
        Width = 524
        Height = 19
        AutoSize = False
        DataField = 'RECNOME'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBImage1: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'RECLOGO'
        DataSource = DM.DSRechCenter
        Stretch = True
      end
      object RLDBText2: TRLDBText
        Left = 190
        Top = 23
        Width = 283
        Height = 15
        AutoSize = False
        DataField = 'RECENDERECO'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 475
        Top = 23
        Width = 238
        Height = 15
        AutoSize = False
        DataField = 'RECBAIRRO'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 190
        Top = 39
        Width = 149
        Height = 15
        AutoSize = False
        DataField = 'RECCIDADE'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 340
        Top = 39
        Width = 131
        Height = 15
        AutoSize = False
        DataField = 'RECTELEFONE'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 474
        Top = 39
        Width = 239
        Height = 15
        AutoSize = False
        DataField = 'RECEMAIL'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 56
      BandType = btHeader
      object RLDBImage2: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 56
        Align = faLeft
        DataField = 'EMPFIGURA'
        DataSource = DM.DSParamEmp
        Stretch = True
      end
      object RLDBRichText1: TRLDBRichText
        Left = 181
        Top = 0
        Width = 866
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
        DataSource = DM.DSParamEmp
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 94
      Width = 1047
      Height = 32
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 443
        Top = 0
        Width = 160
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Fluxo de Caixa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 126
      Width = 1047
      Height = 36
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel2: TRLLabel
        Left = 6
        Top = 3
        Width = 35
        Height = 16
        Caption = 'Grupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 314
        Top = 3
        Width = 23
        Height = 16
        Caption = 'Fev'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 383
        Top = 3
        Width = 27
        Height = 16
        Caption = 'Mar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 523
        Top = 3
        Width = 25
        Height = 16
        Caption = 'Mai'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 453
        Top = 3
        Width = 25
        Height = 16
        Caption = 'Abr'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 242
        Top = 3
        Width = 24
        Height = 16
        Caption = 'Jan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 596
        Top = 3
        Width = 24
        Height = 16
        Caption = 'Jun'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 738
        Top = 3
        Width = 25
        Height = 16
        Caption = 'Ago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 809
        Top = 3
        Width = 24
        Height = 16
        Caption = 'Set'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 949
        Top = 3
        Width = 25
        Height = 16
        Caption = 'Nov'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 877
        Top = 3
        Width = 25
        Height = 16
        Caption = 'Out'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 667
        Top = 3
        Width = 21
        Height = 16
        Caption = 'Jul'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 1019
        Top = 3
        Width = 25
        Height = 16
        Caption = 'Dez'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 153
        Top = 19
        Width = 39
        Height = 16
        Caption = 'Saldo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblsaldo1: TRLLabel
        Left = 195
        Top = 20
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldo2: TRLLabel
        Left = 266
        Top = 20
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldo4: TRLLabel
        Left = 408
        Top = 20
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldo3: TRLLabel
        Left = 337
        Top = 20
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldo8: TRLLabel
        Left = 692
        Top = 20
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldo7: TRLLabel
        Left = 621
        Top = 20
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldo6: TRLLabel
        Left = 550
        Top = 20
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldo5: TRLLabel
        Left = 479
        Top = 20
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldo12: TRLLabel
        Left = 976
        Top = 20
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldo11: TRLLabel
        Left = 905
        Top = 20
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldo10: TRLLabel
        Left = 834
        Top = 20
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldo9: TRLLabel
        Left = 763
        Top = 20
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 215
      Width = 1047
      Height = 16
      BandType = btSummary
      object RLLabel8: TRLLabel
        Left = 7
        Top = -1
        Width = 39
        Height = 16
        Caption = 'Saldo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblsaldofin1: TRLLabel
        Left = 195
        Top = 0
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldofin2: TRLLabel
        Left = 266
        Top = 0
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldofin4: TRLLabel
        Left = 408
        Top = 0
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldofin3: TRLLabel
        Left = 337
        Top = 0
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldofin8: TRLLabel
        Left = 692
        Top = 0
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldofin7: TRLLabel
        Left = 621
        Top = 0
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldofin6: TRLLabel
        Left = 550
        Top = 0
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldofin5: TRLLabel
        Left = 479
        Top = 0
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldofin12: TRLLabel
        Left = 976
        Top = 0
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldofin11: TRLLabel
        Left = 905
        Top = 0
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldofin10: TRLLabel
        Left = 834
        Top = 0
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblsaldofin9: TRLLabel
        Left = 763
        Top = 0
        Width = 70
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 162
      Width = 1047
      Height = 53
      DataFields = 'TMPTIPO'
      object RLBand7: TRLBand
        Left = 0
        Top = 0
        Width = 1047
        Height = 17
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel18: TRLLabel
          Left = 7
          Top = 0
          Width = 33
          Height = 16
          Caption = 'Tipo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 42
          Top = 1
          Width = 74
          Height = 15
          AutoSize = False
          DataField = 'TMPTIPO'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 31
        Width = 1047
        Height = 18
        BandType = btFooter
        object RLLabel17: TRLLabel
          Left = 5
          Top = 0
          Width = 29
          Height = 14
          Caption = 'Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBResult1: TRLDBResult
          Left = 195
          Top = 2
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR1'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 266
          Top = 2
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR2'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult3: TRLDBResult
          Left = 408
          Top = 2
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR4'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult4: TRLDBResult
          Left = 337
          Top = 2
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR3'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult5: TRLDBResult
          Left = 692
          Top = 2
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR8'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult6: TRLDBResult
          Left = 621
          Top = 2
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR7'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult7: TRLDBResult
          Left = 550
          Top = 2
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR6'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult8: TRLDBResult
          Left = 479
          Top = 2
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR5'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult9: TRLDBResult
          Left = 976
          Top = 2
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR12'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult10: TRLDBResult
          Left = 905
          Top = 2
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR11'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult11: TRLDBResult
          Left = 834
          Top = 2
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR10'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
        object RLDBResult12: TRLDBResult
          Left = 763
          Top = 2
          Width = 70
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR9'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
          ResetAfterPrint = True
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 17
        Width = 1047
        Height = 14
        object RLDBText7: TRLDBText
          Left = 2
          Top = 0
          Width = 190
          Height = 13
          AutoSize = False
          DataField = 'TMPNOMEGRUPO'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 195
          Top = 0
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR1'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 266
          Top = 0
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR2'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 408
          Top = 0
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR4'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 337
          Top = 0
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR3'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 479
          Top = 0
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR5'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 550
          Top = 0
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR6'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 692
          Top = 0
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR8'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 621
          Top = 0
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR7'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 763
          Top = 0
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR9'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 834
          Top = 0
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR10'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 977
          Top = 0
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR12'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 906
          Top = 0
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR11'
          DataSource = DSFluxo
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object QRel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT EXTRACT(MONTH FROM CAIDATA) AS MES, CAIGRUPO, GRUCAINOME,' +
        ' SUM(CAIENTRADA) AS ENTRADA, SUM(CAISAIDA) AS SAIDA'
      'FROM TCAIXA INNER JOIN TGRUPOCAIXA ON GRUCAICOD = CAIGRUPO'
      'GROUP BY 1, CAIGRUPO, GRUCAINOME')
    SQLConnection = DM.SQLConnection
    Left = 56
    Top = 6
    object QRelMES: TSmallintField
      FieldName = 'MES'
    end
    object QRelCAIGRUPO: TIntegerField
      FieldName = 'CAIGRUPO'
    end
    object QRelGRUCAINOME: TStringField
      FieldName = 'GRUCAINOME'
      Size = 50
    end
    object QRelENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Precision = 15
      Size = 2
    end
    object QRelSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Precision = 15
      Size = 2
    end
  end
  object DSPRel: TDataSetProvider
    DataSet = QRel
    Left = 88
    Top = 6
  end
  object CDSRel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRel'
    Left = 120
    Top = 6
    object CDSRelMES: TSmallintField
      FieldName = 'MES'
    end
    object CDSRelCAIGRUPO: TIntegerField
      FieldName = 'CAIGRUPO'
    end
    object CDSRelGRUCAINOME: TStringField
      FieldName = 'GRUCAINOME'
      Size = 50
    end
    object CDSRelENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Precision = 15
      Size = 2
    end
    object CDSRelSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Precision = 15
      Size = 2
    end
  end
  object DSFluxo: TDataSource
    DataSet = CDSFluxo
    Left = 344
    Top = 7
  end
  object CDSFluxo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFluxo'
    Left = 312
    Top = 6
    object CDSFluxoTMPTIPO: TStringField
      FieldName = 'TMPTIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 1
    end
    object CDSFluxoTMPGRUPO: TIntegerField
      FieldName = 'TMPGRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSFluxoTMPNOMEGRUPO: TStringField
      FieldName = 'TMPNOMEGRUPO'
      Size = 50
    end
    object CDSFluxoTMPVALOR1: TFloatField
      FieldName = 'TMPVALOR1'
    end
    object CDSFluxoTMPVALOR2: TFloatField
      FieldName = 'TMPVALOR2'
    end
    object CDSFluxoTMPVALOR3: TFloatField
      FieldName = 'TMPVALOR3'
    end
    object CDSFluxoTMPVALOR4: TFloatField
      FieldName = 'TMPVALOR4'
    end
    object CDSFluxoTMPVALOR5: TFloatField
      FieldName = 'TMPVALOR5'
    end
    object CDSFluxoTMPVALOR6: TFloatField
      FieldName = 'TMPVALOR6'
    end
    object CDSFluxoTMPVALOR7: TFloatField
      FieldName = 'TMPVALOR7'
    end
    object CDSFluxoTMPVALOR8: TFloatField
      FieldName = 'TMPVALOR8'
    end
    object CDSFluxoTMPVALOR9: TFloatField
      FieldName = 'TMPVALOR9'
    end
    object CDSFluxoTMPVALOR10: TFloatField
      FieldName = 'TMPVALOR10'
    end
    object CDSFluxoTMPVALOR11: TFloatField
      FieldName = 'TMPVALOR11'
    end
    object CDSFluxoTMPVALOR12: TFloatField
      FieldName = 'TMPVALOR12'
    end
  end
  object DSPFluxo: TDataSetProvider
    DataSet = QFluxo
    Left = 280
    Top = 6
  end
  object QFluxo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT TMPTIPO, TMPGRUPO, TMPNOMEGRUPO,'
      'TMPVALOR1,TMPVALOR2,TMPVALOR3,TMPVALOR4,TMPVALOR5,TMPVALOR6,'
      'TMPVALOR7,TMPVALOR8,TMPVALOR9,TMPVALOR10,TMPVALOR11,TMPVALOR12'
      'FROM TTMPFLUXO'
      'ORDER BY TMPTIPO, TMPGRUPO')
    SQLConnection = DM.SQLConnection
    Left = 248
    Top = 6
    object QFluxoTMPTIPO: TStringField
      FieldName = 'TMPTIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 1
    end
    object QFluxoTMPGRUPO: TIntegerField
      FieldName = 'TMPGRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFluxoTMPNOMEGRUPO: TStringField
      FieldName = 'TMPNOMEGRUPO'
      Size = 50
    end
    object QFluxoTMPVALOR1: TFloatField
      FieldName = 'TMPVALOR1'
    end
    object QFluxoTMPVALOR2: TFloatField
      FieldName = 'TMPVALOR2'
    end
    object QFluxoTMPVALOR3: TFloatField
      FieldName = 'TMPVALOR3'
    end
    object QFluxoTMPVALOR4: TFloatField
      FieldName = 'TMPVALOR4'
    end
    object QFluxoTMPVALOR5: TFloatField
      FieldName = 'TMPVALOR5'
    end
    object QFluxoTMPVALOR6: TFloatField
      FieldName = 'TMPVALOR6'
    end
    object QFluxoTMPVALOR7: TFloatField
      FieldName = 'TMPVALOR7'
    end
    object QFluxoTMPVALOR8: TFloatField
      FieldName = 'TMPVALOR8'
    end
    object QFluxoTMPVALOR9: TFloatField
      FieldName = 'TMPVALOR9'
    end
    object QFluxoTMPVALOR10: TFloatField
      FieldName = 'TMPVALOR10'
    end
    object QFluxoTMPVALOR11: TFloatField
      FieldName = 'TMPVALOR11'
    end
    object QFluxoTMPVALOR12: TFloatField
      FieldName = 'TMPVALOR12'
    end
  end
end
