object frmcadPrioridades: TfrmcadPrioridades
  Left = 282
  Top = 173
  BorderIcons = []
  Caption = 'Cadastro de Metas e Prioridades'
  ClientHeight = 393
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 374
    Width = 648
    Height = 19
    Panels = <>
  end
  object PagPrincipal: TbsSkinPageControl
    Left = 0
    Top = 57
    Width = 648
    Height = 317
    ActivePage = pagConsulta
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    MouseWheelSupport = False
    TabExtededDraw = False
    TabsOffset = 0
    TabSpacing = 1
    TextInHorizontal = False
    TabsInCenter = False
    FreeOnClose = False
    ShowCloseButtons = False
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
    ExplicitTop = 44
    ExplicitHeight = 330
    object pagConsulta: TbsSkinTabSheet
      Caption = 'Consulta'
      ExplicitHeight = 309
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 646
        Height = 296
        Align = alClient
        TabOrder = 0
        LevelTabs.Style = 8
        ExplicitHeight = 309
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcCadPriridades
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = cxGrid1DBTableView1Prioridade
              DisplayText = 'Quantidade Total'
              Sorted = True
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.StyleSheet = GridTableViewStyleSheetDevExpress
          object cxGrid1DBTableView1Descricao: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
          end
          object cxGrid1DBTableView1Prioridade: TcxGridDBColumn
            DataBinding.FieldName = 'Prioridade'
            Width = 81
          end
          object cxGrid1DBTableView1Grupo: TcxGridDBColumn
            DataBinding.FieldName = 'Grupo'
            Width = 137
          end
          object cxGrid1DBTableView1concluido: TcxGridDBColumn
            DataBinding.FieldName = 'concluido'
            Width = 71
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object bsSkinTabSheet2: TbsSkinTabSheet
      Caption = 'Cadastro'
      ExplicitHeight = 309
      object Codigo: TLabel
        Left = 29
        Top = 24
        Width = 49
        Height = 14
        Caption = 'Descricao'
      end
      object Label2: TLabel
        Left = 54
        Top = 56
        Width = 30
        Height = 14
        Caption = 'Grupo'
      end
      object Label3: TLabel
        Left = 35
        Top = 88
        Width = 48
        Height = 14
        Caption = 'Prioridade'
      end
      object Label1: TLabel
        Left = 29
        Top = 115
        Width = 56
        Height = 14
        Caption = 'Concluido ?'
      end
      object cmbGrupos: TComboBox
        Left = 87
        Top = 48
        Width = 145
        Height = 22
        TabOrder = 0
        Text = 'cmbGrupos'
      end
      object cmbPrioridade: TComboBox
        Left = 87
        Top = 80
        Width = 145
        Height = 22
        ItemIndex = 2
        TabOrder = 1
        Text = 'Prioridade 3'
        Items.Strings = (
          'Prioridade 1'
          'Prioridade 2'
          'Prioridade 3')
      end
      object edtDescricao: TEdit
        Left = 89
        Top = 16
        Width = 334
        Height = 22
        TabOrder = 2
        Text = 'edtDescricao'
      end
      object cmbSinNao: TComboBox
        Left = 87
        Top = 107
        Width = 145
        Height = 22
        ItemIndex = 1
        TabOrder = 3
        Text = 'N'#227'o'
        Items.Strings = (
          'Sim'
          'N'#227'o')
      end
    end
  end
  object bsSkinCoolBar3: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 648
    Height = 57
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar3
        ImageIndex = -1
        MinHeight = 53
        Width = 642
      end>
    SkinDataName = 'controlbar'
    SkinData = FrmPrincipal.Skindata
    SkinBevel = True
    TabOrder = 2
    object bsSkinToolBar3: TbsSkinToolBar
      Left = 11
      Top = 0
      Width = 633
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
      Images = FrmPrincipal.Imagebutoes
      object btnincluir: TbsSkinSpeedButton
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
      end
      object btnalterar: TbsSkinSpeedButton
        Left = 140
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
        ExplicitLeft = 25
        ExplicitTop = 14
      end
      object btnexcluir: TbsSkinSpeedButton
        Left = 70
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
        ExplicitLeft = -38
        ExplicitTop = 14
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 210
        Top = 0
        Width = 63
        Height = 53
        Align = alLeft
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 32
        ExplicitTop = 1
      end
      object BtnConcluir: TbsSkinSpeedButton
        Left = 273
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
        Caption = '&Concluir'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = BtnConcluirClick
        ExplicitTop = 8
        ExplicitHeight = 40
      end
      object btnok: TbsSkinSpeedButton
        Left = 343
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
        ExplicitHeight = 40
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 413
        Top = 0
        Width = 140
        Height = 53
        Align = alLeft
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
        ExplicitHeight = 40
      end
      object btnFechar: TbsSkinSpeedButton
        Left = 553
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
        ExplicitTop = 8
        ExplicitHeight = 40
      end
    end
  end
  object qryCadPrioridades: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from T_Prioridades')
    Left = 180
    Top = 128
  end
  object srcCadPriridades: TDataSource
    DataSet = cdsPrioridades
    Left = 179
    Top = 212
  end
  object cdsPrioridades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrioridades'
    Left = 179
    Top = 184
  end
  object dspPrioridades: TDataSetProvider
    DataSet = qryCadPrioridades
    Left = 179
    Top = 156
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
    Left = 144
    Top = 160
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 281
    Top = 192
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16247513
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.FilterBox = cxStyle5
      Styles.Inactive = cxStyle10
      Styles.IncSearch = cxStyle11
      Styles.Selection = cxStyle14
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      BuiltIn = True
    end
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = cxGrid1
        Properties.Strings = (
          'Align'
          'Anchors'
          'BevelEdges'
          'BevelInner'
          'BevelKind'
          'BevelOuter'
          'BevelWidth'
          'BorderStyle'
          'BorderWidth'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'DragOpening'
          'DragOpeningWaitTime'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'LevelTabs'
          'LookAndFeel'
          'Name'
          'ParentFont'
          'PopupMenu'
          'RootLevelOptions'
          'RootLevelStyles'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1
        Properties.Strings = (
          'BackgroundBitmaps'
          'DataController'
          'DateTimeHandling'
          'DragMode'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FilterBox'
          'Filtering'
          'FilterRow'
          'Name'
          'NavigatorButtons'
          'NewItemRow'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsData'
          'OptionsSelection'
          'OptionsView'
          'PopupMenu'
          'Preview'
          'Styles'
          'Synchronization'
          'Tag')
      end
      item
        Component = cxGrid1DBTableView1concluido
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Descricao
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Grupo
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxGrid1DBTableView1Prioridade
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = cxGrid1Level1
        Properties.Strings = (
          'Caption'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'GridView'
          'ImageIndex'
          'MaxDetailHeight'
          'Name'
          'Options'
          'Styles'
          'Tag'
          'Visible')
      end
      item
        Component = cxStyle1
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyle10
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyle11
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyle12
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyle13
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyle14
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyle2
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyle3
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyle4
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyle5
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyle6
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyle7
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyle8
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyle9
        Properties.Strings = (
          'AssignedValues'
          'Bitmap'
          'Color'
          'Font'
          'Name'
          'Tag'
          'TextColor')
      end
      item
        Component = cxStyleRepository1
        Properties.Strings = (
          'Name'
          'Scalable'
          'Tag')
      end>
    StorageName = 'cxPropertiesStore1'
    Left = 217
    Top = 136
  end
end
