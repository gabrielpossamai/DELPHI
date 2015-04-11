object DmRelatorios: TDmRelatorios
  OldCreateOrder = False
  Height = 270
  Width = 515
  object frxReport: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41644.961579803200000000
    ReportOptions.LastChange = 41674.889554699080000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 24
    Datasets = <
      item
        DataSet = frxDBDsCaixa
        DataSetName = 'frxDBDataset_Caixa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Top = 0.779530000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Lan'#231'amentos no Caixa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Date: TfrxMemoView
          Left = 453.543600000000000000
          Top = 26.456710000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data: [Date]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 612.283860000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g: [Page] / [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDsCaixa
        DataSetName = 'frxDBDataset_Caixa'
        RowCount = 0
        object frxDBDataset1documento: TfrxMemoView
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'numero_doc'
          DataSet = frxDBDsCaixa
          DataSetName = 'frxDBDataset_Caixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset_Caixa."numero_doc"]')
          ParentFont = False
        end
        object frxDBDataset1descricao: TfrxMemoView
          Left = 83.149660000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'descricao'
          DataSet = frxDBDsCaixa
          DataSetName = 'frxDBDataset_Caixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset_Caixa."descricao"]')
          ParentFont = False
        end
        object frxDBDataset1vlr_compra: TfrxMemoView
          Left = 483.779840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor'
          DataSet = frxDBDsCaixa
          DataSetName = 'frxDBDataset_Caixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset_Caixa."valor"]')
          ParentFont = False
        end
        object frxDBDataset1dt_vencimento: TfrxMemoView
          Left = 582.047620000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'dt_cadastro'
          DataSet = frxDBDsCaixa
          DataSetName = 'frxDBDataset_Caixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset_Caixa."dt_cadastro"]')
          ParentFont = False
        end
        object frxDBDataset1status: TfrxMemoView
          Left = 691.653990000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tipo'
          DataSet = frxDBDsCaixa
          DataSetName = 'frxDBDataset_Caixa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset_Caixa."tipo"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 45.354360000000000000
        Top = 94.488250000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Documento:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 1.779530000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 0.220470000000000000
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 83.149660000000000000
          Top = 11.338590000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descri'#231#227'o:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 483.779840000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Valor:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 582.047620000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 668.976810000000000000
          Top = 11.338590000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Tipo:')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 117.165430000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 76.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sistema financeiro vers'#227'o 1.0')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 128.504020000000000000
          Top = 42.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 42.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Registros:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 11.338590000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '* Tipo: (C = Cr'#233'dito, D = D'#233'bito)')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDsUsuarios: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DmDados.cdsUsuarios
    BCDToCurrency = False
    Left = 47
    Top = 96
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 176
    Top = 32
  end
  object frxSimpleTextExport: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 176
    Top = 88
  end
  object frxDBDsReceber: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'documento=documento'
      'descricao=descricao'
      'parcela=parcela'
      'vlr_parcela=vlr_parcela'
      'vlr_compra=vlr_compra'
      'vlr_abatido=vlr_abatido'
      'dt_compra=dt_compra'
      'dt_vencimento=dt_vencimento'
      'dt_cadastro=dt_cadastro'
      'status=status'
      'dt_pagamento=dt_pagamento')
    DataSet = DmDados.cdsContas_receber
    BCDToCurrency = False
    Left = 47
    Top = 160
  end
  object frxDBDsPagar: TfrxDBDataset
    UserName = 'Pagar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'numero_doc=numero_doc'
      'descricao=descricao'
      'parcela=parcela'
      'vlr_parcela=vlr_parcela'
      'vlr_compra=vlr_compra'
      'vlr_abatido=vlr_abatido'
      'dt_compra=dt_compra'
      'dt_cadastro=dt_cadastro'
      'dt_vencimento=dt_vencimento'
      'dt_pagamento=dt_pagamento'
      'status=status')
    DataSet = DmDados.cdsContas_pagar
    BCDToCurrency = False
    Left = 47
    Top = 216
  end
  object frxDBDsCaixa: TfrxDBDataset
    UserName = 'frxDBDataset_Caixa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'numero_doc=numero_doc'
      'descricao=descricao'
      'valor=valor'
      'tipo=tipo'
      'dt_cadastro=dt_cadastro')
    DataSet = DmDados.cdsCaixa
    BCDToCurrency = False
    Left = 176
    Top = 160
  end
end
