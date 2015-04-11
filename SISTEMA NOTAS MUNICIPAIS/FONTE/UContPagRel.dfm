object FContPagRel: TFContPagRel
  Left = -3
  Top = 93
  Width = 1032
  Height = 748
  HorzScrollBar.Position = 129
  Caption = 'FContPagRel'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport: TRLReport
    Left = -59
    Top = 34
    Width = 1123
    Height = 794
    DataSource = DM.DSContPag
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    BeforePrint = RLReportBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 187
      Width = 1047
      Height = 57
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
      Height = 36
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 375
        Top = 2
        Width = 296
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Contas a Pagar'
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
      Top = 130
      Width = 1047
      Height = 21
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 3
        Top = 2
        Width = 63
        Height = 16
        Caption = 'Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 68
        Top = 2
        Width = 46
        Height = 16
        Caption = 'Emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 374
        Top = 2
        Width = 36
        Height = 16
        Caption = 'Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 140
        Top = 2
        Width = 41
        Height = 16
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 580
        Top = 2
        Width = 32
        Height = 16
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 627
        Top = 2
        Width = 59
        Height = 16
        Caption = 'Acr'#233'scimo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 710
        Top = 2
        Width = 53
        Height = 16
        Caption = 'Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 955
        Top = 2
        Width = 33
        Height = 16
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 852
        Top = 2
        Width = 61
        Height = 16
        Caption = 'Valor Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 791
        Top = 2
        Width = 46
        Height = 16
        Caption = 'Entrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 994
        Top = 2
        Width = 45
        Height = 16
        Caption = 'Sita'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 151
      Width = 1047
      Height = 20
      BeforePrint = RLBand5BeforePrint
      object RLDBText7: TRLDBText
        Left = 5
        Top = 2
        Width = 60
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'PAGDOCUMENTO'
        DataSource = DM.DSContPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 67
        Top = 2
        Width = 73
        Height = 15
        AutoSize = False
        DataField = 'PAGEMISSAO'
        DataSource = DM.DSContPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 141
        Top = 2
        Width = 228
        Height = 15
        AutoSize = False
        DataField = 'Cliente'
        DataSource = DM.DSContPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 373
        Top = 2
        Width = 164
        Height = 15
        AutoSize = False
        DataField = 'Banco'
        DataSource = DM.DSContPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 538
        Top = 2
        Width = 74
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PAGVALOR'
        DataSource = DM.DSContPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 613
        Top = 2
        Width = 74
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PAGACRESCIMO'
        DataSource = DM.DSContPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 763
        Top = 2
        Width = 74
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PAGENTRADA'
        DataSource = DM.DSContPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText14: TRLDBText
        Left = 688
        Top = 2
        Width = 74
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PAGDESCONTO'
        DataSource = DM.DSContPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 913
        Top = 2
        Width = 74
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PAGTOTAL'
        DataSource = DM.DSContPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 838
        Top = 2
        Width = 74
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PAGVALORPAGO'
        DataSource = DM.DSContPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 989
        Top = 2
        Width = 56
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PAGSITUACAO'
        DataSource = DM.DSContPag
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand11: TRLBand
      Left = 38
      Top = 171
      Width = 1047
      Height = 16
      BandType = btSummary
      BeforePrint = RLBand11BeforePrint
      object RLLabel16: TRLLabel
        Left = 491
        Top = 0
        Width = 38
        Height = 16
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblvalor: TRLLabel
        Left = 537
        Top = 0
        Width = 74
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
      object lblacrescimo: TRLLabel
        Left = 612
        Top = 0
        Width = 74
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
      object lblentrada: TRLLabel
        Left = 762
        Top = 0
        Width = 74
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
      object lbldesconto: TRLLabel
        Left = 687
        Top = 0
        Width = 74
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
      object lbltotal: TRLLabel
        Left = 912
        Top = 0
        Width = 74
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
      object lblvalorpago: TRLLabel
        Left = 837
        Top = 0
        Width = 74
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
  end
  object RLReportVcto: TRLReport
    Left = 20
    Top = 323
    Width = 794
    Height = 1123
    DataSource = DSVcto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    BeforePrint = RLReportVctoBeforePrint
    object RLBand6: TRLBand
      Left = 26
      Top = 187
      Width = 742
      Height = 57
      BandType = btFooter
      object RLDBText18: TRLDBText
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
      object RLDBImage3: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'RECLOGO'
        DataSource = DM.DSRechCenter
        Stretch = True
      end
      object RLDBText19: TRLDBText
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
      object RLDBText20: TRLDBText
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
      object RLDBText21: TRLDBText
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
      object RLDBText22: TRLDBText
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
      object RLDBText23: TRLDBText
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
    object RLBand7: TRLBand
      Left = 26
      Top = 38
      Width = 742
      Height = 56
      BandType = btHeader
      object RLDBImage4: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 56
        Align = faLeft
        DataField = 'EMPFIGURA'
        DataSource = DM.DSParamEmp
        Stretch = True
      end
      object RLDBRichText2: TRLDBRichText
        Left = 181
        Top = 0
        Width = 561
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
        DataSource = DM.DSParamEmp
      end
    end
    object RLBand8: TRLBand
      Left = 26
      Top = 94
      Width = 742
      Height = 36
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel13: TRLLabel
        Left = 146
        Top = 2
        Width = 450
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Contas a Pagar - Vencimentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand9: TRLBand
      Left = 26
      Top = 130
      Width = 742
      Height = 21
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel14: TRLLabel
        Left = 3
        Top = 2
        Width = 63
        Height = 16
        Caption = 'Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 68
        Top = 2
        Width = 46
        Height = 16
        Caption = 'Emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 140
        Top = 2
        Width = 41
        Height = 16
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 378
        Top = 2
        Width = 65
        Height = 16
        Caption = 'Valor Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 452
        Top = 2
        Width = 65
        Height = 16
        Caption = 'Vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 561
        Top = 2
        Width = 32
        Height = 16
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 681
        Top = 2
        Width = 51
        Height = 16
        Caption = 'Situa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 607
        Top = 2
        Width = 61
        Height = 16
        Caption = 'Pagamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand10: TRLBand
      Left = 26
      Top = 151
      Width = 742
      Height = 20
      BeforePrint = RLBand10BeforePrint
      object RLDBText24: TRLDBText
        Left = 5
        Top = 2
        Width = 60
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'PAGDOCUMENTO'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText25: TRLDBText
        Left = 67
        Top = 2
        Width = 73
        Height = 15
        AutoSize = False
        DataField = 'PAGEMISSAO'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText26: TRLDBText
        Left = 141
        Top = 2
        Width = 228
        Height = 15
        AutoSize = False
        DataField = 'CLINOME'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText28: TRLDBText
        Left = 370
        Top = 2
        Width = 74
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PAGVALOR'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText29: TRLDBText
        Left = 445
        Top = 2
        Width = 74
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITEDATA'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText30: TRLDBText
        Left = 595
        Top = 2
        Width = 74
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITEPAGAMENTO'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText31: TRLDBText
        Left = 520
        Top = 2
        Width = 74
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITEVALOR'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText33: TRLDBText
        Left = 670
        Top = 2
        Width = 67
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITESITUACAO'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand12: TRLBand
      Left = 26
      Top = 171
      Width = 742
      Height = 16
      BandType = btSummary
      BeforePrint = RLBand12BeforePrint
      object RLLabel21: TRLLabel
        Left = 482
        Top = 0
        Width = 38
        Height = 16
        Caption = 'Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblitevalor: TRLLabel
        Left = 521
        Top = 0
        Width = 74
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
      object RLDBResult1: TRLDBResult
        Left = 32
        Top = 0
        Width = 154
        Height = 16
        DataField = 'PAGDOCUMENTO'
        DataSource = DSVcto
        Info = riSum
      end
    end
  end
  object Qvcto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT PAGDOCUMENTO, PAGEMISSAO, PAGVALOR, CLINOME, ITEDATA, ITE' +
        'VALOR, ITEPAGAMENTO, ITESITUACAO'
      'FROM TCONTPAG'
      '    LEFT OUTER JOIN TCLIENTE ON CLICOD = PAGCLIENTE'
      '    LEFT OUTER JOIN TBANCO ON BANCOD = PAGBANCO'
      '    INNER JOIN TITEMCONTPAG ON ITEDOCUMENTO = PAGDOCUMENTO'
      'WHERE PAGDOCUMENTO > 0'
      'ORDER BY ITEDATA, CLINOME, PAGDOCUMENTO')
    SQLConnection = DM.SQLConnection
    Left = 16
    Top = 32
    object QvctoPAGDOCUMENTO: TIntegerField
      FieldName = 'PAGDOCUMENTO'
      Required = True
    end
    object QvctoPAGEMISSAO: TDateField
      FieldName = 'PAGEMISSAO'
      Required = True
    end
    object QvctoPAGVALOR: TFMTBCDField
      FieldName = 'PAGVALOR'
      Precision = 15
      Size = 2
    end
    object QvctoCLINOME: TStringField
      FieldName = 'CLINOME'
      Size = 100
    end
    object QvctoITEDATA: TDateField
      FieldName = 'ITEDATA'
      Required = True
    end
    object QvctoITEVALOR: TFMTBCDField
      FieldName = 'ITEVALOR'
      Precision = 15
      Size = 2
    end
    object QvctoITEPAGAMENTO: TDateField
      FieldName = 'ITEPAGAMENTO'
    end
    object QvctoITESITUACAO: TStringField
      FieldName = 'ITESITUACAO'
      Size = 10
    end
  end
  object CDSVcto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVcto'
    Left = 80
    Top = 32
    object CDSVctoPAGDOCUMENTO: TIntegerField
      FieldName = 'PAGDOCUMENTO'
      Required = True
      DisplayFormat = '0000'
    end
    object CDSVctoPAGEMISSAO: TDateField
      FieldName = 'PAGEMISSAO'
      Required = True
    end
    object CDSVctoPAGVALOR: TFMTBCDField
      FieldName = 'PAGVALOR'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CDSVctoCLINOME: TStringField
      FieldName = 'CLINOME'
      Size = 100
    end
    object CDSVctoITEDATA: TDateField
      FieldName = 'ITEDATA'
      Required = True
    end
    object CDSVctoITEVALOR: TFMTBCDField
      FieldName = 'ITEVALOR'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CDSVctoITEPAGAMENTO: TDateField
      FieldName = 'ITEPAGAMENTO'
    end
    object CDSVctoITESITUACAO: TStringField
      FieldName = 'ITESITUACAO'
      Size = 10
    end
  end
  object DSPVcto: TDataSetProvider
    DataSet = Qvcto
    Left = 48
    Top = 32
  end
  object DSVcto: TDataSource
    DataSet = CDSVcto
    Left = 112
    Top = 32
  end
end
