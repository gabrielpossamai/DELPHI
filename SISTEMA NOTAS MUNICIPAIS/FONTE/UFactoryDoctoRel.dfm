object FFactoryDoctoRel: TFFactoryDoctoRel
  Left = -1
  Top = 33
  Width = 812
  Height = 612
  HorzScrollBar.Position = 461
  Caption = 'FFactoryDoctoRel'
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
    Left = -335
    Top = 27
    Width = 1123
    Height = 794
    DataSource = DSRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 7.000000000000000000
    Margins.RightMargin = 7.000000000000000000
    PageSetup.Orientation = poLandscape
    BeforePrint = RLReportBeforePrint
    object RLBand1: TRLBand
      Left = 26
      Top = 256
      Width = 1071
      Height = 56
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
      Left = 26
      Top = 38
      Width = 1071
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
        Width = 890
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
        DataSource = DM.DSParamEmp
      end
    end
    object RLBand5: TRLBand
      Left = 26
      Top = 94
      Width = 1071
      Height = 49
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLLabel5: TRLLabel
        Left = 5
        Top = 29
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
        Left = 247
        Top = 29
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
      object RLLabel7: TRLLabel
        Left = 387
        Top = 29
        Width = 42
        Height = 16
        Caption = 'Cheque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 336
        Top = 0
        Width = 398
        Height = 30
        Align = faCenterTop
        Alignment = taCenter
        Caption = 'Factory - Lan'#231'amento de Documentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 581
        Top = 29
        Width = 60
        Height = 16
        Caption = 'CPF/CNPJ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 171
        Top = 29
        Width = 30
        Height = 16
        Caption = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 789
        Top = 29
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
      object RLLabel8: TRLLabel
        Left = 669
        Top = 29
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
      object RLLabel9: TRLLabel
        Left = 1025
        Top = 29
        Width = 41
        Height = 16
        Caption = 'L'#237'quido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 837
        Top = 29
        Width = 35
        Height = 16
        Caption = 'Desc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 445
        Top = 29
        Width = 43
        Height = 16
        Caption = 'Sacado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel34: TRLLabel
        Left = 940
        Top = 29
        Width = 52
        Height = 16
        Caption = 'I. O. F.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel40: TRLLabel
        Left = 896
        Top = 30
        Width = 37
        Height = 16
        Caption = 'Taxas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand9: TRLBand
      Left = 26
      Top = 143
      Width = 1071
      Height = 18
      BeforePrint = RLBand9BeforePrint
      object RLDBText9: TRLDBText
        Left = 8
        Top = 0
        Width = 162
        Height = 16
        AutoSize = False
        DataField = 'CLIRAZAO'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 751
        Top = 0
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITEVALOR'
        DataSource = DSRel
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 823
        Top = 0
        Width = 49
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITEDESC'
        DataSource = DSRel
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 992
        Top = 0
        Width = 75
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITELIQ'
        DataSource = DSRel
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 668
        Top = 0
        Width = 81
        Height = 16
        AutoSize = False
        DataField = 'ITEVCTO'
        DataSource = DSRel
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 580
        Top = 0
        Width = 87
        Height = 16
        AutoSize = False
        DataField = 'ITECPFCPNJ'
        DataSource = DSRel
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 380
        Top = 0
        Width = 64
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'ITECHEQUE'
        DataSource = DSRel
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText14: TRLDBText
        Left = 245
        Top = 0
        Width = 134
        Height = 16
        AutoSize = False
        DataField = 'BANNOME'
        DataSource = DSRel
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 171
        Top = 0
        Width = 73
        Height = 16
        AutoSize = False
        DataField = 'FACDOCDATA'
        DataSource = DSRel
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 445
        Top = 0
        Width = 135
        Height = 16
        AutoSize = False
        DataField = 'ITESACADO'
        DataSource = DSRel
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText39: TRLDBText
        Left = 933
        Top = 0
        Width = 58
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITEIOF'
        DataSource = DSRel
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText41: TRLDBText
        Left = 874
        Top = 0
        Width = 58
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITETAXA'
        DataSource = DSRel
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 26
      Top = 161
      Width = 1071
      Height = 95
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand3BeforePrint
      object RLLabel11: TRLLabel
        Left = 945
        Top = 5
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
        Left = 985
        Top = 6
        Width = 80
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
      end
      object lbldesconto: TRLLabel
        Left = 985
        Top = 22
        Width = 80
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
      end
      object lblliquido: TRLLabel
        Left = 985
        Top = 70
        Width = 80
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
      end
      object RLDBResult1: TRLDBResult
        Left = 985
        Top = 38
        Width = 80
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITEIOF'
        DataSource = DSRel
        Info = riSum
      end
      object RLLabel35: TRLLabel
        Left = 925
        Top = 21
        Width = 58
        Height = 16
        Caption = 'Desconto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel36: TRLLabel
        Left = 936
        Top = 37
        Width = 47
        Height = 16
        Caption = 'I.O.F.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel37: TRLLabel
        Left = 936
        Top = 69
        Width = 46
        Height = 16
        Caption = 'L'#237'quido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel38: TRLLabel
        Left = 885
        Top = 53
        Width = 98
        Height = 16
        Caption = 'Taxa de Servi'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 985
        Top = 54
        Width = 80
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITETAXA'
        DataSource = DSRel
        Info = riSum
      end
    end
  end
  object RLReportFicha: TRLReport
    Left = -415
    Top = 403
    Width = 794
    Height = 1123
    DataSource = DM.DSItemFactoryDocto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    BeforePrint = RLReportBeforePrint
    object RLBand4: TRLBand
      Left = 19
      Top = 453
      Width = 756
      Height = 56
      BandType = btFooter
      object RLDBText17: TRLDBText
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
      object RLDBText18: TRLDBText
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
      object RLDBText19: TRLDBText
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
      object RLDBText22: TRLDBText
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
    object RLBand6: TRLBand
      Left = 19
      Top = 38
      Width = 756
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
        Width = 575
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
        DataSource = DM.DSParamEmp
      end
    end
    object RLBand7: TRLBand
      Left = 19
      Top = 94
      Width = 756
      Height = 231
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLDraw1: TRLDraw
        Left = 2
        Top = 74
        Width = 715
        Height = 121
      end
      object RLLabel14: TRLLabel
        Left = 7
        Top = 212
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
      object RLLabel15: TRLLabel
        Left = 115
        Top = 212
        Width = 42
        Height = 16
        Caption = 'Cheque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 280
        Top = 212
        Width = 60
        Height = 16
        Caption = 'CPF/CNPJ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 469
        Top = 212
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
      object RLLabel20: TRLLabel
        Left = 353
        Top = 212
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
      object RLLabel21: TRLLabel
        Left = 713
        Top = 212
        Width = 41
        Height = 16
        Caption = 'L'#237'quido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 521
        Top = 211
        Width = 35
        Height = 16
        Caption = 'Desc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 166
        Top = 212
        Width = 43
        Height = 16
        Caption = 'Sacado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 13
        Top = 81
        Width = 46
        Height = 16
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 13
        Top = 99
        Width = 35
        Height = 16
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText31: TRLDBText
        Left = 96
        Top = 99
        Width = 79
        Height = 15
        DataField = 'FACDOCDATA'
        DataSource = DM.DSFactoryDocto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText23: TRLDBText
        Left = 96
        Top = 81
        Width = 39
        Height = 15
        DataField = 'Cliente'
        DataSource = DM.DSFactoryDocto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 226
        Top = 24
        Width = 266
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'Factory - Documento N'#176
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText33: TRLDBText
        Left = 498
        Top = 25
        Width = 140
        Height = 30
        DataField = 'FACDOCCOD'
        DataSource = DM.DSFactoryDocto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 13
        Top = 117
        Width = 51
        Height = 16
        Caption = 'Avalista:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText34: TRLDBText
        Left = 96
        Top = 117
        Width = 106
        Height = 15
        DataField = 'FACDOCAVALISTA'
        DataSource = DM.DSFactoryDocto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 13
        Top = 135
        Width = 30
        Height = 16
        Caption = 'CPF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText35: TRLDBText
        Left = 96
        Top = 135
        Width = 125
        Height = 15
        DataField = 'FACDOCAVALISTACPF'
        DataSource = DM.DSFactoryDocto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 13
        Top = 153
        Width = 79
        Height = 16
        Caption = 'Valor I.O.F.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText36: TRLDBText
        Left = 96
        Top = 153
        Width = 106
        Height = 15
        DataField = 'FACDOCVALORIOF'
        DataSource = DM.DSFactoryDocto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText37: TRLDBText
        Left = 96
        Top = 171
        Width = 79
        Height = 15
        DataField = 'FACDOCTAXA'
        DataSource = DM.DSFactoryDocto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 13
        Top = 171
        Width = 71
        Height = 16
        Caption = 'Taxa Serv.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 573
        Top = 211
        Width = 42
        Height = 16
        Caption = 'I.O.F.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel39: TRLLabel
        Left = 645
        Top = 211
        Width = 32
        Height = 16
        Caption = 'Taxa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand8: TRLBand
      Left = 19
      Top = 325
      Width = 756
      Height = 18
      BeforePrint = RLBand8BeforePrint
      object RLDBText30: TRLDBText
        Left = 5
        Top = 0
        Width = 103
        Height = 16
        AutoSize = False
        DataField = 'banco'
        DataSource = DM.DSItemFactoryDocto
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText29: TRLDBText
        Left = 109
        Top = 0
        Width = 56
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'ITECHEQUE'
        DataSource = DM.DSItemFactoryDocto
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText28: TRLDBText
        Left = 280
        Top = 0
        Width = 70
        Height = 16
        AutoSize = False
        DataField = 'ITECPFCPNJ'
        DataSource = DM.DSItemFactoryDocto
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText32: TRLDBText
        Left = 166
        Top = 0
        Width = 114
        Height = 16
        AutoSize = False
        DataField = 'ITESACADO'
        DataSource = DM.DSItemFactoryDocto
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText27: TRLDBText
        Left = 352
        Top = 0
        Width = 79
        Height = 16
        AutoSize = False
        DataField = 'ITEVCTO'
        DataSource = DM.DSItemFactoryDocto
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText24: TRLDBText
        Left = 432
        Top = 0
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITEVALOR'
        DataSource = DM.DSItemFactoryDocto
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText25: TRLDBText
        Left = 504
        Top = 0
        Width = 55
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITEDESC'
        DataSource = DM.DSItemFactoryDocto
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText26: TRLDBText
        Left = 678
        Top = 0
        Width = 75
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITELIQ'
        DataSource = DM.DSItemFactoryDocto
        DisplayMask = '0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText38: TRLDBText
        Left = 560
        Top = 0
        Width = 55
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITEIOF'
        DataSource = DM.DSItemFactoryDocto
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText40: TRLDBText
        Left = 616
        Top = 0
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ITETAXA'
        DataSource = DM.DSItemFactoryDocto
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand10: TRLBand
      Left = 19
      Top = 343
      Width = 756
      Height = 110
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand10BeforePrint
      object RLLabel24: TRLLabel
        Left = 566
        Top = 17
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
        Left = 611
        Top = 18
        Width = 98
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
      end
      object lblitedesconto: TRLLabel
        Left = 611
        Top = 34
        Width = 98
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
      end
      object lbliteliquido: TRLLabel
        Left = 611
        Top = 82
        Width = 98
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
      end
      object RLLabel25: TRLLabel
        Left = 508
        Top = 33
        Width = 96
        Height = 16
        Caption = 'Total Descontos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 525
        Top = 81
        Width = 79
        Height = 16
        Caption = 'Total L'#237'quido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel32: TRLLabel
        Left = 501
        Top = 65
        Width = 103
        Height = 16
        Caption = 'Taxa de Servi'#231'os:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel33: TRLLabel
        Left = 547
        Top = 49
        Width = 57
        Height = 16
        Caption = 'I. O. F.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbliof: TRLLabel
        Left = 611
        Top = 50
        Width = 98
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
      end
      object txttaxa: TRLDBResult
        Left = 622
        Top = 66
        Width = 87
        Height = 15
        Alignment = taRightJustify
        DataField = 'ITETAXA'
        DataSource = DM.DSItemFactoryDocto
        Info = riSum
      end
    end
  end
  object QRel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT CLIRAZAO, FACDOCDATA, BANNOME, ITECHEQUE, ITESACADO, ITEC' +
        'PFCPNJ, ITEVCTO, ITEVALOR, ITEDESC, ITELIQ, ITEIOF, ITETAXA'
      'FROM TFACTORYDOCTO'
      '   INNER JOIN TCLIENTE ON CLICOD = FACDOCCLIENTE,'
      'TITEMFACTORYDOCTO'
      '    INNER JOIN TBANCO ON BANCOD = ITEBANCO'
      'WHERE ITECOD = FACDOCCOD')
    SQLConnection = DM.SQLConnection
    Left = 119
    Top = 25
    object QRelCLIRAZAO: TStringField
      FieldName = 'CLIRAZAO'
      Size = 100
    end
    object QRelFACDOCDATA: TDateField
      FieldName = 'FACDOCDATA'
    end
    object QRelBANNOME: TStringField
      FieldName = 'BANNOME'
      Size = 50
    end
    object QRelITECHEQUE: TIntegerField
      FieldName = 'ITECHEQUE'
      Required = True
    end
    object QRelITECPFCPNJ: TStringField
      FieldName = 'ITECPFCPNJ'
      Size = 30
    end
    object QRelITEVCTO: TDateField
      FieldName = 'ITEVCTO'
    end
    object QRelITEVALOR: TFMTBCDField
      FieldName = 'ITEVALOR'
      Precision = 15
      Size = 2
    end
    object QRelITEDESC: TFMTBCDField
      FieldName = 'ITEDESC'
      Precision = 15
      Size = 2
    end
    object QRelITELIQ: TFMTBCDField
      FieldName = 'ITELIQ'
      Precision = 15
      Size = 2
    end
    object QRelITESACADO: TStringField
      FieldName = 'ITESACADO'
      Size = 50
    end
    object QRelITEIOF: TFloatField
      FieldName = 'ITEIOF'
    end
    object QRelITETAXA: TFloatField
      FieldName = 'ITETAXA'
    end
  end
  object DSRel: TDataSource
    DataSet = CDSRel
    Left = 215
    Top = 25
  end
  object CDSRel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPREl'
    Left = 183
    Top = 25
    object CDSRelFACDOCDATA: TDateField
      FieldName = 'FACDOCDATA'
    end
    object CDSRelBANNOME: TStringField
      FieldName = 'BANNOME'
      Size = 50
    end
    object CDSRelITECHEQUE: TIntegerField
      FieldName = 'ITECHEQUE'
      Required = True
    end
    object CDSRelITECPFCPNJ: TStringField
      FieldName = 'ITECPFCPNJ'
      Size = 30
    end
    object CDSRelITEVCTO: TDateField
      FieldName = 'ITEVCTO'
    end
    object CDSRelITEVALOR: TFMTBCDField
      FieldName = 'ITEVALOR'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CDSRelITEDESC: TFMTBCDField
      FieldName = 'ITEDESC'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CDSRelITELIQ: TFMTBCDField
      FieldName = 'ITELIQ'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CDSRelITESACADO: TStringField
      FieldName = 'ITESACADO'
      Size = 50
    end
    object CDSRelCLIRAZAO: TStringField
      FieldName = 'CLIRAZAO'
      Size = 100
    end
    object CDSRelITEIOF: TFloatField
      FieldName = 'ITEIOF'
      DisplayFormat = '0.00'
    end
    object CDSRelITETAXA: TFloatField
      FieldName = 'ITETAXA'
      DisplayFormat = '0.00'
    end
  end
  object DSPRel: TDataSetProvider
    DataSet = QRel
    Left = 151
    Top = 25
  end
end
