object frmCadDespesas: TfrmCadDespesas
  Left = 138
  Top = 50
  BorderIcons = []
  Caption = 'Cadastro e consulta de des Despesa'
  ClientHeight = 542
  ClientWidth = 915
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
  object PanelConsulta: TbsSkinPanel
    Left = 0
    Top = 59
    Width = 915
    Height = 69
    HintImageIndex = 0
    TabOrder = 1
    SkinData = FrmPrincipal.Skindata
    SkinDataName = 'panel'
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
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'PanelConsulta'
    Align = alTop
    object bsSkinStdLabel1: TbsSkinStdLabel
      Left = 67
      Top = 41
      Width = 84
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
      Caption = 'Tipo de despesas'
    end
    object bsSkinStdLabel2: TbsSkinStdLabel
      Left = 444
      Top = 43
      Width = 101
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
      Caption = 'Forma de Pagamento'
    end
    object lblMes: TbsSkinStdLabel
      Left = 430
      Top = 16
      Width = 20
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
      Caption = 'Mes'
    end
    object lbl01: TbsSkinStdLabel
      Left = 535
      Top = 17
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
    object bsSkinSpeedButton1: TbsSkinSpeedButton
      Left = 415
      Top = 35
      Width = 20
      Height = 22
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
      CheckedMode = False
      UseSkinSize = False
      UseSkinFontColor = True
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      ImageIndex = 0
      RepeatMode = False
      RepeatInterval = 100
      Transparent = False
      Flat = False
      AllowAllUp = False
      Down = False
      GroupIndex = 0
      ShowCaption = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00F4C69200F4C69200F4C69200F4C69200F4C69200F4C6
        9200F4C69200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00F4C69200FDF4D100FEF9D800FCF0CE00F5E6C200FBE3C300F3DA
        B500F8D1A900F4C69200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F4C69200FFFDDE00FFFFE000FFFDDE00FFF8DD00B6D4920045A932000C9A
        0C0040A22600EAD3A900F4C69200FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F4C69200FEFBDC00FFFFE100FFFEE000FFFFE800ACD79100008D000030A3
        23003EA72D0073C36700FFE3C400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F2B47500F9C78D00FBE1B400FEF2CF00FEF8DF00B9DC9D0036A224006EB8
        5500FFF8F00087C67200FCE5C600F4C69200FF00FF00FF00FF00FF00FF00F2BC
        8400F5B77600F8BB7C00F9C18500FCD09B00FEE3C00085C26900FDF4DB0089C3
        6C004EB1460062B95300FCF4DC00F4C69200FF00FF00FF00FF00FF00FF00F3BA
        8100F7B77600F8BE8100FAC68D00FDD09C00FFE7C5005EAF41007DC46B00A7D6
        9400008F000021A32000FFFCEC00F4C69200FF00FF00FF00FF00FF00FF00F0B7
        7A00F7B87700F8BF8200FBC88E00FDD29D00FFE5C000D0DEAA00069806000094
        00000096000027A52600FFFCF100F2C08400FF00FF00FF00FF00F2BD8700F5B9
        7A00F7B77600F8BD7F00F7C48A00F9CC9600FBD4A400FDE1BD00CBCE910070AF
        4900A3C87C00AFD59300F9FBE500F2C08400F3C18B00FF00FF00F1BA8200F5B9
        7A00F6C99500F6C99500F6C99500EFC08700EFC08700EFC08700F1C89600F2CD
        9F00FFDFB900FED8AD00F3D6A700F6DCB100F3C18B00FF00FF00F3C18A00F6C9
        9500F0B87C00ECAE6E00EEB47500F1BF8600F4CD9900F7DCAF00FBEBC600FEF8
        D900FFFCDE00FEF9DA00FBE9C100F5D09B00F2C08800FF00FF00F6C99500EDAF
        6F00ECAB6A00ECAD6C00EEB57700F1C18800F4CE9B00F7DCAF00FBEBC400FEF9
        D800FFFCDE00FFFCDD00FFFEE100FEFBDB00F1C08400FF00FF00F2BE8600EBAA
        6800ECAD6C00ECAD6C00EEB67900F2C28A00F4CF9D00F8DDB100FBECC600FEFA
        D900FFFCDD00FFFCDD00FFFCDD00FFFFE500F1C08400FF00FF00F5C89400EFB5
        7900ECAC6A00ECAD6C00EFB67A00F2C48D00F5D29F00F8DFB400FCEEC900FFFC
        DD00FFFEE000FFFFE100FFFEDF00FBE8BF00F1C08400FF00FF00FF00FF00F2C0
        8400F2C08400EEB47500F0B97E00F2C58F00F5D4A400F9E3BA00FDF2CF00FEF8
        D700FDF1CC00FBE8C000F6D09D00F2C08400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00F2C08400F2C08400F2C08400F2C08400F2C08400F2C08400F2C0
        8400F2C08400F2C08400FF00FF00FF00FF00FF00FF00FF00FF00}
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinSpeedButton1Click
    end
    object bsSkinSpeedButton2: TbsSkinSpeedButton
      Left = 831
      Top = 35
      Width = 20
      Height = 22
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
      CheckedMode = False
      UseSkinSize = False
      UseSkinFontColor = True
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      ImageIndex = 0
      RepeatMode = False
      RepeatInterval = 100
      Transparent = False
      Flat = False
      AllowAllUp = False
      Down = False
      GroupIndex = 0
      ShowCaption = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00F4C69200F4C69200F4C69200F4C69200F4C69200F4C6
        9200F4C69200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00F4C69200FDF4D100FEF9D800FCF0CE00F5E6C200FBE3C300F3DA
        B500F8D1A900F4C69200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F4C69200FFFDDE00FFFFE000FFFDDE00FFF8DD00B6D4920045A932000C9A
        0C0040A22600EAD3A900F4C69200FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F4C69200FEFBDC00FFFFE100FFFEE000FFFFE800ACD79100008D000030A3
        23003EA72D0073C36700FFE3C400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00F2B47500F9C78D00FBE1B400FEF2CF00FEF8DF00B9DC9D0036A224006EB8
        5500FFF8F00087C67200FCE5C600F4C69200FF00FF00FF00FF00FF00FF00F2BC
        8400F5B77600F8BB7C00F9C18500FCD09B00FEE3C00085C26900FDF4DB0089C3
        6C004EB1460062B95300FCF4DC00F4C69200FF00FF00FF00FF00FF00FF00F3BA
        8100F7B77600F8BE8100FAC68D00FDD09C00FFE7C5005EAF41007DC46B00A7D6
        9400008F000021A32000FFFCEC00F4C69200FF00FF00FF00FF00FF00FF00F0B7
        7A00F7B87700F8BF8200FBC88E00FDD29D00FFE5C000D0DEAA00069806000094
        00000096000027A52600FFFCF100F2C08400FF00FF00FF00FF00F2BD8700F5B9
        7A00F7B77600F8BD7F00F7C48A00F9CC9600FBD4A400FDE1BD00CBCE910070AF
        4900A3C87C00AFD59300F9FBE500F2C08400F3C18B00FF00FF00F1BA8200F5B9
        7A00F6C99500F6C99500F6C99500EFC08700EFC08700EFC08700F1C89600F2CD
        9F00FFDFB900FED8AD00F3D6A700F6DCB100F3C18B00FF00FF00F3C18A00F6C9
        9500F0B87C00ECAE6E00EEB47500F1BF8600F4CD9900F7DCAF00FBEBC600FEF8
        D900FFFCDE00FEF9DA00FBE9C100F5D09B00F2C08800FF00FF00F6C99500EDAF
        6F00ECAB6A00ECAD6C00EEB57700F1C18800F4CE9B00F7DCAF00FBEBC400FEF9
        D800FFFCDE00FFFCDD00FFFEE100FEFBDB00F1C08400FF00FF00F2BE8600EBAA
        6800ECAD6C00ECAD6C00EEB67900F2C28A00F4CF9D00F8DDB100FBECC600FEFA
        D900FFFCDD00FFFCDD00FFFCDD00FFFFE500F1C08400FF00FF00F5C89400EFB5
        7900ECAC6A00ECAD6C00EFB67A00F2C48D00F5D29F00F8DFB400FCEEC900FFFC
        DD00FFFEE000FFFFE100FFFEDF00FBE8BF00F1C08400FF00FF00FF00FF00F2C0
        8400F2C08400EEB47500F0B97E00F2C58F00F5D4A400F9E3BA00FDF2CF00FEF8
        D700FDF1CC00FBE8C000F6D09D00F2C08400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00F2C08400F2C08400F2C08400F2C08400F2C08400F2C08400F2C0
        8400F2C08400F2C08400FF00FF00FF00FF00FF00FF00FF00FF00}
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinSpeedButton2Click
    end
    object BtnAtualizar: TbsSkinSpeedButton
      Left = 622
      Top = 9
      Width = 109
      Height = 21
      HintImageIndex = 0
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
      UseSkinSize = False
      UseSkinFontColor = True
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      ImageIndex = 0
      RepeatMode = False
      RepeatInterval = 100
      Transparent = False
      Flat = False
      AllowAllUp = False
      Down = False
      GroupIndex = 0
      Caption = 'Atualizar'
      ShowCaption = True
      Glyph.Data = {
        360C0000424D360C000000000000360800002800000010000000100000000100
        20000000000000040000000000000000000000010000000000001C6A1C001C73
        1C0016841C001C841C001C981C001C732300237323001C7B2300237B23001C84
        23001C8F23001CA1230023732A00237B2A002A7B2A0023842A001C8F2A00238F
        2A001CA12A0023A12A002A7B3100317B310023843100238F31002A8F31002398
        310023AB31002A843800388438002A8F38002A98380023AB38002AAB3800408F
        4000319840002AA1400031A140002AB64000408F4800488F480031A1480031AB
        48002AB6480031B64800488F500038AB500038B6500031C05000508F580038B6
        580031C0580038C0580040C058005898600060A1600038C0600040C0600038CA
        600040CA600060986A0038CA6A0040CA6A0048CA6A0040D46A006AA1730040D4
        730048D4730048E0730050E0730050E07B0058E07B0050EA7B0058EA840058F4
        840058F48F0060F48F0060FF8F00FF00FF00FFFFFF0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0023842A00408F
        4800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006AA173002A8F
        3800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003198400060F4
        8F003198400060986A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A1480058F4
        840058E07B001C732300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0060A1
        6000237B2A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006AA1730058EA
        840058F4840050E07300488F4800FF00FF00FF00FF00FF00FF00FF00FF0060A1
        600038C0580023843100FF00FF00FF00FF00FF00FF00408F480050E07B0058EA
        840058EA840058F484002A7B3100FF00FF00FF00FF00FF00FF00FF00FF0060A1
        600038C0580038C0600023843100FF00FF00237B2A0040C0600050E07B0050E0
        7B0058EA840058EA84002A7B3100FF00FF00FF00FF00FF00FF00FF00FF0060A1
        600038C0580038C0580038B658001C6A1C0038B6500048D4730048E0730050E0
        7B0050E07B0050E07B002A7B3100FF00FF00FF00FF00FF00FF00FF00FF0060A1
        600031B6480031C0500038C0580038C0600040CA6A0040CA6A0048D4730048D4
        730050E07B0031984000488F4800FF00FF00FF00FF00FF00FF00FF00FF0060A1
        600031B6480031B6480038C0580038C0580040CA6A0040CA6A0040D46A0048D4
        730040C06000237B2A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0060A1
        60002AAB38002AB6400031B6480031C0500038C0580038C0600040CA6A0040CA
        6A002A7B3100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0060A1
        60002AAB38002AAB380031B6480031B6480038C0580038C0580038CA600031A1
        4800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0060A1
        600023A12A0023AB31002AAB38002AB6400031B6480031C0500038C0580038C0
        60001C732300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0060A1
        600023A12A0023A12A002AAB38002AAB380031B6480031B6480031C0500038C0
        58002A9838002A7B3100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0060A1
        60001C981C001CA1230023A12A0023AB31002AAB38002AB6400031B6480031C0
        500038C0580038C058002A7B3100FF00FF00FF00FF00FF00FF00FF00FF0060A1
        60001C841C001C841C001C8423001C842300238F2A00238F2A00238F3100238F
        31002A9838002A983800237B2A0023732A00FF00FF00FF00FF00}
      NumGlyphs = 1
      Spacing = 1
      OnClick = BtnAtualizarClick
    end
    object bsSkinSpeedButton4: TbsSkinSpeedButton
      Left = 737
      Top = 9
      Width = 120
      Height = 21
      HintImageIndex = 0
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
      UseSkinSize = False
      UseSkinFontColor = True
      WidthWithCaption = 0
      WidthWithoutCaption = 0
      ImageIndex = 0
      RepeatMode = False
      RepeatInterval = 100
      Transparent = False
      Flat = False
      AllowAllUp = False
      Down = False
      GroupIndex = 0
      Caption = 'Pagar Todos'
      ShowCaption = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        8F7A668F7A668F7A66FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF0B590EBBB595D0C1B8D0C2B4EED5BC8F7A668F7A668F
        7A668F7A66FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF097019BBCFA9
        D3C4BDC5C1BDFFEED7FFEBCFFFE5C2FFE1B6FFDEAC8F7A668F7A668F7A66FF00
        FFFF00FFFF00FFFF00FF005605A9C9A0CBBDBCC5C1BDEDE0CF554D44554D44C5
        A68FD9B695DDB68CFFD39A8F7A66FF00FFFF00FFFF00FFFF00FF00540180A77D
        CEC1C5C5C1BDE2DACFC7BAABC2BA9E554D44554D44554D44F7C59A8F7A66FF00
        FFFF00FFFF00FFFF00FF004D00689366C9C0C4C5C1BDE3DED9554D4424651F06
        45060641060D4C0B064206064306064406FF00FFFF00FFFF00FF0047004E844F
        C6C1C5C5C1BDCEC9CA738A6B044E05036203007F00017301026002035503044B
        04064406064306034603FF00FF2D692EC5C1BDC5C1BDCBCAC9135E1605520703
        8B09018603008100008200008300008600008600005F00004800FF00FF1C5A1C
        C5C1BDFFFAFF50804F0646070C971D08971605900D0289050083010081000084
        00006B00004A00FF00FFFF00FF054305C5C1BDE5EEE2094B0A10892613AA2F0E
        A3240A9C1B079511048C09018A03007000004B00FF00FFFF00FFFF00FF014201
        A6A0A52769280962141EBF4D19B54115AD3511A6290C9F1F099C1804830A004D
        00FF00FFFF00FFFF00FFFF00FF01490137583509490A1BB7471EBC4C1DC14D1B
        BD4717BA3D14AD330D971F015402FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        09520D175723248945237F40238240219545218B4118B53F035D06FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF2D312B283D2A19401C1B471F1E45231D
        582921502B076810FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF2D312B2D312B2D312B2B362D2B372D223C23FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinSpeedButton4Click
    end
    object bsSkinStdLabel5: TbsSkinStdLabel
      Left = 67
      Top = 17
      Width = 36
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
      Caption = 'Periodo'
    end
    object bsSkinStdLabel10: TbsSkinStdLabel
      Left = 202
      Top = 14
      Width = 6
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
      Caption = 'a'
    end
    object cmbPesqNome_TipoDespesa: TbsSkinDBLookupComboBox
      Left = 232
      Top = 37
      Width = 177
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
      DefaultHeight = 20
      UseSkinFont = True
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      KeyField = 'codigo'
      ListField = 'descricao;codigo'
      ListSource = srcCadtipoDespesas
      OnClick = cmbPesqNome_TipoDespesaClick
    end
    object cmbPesqCod_TipoDespesa: TbsSkinDBLookupComboBox
      Left = 152
      Top = 37
      Width = 74
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
      DefaultHeight = 20
      UseSkinFont = True
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      KeyField = 'codigo'
      ListField = 'Codigo;descricao'
      ListSource = srcCadtipoDespesas
      OnClick = cmbPesqCod_TipoDespesaClick
    end
    object cmbMes: TbsSkinComboBox
      Left = 456
      Top = 10
      Width = 73
      Height = 20
      HintImageIndex = 0
      TabOrder = 2
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
      ItemIndex = -1
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
    object cmbano: TbsSkinComboBox
      Left = 560
      Top = 10
      Width = 56
      Height = 20
      HintImageIndex = 0
      TabOrder = 3
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
    object cmbPesqNome_TipoPagamento: TbsSkinDBLookupComboBox
      Left = 637
      Top = 36
      Width = 191
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
      DefaultHeight = 20
      UseSkinFont = True
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      KeyField = 'codigo'
      ListField = 'descricao;codigo'
      ListSource = srcCadCodtasCorrente
      OnClick = cmbPesqNome_TipoPagamentoClick
    end
    object cmbPesqCod_TipoPagamento: TbsSkinDBLookupComboBox
      Left = 551
      Top = 36
      Width = 83
      Height = 20
      HintImageIndex = 0
      TabOrder = 5
      SkinData = FrmPrincipal.Skindata
      SkinDataName = 'combobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 20
      UseSkinFont = True
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      KeyField = 'codigo'
      ListField = 'codigo;descricao'
      ListSource = srcCadCodtasCorrente
      OnClick = cmbPesqCod_TipoPagamentoClick
    end
    object edtPeriodoIni: TbsSkinDateEdit
      Left = 109
      Top = 12
      Width = 86
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
      TabOrder = 6
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object edtPeriodoFim: TbsSkinDateEdit
      Left = 214
      Top = 12
      Width = 86
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
      TabOrder = 7
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object cmbPeriodo: TbsSkinComboBox
      Left = 305
      Top = 11
      Width = 119
      Height = 20
      HintImageIndex = 0
      TabOrder = 8
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 523
    Width = 915
    Height = 19
    Panels = <>
  end
  object pagCadastro: TbsSkinPageControl
    Left = 0
    Top = 128
    Width = 915
    Height = 395
    ActivePage = bsSkinTabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = pagCadastroChange
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
    SkinData = FrmPrincipal.PagSkinData
    SkinDataName = 'tab'
    object bsSkinTabSheet1: TbsSkinTabSheet
      Caption = 'Consulta'
      object GridDespesas: TcxGrid
        Left = 0
        Top = 0
        Width = 913
        Height = 374
        Hint = 'Bot'#227'o Direito ver Op'#231#245'es'
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object GridDespesasDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = True
          NavigatorButtons.PriorPage.Visible = True
          NavigatorButtons.Prior.Visible = True
          NavigatorButtons.Next.Visible = True
          NavigatorButtons.NextPage.Visible = True
          NavigatorButtons.Last.Visible = True
          NavigatorButtons.Insert.Visible = True
          NavigatorButtons.Append.Visible = False
          NavigatorButtons.Delete.Visible = True
          NavigatorButtons.Edit.Visible = True
          NavigatorButtons.Post.Visible = True
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.Refresh.Visible = True
          NavigatorButtons.SaveBookmark.Visible = True
          NavigatorButtons.GotoBookmark.Visible = True
          NavigatorButtons.Filter.Visible = True
          DataController.DataSource = SrcCadDespesas
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = ',0.00'
              Kind = skSum
              Column = GridDespesasDBTableView1Column4
              DisplayText = 'teste'
            end
            item
              Format = ',0.00'
              Position = spFooter
              Column = GridDespesasDBTableView1Column4
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00'
              Kind = skSum
              Column = GridDespesasDBTableView1Column4
              DisplayText = 'Total'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          Styles.StyleSheet = FrmPrincipal.GridTableViewStyleSheetDevExpress
          object Colum_dia: TcxGridDBColumn
            DataBinding.FieldName = 'Dia'
            Width = 30
          end
          object Colum_Mes: TcxGridDBColumn
            DataBinding.FieldName = 'Mes'
            Width = 30
          end
          object Colum_Ano: TcxGridDBColumn
            DataBinding.FieldName = 'Ano'
            Width = 50
          end
          object GridDespesasDBTableView1Column5: TcxGridDBColumn
            DataBinding.FieldName = 'Historico'
            Width = 300
          end
          object GridDespesasDBTableView1Column4: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
            FooterAlignmentHorz = taRightJustify
            GroupSummaryAlignment = taRightJustify
            HeaderAlignmentHorz = taRightJustify
            Options.Editing = False
            SortIndex = 0
            SortOrder = soDescending
            Width = 80
          end
          object Colum_Tipo_Despesa: TcxGridDBColumn
            Caption = 'Tipo Despesa'
            DataBinding.FieldName = 'Operacao'
            MinWidth = 50
            Width = 200
          end
          object Colum_Conta_Corrente: TcxGridDBColumn
            Caption = 'Conta Corrente'
            DataBinding.FieldName = 'Descricao'
            BestFitMaxWidth = 50
            MinWidth = 0
            Options.Editing = False
            Width = 210
          end
          object GridDespesasDBTableView1Column1: TcxGridDBColumn
            Caption = 'Tipo Lancamento'
            DataBinding.FieldName = 'Nome_Status'
            Width = 120
          end
          object GridDespesasDBTableView1Column2: TcxGridDBColumn
            Caption = 'Credor'
            DataBinding.FieldName = 'Nome_Credor'
            Width = 120
          end
          object GridDespesasDBTableView1Column3: TcxGridDBColumn
            Caption = 'Pago?'
            DataBinding.FieldName = 'Nome_Pago'
            Width = 70
          end
          object Column_Nome_recebido: TcxGridDBColumn
            Caption = 'Recebido?'
            DataBinding.FieldName = 'Nome_recebido'
            Width = 70
          end
          object colum_nr_parcela: TcxGridDBColumn
            Caption = 'Parcelas'
            DataBinding.FieldName = 'nr_parcela'
            Width = 65
          end
        end
        object GridDespesasLevel1: TcxGridLevel
          GridView = GridDespesasDBTableView1
        end
      end
    end
    object bsSkinTabSheet2: TbsSkinTabSheet
      Caption = 'Manuten'#231#227'o'
      object bsSkinExPanel1: TbsSkinExPanel
        Left = 0
        Top = 0
        Width = 471
        Height = 374
        HintImageIndex = 0
        TabOrder = 0
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
        Align = alClient
        Caption = 'Dados do Lancamento'
        object bsSkinStdLabel6: TbsSkinStdLabel
          Left = 31
          Top = 81
          Width = 84
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
          Caption = 'Valor da Despesa'
        end
        object bsSkinStdLabel7: TbsSkinStdLabel
          Left = 227
          Top = 130
          Width = 97
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
          Caption = 'Data de Vencimento'
        end
        object bsSkinStdLabel8: TbsSkinStdLabel
          Left = 14
          Top = 131
          Width = 100
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
          Caption = 'Data de Lan'#231'amento'
        end
        object bsSkinStdLabel9: TbsSkinStdLabel
          Left = 32
          Top = 155
          Width = 83
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
          Caption = 'Tipo Lan'#231'amento'
        end
        object lblcredor: TbsSkinStdLabel
          Left = 84
          Top = 181
          Width = 31
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
          Caption = 'Credor'
        end
        object bsSkinStdLabel11: TbsSkinStdLabel
          Left = 74
          Top = 232
          Width = 41
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
          Caption = 'Historico'
        end
        object bsSkinStdLabel12: TbsSkinStdLabel
          Left = 14
          Top = 106
          Width = 101
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
          Caption = 'Forma de Pagamento'
        end
        object bsSkinStdLabel13: TbsSkinStdLabel
          Left = 29
          Top = 209
          Width = 86
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
          Caption = 'Tipo de Despesas'
        end
        object bsSkinStdLabel14: TbsSkinStdLabel
          Left = 244
          Top = 155
          Width = 81
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
          Caption = 'Numero Parcelas'
        end
        object edtData: TbsSkinDateEdit
          Left = 125
          Top = 126
          Width = 85
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
          OnExit = edtDataExit
        end
        object edtDataVencimento: TbsSkinDateEdit
          Left = 334
          Top = 126
          Width = 96
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
          TabOrder = 4
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object cmbD_C: TbsSkinComboBox
          Left = 125
          Top = 148
          Width = 85
          Height = 20
          HintImageIndex = 0
          TabOrder = 5
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
          Text = 'Debito'
          Items.Strings = (
            'Debito'
            'Credito'
            'Venda Crediario')
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
          OnChange = cmbD_CChange
        end
        object cmbNome_ContaCorrente: TbsSkinDBLookupComboBox
          Left = 216
          Top = 102
          Width = 215
          Height = 20
          HintImageIndex = 0
          TabOrder = 2
          SkinData = FrmPrincipal.Skindata
          SkinDataName = 'combobox'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 20
          UseSkinFont = True
          DefaultColor = clWindow
          ListBoxDefaultItemHeight = 20
          ListBoxUseSkinFont = True
          ListBoxUseSkinItemHeight = True
          KeyField = 'codigo'
          ListField = 'descricao;codigo'
          ListSource = srcCadCodtasCorrente
          OnClick = cmbNome_ContaCorrenteClick
        end
        object cmbCod_contaCorrente: TbsSkinDBLookupComboBox
          Left = 125
          Top = 102
          Width = 85
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
          DefaultHeight = 20
          UseSkinFont = True
          DefaultColor = clWindow
          ListBoxDefaultItemHeight = 20
          ListBoxUseSkinFont = True
          ListBoxUseSkinItemHeight = True
          KeyField = 'codigo'
          ListField = 'codigo;descricao'
          ListSource = srcCadCodtasCorrente
          OnClick = cmbCod_contaCorrenteClick
        end
        object cmbCod_TipoPagamento: TbsSkinDBLookupComboBox
          Left = 125
          Top = 174
          Width = 85
          Height = 20
          HintImageIndex = 0
          TabOrder = 7
          SkinData = FrmPrincipal.Skindata
          SkinDataName = 'combobox'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 20
          UseSkinFont = True
          DefaultColor = clWindow
          ListBoxDefaultItemHeight = 20
          ListBoxUseSkinFont = True
          ListBoxUseSkinItemHeight = True
          KeyField = 'codigo'
          ListField = 'codigo;descricao'
          ListSource = SrcCadCredores
          OnClick = cmbCod_TipoPagamentoClick
        end
        object cmbNome_TipoPagamento: TbsSkinDBLookupComboBox
          Left = 215
          Top = 174
          Width = 215
          Height = 20
          HintImageIndex = 0
          TabOrder = 8
          SkinData = FrmPrincipal.Skindata
          SkinDataName = 'combobox'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 20
          UseSkinFont = True
          DefaultColor = clWindow
          ListBoxDefaultItemHeight = 20
          ListBoxUseSkinFont = True
          ListBoxUseSkinItemHeight = True
          KeyField = 'codigo'
          ListField = 'descricao;codigo'
          ListSource = SrcCadCredores
          OnClick = cmbNome_TipoPagamentoClick
        end
        object EdtValor: TbsSkinEdit
          Left = 125
          Top = 75
          Width = 85
          Height = 22
          Text = '0.00'
          DefaultColor = clWindow
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = -15
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          UseSkinFont = False
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinData = FrmPrincipal.Skindata
          SkinDataName = 'edit'
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object Edthistorico: TbsSkinEdit
          Left = 125
          Top = 229
          Width = 305
          Height = 18
          DefaultColor = clWindow
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          UseSkinFont = True
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinData = FrmPrincipal.Skindata
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          CharCase = ecUpperCase
          ParentFont = False
          TabOrder = 11
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object cmbNome_TipoDespesa: TbsSkinDBLookupComboBox
          Left = 215
          Top = 202
          Width = 180
          Height = 20
          HintImageIndex = 0
          TabOrder = 10
          SkinData = FrmPrincipal.Skindata
          SkinDataName = 'combobox'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 20
          UseSkinFont = True
          DefaultColor = clWindow
          ListBoxDefaultItemHeight = 20
          ListBoxUseSkinFont = True
          ListBoxUseSkinItemHeight = True
          KeyField = 'codigo'
          ListField = 'descricao;codigo'
          ListSource = srcCadtipoDespesas
          OnClick = cmbNome_TipoDespesaClick
        end
        object cmbCod_TipoDespesa: TbsSkinDBLookupComboBox
          Left = 125
          Top = 202
          Width = 85
          Height = 20
          HintImageIndex = 0
          TabOrder = 9
          SkinData = FrmPrincipal.Skindata
          SkinDataName = 'combobox'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 20
          UseSkinFont = True
          DefaultColor = clWindow
          ListBoxDefaultItemHeight = 20
          ListBoxUseSkinFont = True
          ListBoxUseSkinItemHeight = True
          KeyField = 'codigo'
          ListField = 'codigo;descricao'
          ListSource = srcCadtipoDespesas
          OnClick = cmbCod_TipoDespesaClick
        end
        object edtQtdeParcelas: TbsSkinSpinEdit
          Left = 333
          Top = 148
          Width = 97
          Height = 20
          HintImageIndex = 0
          TabOrder = 6
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
        object bsSkinButton1: TbsSkinButton
          Left = 403
          Top = 202
          Width = 27
          Height = 23
          HintImageIndex = 0
          TabOrder = 12
          SkinData = FrmPrincipal.Skindata
          SkinDataName = 'button'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = True
          CheckedMode = False
          ImageList = FrmPrincipal.Imagebutoes
          ImageIndex = 5
          AlwaysShowLayeredFrame = False
          UseSkinSize = True
          UseSkinFontColor = True
          RepeatMode = False
          RepeatInterval = 100
          AllowAllUp = False
          TabStop = True
          CanFocused = True
          Down = False
          GroupIndex = 0
          NumGlyphs = 1
          Spacing = 1
          OnClick = bsSkinButton1Click
        end
      end
      object PanelDetalhamento: TbsSkinExPanel
        Left = 471
        Top = 0
        Width = 442
        Height = 374
        HintImageIndex = 0
        TabOrder = 1
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
        RealWidth = 346
        RealHeight = 0
        ShowRollButton = False
        ShowCloseButton = False
        DefaultCaptionHeight = 21
        RollState = False
        RollKind = rkRollVertical
        Moveable = False
        Sizeable = False
        Align = alRight
        Caption = 'Detalhamento do Lancamento'
        object bsSkinPanel1: TbsSkinPanel
          Left = 1
          Top = 21
          Width = 440
          Height = 36
          HintImageIndex = 0
          TabOrder = 0
          SkinData = FrmPrincipal.Skindata
          SkinDataName = 'panel'
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
          CaptionMode = False
          RollUpMode = False
          RollUpState = False
          NumGlyphs = 1
          Spacing = 2
          Caption = 'bsSkinPanel1'
          Align = alTop
          object cmbNome_CentroCusto: TbsSkinDBLookupComboBox
            Left = 13
            Top = 7
            Width = 180
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
            DefaultHeight = 20
            UseSkinFont = True
            DefaultColor = clWindow
            ListBoxDefaultItemHeight = 20
            ListBoxUseSkinFont = True
            ListBoxUseSkinItemHeight = True
            KeyField = 'codigo'
            ListField = 'descricao;codigo'
            ListSource = srcCadtipoDespesas
            OnClick = cmbNome_TipoDespesaClick
          end
          object bsSkinEdit1: TbsSkinEdit
            Left = 199
            Top = 5
            Width = 74
            Height = 22
            Text = '0.00'
            DefaultColor = clWindow
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clBlack
            DefaultFont.Height = -15
            DefaultFont.Name = 'Arial'
            DefaultFont.Style = [fsBold]
            UseSkinFont = False
            DefaultWidth = 0
            DefaultHeight = 0
            ButtonMode = False
            SkinData = FrmPrincipal.Skindata
            SkinDataName = 'edit'
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            LeftImageIndex = -1
            LeftImageHotIndex = -1
            LeftImageDownIndex = -1
            RightImageIndex = -1
            RightImageHotIndex = -1
            RightImageDownIndex = -1
          end
          object bsSkinButton2: TbsSkinButton
            Left = 279
            Top = 5
            Width = 69
            Height = 25
            HintImageIndex = 0
            TabOrder = 2
            SkinData = FrmPrincipal.Skindata
            SkinDataName = 'button'
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clWindowText
            DefaultFont.Height = 14
            DefaultFont.Name = 'Arial'
            DefaultFont.Style = []
            DefaultWidth = 0
            DefaultHeight = 0
            UseSkinFont = True
            CheckedMode = False
            ImageIndex = -1
            AlwaysShowLayeredFrame = False
            UseSkinSize = True
            UseSkinFontColor = True
            RepeatMode = False
            RepeatInterval = 100
            AllowAllUp = False
            TabStop = True
            CanFocused = True
            Down = False
            GroupIndex = 0
            Caption = 'Adicionar'
            NumGlyphs = 1
            Spacing = 1
          end
          object bsSkinButton3: TbsSkinButton
            Left = 354
            Top = 5
            Width = 72
            Height = 25
            HintImageIndex = 0
            TabOrder = 3
            SkinData = FrmPrincipal.Skindata
            SkinDataName = 'button'
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clWindowText
            DefaultFont.Height = 14
            DefaultFont.Name = 'Arial'
            DefaultFont.Style = []
            DefaultWidth = 0
            DefaultHeight = 0
            UseSkinFont = True
            CheckedMode = False
            ImageIndex = -1
            AlwaysShowLayeredFrame = False
            UseSkinSize = True
            UseSkinFontColor = True
            RepeatMode = False
            RepeatInterval = 100
            AllowAllUp = False
            TabStop = True
            CanFocused = True
            Down = False
            GroupIndex = 0
            Caption = 'Remover'
            NumGlyphs = 1
            Spacing = 1
          end
        end
        object bsSkinDBGrid1: TbsSkinDBGrid
          Left = 1
          Top = 57
          Width = 440
          Height = 316
          HintImageIndex = 0
          TabOrder = 1
          SkinData = FrmPrincipal.Skindata
          SkinDataName = 'grid'
          Transparent = False
          WallpaperStretch = False
          UseSkinFont = True
          UseSkinCellHeight = True
          GridLineColor = clWindowText
          DefaultCellHeight = 20
          DrawGraphicFields = False
          UseColumnsFont = False
          DefaultRowHeight = 18
          MouseWheelSupport = False
          SaveMultiSelection = False
          PickListBoxSkinDataName = 'listbox'
          PickListBoxCaptionMode = False
          Align = alClient
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBtnText
          TitleFont.Height = 14
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
        end
      end
    end
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 915
    Height = 59
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 53
        Width = 909
      end>
    SkinDataName = 'controlbar'
    SkinData = FrmPrincipal.Skindata
    SkinBevel = True
    TabOrder = 3
    object bsSkinSpeedButton6: TbsSkinSpeedButton
      Left = 65
      Top = 0
      Width = 59
      Height = 53
      HintImageIndex = 0
      SkinData = FrmPrincipal.Skindata
      SkinDataName = 'toolbutton'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      CheckedMode = False
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
      ShowCaption = True
      NumGlyphs = 1
      Align = alLeft
      Spacing = 1
      Layout = blGlyphTop
    end
    object bsSkinToolBar1: TbsSkinToolBar
      AlignWithMargins = True
      Left = 11
      Top = 0
      Width = 900
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
      AutoEnabledControls = False
      CheckedMode = False
      Checked = False
      DefaultAlignment = taRightJustify
      DefaultCaptionHeight = 22
      BorderStyle = bvNone
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Caption = 'bsSkinToolBar1'
      Align = alClient
      CanScroll = False
      HotScroll = False
      ScrollOffset = 0
      ScrollTimerInterval = 50
      AdjustControls = False
      WidthWithCaptions = 0
      WidthWithoutCaptions = 0
      AutoShowHideCaptions = False
      ShowCaptions = False
      Flat = True
      Images = FrmPrincipal.Imagebutoes
      object btnincluir: TbsSkinSpeedButton
        Left = 0
        Top = 0
        Width = 59
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
        CheckedMode = False
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
        Caption = 'Incluir'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = BtnIncluirClick
        ExplicitLeft = 3
        ExplicitTop = -3
      end
      object btnalterar: TbsSkinSpeedButton
        Left = 59
        Top = 0
        Width = 71
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
        CheckedMode = False
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
        Caption = 'Alterar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = BtnAlterarClick
        ExplicitLeft = 53
        ExplicitTop = -2
      end
      object btnFechar: TbsSkinSpeedButton
        Left = 671
        Top = 0
        Width = 74
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
        CheckedMode = False
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
        Caption = 'Fechar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnFecharClick
        ExplicitLeft = 741
        ExplicitTop = -2
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 204
        Top = 0
        Width = 117
        Height = 53
        Align = alLeft
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 198
      end
      object btnExcluir: TbsSkinSpeedButton
        Left = 130
        Top = 0
        Width = 74
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
        CheckedMode = False
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
        Caption = 'Excluir'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnexcluirClick
        ExplicitLeft = 124
        ExplicitTop = -2
      end
      object btnCancela: TbsSkinSpeedButton
        Left = 459
        Top = 0
        Width = 74
        Height = 53
        HintImageIndex = 2
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
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 4
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = 'Cancelar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnCancelaClick
        ExplicitLeft = 465
        ExplicitTop = -2
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 533
        Top = 0
        Width = 138
        Height = 53
        Align = alLeft
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 543
      end
      object BtnOk: TbsSkinSpeedButton
        Left = 385
        Top = 0
        Width = 74
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
        CheckedMode = False
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
        Caption = 'Ok'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = BtnOkClick
        ExplicitLeft = 379
        ExplicitTop = -2
      end
      object bsSkinMenuSpeedButton1: TbsSkinMenuSpeedButton
        Left = 321
        Top = 0
        Width = 64
        Height = 53
        HintImageIndex = 0
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bigtoolmenubutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 8
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = 'Exportar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        NewStyle = False
        TrackPosition = bstpRight
        UseImagesMenuImage = False
        UseImagesMenuCaption = False
        SkinPopupMenu = bsSkinPopupMenu1
        TrackButtonMode = False
      end
    end
  end
  object srcCadtipoDespesas: TDataSource
    DataSet = QryCadTipoDespesas
    Left = 636
    Top = 428
  end
  object QryCadTipoDespesas: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 636
    Top = 400
  end
  object QryModific: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 692
    Top = 400
  end
  object QryCadContasCorrente: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 664
    Top = 400
  end
  object srcCadCodtasCorrente: TDataSource
    DataSet = QryCadContasCorrente
    Left = 664
    Top = 428
  end
  object QryCadDespesas: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    BeforeOpen = QryCadDespesasBeforeOpen
    AfterOpen = QryCadDespesasAfterOpen
    OnCalcFields = QryCadDespesasCalcFields
    Parameters = <>
    Left = 608
    Top = 400
  end
  object SrcCadDespesas: TDataSource
    DataSet = QryCadDespesas
    Left = 608
    Top = 428
  end
  object QryCadCredores: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 580
    Top = 400
  end
  object SrcCadCredores: TDataSource
    DataSet = QryCadCredores
    Left = 581
    Top = 428
  end
  object qryResumo: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 720
    Top = 400
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
    Left = 540
    Top = 325
  end
  object qryMaxCod: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 748
    Top = 400
  end
  object PopupMenu1: TPopupMenu
    Left = 596
    Top = 325
    object MarcarPago1: TMenuItem
      Caption = 'Marcar Pago'
      OnClick = MarcarPago1Click
    end
    object DesmarcarPago1: TMenuItem
      Caption = 'Desmarca Pago'
      OnClick = DesmarcarPago1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MarcarRecebido1: TMenuItem
      Caption = 'Marcar Recebido'
      OnClick = MarcarRecebido1Click
    end
    object DesmarcaRecebido1: TMenuItem
      Caption = 'Desmarca Recebido '
      OnClick = DesmarcaRecebido1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MarcaConferido1: TMenuItem
      Caption = 'Marca Conferido'
      OnClick = MarcaConferido1Click
    end
    object DesmarcarConferido1: TMenuItem
      Caption = 'Desmarcar Conferido'
      OnClick = DesmarcarConferido1Click
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <>
    Left = 304
    Top = 256
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore1'
    Left = 264
    Top = 256
  end
  object bsSkinPopupMenu1: TbsSkinPopupMenu
    SkinData = FrmPrincipal.Skindata
    Left = 408
    Top = 256
    object ExportarparaExcel1: TMenuItem
      Caption = 'Exportar para Excel'
      OnClick = ExportarparaExcel1Click
    end
    object ExportarparaHTML1: TMenuItem
      Caption = 'Exportar para HTML'
      OnClick = ExportarparaHTML1Click
    end
    object ExportarparaTexto1: TMenuItem
      Caption = 'Exportar para Texto'
      OnClick = ExportarparaTexto1Click
    end
    object ExportarparaXML1: TMenuItem
      Caption = 'Exportar para XML'
      OnClick = ExportarparaXML1Click
    end
  end
end
