object FCompraRel: TFCompraRel
  Left = 0
  Top = 29
  Width = 1032
  Height = 747
  VertScrollBar.Position = 28
  Caption = 'FCompraRel'
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
    Left = 198
    Top = 23
    Width = 794
    Height = 1123
    DataSource = DSRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 186
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
      Height = 53
      BandType = btColumnHeader
      object RLLabel5: TRLLabel
        Left = 13
        Top = 34
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
        Left = 419
        Top = 34
        Width = 53
        Height = 16
        Caption = 'Peso Ini.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 580
        Top = 34
        Width = 53
        Height = 16
        Caption = 'Peso Liq.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel1: TRLLabel
        Left = 246
        Top = 0
        Width = 226
        Height = 30
        Align = faCenterTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Compras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 643
        Top = 34
        Width = 68
        Height = 16
        Caption = 'Pre'#231'o venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 499
        Top = 34
        Width = 54
        Height = 16
        Caption = 'Peso Fin.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 356
        Top = 34
        Width = 34
        Height = 16
        Caption = 'Pre'#231'o'
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
      Top = 147
      Width = 718
      Height = 39
      DataFields = 'COMNUMERO'
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 19
        BandType = btHeader
        object RLDBText7: TRLDBText
          Left = 72
          Top = 1
          Width = 96
          Height = 15
          DataField = 'COMDESCRICAO'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 3
          Top = 0
          Width = 61
          Height = 16
          Caption = 'Descri'#231#227'o:'
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
          Width = 60
          Height = 15
          DataField = 'COMDATA'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 19
        Width = 718
        Height = 16
        object RLDBText9: TRLDBText
          Left = 16
          Top = 1
          Width = 292
          Height = 13
          AutoSize = False
          DataField = 'PRONOME'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 391
          Top = 1
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITEPESOINI'
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
          Left = 554
          Top = 1
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITEPESOTOTAL'
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
          Left = 635
          Top = 1
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'preco'
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
          Left = 473
          Top = 1
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITEPESOFIN'
          DataSource = DSRel
          DisplayMask = '0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 310
          Top = 1
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITEPRECO'
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
    end
  end
  object RLReportProduto: TRLReport
    Left = 30
    Top = 285
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
      object RLDBText14: TRLDBText
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
      object RLDBText15: TRLDBText
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
      object RLDBText16: TRLDBText
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
      object RLDBText17: TRLDBText
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
      object RLDBText18: TRLDBText
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
      object RLDBText19: TRLDBText
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
      object RLLabel9: TRLLabel
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
      object RLLabel12: TRLLabel
        Left = 122
        Top = 0
        Width = 474
        Height = 30
        Align = faCenterTop
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Compras - Resumido por Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 652
        Top = 29
        Width = 61
        Height = 16
        Caption = 'Peso Total'
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
      object RLDBText24: TRLDBText
        Left = 635
        Top = 0
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESOLIQ'
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
      
        'SELECT COMDESCRICAO, COMDATA, COMNUMERO, PRONOME, ITESEQ, ITEPES' +
        'OINI, ITEPESOFIN, ITEPESOTOTAL, PROMULTIPLICADOR, PROVALOR, ITEP' +
        'RECO'
      'FROM TITEMCOMPRA'
      '    INNER JOIN TPRODUTO ON PROCOD = ITEPRODUTO'
      '    INNER JOIN TCOMPRA ON COMNUMERO = ITENUMERO'
      'WHERE ITENUMERO <> 0')
    SQLConnection = DM.SQLConnection
    Left = 207
    Top = 25
    object QRelCOMDESCRICAO: TStringField
      FieldName = 'COMDESCRICAO'
      Size = 50
    end
    object QRelCOMDATA: TDateField
      FieldName = 'COMDATA'
    end
    object QRelCOMNUMERO: TIntegerField
      FieldName = 'COMNUMERO'
      Required = True
    end
    object QRelPRONOME: TStringField
      FieldName = 'PRONOME'
      Size = 100
    end
    object QRelITESEQ: TIntegerField
      FieldName = 'ITESEQ'
      Required = True
    end
    object QRelITEPESOINI: TFMTBCDField
      FieldName = 'ITEPESOINI'
      Precision = 15
      Size = 2
    end
    object QRelITEPESOFIN: TFMTBCDField
      FieldName = 'ITEPESOFIN'
      Precision = 15
      Size = 2
    end
    object QRelITEPESOTOTAL: TFMTBCDField
      FieldName = 'ITEPESOTOTAL'
      Precision = 15
      Size = 2
    end
    object QRelPROMULTIPLICADOR: TFMTBCDField
      FieldName = 'PROMULTIPLICADOR'
      Precision = 15
      Size = 2
    end
    object QRelPROVALOR: TFMTBCDField
      FieldName = 'PROVALOR'
      Precision = 15
      Size = 2
    end
    object QRelITEPRECO: TFMTBCDField
      FieldName = 'ITEPRECO'
      Precision = 15
      Size = 2
    end
  end
  object DSRel: TDataSource
    DataSet = CDSRel
    Left = 303
    Top = 25
  end
  object CDSRel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPREl'
    OnCalcFields = CDSRelCalcFields
    Left = 271
    Top = 25
    object CDSRelCOMDESCRICAO: TStringField
      FieldName = 'COMDESCRICAO'
      Size = 50
    end
    object CDSRelCOMDATA: TDateField
      FieldName = 'COMDATA'
    end
    object CDSRelCOMNUMERO: TIntegerField
      FieldName = 'COMNUMERO'
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
    object CDSRelITEPESOINI: TFMTBCDField
      FieldName = 'ITEPESOINI'
      Precision = 15
      Size = 2
    end
    object CDSRelITEPESOFIN: TFMTBCDField
      FieldName = 'ITEPESOFIN'
      Precision = 15
      Size = 2
    end
    object CDSRelITEPESOTOTAL: TFMTBCDField
      FieldName = 'ITEPESOTOTAL'
      Precision = 15
      Size = 2
    end
    object CDSRelPROMULTIPLICADOR: TFMTBCDField
      FieldName = 'PROMULTIPLICADOR'
      Precision = 15
      Size = 2
    end
    object CDSRelpreco: TFloatField
      FieldKind = fkCalculated
      FieldName = 'preco'
      Calculated = True
    end
    object CDSRelPROVALOR: TFMTBCDField
      FieldName = 'PROVALOR'
      Precision = 15
      Size = 2
    end
    object CDSRelITEPRECO: TFMTBCDField
      FieldName = 'ITEPRECO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object DSPRel: TDataSetProvider
    DataSet = QRel
    Left = 239
    Top = 25
  end
  object QProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT PRONOME, SUM(ITEPESOTOTAL) AS PESOLIQ'
      'FROM TITEMCOMPRA '
      '    INNER JOIN TCOMPRA ON COMNUMERO = ITENUMERO'
      '    INNER JOIN TPRODUTO ON PROCOD = ITEPRODUTO'
      'WHERE COMNUMERO > 0'
      'GROUP BY PRONOME')
    SQLConnection = DM.SQLConnection
    Left = 32
    Top = 289
    object QProdutoPRONOME: TStringField
      FieldName = 'PRONOME'
      Size = 100
    end
    object QProdutoPESOLIQ: TFMTBCDField
      FieldName = 'PESOLIQ'
      Precision = 15
      Size = 2
    end
  end
  object DSProduto: TDataSource
    DataSet = CDSProduto
    Left = 127
    Top = 289
  end
  object CDSProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPProduto'
    Left = 95
    Top = 289
    object CDSProdutoPRONOME: TStringField
      FieldName = 'PRONOME'
      Size = 100
    end
    object CDSProdutoPESOLIQ: TFMTBCDField
      FieldName = 'PESOLIQ'
      Precision = 15
      Size = 2
    end
  end
  object DSPProduto: TDataSetProvider
    DataSet = QProduto
    Left = 63
    Top = 289
  end
end
