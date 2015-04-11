object frmselrelBalancete: TfrmselrelBalancete
  Left = 319
  Top = 169
  BorderIcons = []
  Caption = 'Extrato de conta '
  ClientHeight = 388
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 629
    Height = 331
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 44
    ExplicitHeight = 344
    object bsSkinGroupBox1: TbsSkinGroupBox
      Left = 2
      Top = 2
      Width = 625
      Height = 63
      HintImageIndex = 0
      TabOrder = 0
      SkinData = FrmPrincipal.Skindata
      SkinDataName = 'groupbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      RibbonStyle = False
      ImagePosition = bsipDefault
      TransparentMode = False
      CaptionImageIndex = -1
      RealHeight = -1
      AutoEnabledControls = True
      CheckedMode = False
      Checked = False
      DefaultAlignment = taLeftJustify
      DefaultCaptionHeight = 22
      BorderStyle = bvFrame
      CaptionMode = True
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Caption = 'Selecione o intervalo de Datas'
      Align = alTop
      object lblTurma: TbsSkinStdLabel
        Left = 127
        Top = 38
        Width = 19
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
        Caption = 'Ate.'
      end
      object dtpData_Fim: TbsSkinDateEdit
        Left = 171
        Top = 33
        Width = 89
        Height = 18
        EditMask = '!99/99/0000;1; '
        Text = '  /  /    '
        AlphaBlend = False
        AlphaBlendAnimation = False
        AlphaBlendValue = 0
        UseSkinFont = True
        TodayDefault = False
        CalendarWidth = 200
        CalendarHeight = 150
        CalendarFont.Charset = DEFAULT_CHARSET
        CalendarFont.Color = clWindowText
        CalendarFont.Height = 14
        CalendarFont.Name = 'Arial'
        CalendarFont.Style = []
        CalendarBoldDays = False
        CalendarUseSkinFont = True
        CalendarSkinDataName = 'panel'
        FirstDayOfWeek = Sun
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clBlack
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        ButtonMode = True
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'buttonedit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 3
        LeftImageIndex = -1
        LeftImageHotIndex = -1
        LeftImageDownIndex = -1
        RightImageIndex = -1
        RightImageHotIndex = -1
        RightImageDownIndex = -1
      end
      object dtpData_Ini: TbsSkinDateEdit
        Left = 22
        Top = 33
        Width = 89
        Height = 18
        EditMask = '!99/99/0000;1; '
        Text = '  /  /    '
        AlphaBlend = False
        AlphaBlendAnimation = False
        AlphaBlendValue = 0
        UseSkinFont = True
        TodayDefault = False
        CalendarWidth = 200
        CalendarHeight = 150
        CalendarFont.Charset = DEFAULT_CHARSET
        CalendarFont.Color = clWindowText
        CalendarFont.Height = 14
        CalendarFont.Name = 'Arial'
        CalendarFont.Style = []
        CalendarBoldDays = False
        CalendarUseSkinFont = True
        CalendarSkinDataName = 'panel'
        FirstDayOfWeek = Sun
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clBlack
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        ButtonMode = True
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'buttonedit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        LeftImageIndex = -1
        LeftImageHotIndex = -1
        LeftImageDownIndex = -1
        RightImageIndex = -1
        RightImageHotIndex = -1
        RightImageDownIndex = -1
      end
      object edtData_Ini: TEditN
        Left = 383
        Top = 32
        Width = 71
        Height = 21
        Color = clWhite
        TabOrder = 1
        Text = '22/10/2007'
        TextHint = True
        Visible = False
        OnExit = edtData_IniExit
        ColorOnFocus = clWhite
        ColorOnNotFocus = clWhite
        FontColorOnFocus = clRed
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlue
        EditType = etDate
        EditKeyByTab = #9
        EditAlign = etAlignNone
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 39377.000000000000000000
        ValueTime = 0.920889386574074000
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
      end
      object edtData_fim: TEditN
        Left = 455
        Top = 32
        Width = 71
        Height = 21
        Color = clWhite
        TabOrder = 2
        Text = '22/10/2007'
        TextHint = True
        Visible = False
        OnExit = edtData_fimExit
        ColorOnFocus = clWhite
        ColorOnNotFocus = clWhite
        FontColorOnFocus = clRed
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlue
        EditType = etDate
        EditKeyByTab = #9
        EditAlign = etAlignNone
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 39377.000000000000000000
        ValueTime = 0.920889386574074000
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
      end
      object cmbSelData: TComboBox
        Left = 266
        Top = 32
        Width = 351
        Height = 21
        Style = csDropDownList
        DropDownCount = 30
        ItemIndex = 14
        TabOrder = 4
        TabStop = False
        Text = 'Este M'#234's'
        OnChange = cmbVenctoChange
        Items.Strings = (
          'Nenhum'
          'Ontem'
          'Hoje'
          'Amanh'#227
          'Semana Anterior'
          'Esta Semana'
          'Pr'#243'xima Semana'
          'Quinzena Anterior'
          'Esta Quinzena'
          'Pr'#243'xima Quinzena '
          'Nos '#218'ltimos 15 dias'
          'Nos Pr'#243'ximos 15 dias'
          'Nos '#218'ltimos e Pr'#243'ximos 15 dias'
          'M'#234's Anterior'
          'Este M'#234's'
          'Pr'#243'ximo M'#234's'
          'Nos '#218'ltimos 30 dias'
          'Nos Pr'#243'ximos 30 dias'
          'Nos '#218'ltimos e Pr'#243'ximos 30 dias'
          'Nos '#218'ltimos 45 dias'
          'Nos Pr'#243'ximos 45 dias'
          'Nos '#218'ltimos e Pr'#243'ximos 45 dias'
          'Nos '#218'ltimos 60 dias'
          'Nos Pr'#243'ximos 60 dias'
          'Nos '#218'ltimos e Pr'#243'ximos 60 dias'
          'Trimestre Anterior'
          'Neste Trimestre'
          'Pr'#243'ximo Trimestre'
          'Nos '#218'ltimos 90 dias'
          'Nos Pr'#243'ximos 90 dias'
          'Nos '#218'ltimos e Pr'#243'ximos 90 dias'
          'Semestre Passado'
          'Neste Semestre'
          'Pr'#243'ximo Semestre'
          'Nos '#218'ltimos 120 dias'
          'Nos Pr'#243'ximos 120 dias'
          'Nos '#218'ltimos e Pr'#243'ximos 120 dias'
          'Ano Passado'
          'Neste Ano'
          'Pr'#243'ximo Ano')
      end
    end
    object dbgSelecao: TbsSkinDBGrid
      Left = 2
      Top = 65
      Width = 606
      Height = 245
      HintImageIndex = 0
      TabOrder = 1
      SkinData = FrmPrincipal.Skindata
      SkinDataName = 'grid'
      Transparent = False
      WallpaperStretch = False
      UseSkinFont = True
      UseSkinCellHeight = True
      HScrollBar = bsSkinScrollBar1
      VScrollBar = bsSkinScrollBar2
      GridLineColor = clBlack
      DefaultCellHeight = 20
      DrawGraphicFields = False
      UseColumnsFont = False
      DefaultRowHeight = 17
      MouseWheelSupport = False
      SaveMultiSelection = False
      PickListBoxSkinDataName = 'listbox'
      PickListBoxCaptionMode = False
      Align = alClient
      DataSource = DataSource1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgSelecaoDrawColumnCell
    end
    object bsSkinScrollBar1: TbsSkinScrollBar
      Left = 2
      Top = 310
      Width = 625
      Height = 19
      HintImageIndex = 0
      TabOrder = 2
      Visible = False
      SkinDataName = 'hscrollbar'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 19
      UseSkinFont = True
      Both = True
      BothMarkerWidth = 19
      BothSkinDataName = 'bothhscrollbar'
      CanFocused = False
      Align = alBottom
      Kind = sbHorizontal
      PageSize = 0
      Min = 0
      Max = 0
      Position = 0
      SmallChange = 127
      LargeChange = 127
      ExplicitTop = 323
    end
    object bsSkinScrollBar2: TbsSkinScrollBar
      Left = 608
      Top = 65
      Width = 19
      Height = 245
      HintImageIndex = 0
      TabOrder = 3
      SkinData = FrmPrincipal.Skindata
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
      PageSize = 1
      Min = 1
      Max = 0
      Position = 1
      SmallChange = 1
      LargeChange = 1
      ExplicitHeight = 258
    end
  end
  object bsSkinCoolBar3: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 629
    Height = 57
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar3
        ImageIndex = -1
        MinHeight = 53
        Width = 623
      end>
    SkinDataName = 'controlbar'
    SkinData = FrmPrincipal.Skindata
    SkinBevel = True
    TabOrder = 1
    ExplicitLeft = -1
    ExplicitWidth = 630
    object bsSkinToolBar3: TbsSkinToolBar
      Left = 11
      Top = 0
      Width = 614
      Height = 53
      HintImageIndex = 0
      TabOrder = 0
      SkinData = FrmPrincipal.Skindata
      SkinDataName = 'bigtoolpanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      RibbonStyle = False
      ImagePosition = bsipDefault
      TransparentMode = False
      CaptionImageIndex = -1
      RealHeight = -1
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
      Spacing = 2
      Caption = 'bsSkinToolBar3'
      CanScroll = False
      HotScroll = False
      ScrollOffset = 0
      ScrollTimerInterval = 50
      AdjustControls = True
      WidthWithCaptions = 0
      WidthWithoutCaptions = 0
      AutoShowHideCaptions = False
      ShowCaptions = False
      Flat = False
      Images = FrmPrincipal.ImageList1
      object bsSkinBevel4: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 467
        Height = 53
        Align = alLeft
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bevel'
        DividerMode = True
      end
      object BtnFechar: TbsSkinSpeedButton
        Left = 537
        Top = 0
        Width = 70
        Height = 53
        HintImageIndex = 0
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
        ExplicitLeft = 431
        ExplicitTop = 14
        ExplicitHeight = 40
      end
      object btnAtualizar: TbsSkinSpeedButton
        Left = 0
        Top = 0
        Width = 70
        Height = 53
        HintImageIndex = 0
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
        ImageIndex = 11
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = 'Atualizar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnAtualizarClick
        ExplicitLeft = 193
        ExplicitTop = 14
      end
    end
  end
  object qryCadtipoDespesa: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 454
    Top = 171
  end
  object srcCadCodtasCorrente: TDataSource
    DataSet = qryCadtipoDespesa
    Left = 180
    Top = 164
  end
  object qryRelatorio: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 427
    Top = 172
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
    UseRibbon = False
    QuickButtons = <>
    QuickButtonsShowHint = False
    QuickButtonsShowDivider = True
    ClientInActiveEffect = False
    ClientInActiveEffectType = bsieSemiTransparent
    DisableSystemMenu = False
    AlwaysResize = False
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
    Left = 112
    Top = 236
  end
  object cdsBalancete: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 172
    Data = {
      800000009619E0BD010000001800000005000000000003000000800006436F64
      69676F0100490000000100055749445448020002000400094465736372696361
      6F010049000000010005574944544802000200320005546F74616C0800040000
      000000044D6574610800040000000000094469666572656E6361080004000000
      00000000}
    object cdsBalanceteCodigo: TStringField
      DisplayWidth = 10
      FieldName = 'Codigo'
      Size = 4
    end
    object cdsBalanceteDescricao: TStringField
      DisplayWidth = 49
      FieldName = 'Descricao'
      Size = 50
    end
    object cdsBalanceteTotal: TFloatField
      DisplayWidth = 11
      FieldName = 'Total'
      DisplayFormat = '0.00'
      Precision = 2
    end
    object cdsBalanceteMeta: TFloatField
      DisplayWidth = 11
      FieldName = 'Meta'
      DisplayFormat = '0.00'
      Precision = 2
    end
    object cdsBalanceteDiferenca: TFloatField
      DisplayWidth = 11
      FieldName = 'Diferenca'
      DisplayFormat = '0.00'
      Precision = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsBalancete
    Left = 400
    Top = 200
  end
end
