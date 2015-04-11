object FEstabelecimentoRel: TFEstabelecimentoRel
  Left = 192
  Top = 103
  Width = 544
  Height = 375
  HorzScrollBar.Position = 96
  VertScrollBar.Position = 61
  Caption = 'FEstabelecimentoRel'
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
    Top = -21
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
      Top = 171
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText1: TRLDBText
        Left = 189
        Top = 3
        Width = 524
        Height = 19
        AutoSize = False
        DataField = 'W3NOME'
        DataSource = DM.DSW3
        Font.Charset = ANSI_CHARSET
        Font.Color = 33023
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
        DataField = 'W3LOGO'
        DataSource = DM.DSW3
        Stretch = True
      end
      object RLDBText2: TRLDBText
        Left = 190
        Top = 23
        Width = 283
        Height = 15
        AutoSize = False
        DataField = 'W3ENDERECO'
        DataSource = DM.DSW3
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227072
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
        DataField = 'W3BAIRRO'
        DataSource = DM.DSW3
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227072
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
        DataField = 'W3CIDADE'
        DataSource = DM.DSW3
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227072
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
        DataField = 'W3TELEFONE'
        DataSource = DM.DSW3
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227072
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
        DataField = 'W3EMAIL'
        DataSource = DM.DSW3
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227072
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
        DataSource = DM.DSEmpresa
        Stretch = True
      end
      object RLDBRichText1: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
        DataSource = DM.DSEmpresa
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
        Left = 201
        Top = 2
        Width = 316
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Estabelecimentos'
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
        Left = 11
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
        Left = 54
        Top = 2
        Width = 35
        Height = 16
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 352
        Top = 2
        Width = 53
        Height = 16
        Caption = 'Atividade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 653
        Top = 1
        Width = 59
        Height = 16
        Caption = 'Renova'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 555
        Top = 1
        Width = 52
        Height = 16
        Caption = 'Telefone'
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
      Width = 718
      Height = 20
      object RLDBText7: TRLDBText
        Left = 4
        Top = 2
        Width = 50
        Height = 15
        Alignment = taCenter
        DataField = 'ESTCOD'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 56
        Top = 2
        Width = 294
        Height = 15
        AutoSize = False
        DataField = 'ESTNOME'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 351
        Top = 2
        Width = 204
        Height = 15
        AutoSize = False
        DataField = 'ESTNOME'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 556
        Top = 2
        Width = 93
        Height = 15
        AutoSize = False
        DataField = 'ESTFONE'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 650
        Top = 2
        Width = 68
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'ESTRENOVACAO'
        DataSource = DSRel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLReportAti: TRLReport
    Left = 14
    Top = 227
    Width = 794
    Height = 1123
    DataSource = DSRel
    DefaultFilter = DM.RLDraftFilter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand6: TRLBand
      Left = 38
      Top = 195
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText12: TRLDBText
        Left = 189
        Top = 3
        Width = 524
        Height = 19
        AutoSize = False
        DataField = 'W3NOME'
        DataSource = DM.DSW3
        Font.Charset = ANSI_CHARSET
        Font.Color = 33023
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
        DataField = 'W3LOGO'
        DataSource = DM.DSW3
        Stretch = True
      end
      object RLDBText13: TRLDBText
        Left = 190
        Top = 23
        Width = 283
        Height = 15
        AutoSize = False
        DataField = 'W3ENDERECO'
        DataSource = DM.DSW3
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227072
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText14: TRLDBText
        Left = 475
        Top = 23
        Width = 238
        Height = 15
        AutoSize = False
        DataField = 'W3BAIRRO'
        DataSource = DM.DSW3
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227072
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 190
        Top = 39
        Width = 149
        Height = 15
        AutoSize = False
        DataField = 'W3CIDADE'
        DataSource = DM.DSW3
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227072
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 340
        Top = 39
        Width = 131
        Height = 15
        AutoSize = False
        DataField = 'W3TELEFONE'
        DataSource = DM.DSW3
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227072
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 474
        Top = 39
        Width = 239
        Height = 15
        AutoSize = False
        DataField = 'W3EMAIL'
        DataSource = DM.DSW3
        Font.Charset = ANSI_CHARSET
        Font.Color = 4227072
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand7: TRLBand
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
        DataSource = DM.DSEmpresa
        Stretch = True
      end
      object RLDBRichText2: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
        DataSource = DM.DSEmpresa
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 94
      Width = 718
      Height = 37
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel7: TRLLabel
        Left = 201
        Top = 3
        Width = 316
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Estabelecimentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand9: TRLBand
      Left = 38
      Top = 131
      Width = 718
      Height = 22
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel8: TRLLabel
        Left = 51
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
      object RLLabel9: TRLLabel
        Left = 94
        Top = 2
        Width = 35
        Height = 16
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 416
        Top = 2
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
      object RLLabel11: TRLLabel
        Left = 653
        Top = 1
        Width = 59
        Height = 16
        Caption = 'Renova'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 555
        Top = 1
        Width = 52
        Height = 16
        Caption = 'Telefone'
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
      Top = 153
      Width = 718
      Height = 42
      DataFields = 'ATINOME'
      object RLBand11: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 22
        BandType = btHeader
        object RLLabel13: TRLLabel
          Left = 3
          Top = 2
          Width = 58
          Height = 16
          Caption = 'Atividade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 63
          Top = 3
          Width = 59
          Height = 15
          DataField = 'ATINOME'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 22
        Width = 718
        Height = 19
        object RLDBText18: TRLDBText
          Left = 44
          Top = 2
          Width = 50
          Height = 15
          Alignment = taCenter
          DataField = 'ESTCOD'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 96
          Top = 2
          Width = 319
          Height = 15
          AutoSize = False
          DataField = 'ESTNOME'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 416
          Top = 2
          Width = 139
          Height = 15
          AutoSize = False
          DataField = 'ESTCNPJCPF'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText21: TRLDBText
          Left = 556
          Top = 2
          Width = 93
          Height = 15
          AutoSize = False
          DataField = 'ESTFONE'
          DataSource = DSRel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 650
          Top = 2
          Width = 68
          Height = 15
          Alignment = taCenter
          AutoSize = False
          DataField = 'ESTRENOVACAO'
          DataSource = DSRel
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
  object QRel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT ESTCOD, ESTNOME, ESTFONE, ESTRENOVACAO, ESTCNPJCPF, ATINO' +
        'ME'
      'FROM TESTABELECIMENTO'
      '   LEFT OUTER JOIN TATIVIDADE ON ATICOD = ESTATIVIDADE'
      'WHERE ESTCOD <> 0')
    SQLConnection = DM.SQLConnection
    Left = 160
    Top = 8
    object QRelESTCOD: TIntegerField
      FieldName = 'ESTCOD'
      Required = True
    end
    object QRelESTNOME: TStringField
      FieldName = 'ESTNOME'
      Size = 100
    end
    object QRelESTFONE: TStringField
      FieldName = 'ESTFONE'
      Size = 30
    end
    object QRelESTRENOVACAO: TIntegerField
      FieldName = 'ESTRENOVACAO'
    end
    object QRelESTCNPJCPF: TStringField
      FieldName = 'ESTCNPJCPF'
      Size = 30
    end
    object QRelATINOME: TStringField
      FieldName = 'ATINOME'
      Size = 50
    end
  end
  object DSPRel: TDataSetProvider
    DataSet = QRel
    Left = 192
    Top = 8
  end
  object CDSRel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRel'
    Left = 224
    Top = 8
    object CDSRelESTCOD: TIntegerField
      FieldName = 'ESTCOD'
      Required = True
      DisplayFormat = '0000'
    end
    object CDSRelESTNOME: TStringField
      FieldName = 'ESTNOME'
      Size = 100
    end
    object CDSRelESTFONE: TStringField
      FieldName = 'ESTFONE'
      Size = 30
    end
    object CDSRelESTRENOVACAO: TIntegerField
      FieldName = 'ESTRENOVACAO'
    end
    object CDSRelESTCNPJCPF: TStringField
      FieldName = 'ESTCNPJCPF'
      Size = 30
    end
    object CDSRelATINOME: TStringField
      FieldName = 'ATINOME'
      Size = 50
    end
  end
  object DSRel: TDataSource
    DataSet = CDSRel
    Left = 256
    Top = 8
  end
end
