object FContRecApaeRel: TFContRecApaeRel
  Left = -3
  Top = 93
  Width = 1032
  Height = 748
  VertScrollBar.Position = 61
  Caption = 'FContRecApaeRel'
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
    Left = 30
    Top = 69
    Width = 1123
    Height = 794
    DataSource = DM.DSContRec
    DefaultFilter = DM.RLDraftFilter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
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
        DataSource = DM.DSEmpresa
        Stretch = True
      end
      object RLDBRichText1: TRLDBRichText
        Left = 181
        Top = 0
        Width = 866
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
        DataSource = DM.DSEmpresa
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
        Left = 362
        Top = 2
        Width = 322
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Contas a Receber'
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
        Left = 575
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
      object RLDBText7: TRLDBText
        Left = 5
        Top = 2
        Width = 60
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'RECDOCUMENTO'
        DataSource = DM.DSContRec
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
        DataField = 'RECEMISSAO'
        DataSource = DM.DSContRec
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
        DataSource = DM.DSContRec
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
        DataSource = DM.DSContRec
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
        DataField = 'RECVALOR'
        DataSource = DM.DSContRec
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
        DataField = 'RECACRESCIMO'
        DataSource = DM.DSContRec
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
        DataField = 'RECENTRADA'
        DataSource = DM.DSContRec
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
        DataField = 'RECDESCONTO'
        DataSource = DM.DSContRec
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
        DataField = 'RECTOTAL'
        DataSource = DM.DSContRec
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
        DataField = 'RECVALORPAGO'
        DataSource = DM.DSContRec
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
        DataField = 'RECSITUACAO'
        DataSource = DM.DSContRec
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
      object RLDBResult1: TRLDBResult
        Left = 537
        Top = 1
        Width = 74
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECVALOR'
        DataSource = DM.DSContRec
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 612
        Top = 1
        Width = 74
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECACRESCIMO'
        DataSource = DM.DSContRec
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult3: TRLDBResult
        Left = 762
        Top = 1
        Width = 74
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECENTRADA'
        DataSource = DM.DSContRec
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult4: TRLDBResult
        Left = 687
        Top = 1
        Width = 74
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECDESCONTO'
        DataSource = DM.DSContRec
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult5: TRLDBResult
        Left = 837
        Top = 1
        Width = 74
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECVALORPAGO'
        DataSource = DM.DSContRec
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult6: TRLDBResult
        Left = 912
        Top = 1
        Width = 74
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECTOTAL'
        DataSource = DM.DSContRec
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
  end
  object RLReportVcto: TRLReport
    Left = 69
    Top = 278
    Width = 794
    Height = 1123
    DataSource = DSVcto
    DefaultFilter = DM.RLDraftFilter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    object RLBand6: TRLBand
      Left = 26
      Top = 187
      Width = 742
      Height = 57
      BandType = btFooter
      object RLDBText18: TRLDBText
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
      object RLDBText19: TRLDBText
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
      object RLDBText20: TRLDBText
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
      object RLDBText21: TRLDBText
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
      object RLDBImage3: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'RECLOGO'
        DataSource = DM.DSRechCenter
        Stretch = True
      end
      object RLDBText22: TRLDBText
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
      object RLDBText23: TRLDBText
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
        DataSource = DM.DSEmpresa
        Stretch = True
      end
      object RLDBRichText2: TRLDBRichText
        Left = 181
        Top = 0
        Width = 561
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
        DataSource = DM.DSEmpresa
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
        Left = 133
        Top = 2
        Width = 476
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Contas a Receber - Vencimentos'
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
        Left = 394
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
      object RLLabel20: TRLLabel
        Left = 476
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
      object RLLabel22: TRLLabel
        Left = 673
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
        Left = 551
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
      object RLLabel19: TRLLabel
        Left = 626
        Top = 2
        Width = 42
        Height = 16
        Caption = 'Aberto'
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
      object RLDBText24: TRLDBText
        Left = 5
        Top = 2
        Width = 60
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'RECDOCUMENTO'
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
        DataField = 'RECEMISSAO'
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
        Width = 240
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
        Left = 383
        Top = 2
        Width = 80
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'valor'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText30: TRLDBText
        Left = 539
        Top = 2
        Width = 74
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECPAGAMENTO'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText31: TRLDBText
        Left = 464
        Top = 2
        Width = 74
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECVALORPAGO'
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
        DataField = 'RECSITUACAO'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText27: TRLDBText
        Left = 616
        Top = 2
        Width = 52
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECTOTAL'
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      object RLLabel21: TRLLabel
        Left = 339
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
      object RLDBResult7: TRLDBResult
        Left = 382
        Top = 1
        Width = 80
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'valor'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult8: TRLDBResult
        Left = 463
        Top = 1
        Width = 76
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECVALORPAGO'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult9: TRLDBResult
        Left = 616
        Top = 1
        Width = 51
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RECTOTAL'
        DataSource = DSVcto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
    end
  end
  object Qvcto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT RECDOCUMENTO, RECEMISSAO, RECVALOR, RECTOTAL, CLINOME, RE' +
        'CVALORPAGO, RECPAGAMENTO, RECSITUACAO, RECACRESCIMO, RECDESCONTO' +
        ', RECENTRADA'
      'FROM TCONTREC'
      '    LEFT OUTER JOIN TCLIENTE ON CLICOD = RECCLIENTE'
      '    LEFT OUTER JOIN TBANCO ON BANCOD = RECBANCO'
      'WHERE RECDOCUMENTO > 0')
    SQLConnection = DM.SQLConnection
    Left = 16
    Top = 32
    object QvctoRECDOCUMENTO: TIntegerField
      FieldName = 'RECDOCUMENTO'
      Required = True
    end
    object QvctoRECEMISSAO: TDateField
      FieldName = 'RECEMISSAO'
      Required = True
    end
    object QvctoRECVALOR: TFloatField
      FieldName = 'RECVALOR'
    end
    object QvctoRECTOTAL: TFloatField
      FieldName = 'RECTOTAL'
    end
    object QvctoCLINOME: TStringField
      FieldName = 'CLINOME'
      Size = 100
    end
    object QvctoRECVALORPAGO: TFloatField
      FieldName = 'RECVALORPAGO'
    end
    object QvctoRECPAGAMENTO: TDateField
      FieldName = 'RECPAGAMENTO'
    end
    object QvctoRECSITUACAO: TStringField
      FieldName = 'RECSITUACAO'
      Size = 10
    end
    object QvctoRECACRESCIMO: TFloatField
      FieldName = 'RECACRESCIMO'
    end
    object QvctoRECDESCONTO: TFloatField
      FieldName = 'RECDESCONTO'
    end
    object QvctoRECENTRADA: TFloatField
      FieldName = 'RECENTRADA'
    end
  end
  object CDSVcto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVcto'
    OnCalcFields = CDSVctoCalcFields
    Left = 80
    Top = 32
    object CDSVctoRECDOCUMENTO: TIntegerField
      FieldName = 'RECDOCUMENTO'
      Required = True
      DisplayFormat = '0000'
    end
    object CDSVctoRECEMISSAO: TDateField
      FieldName = 'RECEMISSAO'
      Required = True
    end
    object CDSVctoRECVALOR: TFloatField
      FieldName = 'RECVALOR'
      DisplayFormat = '0.00'
    end
    object CDSVctoRECTOTAL: TFloatField
      FieldName = 'RECTOTAL'
      DisplayFormat = '0.00'
    end
    object CDSVctoCLINOME: TStringField
      FieldName = 'CLINOME'
      Size = 100
    end
    object CDSVctoRECVALORPAGO: TFloatField
      FieldName = 'RECVALORPAGO'
      DisplayFormat = '0.00'
    end
    object CDSVctoRECPAGAMENTO: TDateField
      FieldName = 'RECPAGAMENTO'
    end
    object CDSVctoRECSITUACAO: TStringField
      FieldName = 'RECSITUACAO'
      Size = 10
    end
    object CDSVctoRECACRESCIMO: TFloatField
      FieldName = 'RECACRESCIMO'
    end
    object CDSVctoRECDESCONTO: TFloatField
      FieldName = 'RECDESCONTO'
    end
    object CDSVctoRECENTRADA: TFloatField
      FieldName = 'RECENTRADA'
    end
    object CDSVctovalor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor'
      DisplayFormat = '0.00'
      Calculated = True
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
