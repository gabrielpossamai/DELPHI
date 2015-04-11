object FContaClienteRel: TFContaClienteRel
  Left = 135
  Top = 44
  Width = 696
  Height = 475
  Caption = 'FContaClienteRel'
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
    Left = 46
    Top = 34
    Width = 794
    Height = 1123
    DataSource = DSTmp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 214
      Width = 718
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
        Left = 10
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
    object RLBand3: TRLBand
      Left = 38
      Top = 94
      Width = 718
      Height = 36
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 155
        Top = 2
        Width = 408
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Conta Corrente do Cliente'
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
      Width = 718
      Height = 21
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 67
        Top = 2
        Width = 39
        Height = 16
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 3
        Top = 2
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
      object RLLabel5: TRLLabel
        Left = 328
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
      object RLLabel6: TRLLabel
        Left = 229
        Top = 2
        Width = 28
        Height = 16
        Caption = 'Tipo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 150
        Top = 2
        Width = 63
        Height = 16
        Caption = 'Saldo Ant.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 443
        Top = 1
        Width = 71
        Height = 16
        Caption = 'Observa'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 406
        Top = 1
        Width = 34
        Height = 16
        Caption = 'Saldo'
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
      Top = 151
      Width = 718
      Height = 63
      DataFields = 'TMPCLIENTE'
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 20
        BandType = btHeader
        object RLLabel4: TRLLabel
          Left = 3
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
        object RLDBText8: TRLDBText
          Left = 51
          Top = 3
          Width = 75
          Height = 15
          DataField = 'TMPCLIENTE'
          DataSource = DSTmp
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand7: TRLBand
        Left = 0
        Top = 41
        Width = 718
        Height = 20
        BandType = btFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand7BeforePrint
        object lblsaldo: TRLLabel
          Left = 375
          Top = 1
          Width = 69
          Height = 16
          Alignment = taRightJustify
          Caption = 'Saldo Final:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 20
        Width = 718
        Height = 21
        BeforePrint = RLBand5BeforePrint
        object RLDBText7: TRLDBText
          Left = 71
          Top = 3
          Width = 56
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'TMPCODIGO'
          DataSource = DSTmp
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 5
          Top = 3
          Width = 57
          Height = 15
          DataField = 'TMPDATA'
          DataSource = DSTmp
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 273
          Top = 3
          Width = 89
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPVALOR'
          DataSource = DSTmp
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 215
          Top = 3
          Width = 54
          Height = 15
          Alignment = taCenter
          DataField = 'TMPTIPO'
          DataSource = DSTmp
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 447
          Top = 3
          Width = 273
          Height = 15
          AutoSize = False
          DataField = 'TMPOBS'
          DataSource = DSTmp
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 363
          Top = 3
          Width = 81
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPSALDO'
          DataSource = DSTmp
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 131
          Top = 3
          Width = 81
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TMPSALDOANT'
          DataSource = DSTmp
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
  object QCredito: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CLI'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT SUM(CONVALOR)'
      'FROM TCONTACLIENTE'
      'WHERE CONDATA < :DATA'
      'AND CONTIPO = '#39'C'#39
      'AND CONCLIENTE = :CLI')
    SQLConnection = DM.SQLConnection
    Left = 392
    Top = 40
    object QCreditoSUM: TFMTBCDField
      FieldName = 'SUM'
      Precision = 15
      Size = 2
    end
  end
  object DSPCredito: TDataSetProvider
    DataSet = QCredito
    Left = 424
    Top = 40
  end
  object CDSCredito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCredito'
    BeforeOpen = CDSCreditoBeforeOpen
    AfterClose = CDSCreditoAfterClose
    Left = 456
    Top = 40
    object CDSCreditoSUM: TFMTBCDField
      FieldName = 'SUM'
      Precision = 15
      Size = 2
    end
  end
  object CDSDebito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDebito'
    BeforeOpen = CDSDebitoBeforeOpen
    AfterClose = CDSDebitoAfterClose
    Left = 456
    Top = 8
    object CDSDebitoSUM: TFMTBCDField
      FieldName = 'SUM'
      Precision = 15
      Size = 2
    end
  end
  object DSPDebito: TDataSetProvider
    DataSet = QDebito
    Left = 424
    Top = 8
  end
  object QDebito: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CLI'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT SUM(CONVALOR)'
      'FROM TCONTACLIENTE'
      'WHERE CONDATA < :DATA'
      'AND CONTIPO = '#39'D'#39
      'AND CONCLIENTE = :CLI')
    SQLConnection = DM.SQLConnection
    Left = 392
    Top = 8
    object QDebitoSUM: TFMTBCDField
      FieldName = 'SUM'
      Precision = 15
      Size = 2
    end
  end
  object QTMP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  TMPCLIENTE,'
      '  TMPDATA,'
      '  TMPCODIGO,'
      '  TMPSALDOANT,'
      '  TMPTIPO,'
      '  TMPVALOR,'
      '  TMPSALDO,'
      '  TMPOBS'
      'FROM TTMPCONTACLIENTE'
      'ORDER BY '
      '  TMPCLIENTE,'
      '  TMPDATA,'
      '  TMPCODIGO')
    SQLConnection = DM.SQLConnection
    Left = 391
    Top = 71
    object QTMPTMPCLIENTE: TStringField
      FieldName = 'TMPCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object QTMPTMPDATA: TDateField
      FieldName = 'TMPDATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTMPTMPCODIGO: TIntegerField
      FieldName = 'TMPCODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTMPTMPSALDOANT: TFMTBCDField
      FieldName = 'TMPSALDOANT'
      Precision = 15
      Size = 2
    end
    object QTMPTMPTIPO: TStringField
      FieldName = 'TMPTIPO'
      Size = 1
    end
    object QTMPTMPVALOR: TFMTBCDField
      FieldName = 'TMPVALOR'
      Precision = 15
      Size = 2
    end
    object QTMPTMPSALDO: TFMTBCDField
      FieldName = 'TMPSALDO'
      Precision = 15
      Size = 2
    end
    object QTMPTMPOBS: TStringField
      FieldName = 'TMPOBS'
      Size = 100
    end
  end
  object DSTmp: TDataSource
    DataSet = CDSTmp
    Left = 487
    Top = 71
  end
  object CDSTmp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTmp'
    Left = 455
    Top = 71
    object CDSTmpTMPCLIENTE: TStringField
      FieldName = 'TMPCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object CDSTmpTMPDATA: TDateField
      FieldName = 'TMPDATA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTmpTMPCODIGO: TIntegerField
      FieldName = 'TMPCODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000'
    end
    object CDSTmpTMPSALDOANT: TFMTBCDField
      FieldName = 'TMPSALDOANT'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CDSTmpTMPTIPO: TStringField
      FieldName = 'TMPTIPO'
      Size = 1
    end
    object CDSTmpTMPVALOR: TFMTBCDField
      FieldName = 'TMPVALOR'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CDSTmpTMPSALDO: TFMTBCDField
      FieldName = 'TMPSALDO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CDSTmpTMPOBS: TStringField
      FieldName = 'TMPOBS'
      Size = 100
    end
  end
  object DSPTmp: TDataSetProvider
    DataSet = QTMP
    Left = 424
    Top = 71
  end
end
