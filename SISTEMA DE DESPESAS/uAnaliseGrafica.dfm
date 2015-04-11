object frmAnaliseGrafica: TfrmAnaliseGrafica
  Left = 0
  Top = 0
  Caption = 'Analise grafica'
  ClientHeight = 571
  ClientWidth = 1025
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ChtGraficos: TChart
    Left = 0
    Top = 129
    Width = 1025
    Height = 421
    BackWall.Gradient.EndColor = 11118482
    BackWall.Gradient.Visible = True
    BackWall.Transparent = False
    Border.Color = 14645801
    Border.Width = 7
    Border.Visible = True
    BottomWall.Gradient.EndColor = 16580349
    BottomWall.Gradient.StartColor = 3114493
    BottomWall.Gradient.Visible = True
    Gradient.Direction = gdDiagonalDown
    Gradient.EndColor = 11645361
    Gradient.Visible = True
    LeftWall.Gradient.EndColor = 2413052
    LeftWall.Gradient.StartColor = 900220
    LeftWall.Gradient.Visible = True
    Legend.Gradient.Direction = gdTopBottom
    Legend.Gradient.EndColor = clYellow
    Legend.Gradient.StartColor = clWhite
    Legend.Gradient.Visible = True
    Legend.Shadow.Transparency = 50
    Title.Text.Strings = (
      'Grafico de Evolu'#231#227'o')
    BottomAxis.Visible = False
    Chart3DPercent = 30
    Shadow.Color = clBlack
    Shadow.HorizSize = 10
    Shadow.VertSize = 10
    View3DOptions.Perspective = 17
    View3DOptions.VertOffset = 1
    Zoom.Pen.Color = clRed
    Zoom.Pen.Width = 3
    Align = alClient
    BevelOuter = bvNone
    Color = clYellow
    TabOrder = 0
    PrintMargins = (
      15
      31
      15
      31)
    ColorPaletteIndex = 11
    object Series1: TBarSeries
      Active = False
      ColorEachPoint = True
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Clip = True
      Marks.Gradient.Visible = True
      Marks.MultiLine = True
      Marks.Style = smsLabelValue
      Marks.Symbol.Gradient.Direction = gdRightLeft
      Marks.Symbol.Gradient.Visible = True
      Marks.Visible = False
      Gradient.Direction = gdTopBottom
      MultiBar = mbSideAll
      Shadow.Color = 8947848
      Shadow.HorizSize = 5
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series2: TPieSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Active = False
      Gradient.Direction = gdRadial
      OtherSlice.Legend.Visible = False
      PieValues.Name = 'Pie'
      PieValues.Order = loNone
    end
    object Series4: TFastLineSeries
      Active = False
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.MultiLine = True
      Marks.Shadow.Color = 8487297
      Marks.Style = smsLabelValue
      Marks.Visible = True
      SeriesColor = clBlue
      LinePen.Color = clBlue
      LinePen.Width = 3
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.MultiLine = True
      Marks.Shadow.Color = 8487297
      Marks.Style = smsLabelValue
      Marks.Visible = False
      SeriesColor = clRed
      LinePen.Color = clRed
      LinePen.Width = 3
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series5: TFastLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.MultiLine = True
      Marks.Shadow.Color = 8487297
      Marks.Style = smsLabelValue
      Marks.Visible = True
      SeriesColor = clBlue
      LinePen.Color = clBlue
      LinePen.Width = 3
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object bsSkinStatusBar1: TbsSkinStatusBar
    Left = 0
    Top = 550
    Width = 1025
    Height = 21
    HintImageIndex = 0
    TabOrder = 1
    SkinDataName = 'statusbar'
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
    Caption = 'bsSkinStatusBar1'
    Align = alBottom
    SizeGrip = False
  end
  object bsSkinExPanel1: TbsSkinExPanel
    Left = 0
    Top = 0
    Width = 1025
    Height = 129
    HintImageIndex = 0
    TabOrder = 2
    SkinData = FrmPrincipal.Skindata
    SkinDataName = 'expanel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    CaptionImageIndex = -1
    NumGlyphs = 1
    Spacing = 2
    RealWidth = 0
    RealHeight = 0
    ShowRollButton = True
    ShowCloseButton = True
    DefaultCaptionHeight = 21
    RollState = False
    RollKind = rkRollVertical
    Moveable = False
    Sizeable = False
    Align = alTop
    Caption = 'Propriedades do Grafico'
    DesignSize = (
      1025
      129)
    object BtnAtualizar: TbsSkinSpeedButton
      Left = 868
      Top = 49
      Width = 123
      Height = 36
      HintImageIndex = 0
      Anchors = [akTop, akRight]
      SkinData = FrmPrincipal.Skindata
      SkinDataName = 'bigtoolbutton'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -15
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      CheckedMode = False
      ImageList = FrmPrincipal.Imagebutoes
      UseSkinSize = False
      UseSkinFontColor = True
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      ImageIndex = 3
      RepeatMode = False
      RepeatInterval = 100
      Transparent = False
      Flat = False
      AllowAllUp = False
      Down = False
      GroupIndex = 0
      Caption = '  Atualizar'
      ShowCaption = True
      NumGlyphs = 1
      Spacing = 1
      OnClick = BtnAtualizarClick
    end
    object bsSkinGroupBox1: TbsSkinGroupBox
      Left = 0
      Top = 22
      Width = 257
      Height = 102
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
      Caption = 'Informe o Periodo Desejado'
      object lbl01: TbsSkinStdLabel
        Left = 123
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
        Caption = 'Ano'
      end
      object lblTurma: TbsSkinStdLabel
        Left = 123
        Top = 57
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
      object cmbano: TbsSkinComboBox
        Left = 150
        Top = 27
        Width = 89
        Height = 20
        HintImageIndex = 0
        TabOrder = 0
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'combobox'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        UseSkinSize = True
        ToolButtonStyle = False
        AlphaBlend = False
        AlphaBlendValue = 0
        AlphaBlendAnimation = False
        ListBoxCaptionMode = False
        ListBoxDefaultFont.Charset = DEFAULT_CHARSET
        ListBoxDefaultFont.Color = clWindowText
        ListBoxDefaultFont.Height = 14
        ListBoxDefaultFont.Name = 'Arial'
        ListBoxDefaultFont.Style = []
        ListBoxDefaultCaptionFont.Charset = DEFAULT_CHARSET
        ListBoxDefaultCaptionFont.Color = clWindowText
        ListBoxDefaultCaptionFont.Height = 14
        ListBoxDefaultCaptionFont.Name = 'Arial'
        ListBoxDefaultCaptionFont.Style = []
        ListBoxDefaultItemHeight = 20
        ListBoxCaptionAlignment = taLeftJustify
        ListBoxUseSkinFont = True
        ListBoxUseSkinItemHeight = True
        ListBoxWidth = 0
        HideSelection = True
        AutoComplete = True
        ImageIndex = 0
        CharCase = ecNormal
        DefaultColor = clWindow
        Text = '2008'
        Items.Strings = (
          '2004'
          '2005'
          '2006'
          '2007'
          '2008'
          '2009')
        ItemIndex = 4
        DropDownCount = 8
        HorizontalExtent = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        Sorted = False
        Style = bscbFixedStyle
      end
      object cmbMes: TbsSkinComboBox
        Left = 24
        Top = 27
        Width = 89
        Height = 20
        HintImageIndex = 0
        TabOrder = 1
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'combobox'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        UseSkinSize = True
        ToolButtonStyle = False
        AlphaBlend = False
        AlphaBlendValue = 0
        AlphaBlendAnimation = False
        ListBoxCaptionMode = False
        ListBoxDefaultFont.Charset = DEFAULT_CHARSET
        ListBoxDefaultFont.Color = clWindowText
        ListBoxDefaultFont.Height = 14
        ListBoxDefaultFont.Name = 'Arial'
        ListBoxDefaultFont.Style = []
        ListBoxDefaultCaptionFont.Charset = DEFAULT_CHARSET
        ListBoxDefaultCaptionFont.Color = clWindowText
        ListBoxDefaultCaptionFont.Height = 14
        ListBoxDefaultCaptionFont.Name = 'Arial'
        ListBoxDefaultCaptionFont.Style = []
        ListBoxDefaultItemHeight = 20
        ListBoxCaptionAlignment = taLeftJustify
        ListBoxUseSkinFont = True
        ListBoxUseSkinItemHeight = True
        ListBoxWidth = 0
        HideSelection = True
        AutoComplete = True
        ImageIndex = 0
        CharCase = ecNormal
        DefaultColor = clWindow
        Text = 'Nenhum'
        Items.Strings = (
          'Nenhum'
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
        ItemIndex = 0
        DropDownCount = 8
        HorizontalExtent = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        Sorted = False
        Style = bscbFixedStyle
      end
      object dtpData_Ini: TbsSkinDateEdit
        Left = 24
        Top = 52
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
        WeekNumbers = False
        ShowToday = False
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
        TabOrder = 2
        LeftImageIndex = -1
        LeftImageHotIndex = -1
        LeftImageDownIndex = -1
        RightImageIndex = -1
        RightImageHotIndex = -1
        RightImageDownIndex = -1
      end
      object dtpData_Fim: TbsSkinDateEdit
        Left = 150
        Top = 52
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
        WeekNumbers = False
        ShowToday = False
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
      object cmbPeriodo: TbsSkinComboBox
        Left = 23
        Top = 74
        Width = 215
        Height = 20
        HintImageIndex = 0
        TabOrder = 4
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'combobox'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        UseSkinSize = True
        ToolButtonStyle = False
        AlphaBlend = False
        AlphaBlendValue = 0
        AlphaBlendAnimation = False
        ListBoxCaptionMode = False
        ListBoxDefaultFont.Charset = DEFAULT_CHARSET
        ListBoxDefaultFont.Color = clWindowText
        ListBoxDefaultFont.Height = 14
        ListBoxDefaultFont.Name = 'Arial'
        ListBoxDefaultFont.Style = []
        ListBoxDefaultCaptionFont.Charset = DEFAULT_CHARSET
        ListBoxDefaultCaptionFont.Color = clWindowText
        ListBoxDefaultCaptionFont.Height = 14
        ListBoxDefaultCaptionFont.Name = 'Arial'
        ListBoxDefaultCaptionFont.Style = []
        ListBoxDefaultItemHeight = 20
        ListBoxCaptionAlignment = taLeftJustify
        ListBoxUseSkinFont = True
        ListBoxUseSkinItemHeight = True
        ListBoxWidth = 0
        HideSelection = True
        AutoComplete = True
        ImageIndex = -1
        CharCase = ecNormal
        DefaultColor = clWindow
        Text = 'Nenhum'
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
        ItemIndex = 0
        DropDownCount = 8
        HorizontalExtent = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        Sorted = False
        Style = bscbFixedStyle
        OnChange = cmbPeriodoChange
      end
    end
    object bsSkinGroupBox2: TbsSkinGroupBox
      Left = 256
      Top = 22
      Width = 257
      Height = 102
      HintImageIndex = 0
      TabOrder = 1
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
      Caption = 'Detalhes do Grafico'
      object lblParcelas: TbsSkinStdLabel
        Left = 101
        Top = 83
        Width = 69
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
        Caption = 'Atde. Parcelas'
        Visible = False
      end
      object CmbTipoGrafico: TbsSkinComboBox
        Left = 3
        Top = 79
        Width = 87
        Height = 20
        HintImageIndex = 0
        TabOrder = 0
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'combobox'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        UseSkinSize = True
        ToolButtonStyle = False
        AlphaBlend = False
        AlphaBlendValue = 0
        AlphaBlendAnimation = False
        ListBoxCaptionMode = False
        ListBoxDefaultFont.Charset = DEFAULT_CHARSET
        ListBoxDefaultFont.Color = clWindowText
        ListBoxDefaultFont.Height = 14
        ListBoxDefaultFont.Name = 'Arial'
        ListBoxDefaultFont.Style = []
        ListBoxDefaultCaptionFont.Charset = DEFAULT_CHARSET
        ListBoxDefaultCaptionFont.Color = clWindowText
        ListBoxDefaultCaptionFont.Height = 14
        ListBoxDefaultCaptionFont.Name = 'Arial'
        ListBoxDefaultCaptionFont.Style = []
        ListBoxDefaultItemHeight = 20
        ListBoxCaptionAlignment = taLeftJustify
        ListBoxUseSkinFont = True
        ListBoxUseSkinItemHeight = True
        ListBoxWidth = 0
        HideSelection = True
        AutoComplete = True
        ImageIndex = 0
        CharCase = ecNormal
        DefaultColor = clWindow
        Text = 'Barras '
        Items.Strings = (
          'Barras '
          'Pizza'
          'Linha')
        ItemIndex = 0
        DropDownCount = 8
        HorizontalExtent = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        Sorted = False
        Style = bscbFixedStyle
      end
      object CmbTipoAnalise: TbsSkinComboBox
        Left = 7
        Top = 25
        Width = 234
        Height = 20
        HintImageIndex = 0
        TabOrder = 1
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'combobox'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        UseSkinSize = True
        ToolButtonStyle = False
        AlphaBlend = False
        AlphaBlendValue = 0
        AlphaBlendAnimation = False
        ListBoxCaptionMode = False
        ListBoxDefaultFont.Charset = DEFAULT_CHARSET
        ListBoxDefaultFont.Color = clWindowText
        ListBoxDefaultFont.Height = 14
        ListBoxDefaultFont.Name = 'Arial'
        ListBoxDefaultFont.Style = []
        ListBoxDefaultCaptionFont.Charset = DEFAULT_CHARSET
        ListBoxDefaultCaptionFont.Color = clWindowText
        ListBoxDefaultCaptionFont.Height = 14
        ListBoxDefaultCaptionFont.Name = 'Arial'
        ListBoxDefaultCaptionFont.Style = []
        ListBoxDefaultItemHeight = 20
        ListBoxCaptionAlignment = taLeftJustify
        ListBoxUseSkinFont = True
        ListBoxUseSkinItemHeight = True
        ListBoxWidth = 0
        HideSelection = True
        AutoComplete = True
        ImageIndex = 0
        CharCase = ecNormal
        DefaultColor = clWindow
        Text = 'Evolu'#231#227'o Mes a Mes de Despesas'
        Items.Strings = (
          'Evolu'#231#227'o Mes a Mes de Despesas'
          'Evolu'#231#227'o de Compras Parceladas'
          'Compras Parceladas no Mes')
        ItemIndex = 0
        DropDownCount = 8
        HorizontalExtent = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        Sorted = False
        Style = bscbFixedStyle
        OnChange = CmbTipoAnaliseChange
      end
      object edtQtdeParcelas: TbsSkinSpinEdit
        Left = 176
        Top = 79
        Width = 73
        Height = 19
        HintImageIndex = 0
        TabOrder = 2
        Visible = False
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'spinedit'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        DefaultColor = clWindow
        UseSkinSize = True
        ValueType = vtInteger
        Value = 1.000000000000000000
        Increment = 1.000000000000000000
        EditorEnabled = True
        MaxLength = 0
      end
    end
    object chkMostraLegenda: TbsSkinCheckRadioBox
      Left = 263
      Top = 74
      Width = 187
      Height = 14
      HintImageIndex = 0
      TabOrder = 2
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
      UseSkinFontColor = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Mostra Legenda'
    end
    object infoGrafico: TbsSkinExPanel
      Left = 511
      Top = 22
      Width = 274
      Height = 100
      HintImageIndex = 0
      TabOrder = 3
      SkinData = FrmPrincipal.Skindata
      SkinDataName = 'expanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      CaptionImageIndex = -1
      NumGlyphs = 1
      Spacing = 2
      RealWidth = 0
      RealHeight = 0
      ShowRollButton = False
      ShowCloseButton = False
      DefaultCaptionHeight = 21
      RollState = False
      RollKind = rkRollVertical
      Moveable = False
      Sizeable = False
      Caption = 'Informa'#231#245'es do Grafico'
      object MemoInfo: TbsSkinMemo
        Left = 1
        Top = 21
        Width = 272
        Height = 78
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'MemoInfo')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clBlack
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        UseSkinFont = True
        UseSkinFontColor = True
        BitMapBG = True
        SkinDataName = 'memo'
      end
    end
  end
  object QryGrafico: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 604
    Top = 32
  end
  object qryCadContas: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 580
    Top = 40
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Active = False
    Components = <
      item
        Component = cmbano
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'AlphaBlend'
          'AlphaBlendAnimation'
          'AlphaBlendValue'
          'Anchors'
          'AutoComplete'
          'CharCase'
          'Cursor'
          'CustomHint'
          'DefaultColor'
          'DefaultFont'
          'DefaultHeight'
          'DefaultWidth'
          'DropDownCount'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'HintImageIndex'
          'HintImageList'
          'HintTitle'
          'HorizontalExtent'
          'ImageIndex'
          'Images'
          'ItemIndex'
          'Items'
          'Left'
          'ListBoxCaption'
          'ListBoxCaptionAlignment'
          'ListBoxCaptionMode'
          'ListBoxDefaultCaptionFont'
          'ListBoxDefaultFont'
          'ListBoxDefaultItemHeight'
          'ListBoxUseSkinFont'
          'ListBoxUseSkinItemHeight'
          'ListBoxWidth'
          'Margins'
          'Name'
          'ParentCustomHint'
          'PopupMenu'
          'ShowHint'
          'SkinData'
          'SkinDataName'
          'Sorted'
          'Style'
          'TabOrder'
          'TabStop'
          'TabWidths'
          'Tag'
          'Text'
          'ToolButtonStyle'
          'Top'
          'UseSkinFont'
          'UseSkinSize'
          'Visible'
          'Width')
      end
      item
        Component = cmbMes
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'AlphaBlend'
          'AlphaBlendAnimation'
          'AlphaBlendValue'
          'Anchors'
          'AutoComplete'
          'CharCase'
          'Cursor'
          'CustomHint'
          'DefaultColor'
          'DefaultFont'
          'DefaultHeight'
          'DefaultWidth'
          'DropDownCount'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'HintImageIndex'
          'HintImageList'
          'HintTitle'
          'HorizontalExtent'
          'ImageIndex'
          'Images'
          'ItemIndex'
          'Items'
          'Left'
          'ListBoxCaption'
          'ListBoxCaptionAlignment'
          'ListBoxCaptionMode'
          'ListBoxDefaultCaptionFont'
          'ListBoxDefaultFont'
          'ListBoxDefaultItemHeight'
          'ListBoxUseSkinFont'
          'ListBoxUseSkinItemHeight'
          'ListBoxWidth'
          'Margins'
          'Name'
          'ParentCustomHint'
          'PopupMenu'
          'ShowHint'
          'SkinData'
          'SkinDataName'
          'Sorted'
          'Style'
          'TabOrder'
          'TabStop'
          'TabWidths'
          'Tag'
          'Text'
          'ToolButtonStyle'
          'Top'
          'UseSkinFont'
          'UseSkinSize'
          'Visible'
          'Width')
      end
      item
        Component = cmbPeriodo
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'AlphaBlend'
          'AlphaBlendAnimation'
          'AlphaBlendValue'
          'Anchors'
          'AutoComplete'
          'CharCase'
          'Cursor'
          'CustomHint'
          'DefaultColor'
          'DefaultFont'
          'DefaultHeight'
          'DefaultWidth'
          'DropDownCount'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'HintImageIndex'
          'HintImageList'
          'HintTitle'
          'HorizontalExtent'
          'ImageIndex'
          'Images'
          'ItemIndex'
          'Items'
          'Left'
          'ListBoxCaption'
          'ListBoxCaptionAlignment'
          'ListBoxCaptionMode'
          'ListBoxDefaultCaptionFont'
          'ListBoxDefaultFont'
          'ListBoxDefaultItemHeight'
          'ListBoxUseSkinFont'
          'ListBoxUseSkinItemHeight'
          'ListBoxWidth'
          'Margins'
          'Name'
          'ParentCustomHint'
          'PopupMenu'
          'ShowHint'
          'SkinData'
          'SkinDataName'
          'Sorted'
          'Style'
          'TabOrder'
          'TabStop'
          'TabWidths'
          'Tag'
          'Text'
          'ToolButtonStyle'
          'Top'
          'UseSkinFont'
          'UseSkinSize'
          'Visible'
          'Width')
      end
      item
        Component = CmbTipoGrafico
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'AlphaBlend'
          'AlphaBlendAnimation'
          'AlphaBlendValue'
          'Anchors'
          'AutoComplete'
          'CharCase'
          'Cursor'
          'CustomHint'
          'DefaultColor'
          'DefaultFont'
          'DefaultHeight'
          'DefaultWidth'
          'DropDownCount'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'HintImageIndex'
          'HintImageList'
          'HintTitle'
          'HorizontalExtent'
          'ImageIndex'
          'Images'
          'ItemIndex'
          'Items'
          'Left'
          'ListBoxCaption'
          'ListBoxCaptionAlignment'
          'ListBoxCaptionMode'
          'ListBoxDefaultCaptionFont'
          'ListBoxDefaultFont'
          'ListBoxDefaultItemHeight'
          'ListBoxUseSkinFont'
          'ListBoxUseSkinItemHeight'
          'ListBoxWidth'
          'Margins'
          'Name'
          'ParentCustomHint'
          'PopupMenu'
          'ShowHint'
          'SkinData'
          'SkinDataName'
          'Sorted'
          'Style'
          'TabOrder'
          'TabStop'
          'TabWidths'
          'Tag'
          'Text'
          'ToolButtonStyle'
          'Top'
          'UseSkinFont'
          'UseSkinSize'
          'Visible'
          'Width')
      end
      item
        Component = dtpData_Fim
        Properties.Strings = (
          'Align'
          'Alignment'
          'AlignWithMargins'
          'AlphaBlend'
          'AlphaBlendAnimation'
          'AlphaBlendValue'
          'Anchors'
          'AutoSelect'
          'BiDiMode'
          'ButtonMode'
          'CalendarBoldDays'
          'CalendarFont'
          'CalendarHeight'
          'CalendarSkinDataName'
          'CalendarUseSkinFont'
          'CalendarWidth'
          'CharCase'
          'Constraints'
          'Cursor'
          'CustomHint'
          'Date'
          'DefaultFont'
          'DefaultHeight'
          'DefaultWidth'
          'DragCursor'
          'DragKind'
          'DragMode'
          'EditMask'
          'Enabled'
          'FirstDayOfWeek'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'Images'
          'ImeMode'
          'ImeName'
          'Left'
          'LeftImageDownIndex'
          'LeftImageHotIndex'
          'LeftImageIndex'
          'Margins'
          'MaxLength'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentCustomHint'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ReadOnly'
          'RightImageDownIndex'
          'RightImageHotIndex'
          'RightImageIndex'
          'ShowHint'
          'SkinData'
          'SkinDataName'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'TodayDefault'
          'Top'
          'UseSkinFont'
          'Visible'
          'Width')
      end
      item
        Component = dtpData_Ini
        Properties.Strings = (
          'Align'
          'Alignment'
          'AlignWithMargins'
          'AlphaBlend'
          'AlphaBlendAnimation'
          'AlphaBlendValue'
          'Anchors'
          'AutoSelect'
          'BiDiMode'
          'ButtonMode'
          'CalendarBoldDays'
          'CalendarFont'
          'CalendarHeight'
          'CalendarSkinDataName'
          'CalendarUseSkinFont'
          'CalendarWidth'
          'CharCase'
          'Constraints'
          'Cursor'
          'CustomHint'
          'Date'
          'DefaultFont'
          'DefaultHeight'
          'DefaultWidth'
          'DragCursor'
          'DragKind'
          'DragMode'
          'EditMask'
          'Enabled'
          'FirstDayOfWeek'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'Images'
          'ImeMode'
          'ImeName'
          'Left'
          'LeftImageDownIndex'
          'LeftImageHotIndex'
          'LeftImageIndex'
          'Margins'
          'MaxLength'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentCustomHint'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ReadOnly'
          'RightImageDownIndex'
          'RightImageHotIndex'
          'RightImageIndex'
          'ShowHint'
          'SkinData'
          'SkinDataName'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'TodayDefault'
          'Top'
          'UseSkinFont'
          'Visible'
          'Width')
      end>
    StorageName = 'Teste'
    StorageType = stStream
    Left = 456
    Top = 216
  end
end
