object FVendaRel: TFVendaRel
  Left = 0
  Top = 30
  Width = 1032
  Height = 746
  VertScrollBar.Position = 28
  Caption = 'FVendaRel'
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
    Left = 206
    Top = 63
    Width = 794
    Height = 1123
    DataSource = DSRel
    DefaultFilter = DM.RLDraftFilter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 199
      Width = 718
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
      Left = 38
      Top = 38
      Width = 718
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
        Width = 537
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
        DataSource = DM.DSParamEmp
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 94
      Width = 718
      Height = 47
      BandType = btColumnHeader
      object RLLabel5: TRLLabel
        Left = 69
        Top = 29
        Width = 45
        Height = 16
        Caption = 'Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 539
        Top = 29
        Width = 28
        Height = 16
        Caption = 'Peso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 601
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
      object RLLabel1: TRLLabel
        Left = 252
        Top = 0
        Width = 214
        Height = 30
        Align = faCenterTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Vendas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 681
        Top = 29
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
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 141
      Width = 718
      Height = 58
      DataFields = 'VENNUMERO'
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 19
        BandType = btHeader
        object RLDBText7: TRLDBText
          Left = 48
          Top = 1
          Width = 62
          Height = 16
          DataField = 'CLINOME'
          DataSource = DSRel
        end
        object RLLabel2: TRLLabel
          Left = 3
          Top = 0
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
        object RLLabel3: TRLLabel
          Left = 331
          Top = 0
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
        object RLDBText13: TRLDBText
          Left = 369
          Top = 1
          Width = 65
          Height = 16
          DataField = 'VENDATA'
          DataSource = DSRel
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 37
        Width = 718
        Height = 19
        BandType = btFooter
        object RLLabel9: TRLLabel
          Left = 556
          Top = 0
          Width = 91
          Height = 19
          Align = faRight
          Caption = 'Total da Venda:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 647
          Top = 0
          Width = 71
          Height = 19
          Align = faRight
          Alignment = taRightJustify
          DataField = 'Total'
          DataSource = DSRel
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 19
        Width = 718
        Height = 18
        object RLDBText9: TRLDBText
          Left = 72
          Top = 0
          Width = 71
          Height = 16
          DataField = 'PRONOME'
          DataSource = DSRel
        end
        object RLDBText10: TRLDBText
          Left = 491
          Top = 0
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITEPESO'
          DataSource = DSRel
          DisplayMask = '0.00'
        end
        object RLDBText11: TRLDBText
          Left = 563
          Top = 0
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITEVALOR'
          DataSource = DSRel
          DisplayMask = '0.00'
        end
        object RLDBText8: TRLDBText
          Left = 635
          Top = 0
          Width = 80
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'Total'
          DataSource = DSRel
          DisplayMask = '0.00'
        end
      end
    end
  end
  object RLReportProduto: TRLReport
    Left = 102
    Top = 405
    Width = 794
    Height = 1123
    DataSource = DSProduto
    DefaultFilter = DM.RLDraftFilter
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    BeforePrint = RLReportProdutoBeforePrint
    object RLBand3: TRLBand
      Left = 38
      Top = 177
      Width = 718
      Height = 56
      BandType = btFooter
      object RLDBText12: TRLDBText
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
      object RLDBText14: TRLDBText
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
      object RLDBText15: TRLDBText
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
      object RLDBText16: TRLDBText
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
      object RLDBText17: TRLDBText
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
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 38
      Width = 718
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
        Width = 537
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
        DataSource = DM.DSParamEmp
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 94
      Width = 718
      Height = 47
      BandType = btColumnHeader
      object RLLabel8: TRLLabel
        Left = 45
        Top = 29
        Width = 45
        Height = 16
        Caption = 'Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 523
        Top = 29
        Width = 28
        Height = 16
        Caption = 'Peso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 564
        Top = 29
        Width = 69
        Height = 16
        Caption = 'Valor M'#233'dio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 128
        Top = 0
        Width = 462
        Height = 30
        Align = faCenterTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Vendas - Resumido por Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 681
        Top = 29
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
    end
    object RLBand12: TRLBand
      Left = 38
      Top = 141
      Width = 718
      Height = 18
      BeforePrint = RLBand12BeforePrint
      object RLDBText21: TRLDBText
        Left = 48
        Top = 0
        Width = 60
        Height = 15
        DataField = 'PRONOME'
        DataSource = DSProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText22: TRLDBText
        Left = 471
        Top = 0
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESO'
        DataSource = DSProduto
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText23: TRLDBText
        Left = 553
        Top = 0
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'medio'
        DataSource = DSProduto
        DisplayMask = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText24: TRLDBText
        Left = 635
        Top = 0
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = DSProduto
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
      Left = 38
      Top = 159
      Width = 718
      Height = 18
      BandType = btSummary
      BeforePrint = RLBand10BeforePrint
      object lbltotal: TRLLabel
        Left = 628
        Top = 1
        Width = 87
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
      end
      object RLLabel14: TRLLabel
        Left = 320
        Top = 0
        Width = 305
        Height = 16
        Caption = 'Total Geral ..............................................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object QRel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT CLINOME, VENDATA, VENNUMERO, PRONOME, ITESEQ, ITEPESO, IT' +
        'EVALOR'
      'FROM TVENDA'
      '    INNER JOIN TCLIENTE ON CLICOD = VENCLIENTE,'
      'TITEMVENDA'
      '    INNER JOIN TPRODUTO ON PROCOD = ITEPRODUTO'
      'WHERE ITENUMERO = VENNUMERO')
    SQLConnection = DM.SQLConnection
    Left = 119
    Top = 25
    object QRelCLINOME: TStringField
      FieldName = 'CLINOME'
      Size = 100
    end
    object QRelVENDATA: TDateField
      FieldName = 'VENDATA'
    end
    object QRelVENNUMERO: TIntegerField
      FieldName = 'VENNUMERO'
      Required = True
      DisplayFormat = '0000'
    end
    object QRelPRONOME: TStringField
      FieldName = 'PRONOME'
      Size = 100
    end
    object QRelITESEQ: TIntegerField
      FieldName = 'ITESEQ'
      Required = True
      DisplayFormat = '0000'
    end
    object QRelITEPESO: TFMTBCDField
      FieldName = 'ITEPESO'
      DisplayFormat = '#,###,###0.00'
      Precision = 15
      Size = 2
    end
    object QRelITEVALOR: TFMTBCDField
      FieldName = 'ITEVALOR'
      DisplayFormat = '#,###,###0.00'
      Precision = 15
      Size = 2
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
    OnCalcFields = CDSRelCalcFields
    Left = 183
    Top = 25
    object CDSRelCLINOME: TStringField
      FieldName = 'CLINOME'
      Size = 100
    end
    object CDSRelVENDATA: TDateField
      FieldName = 'VENDATA'
    end
    object CDSRelVENNUMERO: TIntegerField
      FieldName = 'VENNUMERO'
      Required = True
    end
    object CDSRelPRONOME: TStringField
      FieldName = 'PRONOME'
      Size = 100
    end
    object CDSRelITESEQ: TIntegerField
      FieldName = 'ITESEQ'
      Required = True
    end
    object CDSRelITEPESO: TFMTBCDField
      FieldName = 'ITEPESO'
      DisplayFormat = '#,###,###0.00'
      Precision = 15
      Size = 2
    end
    object CDSRelITEVALOR: TFMTBCDField
      FieldName = 'ITEVALOR'
      DisplayFormat = '#,###,###0.00'
      Precision = 15
      Size = 2
    end
    object CDSRelTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '#,###,###0.00'
      Calculated = True
    end
  end
  object DSPRel: TDataSetProvider
    DataSet = QRel
    Left = 151
    Top = 25
  end
  object QProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PRONOME, SUM(ITEPESO) AS PESO, SUM(ITEVALOR) AS VALOR'
      'FROM TVENDA'
      '    INNER JOIN TCLIENTE ON CLICOD = VENCLIENTE,'
      'TITEMVENDA'
      '    INNER JOIN TPRODUTO ON PROCOD = ITEPRODUTO'
      'WHERE ITENUMERO = VENNUMERO'
      'GROUP BY PRONOME')
    SQLConnection = DM.SQLConnection
    Left = 96
    Top = 97
    object QProdutoPRONOME: TStringField
      FieldName = 'PRONOME'
      Size = 100
    end
    object QProdutoPESO: TFMTBCDField
      FieldName = 'PESO'
      Precision = 15
      Size = 2
    end
    object QProdutoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
  end
  object DSProduto: TDataSource
    DataSet = CDSProduto
    Left = 191
    Top = 97
  end
  object CDSProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPProduto'
    OnCalcFields = CDSProdutoCalcFields
    Left = 159
    Top = 97
    object CDSProdutoPRONOME: TStringField
      FieldName = 'PRONOME'
      Size = 100
    end
    object CDSProdutoPESO: TFMTBCDField
      FieldName = 'PESO'
      DisplayFormat = '#,###,###0.00'
      Precision = 15
      Size = 2
    end
    object CDSProdutoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#,###,###0.00'
      Precision = 15
      Size = 2
    end
    object CDSProdutomedio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'medio'
      DisplayFormat = '#,###,###0.00'
      Calculated = True
    end
  end
  object DSPProduto: TDataSetProvider
    DataSet = QProduto
    Left = 127
    Top = 97
  end
end
