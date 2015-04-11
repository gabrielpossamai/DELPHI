object frmCadContasCorrente: TfrmCadContasCorrente
  Left = 211
  Top = 152
  BorderIcons = []
  Caption = 'Cadastro e consulta Formas de Pagamento'
  ClientHeight = 327
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BarraStatus: TStatusBar
    Left = 0
    Top = 308
    Width = 514
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object PagCadastro: TbsSkinPageControl
    Left = 0
    Top = 44
    Width = 514
    Height = 264
    ActivePage = bsSkinTabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabsBGTransparent = False
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBtnText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultItemHeight = 20
    SkinData = FrmPrincipal.Skindata
    SkinDataName = 'tab'
    object bsSkinTabSheet1: TbsSkinTabSheet
      Caption = 'Consulta'
      object bsSkinDBGrid1: TbsSkinDBGrid
        Left = 0
        Top = 0
        Width = 493
        Height = 243
        TabOrder = 0
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'grid'
        UseSkinFont = True
        UseSkinCellHeight = True
        VScrollBar = bsSkinScrollBar1
        GridLineColor = clWindowText
        DefaultCellHeight = 20
        UseColumnsFont = False
        DefaultRowHeight = 18
        MouseWheelSupport = False
        SaveMultiSelection = False
        PickListBoxSkinDataName = 'listbox'
        PickListBoxCaptionMode = False
        Align = alClient
        DataSource = srcCadCodtasCorrente
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBtnText
        TitleFont.Height = 14
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Width = 296
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Meta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ativo'
            Visible = True
          end>
      end
      object bsSkinScrollBar1: TbsSkinScrollBar
        Left = 493
        Top = 0
        Width = 19
        Height = 243
        TabOrder = 1
        Visible = False
        SkinDataName = 'vscrollbar'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 19
        DefaultHeight = 0
        UseSkinFont = True
        Both = False
        BothMarkerWidth = 19
        BothSkinDataName = 'bothhscrollbar'
        CanFocused = False
        Align = alRight
        Kind = sbVertical
        PageSize = 0
        Min = 0
        Max = 100
        Position = 0
        SmallChange = 1
        LargeChange = 1
      end
    end
    object bsSkinTabSheet2: TbsSkinTabSheet
      Caption = 'Manuten'#231#227'o'
      object bsSkinStdLabel1: TbsSkinStdLabel
        Left = 96
        Top = 119
        Width = 24
        Height = 13
        EllipsType = bsetNone
        UseSkinFont = True
        UseSkinColor = True
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -11
        DefaultFont.Name = 'MS Sans Serif'
        DefaultFont.Style = []
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'stdlabel'
        Caption = 'Meta'
      end
      object bsSkinStdLabel2: TbsSkinStdLabel
        Left = 72
        Top = 94
        Width = 48
        Height = 13
        EllipsType = bsetNone
        UseSkinFont = True
        UseSkinColor = True
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -11
        DefaultFont.Name = 'MS Sans Serif'
        DefaultFont.Style = []
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'stdlabel'
        Caption = 'Descricao'
      end
      object bsSkinStdLabel3: TbsSkinStdLabel
        Left = 88
        Top = 68
        Width = 33
        Height = 13
        EllipsType = bsetNone
        UseSkinFont = True
        UseSkinColor = True
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -11
        DefaultFont.Name = 'MS Sans Serif'
        DefaultFont.Style = []
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'stdlabel'
        Caption = 'Codigo'
      end
      object EdtCodigo: TEdit
        Left = 129
        Top = 60
        Width = 44
        Height = 22
        ReadOnly = True
        TabOrder = 0
      end
      object EdtDescricao: TEdit
        Left = 129
        Top = 85
        Width = 325
        Height = 22
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object edtmeta: TEditN
        Left = 129
        Top = 110
        Width = 55
        Height = 22
        Color = clWhite
        TabOrder = 2
        Text = '0,00'
        ColorOnFocus = clWhite
        ColorOnNotFocus = clWhite
        FontColorOnFocus = clRed
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlue
        EditType = etFloat
        EditKeyByTab = #9
        EditAlign = etAlignRight
        EditLengthAlign = 0
        EditPrecision = 2
        ValueInteger = 0
        ValueDate = 37448.000000000000000000
        ValueTime = 0.757864282407407000
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
        TextHint = True
      end
      object chkExibeResumo: TbsSkinCheckRadioBox
        Left = 186
        Top = 56
        Width = 150
        Height = 25
        TabOrder = 3
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'checkbox'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        WordWrap = False
        AllowGrayed = False
        State = cbUnchecked
        ImageIndex = 0
        Flat = True
        TabStop = True
        CanFocused = True
        Radio = False
        Checked = False
        GroupIndex = 0
        Caption = 'Soma no resumo'
      end
    end
  end
  object bsSkinCoolBar1: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 514
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 508
      end>
    SkinDataName = 'controlbar'
    SkinData = FrmPrincipal.Skindata
    SkinBevel = True
    TabOrder = 2
    ExplicitLeft = -1
    ExplicitTop = -6
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 12
      Top = 0
      Width = 494
      Height = 40
      TabOrder = 0
      SkinData = FrmPrincipal.Skindata
      SkinDataName = 'bigtoolpanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 70
      DefaultHeight = 40
      UseSkinFont = True
      TransparentMode = False
      CaptionImageIndex = -1
      RealHeight = 1
      AutoEnabledControls = True
      CheckedMode = False
      Checked = False
      DefaultAlignment = taLeftJustify
      DefaultCaptionHeight = 22
      BorderStyle = bvNone
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 5
      Caption = 'bsSkinToolBar1'
      Align = alClient
      CanScroll = False
      HotScroll = False
      ScrollOffset = 0
      ScrollTimerInterval = 50
      AdjustControls = True
      WidthWithCaptions = 0
      WidthWithoutCaptions = 0
      AutoShowHideCaptions = False
      ShowCaptions = True
      Flat = True
      Images = FrmPrincipal.ImageList1
      object btnFechar: TbsSkinSpeedButton
        Left = 393
        Top = 0
        Width = 70
        Height = 40
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 70
        DefaultHeight = 40
        UseSkinFont = True
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 7
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Fechar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 2
        Layout = blGlyphTop
        OnClick = btnFecharClick
        ExplicitTop = 8
      end
      object btnexcluir: TbsSkinSpeedButton
        Left = 140
        Top = 0
        Width = 70
        Height = 40
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 2
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Excluir'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = BtnExcluirClick
        ExplicitTop = 8
      end
      object btnalterar: TbsSkinSpeedButton
        Left = 70
        Top = 0
        Width = 70
        Height = 40
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 1
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Alterar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = BtnAlterarClick
        ExplicitTop = 8
      end
      object btnincluir: TbsSkinSpeedButton
        Left = 0
        Top = 0
        Width = 70
        Height = 40
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 0
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Incluir'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = BtnIncluirClick
        ExplicitTop = 8
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 210
        Top = 0
        Width = 23
        Height = 40
        Align = alLeft
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object btnok: TbsSkinSpeedButton
        Left = 303
        Top = 0
        Width = 70
        Height = 40
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 3
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Ok'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = BtnOkClick
        ExplicitTop = 8
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 373
        Top = 0
        Width = 20
        Height = 40
        Align = alLeft
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object BtnCancela: TbsSkinSpeedButton
        Left = 233
        Top = 0
        Width = 70
        Height = 40
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 3
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Cancelar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = BtnCancelaClick
        ExplicitTop = 8
      end
    end
  end
  object srcCadCodtasCorrente: TDataSource
    AutoEdit = False
    DataSet = QryCadContasCorrente
    Left = 396
    Top = 268
  end
  object QryCadContasCorrente: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 396
    Top = 240
  end
  object QryModific: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 424
    Top = 240
  end
  object QryMaxCod: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 452
    Top = 240
  end
  object ImpMatricial: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'TEC-SOFT INFORMATICA LTDA'
    RegistroUsuario.SerieProduto = 'SITE-0306/00320'
    RegistroUsuario.AutorizacaoKey = 'EOSP-0695-PUAG-8415-LXYS'
    About = 'RDprint 4.0c - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    OnNewPage = ImpMatricialNewPage
    Left = 368
    Top = 240
  end
  object qryRelatorio: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 341
    Top = 240
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
    PositionInMonitor = bspDefault
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = False
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    ShowObjectHint = False
    UseDefaultObjectHint = True
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 200
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SkinData = FrmPrincipal.Skindata
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 161
    Top = 208
  end
end
