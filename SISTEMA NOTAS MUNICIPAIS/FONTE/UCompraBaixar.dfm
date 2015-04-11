object FCompraBaixar: TFCompraBaixar
  Left = 156
  Top = 151
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Rech Center'
  ClientHeight = 320
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 717
    Height = 30
    Align = alTop
    Alignment = taCenter
    Caption = 'Compras'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -21
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 71
    Width = 717
    Height = 249
    Align = alClient
    DataSource = DSCompra
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clTeal
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = [fsBold]
    OnKeyDown = DBGrid2KeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COMDATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMDESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRONOME'
        Title.Caption = 'Produto'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEPESOINI'
        Title.Alignment = taRightJustify
        Title.Caption = 'Peso Ini.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEPESOFIN'
        Title.Alignment = taRightJustify
        Title.Caption = 'Peso Fin.'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ITEPESOTOTAL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Peso Total'
        Width = 100
        Visible = True
      end>
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 30
    Width = 717
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object ToolBarItem: TToolBar
      Left = 1
      Top = 1
      Width = 715
      Height = 39
      Align = alRight
      BorderWidth = 2
      ButtonHeight = 30
      ButtonWidth = 33
      Caption = 'ToolBarItem'
      EdgeBorders = []
      Flat = True
      Images = DM.ImageList
      TabOrder = 0
      object btnsair: TToolButton
        Left = 0
        Top = 0
        Hint = 'Sair - Esc'
        Caption = 'btnsair'
        ImageIndex = 12
        ParentShowHint = False
        ShowHint = True
        OnClick = btnsairClick
      end
    end
  end
  object QCompra: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT ITENUMERO, ITESEQ, COMDATA, COMDESCRICAO, PRONOME, ITEPES' +
        'OINI, ITEPESOFIN, ITEPESOTOTAL'
      'FROM TITEMCOMPRA'
      '    INNER JOIN TCOMPRA ON COMNUMERO = ITENUMERO'
      '    INNER JOIN TPRODUTO ON PROCOD = ITEPRODUTO'
      'WHERE ITEPESOFIN = 0'
      'ORDER BY COMDESCRICAO;')
    SQLConnection = DM.SQLConnection
    Left = 104
    Top = 112
    object QCompraCOMDATA: TDateField
      FieldName = 'COMDATA'
      ProviderFlags = []
    end
    object QCompraCOMDESCRICAO: TStringField
      FieldName = 'COMDESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object QCompraPRONOME: TStringField
      FieldName = 'PRONOME'
      ProviderFlags = []
      Size = 100
    end
    object QCompraITEPESOINI: TFMTBCDField
      FieldName = 'ITEPESOINI'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object QCompraITEPESOFIN: TFMTBCDField
      FieldName = 'ITEPESOFIN'
      Precision = 15
      Size = 2
    end
    object QCompraITEPESOTOTAL: TFMTBCDField
      FieldName = 'ITEPESOTOTAL'
      Precision = 15
      Size = 2
    end
    object QCompraITENUMERO: TIntegerField
      FieldName = 'ITENUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompraITESEQ: TIntegerField
      FieldName = 'ITESEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSCompra: TDataSource
    DataSet = CDSCompra
    Left = 200
    Top = 112
  end
  object CDSCompra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCompra'
    BeforeOpen = CDSCompraBeforeOpen
    AfterClose = CDSCompraAfterClose
    BeforePost = CDSCompraBeforePost
    AfterPost = CDSCompraAfterPost
    Left = 168
    Top = 112
    object CDSCompraCOMDATA: TDateField
      FieldName = 'COMDATA'
      ProviderFlags = []
    end
    object CDSCompraCOMDESCRICAO: TStringField
      FieldName = 'COMDESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object CDSCompraPRONOME: TStringField
      FieldName = 'PRONOME'
      ProviderFlags = []
      Size = 100
    end
    object CDSCompraITEPESOINI: TFMTBCDField
      FieldName = 'ITEPESOINI'
      ProviderFlags = []
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CDSCompraITEPESOFIN: TFMTBCDField
      FieldName = 'ITEPESOFIN'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CDSCompraITEPESOTOTAL: TFMTBCDField
      FieldName = 'ITEPESOTOTAL'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object CDSCompraITENUMERO: TIntegerField
      FieldName = 'ITENUMERO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompraITESEQ: TIntegerField
      FieldName = 'ITESEQ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPCompra: TDataSetProvider
    DataSet = QCompra
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 112
  end
end
