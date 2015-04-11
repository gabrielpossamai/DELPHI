object frmContatos: TfrmContatos
  Left = 202
  Top = 123
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Lista de Contatos'
  ClientHeight = 577
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 14680063
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TbsSkinPageControl
    Left = 0
    Top = 57
    Width = 630
    Height = 520
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    OnChange = PageControl1Change
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
    SkinData = bsSkinData1
    SkinDataName = 'tab'
    object TabSheet1: TbsSkinTabSheet
      Caption = 'Consulta'
      object cxGrid2: TcxGrid
        Left = -1
        Top = 36
        Width = 628
        Height = 464
        TabOrder = 0
        object GridContatos: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcContatos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          Styles.StyleSheet = FrmPrincipal.GridTableViewStyleSheetDevExpress
          object Column1_Codigo: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
          end
          object Column2_Nome: TcxGridDBColumn
            DataBinding.FieldName = 'Nome'
          end
          object Column5_CodGrupoContato: TcxGridDBColumn
            Caption = 'Grupo '
            DataBinding.FieldName = 'Descricao'
          end
          object Column4_Cargo: TcxGridDBColumn
            DataBinding.FieldName = 'Cargo'
          end
          object Column3_Empresa: TcxGridDBColumn
            DataBinding.FieldName = 'Empresa'
          end
          object Column6_TelComercial: TcxGridDBColumn
            Caption = 'Tel.Comercial'
            DataBinding.FieldName = 'TelComercial'
          end
          object Column7_TelResidencial: TcxGridDBColumn
            DataBinding.FieldName = 'Tel.Residencial'
          end
          object Column8_Celular: TcxGridDBColumn
            DataBinding.FieldName = 'Celular'
          end
          object Column9_Fax: TcxGridDBColumn
            DataBinding.FieldName = 'Fax'
          end
          object Column10_Rua: TcxGridDBColumn
            DataBinding.FieldName = 'Rua'
          end
          object Column11_Cidade: TcxGridDBColumn
            DataBinding.FieldName = 'Cidade'
          end
          object Column12_Estado: TcxGridDBColumn
            DataBinding.FieldName = 'Estado'
            Width = 50
          end
          object Column13_Cep: TcxGridDBColumn
            DataBinding.FieldName = 'Cep'
          end
          object Column14_PaisRegiao: TcxGridDBColumn
            Caption = 'Bairro'
            DataBinding.FieldName = 'PaisRegiao'
            Width = 64
          end
          object Column15_Email: TcxGridDBColumn
            DataBinding.FieldName = 'Email'
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = GridContatos
        end
      end
      object PanelConsulta: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 630
        Height = 37
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
        object bsSkinSpeedButton3: TbsSkinSpeedButton
          Left = 767
          Top = 33
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
        end
        object BtnLocalizar: TbsSkinSpeedButton
          Left = 376
          Top = 9
          Width = 245
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
          ImageList = FrmPrincipal.ImageList1
          UseSkinSize = False
          UseSkinFontColor = True
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          ImageIndex = 5
          RepeatMode = False
          RepeatInterval = 100
          Transparent = False
          Flat = False
          AllowAllUp = False
          Down = False
          GroupIndex = 0
          Caption = 'Localizar'
          ShowCaption = True
          NumGlyphs = 1
          Spacing = 1
          OnClick = BtnLocalizarClick
        end
        object bsSkinSpeedButton4: TbsSkinSpeedButton
          Left = 673
          Top = 7
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
        end
        object bsSkinStdLabel2: TbsSkinStdLabel
          Left = 7
          Top = 13
          Width = 34
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
          Caption = 'Nome :'
        end
        object edtlocalizar: TEdit
          Left = 43
          Top = 9
          Width = 329
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TbsSkinTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
      object Label2: TLabel
        Left = 7
        Top = 0
        Width = 35
        Height = 17
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label3: TLabel
        Left = 7
        Top = 40
        Width = 30
        Height = 17
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 8
        Top = 80
        Width = 46
        Height = 17
        Caption = 'Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 8
        Top = 120
        Width = 29
        Height = 14
        Caption = 'Cargo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 14
        Top = 377
        Width = 19
        Height = 17
        Caption = 'Rua'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 13
        Top = 418
        Width = 35
        Height = 17
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 509
        Top = 380
        Width = 38
        Height = 17
        Caption = 'Estado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 442
        Top = 377
        Width = 19
        Height = 17
        Caption = 'Cep'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 386
        Top = 419
        Width = 36
        Height = 17
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label17: TLabel
        Left = 34
        Top = 166
        Width = 74
        Height = 19
        Caption = 'Telefones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 264
        Top = 80
        Width = 35
        Height = 17
        Caption = 'E-mail'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label15: TLabel
        Left = 265
        Top = 118
        Width = 56
        Height = 17
        Caption = 'Anota'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 39
        Top = 351
        Width = 74
        Height = 19
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object SpeedButton1: TSpeedButton
        Left = 7
        Top = 19
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          0800000000004002000000000000000000000001000000010000000000002E38
          3F00005B0A000062000000640000006B0000006C000000710000007700000079
          0000007C000002780C00047811001A751900004B3D000333510003355400043B
          5B00053A5C00063D5E00083B5D001E6546000340620006406000054265000F48
          670006416A0006456A0008456B000B436F00024A6D001C49660007497000064C
          74000C4B71000548780008487C00124C72000353780005517800135577001553
          7C001A597E002651730099330000963A0A00AD480900A9421100BD4E1200BC63
          2E00AB603F00BC6A3700C5511A00CD542300C1582000CD552800C3553000C159
          3100CC583500DD5C3A00E15D3900E65E3E00CA602C00DB613900D46838009876
          6000EA614700EB654600F2634B00F5654E00E8784F00F76E5500EE735400F075
          5300F4795800FA7F6000008A0000008C0000018208000092000000990000009D
          000007801200088119000CA9180011872A00159731001EB43D0021AB3D0022BC
          460025BF4B00428940002CC65A002FC9630035D26B0036D16E0037D86E0036D5
          7000F1805A00FA866400FB8866000B4F82000D53870003598200055A83000E54
          8900065B8800065E8900195B860010578800105988000F559C0010579000175C
          91001A5C910012579B0006618D0004699400076B9D0015609B00256490002366
          9A003E799A00145DA000145CB900066EA1000676AB001177A3001A63B8001C69
          BD00216CA6002874A700426A87001A65C0001D69C1001F6CDA00226FD4002379
          D1002574E000297DE400FF00FF000283B3005398B7002982CA002F86C8003784
          C0003E93CF002983D3002E86D600328DD2003690D1003993D1003F96D3003992
          D4002B83E4002E8BE3002C85EB002B82ED002C87EC002E8AEF003192E8002E8B
          F0002D8CF2002F8DF6003293F5003295F7003090F9003292FD003599F900379C
          FA00379DFE00389EFA00389EFC003AA0FB003DA3FB003FA5FB003BA2FE003DA3
          FC003CA4FE0040A7FB0041A8FB0045ACFB0042A9FD0046AEFC0047B0FF0049B1
          FC004CB4FD008BA8B4008CA6BB00C1BAB600BFD6B800E5C6B200C1D1DB00FAF4
          F000FFFFFF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000008C8C8C8C8C8C
          8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C2E
          2C2C2C2C2C2C2C2C8C8C8C8C8C8C8C8C8C8C8C8C8C8C2C3B4537494745453C30
          2C8C8C8C8C8C8C8C8C8C8C8C8C2C3A423F3340644B453C342C8C8C8C8C8C8C8C
          8C8C8C8C8C2C384836C13162646343352C8C8C8C8C8C8C8C8C8C8C8C8C2C3964
          36C2BF3664644A2C2E8C8C8C8C8C8C8C8C8C8C8C8C2E2F643EBDC04132462C2E
          8C8C8C8C8C04040404040404058C2E2D2B7380867B1F018C8C8C8C8C04054C50
          5054590850040565888B9C9FA19A1D0F8C8C8C8C04084C505A5F565B4E4F0A81
          9CA4A9ABABA99B128C8C8C8C04084F5C5F5D0DC20C57699CA9ABAFB4B4B3AF71
          0F8C8C218C04575F5F52BEC20B6165A5AFAFB4B9B4B9B4820F8C8C84128C0458
          5515BCBB536069A0AFB4B9B9B96C120F0F8C8C84128C8C0E6F85877C23026977
          B4B9B9B9BA2A6B740F8C8C8412161A89A5A6A19C8A248C1D9096978325287F0F
          8C8C8C8421169393AFAFA9A9A3728C0F0F16202A7A8E0F0F8C8C8C84126D8F79
          B4B4B4AFA9A1708C0F100F0F0F0F8C8C8C8C8C1A216E1491BAB9B8B4AFA9708C
          8C8C8C8C8C8C8C8C8C8C8C12206A14787898B9B9B4AF208C8C8C8C8C8C8C8C8C
          8C8C8C1721768D14142298B9B872198C8C8C8C8C8C8C8C8C8C8C8C16757D8D8D
          272122979516198C8C8C8C8C8C8C8C8C8C8C8C8C146A7E7D262626266A0F8C8C
          8C8C8C8C8C8C8C8C8C8C8C8C8C1712128C26201A8C8C8C8C8C8C8C8C8C8C8C8C
          8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C}
      end
      object SpeedButton2: TSpeedButton
        Left = 7
        Top = 164
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          0800000000004002000000000000000000000001000000010000050504000505
          0400080706000A0908000C0B09000E0C0A00100E0B0013110D00171410001C18
          1300221D1600262019002A241D002C2720002F292300302A2400312B2500352F
          2700383229003C342B003F362B0043382B00483A2A004D3D2900544028005C44
          270067492500714E23007D542100845921008C5E22008F612200936424009566
          250097682600996A2A009C6C2E00A06E2F00A3703000A7743200A9773800AD7A
          3800B07D3B00B4803C00B7823C00BA833A00BB823600BC802F00BD7E2700BE7C
          2000C07C1B00C27B1700C27B1300C37B1000C57B0D00C57A0D00C87B0C00CD7C
          0A00D47E0900D87F0800DB7D0600DF7F0500DC7B0400DA790300D8750200D572
          0100D16F0100CA6A0200C2650500BE630500B9630700B7630900B4640B00B164
          0D00AE650F00AC661100AA671200A9671200A7661300A36314009E5F13009B5B
          110095530F008E490E0089420D00873C0C0085390C0084370C0081360C008035
          0D0080350D007E360D007D360D007B370D0079380E0077390F00763A1000743A
          1200723B1500703D1A006D3E200068412A006544330062483900604C41005D4F
          47005C524D005C5551005D5855005E5A57005F5C5A00615F5E00646361006665
          6300686766006C6B6A006E6E6D00727170007675750078777600797878007E7C
          79007F807A007E8479007B887800798E760077947500749B730072A172006FA5
          71006DA870006BAA700069AD6F0067AF6F0065B06E0064B26E0063B36E0062B5
          6E0063BA710064BE720065BF720077BF70008FBD6C00A6B96600B6B86400C4B8
          6200CEB86000DDB96500E6BB6A00EDBB6E00F2BD7200F5BD7400F8BD7100F9BF
          7900F9BF7900F9BF7900F5BD7900ECB87700E3B37800D7AD7B00CFAA7D00C8A7
          7F00C2A58300BAA28600B2A08A00AEA09000A9A19800A6A19B00A7A39E00A9A5
          A200ACAAA700B2B0AF00B7B6B500BCBAB800BFBEBC00C3C2C100C5C5C400CBCB
          CB00D1D1D100D8D8D800DDDDDD00E1E1E100E3E3E300E5E5E500E7E7E700E8E8
          E800E9E9E900EAE9EA00EAE8EA00EAE7EA00EAE2EA00EBD8EB00EDC2ED00F0A0
          F000F567F500FB2AFB00FE08FE00FE01FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00E3E3E3E3E3E3
          E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3
          625F5F5F62E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E362555959595959575BE3
          E3E3E3E3E3E3E3E3E3E3E3E3E351525346454546575859575CE3E3E3E3E3E3E3
          E3E3E3E34C4C523948423F414255555759E3E3E3E3E3E3E3E3E3E34E4B353D91
          B2AA4C49424343555759E3E3E3E3E3E3E3E34C36353D2D333A4830B3A54B4343
          5559E3E3E3E3E3E3E34C35353D3AAEAE234843322A24A34C4359E3E3E3E3E3E3
          4C353598A32B34393DAAAE284244A3AC1F59E3E3E3E3E32235359893B0B0A630
          2A372C25A42A44515259E3E3E3E32235359B9B983D3D3D2DB0A63F412EAE2849
          1CE3E3E3E322383D9BA16709050C181C3A487DA54C46511CE3E3E3E322353B98
          A36E6A0300AB8CA7685233AE75441CE3E3E3E3224C3B989F10A5AAAF77137A8C
          7A024340221CE3E3E3E3E34E39989C10B0BBB5A9A678AB7008005D401DE3E3E3
          E3E3224E989B10A7BBBBBBBBBBB2A9A7AF02401CE3E3E3E3E3E322989B107ABB
          BBBBBBBBBBBBBBB56A6251E3E3E3E3E3E3E32298106ABBBBBBBBBBBBBBBBBBA5
          0C1DE3E3E3E3E3E3E3E322100807137AB0BBBBBBBBBBA60C4EE3E3E3E3E3E3E3
          E3E3E31500000000086AAAB5B7700A4CE3E3E3E3E3E3E3E3E3E3E3E30B050000
          00000813140750E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E30803000000071DE3E3
          E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E31012E3E3E3E3E3E3E3E3E3E3E3E3
          E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3}
      end
      object SpeedButton3: TSpeedButton
        Left = 13
        Top = 349
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF8E5D598E5D598E5D598E5D598E5D598E
          5D598E5D598E5D598E5D598E5D598E5D598E5D598E5D598E5D598E5D598E5D59
          8E5D598E5D598E5D598E5D598E5D59FF00FFFF00FF8E5D59AC7967EBB283FFC4
          8BFFC48AFEC48AFFC48BFFC48BFFC48AFFC48AFFC48BFFC48AFFC48AFFC48AFF
          C48AFFC48BFFC48BFFC48BFFC48BFFC58BEBB282AC79678E5D59FF00FF8E5D59
          D9A784A67567F7C596FFCB98FECB98FFCB99FFCB98FFCB99FECB98FFCA98FECB
          99FECB99FFCB98FFCB99FFCB98FECB98FFCB99FFCB98F8C596A67567D9A6848E
          5D59FF00FF8E5D59FED4AAC2937EBA8A78FFD4A9FFD4AAFFD4AAFFD4AAFED4AA
          FED4AAFFD4A9FFD4AAFED4AAFFD4AAFED4AAFED4AAFFD4AAFFD4AAFFD4AAB88A
          78C2937EFED4AA8E5D59FF00FF8E5D59FEDEBDFBDABBAC8075D1AA95FEDEBCFF
          DDBCFFDEBCFEDEBCFEDDBDFFDDBDFFDDBDFFDEBCFEDDBDFEDEBDFEDEBCFFDDBC
          FFDDBDD1AA95AC8074FCDABAFFDEBC8E5D59FF00FF8E5D59FEE7D0FFE7D0F0D5
          C2A1756DE9CBB7FFE7D0FFE7D0FEE7D0FFE7D0FEE7D0FFE7D0FEE7D0FEE7D0FE
          E7D0FEE7D0FEE7D0E7CBB8A1756DEFD5C1FEE7D0FEE7D08E5D59FF00FF8E5D59
          FEF0E2FEF0E3FEF0E2DDC5BBA37873F6E6DAFFF0E3FEF0E3FEF0E3FEF0E2FEF0
          E3FEF0E2FEF0E3FEF0E2FEF0E2F7E6DAA37873DEC5BAFEF0E2FEF0E3FEF0E28E
          5D59FF00FF8E5D59FEF8F2FEF8F3FEF8F2FFF7F3C5A7A3B5918CFEF8F3FEF8F3
          FEF8F2FEF7F2FEF8F3FEF8F2FEF8F3FEF8F2FFF8F3B5918CC5A9A4FEF7F3FEF8
          F3FEF8F2FEF8F28E5D59FF00FF8E5D59FEFEFEFEFEFEFEFEFEFEFEFEFCFBFBAD
          8987CCB5B4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECAB2B0AF8B88
          FCFBFBFEFEFEFEFEFEFEFEFEFEFEFE8E5D59FF00FF8E5D59FEFEFEFEFEFEFEFE
          FEFCFBFBC7ADACAC8884986B68986B68986B68986B68986B68986B68986B6898
          6B68986B68C2A6A4FCFBFBFEFEFEFEFEFEFEFEFEFEFEFE8E5D59FF00FF8E5D59
          FEFEFEFEFEFEF0EBEAAD8986B4918FF4F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEF4F0F0B4918FAD8986F0EBEAFEFEFEFEFEFEFEFEFE8E
          5D59FF00FF8E5D59FEFEFEDCCCCAA07673CEB6B5FEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECEB6B5A07673DCCC
          CAFEFEFEFEFEFE8E5D59FF00FF8E5D59C6ACAAA57E7AACACACFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEE9DEDDA57E7AC6ACAAFEFEFE8E5D59FF00FF8E5D59A18687A5E6E6ACAC
          ACFFFFFFFBFFFFFAFFFFF6FFFFF6FFFFEFFFFFEFFFFFEFFFFFF2FFFFF2FFFFF4
          FFFFF6FFFFF4FFFFEFFFFFE7F6F6D1E1E1B5B7B7B29D9D8E5D59FF00FF8E5D59
          A69598A7FEFFACACACFEFFFFFBFFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFF
          FFEEF7F7D5DEE0C1CCCEB6BDBFADB4B5ACADADAAADAFA1AFB49AACB2A390928E
          5D59FF00FFFF00FF8E5D59B89696ACACACFFFFFFFFFFFFFFFFFFE9EBEBCED5D7
          BDC5C6B1BABAAAAFB0AAACADA3ADB097AFB589AFBA7EAFC073B1CC67BAE079AA
          C7A683898E5D59FF00FFFF00FFFF00FFFF00FF8E5D59C69695ADB4B5ABBABAAC
          ACACA5B6B89ABABC8FBFC581C9CF76D1DA6DD8E76ED8EB70D4EB72D1ED6FD7F7
          6DD7FC91ADC28E5D598E5D59FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8E5D
          5997747299B6BB72F0FB6BF6FF70EAFA72EBFB72EEFC74EFFF74F0FF75EDFE76
          E7FC6FEBFF77DAF49AA9B68E5D59FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF8E5D59B0959686D1D96BFFFF72F6FF74EFFF74EF
          FF74EFFF70F4FF6DF8FF87CAD9B092968E5D59FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8E5D598E5D5998BABF
          77EBF66DFBFF6DFBFF6EF8FF75EEFB98BABF8E5D598E5D59FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF8E5D598E5D599DAFB295BBC19EADB08E5D598E5D59FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8E5D598E5D598E5D59FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object Label18: TLabel
        Left = 37
        Top = 23
        Width = 124
        Height = 19
        Caption = 'Dados Pessoais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 8
        Top = 188
        Width = 53
        Height = 17
        Caption = 'Comercial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 7
        Top = 229
        Width = 39
        Height = 17
        Caption = 'Celular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 7
        Top = 266
        Width = 61
        Height = 17
        Caption = 'Resid'#234'ncial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 8
        Top = 304
        Width = 20
        Height = 17
        Caption = 'Fax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label19: TLabel
        Left = 264
        Top = 40
        Width = 105
        Height = 17
        Caption = 'Grupo de Contatos '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object memo1: TMemo
        Left = 264
        Top = 135
        Width = 354
        Height = 242
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          '')
        ParentFont = False
        TabOrder = 5
      end
      object edtNome: TEdit
        Left = 6
        Top = 55
        Width = 252
        Height = 21
        TabOrder = 0
      end
      object edtEmpresa: TEdit
        Left = 6
        Top = 97
        Width = 252
        Height = 21
        TabOrder = 2
      end
      object edtCargo: TEdit
        Left = 6
        Top = 135
        Width = 252
        Height = 21
        TabOrder = 4
      end
      object edtEmail: TEdit
        Left = 264
        Top = 97
        Width = 354
        Height = 21
        TabOrder = 3
      end
      object edtRua: TEdit
        Left = 9
        Top = 395
        Width = 427
        Height = 21
        TabOrder = 10
      end
      object edtCidade: TEdit
        Left = 9
        Top = 434
        Width = 373
        Height = 21
        TabOrder = 12
      end
      object edtPaisRegiao: TEdit
        Left = 386
        Top = 435
        Width = 172
        Height = 21
        TabOrder = 14
      end
      object edtTelComercial: TMaskEdit
        Left = 8
        Top = 205
        Width = 89
        Height = 21
        EditMask = '!\(999\)0000-0000;1;_'
        MaxLength = 14
        TabOrder = 6
        Text = '(   )    -    '
      end
      object edtTelCelular: TMaskEdit
        Left = 8
        Top = 243
        Width = 89
        Height = 21
        EditMask = '!\(999\)0000-0000;1;_'
        MaxLength = 14
        TabOrder = 7
        Text = '(   )    -    '
      end
      object edtTelResidencial: TMaskEdit
        Left = 8
        Top = 282
        Width = 89
        Height = 21
        EditMask = '!\(999\)0000-0000;1;_'
        MaxLength = 14
        TabOrder = 8
        Text = '(   )    -    '
      end
      object edtFax: TMaskEdit
        Left = 8
        Top = 320
        Width = 89
        Height = 21
        EditMask = '!\(999\)0000-0000;1;_'
        MaxLength = 14
        TabOrder = 9
        Text = '(   )    -    '
      end
      object edtCep: TMaskEdit
        Left = 442
        Top = 395
        Width = 61
        Height = 21
        EditMask = '0000\-9999;1;_'
        MaxLength = 9
        TabOrder = 11
        Text = '    -    '
      end
      object edtEstado: TComboBox
        Left = 510
        Top = 397
        Width = 48
        Height = 21
        TabOrder = 13
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SE'
          'SP'
          'TO')
      end
      object cmbGrupoContato: TbsSkinDBLookupComboBox
        Left = 265
        Top = 56
        Width = 264
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
        ListField = 'descricao;codigo'
        ListSource = srcGrupoContato
        OnClick = cmbGrupoContatoClick
      end
    end
  end
  object bsSkinCoolBar3: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 630
    Height = 57
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar3
        ImageIndex = -1
        MinHeight = 53
        Width = 624
      end>
    SkinDataName = 'controlbar'
    SkinData = FrmPrincipal.Skindata
    SkinBevel = True
    TabOrder = 1
    object bsSkinToolBar3: TbsSkinToolBar
      Left = 11
      Top = 0
      Width = 615
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
        OnClick = btnIncluirClick
        ExplicitLeft = -21
        ExplicitTop = 14
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
        OnClick = btnalterarClick
        ExplicitLeft = 146
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
        OnClick = btnexcluirClick
        ExplicitLeft = -38
        ExplicitTop = 14
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 280
        Top = 0
        Width = 39
        Height = 53
        Align = alLeft
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 210
        ExplicitTop = 1
      end
      object btnok: TbsSkinSpeedButton
        Left = 319
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
        OnClick = btnokClick
        ExplicitLeft = 243
        ExplicitTop = 14
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 459
        Top = 0
        Width = 58
        Height = 53
        Align = alLeft
        SkinData = FrmPrincipal.Skindata
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = 1
      end
      object btnFechar: TbsSkinSpeedButton
        Left = 517
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
      object btnCancela: TbsSkinSpeedButton
        Left = 389
        Top = 0
        Width = 70
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
        OnClick = BtnCancelaClick
        ExplicitLeft = 319
        ExplicitTop = 14
      end
      object btnGrupoContato: TbsSkinSpeedButton
        Left = 210
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
        ImageIndex = 10
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = 'Grupos'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnGrupoContatoClick
        ExplicitLeft = 193
        ExplicitTop = 14
      end
    end
  end
  object ImageList1: TImageList
    Left = 536
    Top = 237
    Bitmap = {
      494C0101110013000C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000792F0000893500007E31
      0000772E00006A29000068280000682800006828000068280000682800006828
      00006A2900005320000036160000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C24C0000CF510000C04B
      0000BB490000B1450000AC430000AA420000AA420000AA420000AA420000AA42
      0000AA420000A03F000053200000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DE570000DC560000CF51
      0000C74E0000BD4A0000B8480000AC430000AA420000A7410000A7410000A741
      0000A7410000AA4200006A290000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E65C0000E35B0000D756
      0000D1540000CC631300CC6A1E00C4671E00C0661E00A7410000A7410000A741
      0000A7410000AA42000068280000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EF6A0A00F26B0A00E660
      0400E15C0200EBAD7600F4D8BC00F2D7BC00F0D7BC00FEFEFE00FEFEFE00A741
      0000A7410000AA42000068280000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0751700F3761700EE66
      0600E9620400DC580000D7540000CC500000C74E0000CA6E2500F8EFE600C170
      2F00A7410000AA42000068280000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3913F00F4923F00EF6A
      0A00EF6A0A00EB5E0000FEFEFE00DC560000D7540000CC500000D1702300EAC6
      A300B6470000AF4400006A290000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4994C00F79C4E00F06D
      0E00F06C0D00FEFEFE00FEFEFE00E3590000DE570000D1520000E2985700E6B1
      8000BD4A0000B4460000732D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4A35B00F7A65E00F6B5
      7800FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00D152
      0000CC500000C24C000082330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6A55F00F7AA6600F7B7
      7D00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAD8B800EB893700D955
      0000D4530000CA4F00008B360000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6AA6600F8B57900F27E
      2200F2842D00FEFEFE00FEFEFE00F06C0D00F06C0D00EE640400EE600100E95B
      0000E3590000D9550000A03F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6AA6600F8B87F00F391
      3F00F38C3700F2802600FEFEFE00F0721300F0761800EE670700EE620300EE5F
      0000EB5C0000E1580000A5410000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6984900F8AB6700F8BB
      8300F8BB8300F8B27500F7AC6900F6974800F4893300F36F1000F0670600F060
      0000F05E0000F35F0000BB490000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DE570000F6974800F6AA
      6600F6AB6900F6A56000F4A05800F38F3C00F2832C00F06C0D00EE660600EE5F
      0000EE5D0000E3590000AC430000000000000000000000000000000000000000
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
      0000000000000450070004500700045007000450070004500700045007000000
      0000000000000000000000000000000000000000000000000000000000000E80
      AA000E80AA000E80AA000E80AA000E80AA000E80AA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099330000F5654E00CD552800F76E
      5500F5654E00E15D3900BD4E1200000000000000000000000000000000000000
      0000868484008684840000000000000000000000000086848400000000000000
      0000000000000000000000000000000000000000000000000000000000000865
      0C0009A5170009B71A0009B3190009B3190009B3190009B3190009B71A00089F
      16000450070000000000000000000000000000000000000000000E80AA0021AA
      CF0021AACF0026C2E90043C8E90062C3DE003DAACC000E80AA000E80AA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC583500DB613900BC6A3700FB88
      6600FA7F6000E15D3900C5511A00000000000000000000000000000000008684
      8400C1BFBF00A4A1A200868484009996970086848400DBDADA00868484008684
      84000000000000000000000000000000000000000000000000000F8319000FB8
      25000CB61E0009B2190009B2190009B2190009B2190009B2190009B2190009B7
      1A0009B1190004500700000000000000000000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A00000000000000000000000000000000000000
      000000000000000000000000000099330000C1593100C1582000FFFFFF00C158
      2000FB886600F47958009933000000000000000000000000000086848400E7E6
      E600CECDCD00B5B3B300B5B3B300000000000000000078787800BBBBBB00D6D6
      D600D6D6D600CFCECE008684840086848400000000000F8319001DBD420016B7
      34000CB31F000CB31F000CB31F00FFFFFF00F0FAF2000EB31F0009B2190009B2
      190009B2190009AE1800045007000000000000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0000009A004978FF003E6EFF002E61FF000E44
      FF000237FF000025F50000009A00000000000000000000000000000000000000
      0000000000000000000000000000AD480900A9421100CA602C00C1BAB6009876
      6000AB603F0099330000AD480900000000000000000086848400DDDDDD00DADA
      DA00A3A1A1009997970099979700262626001313130000000000000000007878
      7800BBBBBB00D6D6D600C7C6C60086848400000000001EAA430022C14D001DBB
      43000CB31F000CB31F00ADE6B700FFFFFF00FFFFFF0010B5240009B2190009B2
      190009B2190009B81A00089313000000000000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000009A00000000000000000000640000006B00000099
      00000099000022BC46000077000000640000006B0000226FD400297DE4002E8A
      EF002E8BF0000B436F00033351000000000000000000D6D6D600D2D2D200E0DE
      DE00F9F8F800F5F4F400E7E6E600C6C5C500B8B6B600B5B3B300B2AFB000827F
      8000393839002D2D2D00AEACAC000000000009B219002EC6650029C0580029C0
      58000CB31F00FFFFFF00FFFFFF00C0ECC80041C5570018B8300009B2190009B2
      190009B2190009B2190009B81A000450070000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0095EBFD006CD4EE000C9BCB000493C4000000
      0000000000000000000000000000000000000000000000640000007700000099
      000025BF4B00159731004289400000920000007C00002C85EB003293F500389E
      FA00389EFA002E8BE300053A5C000000000000000000D2D2D200A4A3A300F9F8
      F800F9F8F800F5F4F400F2F1F100EDECEC00EAE9E900D0CFCF00C0BFBF00B5B3
      B300AEACAC0086848400B3B1B1000000000009B2190031C469002DC262002DC2
      620088DBA100FFFFFF00FFFFFF004BC8650026BD43001DB9360019B8300012B5
      26000FB5210009B2190009B51A000450070000000000078CBA00B4EEF3008ADA
      EB0059C2DD00229BC2001E94BC0056B1CE006BBDD7008FD0E60076C4DF000000
      00000000000000000000000000000000000000000000000000000064000036D1
      6E0036D16E00BFD6B800FFFFFF0036D570000B4F82003FA5FB003FA5FB0049B1
      FC0041A8FB0041A8FB00216CA6000000000000000000D9D7D800F9F8F800F9F8
      F800F9F8F800C0BEBF00BFBDBD009B9294008E838500BDB8B900D4D3D300DCDC
      DC00D9D9D900CAC9C900B9B7B7000000000009B219004ACB7D0035C46D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0009B2190009B219000450070000000000098AB7006FC2D60039B8
      DE002FC6E7002CD3F90054DFFE0081DBF10052BDDB00118EB90046A6C9000000
      00000000000000000000000000000000000000000000053A5C000000000021AB
      3D0011872A008CA6BB008BA8B40037D86E000E5489003FA5FB0041A8FB0049B1
      FC0049B1FC00053A5C000333510000000000000000008684840086848400F1F0
      F000C0B7B8008F8486009B919300BEBCBC00C3C1C100ADA7A80099909100A9A3
      A400CDCDCD00D6D6D600CECECE000000000009B2190062D28E003BC67100DEF5
      E700FFFFFF00FFFFFF00FFFFFF00F5FCF700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0009B2190009B219000450070000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0095EBFD006CD4EE000C9BCB000493C4000000
      00000000000000000000000000000000000000000000053A5C00034062002379
      D1003295F7002E8BF0002C85EB0008487C00000000002F86C8003690D1002874
      A700124C72001177A30003335100000000000000000000000000000000000000
      0000CC9A9900FFDBB500FFD7AD00B591770094807A0080717400897C7F00D9D8
      D800DADADA0086848400000000000000000009B219009BE2B7006DD5950052CD
      820051CD8100FFFFFF00FFFFFF00BFECCD0046C86D0036C2590032C1530028BE
      450024BC40000AB21C0009B619000450070000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0095EBFD006CD4EE000C9BCB000493C4000000
      00000000000000000000000000000000000000000000064C7400034062002983
      D3003FA5FB00379CFA00379CFA001A5C91000000000003335100034062001A59
      7E003E799A000333510003335100000000000000000000000000000000000000
      0000CC9A9900FFDEBB00FFDAB400FFD3A400FFCF9D00FFCE9C00CC9A99008684
      84008684840000000000000000000000000009B219009FE4BB009DE3B80052CD
      820052CD8200BDECCE00FFFFFF00FFFFFF00E1F6E7003AC4610021BC49001ABA
      3C0017B836000DB422000BB81D000450070000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0095EBFD006CD4EE000A9DCE000493C4000000
      00000000000000000000000000000000000000000000064C7400105988003784
      C0004CB4FD0047B0FF0041A8FB00379CFA001057900000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC9A
      9900FFEBD700FFE4C800FFE0C000FFD9B100FFD5AA00CC9A9900000000000000
      0000000000000000000000000000000000000000000051C57200B1E9C80081DA
      A30052CD820052CD820052CD8200FFFFFF00FFFFFF0044C76D0028BF590021BD
      4A001DBA400016BE35000C851A000000000000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0095EBFD006CD4EE000C9BCB000493C4000000
      0000000000000000000000000000000000000000000007497000065B88002564
      90002564900049B1FC0049B1FC003FA5FB000749700000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CC9A
      9900FFEFDE00FFE7CE00FFE3C700FFDCB800FFD8B000CC9A9900000000000000
      0000000000000000000000000000000000000000000009B2190075D59800CAF0
      D9008CDEAB0052CD820052CD820051CC80004ECB7C0048C974002BC15F0023BD
      4E0020BB470015A4300008650C000000000000000000078CBA00C3DFEA00E5FF
      FF00CFFFFF00A4FFFE0099FFFE0099FFFE0099FFFE0071F2FE003ECDE9000000
      0000000000000000000000000000000000000000000004699400066EA1000283
      B300055178000C4B71003993D100034062000F48670000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFF9
      F200FFF5EA00FFEDDB00FFEAD400FFE2C400FFDEBD0000000000000000000000
      000000000000000000000000000000000000000000000000000009B2190074D5
      9600B6EACB00CFF1DC00B4E9C80082DBA40077D79C0073D699006AD4930038C9
      6B0020AD48000F831900000000000000000000000000078CBA0068B0CA00F5FF
      FF00DFFFFF00B3F9FF0099FFFE0099FFFE0099FFFE0080F5FC0032AACE000000
      00000000000000000000000000000000000000000000083B5D00065B8800066E
      A100035378000353780003537800033351000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC9A9900FFFB
      F600FFF8F100FFF0E200FFEDDA00FFE5CB00F5D4BB0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000009B2
      19004FC56E00AFE8C600C2EED300BDECCF00B1E9C70086DDA90065D592001F9C
      3E000F821C00000000000000000000000000000000000000000000000000078C
      BA00078CBA00078CBA00078CBA00078CBA00078CBA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CC9A9900CC9A9900CC9A99000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009B2190009B2190009B2190009B2190009B2190009B219000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000008750D000875
      0D0008750D000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E80
      AA000E80AA000E80AA000E80AA000E80AA000E80AA000000000008750D0029B9
      420008750D000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00FFFFFF00AB4E2100AB4E2100AB4E2100AB4E
      2100AB4E2100AB4E2100AB4E2100AB4E2100AB4E2100AB4E2100AB4E2100AB4E
      2100AB4E2100AB4E2100AB4E2100000000008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C38160000000000000000000E80AA0021AA
      CF0021AACF0026C2E90043C8E90062C3DE003DAACC000E80AA0008750D002EBD
      4A0008750D00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AB4E2100FFF4E700FFF2E300FEEE
      DB00FFECD700FEE8CE00FEE7CB00FEE3C400FEE0C000FEDEB9007F6E5B006A5B
      4A0076655000FED7AB00FED7AB00000000008C381600FFF3E700FFF2E2005858
      5800FEEAD400FFE6CB0058585800FFDEBC00FEDCB700FFD8AD00FED5AA005858
      5800FED09F00FECC9900585858008C38160000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0008750D0008750D0008750D0008750D003BC8
      5C0008750D0008750D0008750D0008750D007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00FFFFFF00AB4E2100FFF6EC00FFF5E900FFF1
      E100FFEFDD00FEEBD500FFE9D100AC9B8800766A5B004C5FC800143BDE001B17
      860050445E00FED8AC00FED7AB00000000008C381600FFF4EA00585858005858
      5800585858005858580058585800585858005858580058585800585858005858
      58005858580058585800585858008C38160000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0058E0870056DF85004ED8790049D4720040CC
      65003BC85C0034C252002EBD4A0008750D007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00FFFFFF00AB4E2100FFFAF600DFD9D5007C78
      730082B0B600229CBD0068727B00CC666700A76666000033FF000033FF000000
      9A0000009A00FEDCB400FEDAB200000000008C3816005858580058585800FFF0
      E200AFBDFA0004116300FFE7CF0000810000052E0500E5ADAD00BD4B4C00FED5
      A9008FC1F8000C2D5600FECE9C008C38160000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0005710A0005710A0005710A0008750D0049D4
      720008750D0005710A0005710A0005710A007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00FFFFFF007F7F7F00FFFFFF00AB4E2100FFFDFA00577254003581
      730000CCFF0000B3E600338CB300CC666700A76666000033FF000033FF000000
      9A0000009A00FFDDB800FEDCB500000000008C381600FFF8F20058585800FEF2
      E600AFBDFA0004116300FFE9D30000810000052E0500E5ADAD00BD4B4C00FFD7
      AC008FC1F8000C2D5600FECF9E008C38160000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0095EBFD006CD4EE000C9BCB0008750D0051DA
      7E0008750D000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00FFFFFF00AB4E2100FFFFFF00009900000080
      400000CCFF0000B3E600338CB300CC666700A76666000033FF000033FF000000
      9A0000009A00FFE3C300FEE1C000000000008C381600FFFAF70058585800FFF6
      EB00AFBDFA0004116300FFEDD80000810000052E0500FFE0BF00FEDEBB00FED9
      B2008FC1F8000C2D5600FED1A1008C38160000000000078CBA00B4EEF3008ADA
      EB0059C2DD00229BC2001E94BC0056B1CE006BBDD7008FD0E60008750D0058E0
      870008750D000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF007F7F7F00FFFFFF000000000000000000AB4E2100FFFFFF00009900000386
      460000CCFF0000B3E600338CB300CC666700A76666000033FF000033FF000000
      9A0000009A00FFE6C900FEE3C500000000008C3816005858580058585800FFF7
      ED00AFBDFA0004116300FEEEDA0000810000052E0500FFE1C200FEE0BD00FFDA
      B5008FC1F8000C2D5600FED1A4008C38160000000000098AB7006FC2D60039B8
      DE002FC6E7002CD3F90054DFFE0081DBF10052BDDB00118EB90008750D0058E0
      870008750D000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F00000000007F7F7F000000
      00007F7F7F00FFFFFF000000000000000000AB4E2100FFFFFF00FFFFFF00EFFF
      FF0071FFFF0031FFFF0063D8D800D26C6D00BD7373000033FF000033FF000000
      9A0000009A00FFEBD500FEE9D100000000008C3816005858580058585800FFF8
      F300AFBDFA0004116300FEF0E10000810000052E0500FFE5C900FFE2C400FEDE
      BB00FEDAB600FED8AC00FED4A9008C38160000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0095EBFD006CD4EE000C9BCB000493C4000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF007F7F7F00FFFFFF000000000000000000AB4E2100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCEEEF00FF999A00FF999A000033FF000033FF000000
      9A0000009A00FEEEDB00FEECD700000000008C381600FFFEFE0058585800FFFB
      F600AFBDFA0004116300FFF2E50000810000052E0500FEE6CC00FFE3C700FFDE
      BD00FFDDB800FED8AF00FED5AC008C38160000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0095EBFD006CD4EE000C9BCB000493C4000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F007F7F7F00000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00000000000000000000000000AB4E2100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00809EFD005581FE004A79
      FF006A82E800FFF3E600FEF2E300000000008C381600FFFFFF0058585800FFFC
      FA00FFFAF600FFF7EE00FFF4EA00FEF0E100FFEEDC00FFEAD300FEE7CE00FEE2
      C400FEE0BF00FEDAB500FED9B0008C38160000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0095EBFD006CD4EE000A9DCE000493C4000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF0000000000FFFFFF00FFFFFF007F7F7F00FFFFFF00000000007F7F
      7F0000000000000000000000000000000000AB4E2100E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400000000008C381600E3AF5D00E3AF5D00E3AF
      5D00E3AF5D00E3AF5D00E3AF5D00E3AF5D00E3AF5D00E3AF5D00E3AF5D00E3AF
      5D00E3AF5D00E3AF5D00E3AF5D008C38160000000000078CBA0076DFE90060EC
      FE003CE0FE002ED8FE0055E0FF0095EBFD006CD4EE000C9BCB000493C4000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F007F7F7F00000000007F7F7F00FFFFFF007F7F7F000000
      000000000000000000000000000000000000CC731A00EE973300EE973300EE97
      3300EE973300EE973300EE973300EE973300EE973300EE973300EE973300EE97
      3300FCC080004E6ED400EE973300000000008C381600C5692700C5692700C569
      2700C5692700C5692700C5692700C5692700C5692700C5692700F3A96600C75B
      0A00FBAF6600874F35003553C7008C38160000000000078CBA00C3DFEA00E5FF
      FF00CFFFFF00A4FFFE0099FFFE0099FFFE0099FFFE0071F2FE003ECDE9000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00000000000000
      00000000000000000000000000000000000000000000CC731A00CC731A00CC73
      1A00CC731A00CC731A00CC731A00CC731A00CC731A00CC731A00CC731A00CC73
      1A00CC731A00CC731A00CC731A0000000000000000008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816000000000000000000078CBA0068B0CA00F5FF
      FF00DFFFFF00B3F9FF0099FFFE0099FFFE0099FFFE0080F5FC0032AACE000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000078C
      BA00078CBA00078CBA00078CBA00078CBA00078CBA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000824B4B004E1E1F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000154030001540300000000000000
      000000000000000000000000000000000000000000000000000000000000752E
      0F006D2C0F0066290F006D2C0F0000000000000000000043B0000042AC000038
      9A00003D9D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000824B4B00824B4B00A64B4B00A94D4D004E1E1F0000000000000000000000
      00000000000000000000000000000000000000000000A4676900A4676900A467
      6900A4676900A4676900405D2B000154030019A12E000E871C0001540300A467
      6900A4676900A46769000000000000000000000000008038140080381400C450
      0000BD530400B54C020089350300482513000B5EC700217ADC004C99EB002378
      E0003A82D7000148B000003C9A000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000824B4B00824B
      4B00B64F5000C24F5000C54D4E00B24D4E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B000000000000000000A4676900F7E3BC00F8E0
      B700F7DDB000015403000A6F12002AC24C0021B53D001AAB310001540300F3CC
      8C00F3CA8900A4676900000000000000000000000000C7631600D8762300D876
      2300FFFFFF00FFFFFF00DCA4700035506B00198CFB00FFFFFF00E5F2FF00FFFF
      FF00FFFFFF003B8BE5000043B5000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000824B4B00D458
      5900CB555600C9545500C9525300B74F52004E1E1F00FE8B8C00FB9A9C00F8AA
      AB00F7B5B600F7B5B600824B4B000000000000000000A4676900FAE6C600F8E2
      C000F7E0B8000154030035D35F00015403000358040011922200108F1F002369
      1600F3CC8E00A46769000000000000000000BD5D1800E5924700E5924700FFFF
      FF00D77D3100D77D31008C430C00327DBC002DA3FF001C8BF200FFFFFF000265
      E6000265E600106FE6000057D900003A96000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B00D75C
      5D00D05A5B00CF595A00CF575800BD5356004E1E1F0023B54A0013C1480016BD
      48000CBC4100F7B5B600824B4B000000000000000000A0675B00FAEACE00EABD
      8200EABC7F00EABA7D00015403004D7E2B00E9B77400015403000F8B1C000154
      0300F3D09300A46769000000000000000000C96B2100F8C28F00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BD9A7B0048A3E10039AFFF003AA5F700FFFFFF00FFFF
      FF0064ACF3000367E6000465EA000041A70000000000FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00000000000000000000000000824B4B00DD63
      6400D75F6000D55E5F00D55C5D00C2575A004E1E1F002AB44D001CBF4C001EBC
      4C0013BC4500F7B5B600824B4B000000000000000000A0675B00FBEED700FAEB
      D000FAE9CA00E9DDB700F8E2BC00F8E0B600F7DDB000F6D9AB0001540300097B
      130037752400A46769000000000000000000CA763200F8C28F00FBCEA400FFFF
      FF00E5954E00E5954E00A36737007AADD7005ECAFF003AADFF00FFFFFF0046A1
      F30046A1F3001278EB000B70EB00004ABB0000000000BFBFBF00FFFFFF00BFBF
      BF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBF
      BF00FFFFFF000000FF00FFFFFF00000000000000000000000000824B4B00E368
      6900DD656600DA636400DE666700C6595B004E1E1F0026B1490016BC48001BBB
      490010BB4300F7B5B600824B4B000000000000000000A7756B00FBF0DD00EBC1
      8900EBBF8700EBBD8400EBBC8100EABB7E00EABA7B00EAB87800E9B776000258
      040006650A00415829000000000000000000CA763200EDB78700F8C69500FBCE
      A400FFFFFF00D0DCD000AAA58A0025472E00275E4D001B657400539DC000FFFF
      FF00FFFFFF004EA6F6000C6EE000014AB60000000000FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00000000000000000000000000824B4B00EB6D
      6E00E2676800E67E7F00FAD3D400CC6E70004E1E1F00A5D8970050D16F0042C9
      66002DC75800F7B5B600824B4B000000000000000000A7756B00FCF4E600FCF2
      E100FBEFDA00FBEDD300FAEACE00FAE7C700FAE5C100F8E2BB00F7DEB5006697
      4C00025903000A520800000000000000000000000000CE7D3A00F7D4B500FBCE
      A400A6966C002D4919000656030001690200005C0200034C0A000C412D004687
      990068BCFC00238CEE000B5EC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B00F273
      7400E96C6D00EB818200FCD1D300CF6E70004E1E1F00FFF2CC00FFFFD700FFFF
      D400E6FCC700F7B5B600824B4B000000000000000000BC826800FEF7ED00EDC4
      9000EDC28E00EBC18B00EBC08800EBBF8600EBBD8200EABC8000EABB7D00EAB8
      7A005E92470000510100015403000000000000000000CE7D3A00C65F1700B170
      35002B501C000282100001A40D00CAF0CE00AAE6B000079E0F000D720F00043B
      20000D5798000754BD000754BD00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000824B4B00F878
      7900F0757600EE727300F0737400D16566004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD700F7B5B600824B4B000000000000000000BC8268000C4897000C48
      97000C4897000C4897000C489700FBEED800FAEBD100FAE9CB00F8E6C500F8E3
      C000F7E1BA00245B1A00074E0800000000000000000000000000000000000348
      070009701A000BB02B00FFFFFF00FFFFFF00FFFFFF005BC96900009A0700015C
      0500012F03000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000824B4B00FE7F
      8000F77A7B00F6797A00F7777900D76B6B004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000000000000C48970039A4FF00339C
      FF002E96FF002E96FF000C489700EDC28C00EBC18A00EBC08800EBBF8400EBBC
      8200FAE5C100A467690001540300004B0000000000000000000000000000004A
      050018B0490016AF41002DB84F0045C05C00B1E6B600FFFFFF00019E09000390
      0A00012F03000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000824B4B00FF83
      8400FC7F8000FB7E7F00FE7F8000DA6E6F004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B000000000000000000D1926D000C4897003DA9
      FF00369FFF003098FF000C489700FCF4E700FCF3E200FBEFDC00FAEDD700FBEA
      CF00FAE9CA00A46769000000000000000000000000000000000000000000096B
      0E0031BB620014AF470033BC5D00FFFFFF00FFFFFF0020B03200019D0A00039C
      0B00013502000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B00FF88
      8900FF828300FF818200FF828300E07374004E1E1F00FCEFC700FFFFD500FFFF
      D300FFFFD500F7B5B600824B4B0000000000000000000C48970053C2FF004AB8
      FF0041ADFF003AA4FF000C489700EDC59300EDC49100EDC28F00EDC28C00EBC0
      8900FAEBD100A467690000000000000000000000000000000000000000002A9D
      380050C06E0026B85900FFFFFF00C1EDD30080D7970027B5430006A61800037D
      0A00013502000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000824B4B00824B
      4B00E2757600FE818200FF868700E57677004E1E1F00FAEBC500FCFBD100FCFB
      CF00FCFBD100F7B5B600824B4B00000000000C4897005BCCFF005BCCFF0056C7
      FF000C48970046B4FF000C489700FFFAF400FEF8EF00FEF6EB00FCF4E500FCF2
      E000FBEFDA00A467690000000000000000000000000000000000000000000000
      00002A9D38008AE0AD005ECF8900FFFFFF00FFFFFF00FFFFFF000BAD2A000348
      0700000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000824B4B009C565700CB6C6D00CF6E6E004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B0000000000000000000C4897005BCCFF000C48
      9700FFFFFF000C489700FFFEFE00FEFCFA00FEFBF600FEFAF200FEF7ED00FCF4
      E700FCF2E100A467690000000000000000000000000000000000000000000000
      00002A9D38003AAB4B0075D18F00D7F4E20095E0B00016A03B00076A16000348
      0700000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000824B4B00824B4B004E1E1F0000000000000000000000
      00000000000000000000000000000000000000000000E7AB79000C489700D192
      6D00D1926D00D1926D00D1926D00D1926D00D1926D00D1926D00D1926D00D192
      6D00D1926D00D1926D0000000000000000000000000000000000000000000000
      00000000000000000000098713000F871E00087B160003560600000000000000
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
      0000000000000000000000000000000000000000000072C7E90050C6F600169C
      D7000082C1000082C1000082C100000000000000000000000000000000000000
      000000000000000000000000000000000000000000008BD4EE006BD3F80028B0
      E000019ACF00019ACF00019ACF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6820000D682
      0000D6820000D6820000D6820000D6820000D6820000D6820000D6820000D682
      0000D6820000D682000000000000000000000000000000000000000000000000
      0000F5CA9900F6D1A100F5CB9900F3C18B00F2C08800F3C38E00000000000000
      000000000000000000000000000000000000000000005BB8DD0093E2FE005AD0
      FF005CD1FF0048C4F7001C9FDA000082C1000082C1000082C100000000000000
      0000000000000000000000000000000000000000000076C8E500A9E9FE0075DB
      FF0077DCFF0063D1F90030B3E300019ACF00019ACF00019ACF00000000000000
      00000000000000000000000000000000000000000000D6820000FFF7ED00FFED
      DA00FFEBD500FFE9D000FFE7CC00FFE5C600FFE3C200FFE0BF00FFDFBB00FFDE
      B800FFDDB600FFE2C200D682000000000000000000000000000000000000FCF0
      CC00FEF6D500FCE6BE00F6D5A600FCC69600FFC49500FDD6AE00FFE2BF00FEE2
      BA00F4C59000000000000000000000000000000000000F93CA0076C6E50054CE
      FE0056CEFE0056CEFE0056CEFE0056CEFE0058CFFE0060D5FF005FD4FF005CD1
      FF000082C100000000000000000000000000000000001FA9D6008FD3EB006FD9
      FE0071D9FE0071D9FE0071D9FE0071D9FE0073DAFE007BDFFF007ADEFF0077DC
      FF00019ACF0000000000000000000000000000000000D6820000FFF2E600FEEA
      D200FEE7CE00FEE5C900FEE3C400FEE0BF00FEDEBB00FEDCB70000000000FED9
      B00000000000FFDDB700D682000000000000000000000000000000000000FEFB
      DD00FEF9D800FCE4BB00F0D6A700BBC888009CBD6F0043A7360072BA5E00EFF6
      D400FDEECC00F2BF89000000000000000000000000001C9DD10030A4D40056D3
      FE005CD4FE005CD4FE005CD4FE005CD4FE005CD4FE005BD4FE005BD4FE0062D8
      FF004AC5F6000000000000000000000000000000000031B1DC0049B7DE0071DD
      FE0077DEFE0077DEFE0077DEFE0077DEFE0077DEFE0076DEFE0076DEFE007CE1
      FF0065D2F80000000000000000000000000000000000D6820000FFF5EB00FFED
      D700FFEAD3006F81EA003F5FF2005F75E900DECBC800FEDFBB00FFDDB7000000
      0000FED9B100FFDEB900D6820000000000000000000000000000F1B87F00F6D0
      A100FDF4D100FDEBC500FCDBB30044AB3800009402000E9A0F0010970B0057B6
      4E00FEF5DB00F4C28C0000000000000000000000000045BBEA000F92CC00A9F0
      FE0063E0FE0067E1FE0067E1FE00066B1000046B0B0067E1FE0067E1FE006AE2
      FE0043C6ED000082C10000000000000000000000000060CAEF001FA8D800BBF4
      FE007DE7FE0081E8FE0081E8FE0081E8FE0081E8FE0081E8FE0081E8FE0084E9
      FE005ED3F100019ACF00000000000000000000000000D6820000FFF8F000FEEF
      DC00FEECD700FEEAD3000033FF00BEB8D700FEE3C500FEE1C000FEE0BC000000
      0000FEDBB500FFE0BC00D6820000000000000000000000000000F2BD8700F1BA
      8100F3C18A00F8D5A600FFE1BE0047AD3A000088000084CD8500FFF4EF0063B5
      5200B6C07900FDC08D000000000000000000000000004AC1F20027A4DD00ADE9
      F60074EAFF006BE7FF006BE7FF00046B0B0005840B00046B0B005FD8E1006FE9
      FF004ACEEF000082C10000000000000000000000000065CFF5003EB7E500BFEE
      F8008DEFFF0085EDFF0085EDFF0086EDFF0086EDFF0086EDFF0086EDFF0089EE
      FF0065D9F300019ACF00000000000000000000000000D6820000FFFBF500FEF1
      E200FFEEDC00FFECD7000033FF00BFBBDA00FEE5C900FEE3C500FEE1C1000000
      0000FEDDB800FFE1BF00D6820000000000000000000000000000F5C49200F5C7
      9600F4C39000F4BE8900FCC5960093C47B005CB95C0089CB8300FFFFFF00F7FE
      FC00CBCA9200F6BC85000000000000000000000000005CC9FB0041B8FA001091
      C900A3DEEF00C4F2F800C5F3F800A6FAFE0083F6FF0006900D00037509007DF6
      FF0056DAEF008EFFFF002BB0D900000000000000000077D5FC005CC8FB0020A7
      D500B6E6F300D1F5FA00D2F6FA00B9FBFE009BF8FF0091F6FF0092F6FF006BD0
      B7000C851800A4FFFF0043C1E2000000000000000000D6820000FFFDFA00FFF3
      E700FEF1E200FFEFDD000033FF00BEBDDE00FFE8CF00FFE5C900FEE4C5000000
      0000FEDFBC00FFE3C400D6820000000000000000000000000000F9D0A800FBD2
      AD00FAD0A900FACEA600F6CDA100D0DFB800FFFFFF00E2F2DF0071C26E0066C0
      6600C8CB9200FAC18E0000000000000000000000000072D0FF0044BFFF00189A
      DA000588C6000689C6000689C60075CBE600D9FCFE00068F0D00058C0D007DE2
      DA0069DCEF00A7FFFF00A1FBFC0000000000000000008BDBFF005FCDFF002CAF
      E3000D9FD30010A0D30010A0D3008ED7EC00E2FDFE00A5F8FF00A3F8FF000C85
      180038B55700ABF3EB00B5FCFD000000000000000000D6820000FFFFFE00FFF6
      EB00FFF3E700FEF1E2000033FF00BEBEE300FEEAD400FFE8CF00FFE6CA000000
      0000FEE1C100FFE5C900D68200000000000000000000F8D4A800FDDEBF00FDDE
      BE00FDDBBB00FDDBBB00FFDEC50078BB610098D49800E7F5E6003EAD3B00008A
      00009AC17600FFCCA600F2BE8700000000000000000088E2FF0055D1FF005BD3
      FE005BD3FE0059D1FE0058D1FE0046C0F3000D92CE0011A023000C9918003B8E
      4500C0E9F400F4FFFF00FEFFFF000082C100000000009FE9FF0070DCFF0076DD
      FE0076DDFE0074DCFE0073DCFE0061CEF6001CA8D9008CCED7000C8518005BE6
      8C0059E189003EBD60000C851800019ACF0000000000D6820000FFFFFF00DFDF
      F200FFF6EB00FFF3E7000033FF00BFC0E600FEEDD900DED4D900FFE9D0000000
      0000FEE4C600FFE7CE00D68200000000000000000000F8D4A800FFEFD100FEEA
      CB00FEE9C900FEE7C800FFE7C900E2E2BE00169A14002BA12900089708000092
      000090C47800FFD9BC00F2BE8700000000000000000091EAFF005BDDFF0062DD
      FF0062DDFF0063DDFF0060DAFA005CD3EE0054CFF0001AAC310013A325000367
      1400007DA600007FB100007FB1000082C10000000000A7EFFF0076E5FF007CE5
      FF007CE5FF007DE5FF007DE5FF007DE3FF0072DDFB000C8518002DAD470050D9
      7B0055DE83005AE38B0033AF51000197C30000000000D6820000FFFFFF007F96
      FA00CFD2F300FFF5EB000033FF00BFC2E900EEE3E0005F78F100FFEBD4000000
      0000FFE6CA00FFEAD200D68200000000000000000000FBE5BD00FFFCDF00FFF7
      D800FFF6D600FFF4D500FFF3D200FFF5DC00C5DFAD0042AB3B0043AE3B00AFD7
      9E00C5DCAA00FFE7C900F5C793000000000000000000B7FFFF0068F2FF0076F2
      FF0076F2FF0074F0FF0089FCFF000F771A003BD367002DC4520025BA440016A7
      2A000F9F1E00046B0B00000000000000000000000000C7FFFF0082F5FF008FF5
      FF008FF5FF008DF4FF00A0FDFF00AFFFFF00AEFFFF00A5FBF800A3FCFA0032B7
      4F0048D670000C851800000000000000000000000000D6820000FFFFFF009EB0
      FA003F64FC003F63FB003F63FA003F63F9003F62F8006F85F100FEEDD9000000
      0000FFE8D000FFECD700D68200000000000000000000FDF3D100FFFFE100FFFC
      DD00FFFDDE00FFFCDD00FFFCDE00FFFDDE00FFFFE800FFFFF000FFFFED00FFFF
      E700FFFAE000FFF7D700F6CE9D0000000000000000008ED7EB0089FCFF0077FB
      FF0077FBFF0081FCFF006CE1F200046B0B001588260039D365002FC554001FB6
      3B000C83180000000000000000000000000000000000A4E0F000A0FDFF0090FC
      FF0090FCFF0099FDFF0086E8F500019ACF00019ACF00019ACF00019ACF002CB3
      470041D166000C851800000000000000000000000000D6820000FFFFFF00FFFD
      FA00FFFCF700FFFAF400FEF8F000FFF6EC00FFF4E800FEF2E30000000000FFEE
      DA0000000000FFEFDD00D68200000000000000000000FEF7D700FFFFE500FFFF
      E200FFFFE200FFFFE300FFFEE000FEF8D800FAE3B600F7CE9500F7CF9700F9E1
      B600FEF5D200FFFFE500F6D5A7000000000000000000000000000082C1000082
      C1000082C1000082C1000000000000000000000000002AB24B0045E37A00046B
      0B00000000000000000000000000000000000000000000000000019ACF00019A
      CF00019ACF00019ACF00000000000000000000000000000000000000000028BB
      410026B13E0000000000000000000000000000000000D6820000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FFFCF700FFF9F300FFF7
      ED00FFF4E800FFF9F200D68200000000000000000000F7D8AB00FAE6C000FAE5
      BE00F9E1B900F8DAAE00F6CD9800F3BE8000F0B16A00F0B06700F0B37000F4BE
      8800FBCE9E00FDDDB400FBCEA000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000046B0B002AB04A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C8518001CAE
      31000C8518000000000000000000000000000000000000000000D6820000D682
      0000D6820000D6820000D6820000D6820000D6820000D6820000D6820000D682
      0000D6820000D682000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1B66F00F3BD8200F9CB
      9B00FBCD9F00FBCB9B00FBCB9B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C8518000C8518000C8518000C8518000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBCE
      9F00FBCE9F00FBCE9F000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      8001000000000000FFFF000000000000FFFFFFFFFFFFF81FE07FFF01F3BFE007
      C01FFE01E00FC0038001FE01C00080018001FE01800080018001800180010000
      801F800180010000801FC00180010000801FA00180010000801F8081F0030000
      801F8081F0070000801F807FE03F8001801F807FE03F8001801F807FE07FC003
      801F80FFC07FE007E07FFFFFF8FFF81F8000FFFFFFFFFFC70000FFFFFFFFE047
      000000010000C007000000010000800000000001000080000000000100008000
      00000001000080070000000100008007E423000100008007E05300010000801F
      E48300010000801FE10700010000801FE42F00010000801FE11F00010000801F
      E03F80018001801FE07FFFFFFFFFE07FFE7FFF3FE1878001F07F800380010000
      C001800380010000C001800300000000C001800300000000C001800300000000
      C001800300000000C001800380010000C00180018001E007C0018001E007E007
      C0018000E007E007C0018003E007E007C0018003E007E00FC0010003F00FE01F
      F0018003F00FE03FFC7F8003FC3FE07FFFFFFFFFFFFFFFFF81FF81FFC003F03F
      803F803F8001E007800780078001E003800780078001C003800380038001C003
      800380038001C003800180018001C00380018001800180018000800080018001
      800080008001800180038003800180018007800380018001C38FC3E780018001
      FF9FFFC7C003FF81FFFFFE1FFFFFFFE300000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 380
    Top = 274
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      SubMenuImages = ImageList1
      ShortCut = 16460
    end
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
    SkinData = bsSkinData1
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 464
    Top = 192
  end
  object bsSkinData1: TbsSkinData
    SkinnableForm = True
    AnimationForAllWindows = False
    EnableSkinEffects = True
    ShowButtonGlowFrames = True
    ShowCaptionButtonGlowFrames = True
    ShowLayeredBorders = True
    CompressedStoredSkin = bsCompressedStoredSkin1
    SkinIndex = 0
    Left = 496
    Top = 192
  end
  object bsCompressedStoredSkin1: TbsCompressedStoredSkin
    CompressedFileName = 'Office2007.skn'
    Left = 528
    Top = 192
    CompressedData = {
      78DAECBD79941BC79DE7599EDDB7336FF7BDFD63DFDBF7FAED9BD9E73FFDC7EE
      4CCFF4F4B5EDEEAE765BED6E7B6CF5B48FB1EC6E5B9EB66C59B22C5BD698B62C
      D9A5C3A69B32254AB4444ABC259194488AE2211EE25964F1A8FBBE0FD47D0005
      5415AA0A575DB1DF44A0925909209140662512C037F4A912888CFCFD7E115111
      5F642032E37F2A43FAD4E7BF73ED5F292FCAFE083F9FC0CFBFFB5859592BFEFF
      B1B2DF8BBFFFFB89E3DA2434E9B9AFFD19212437B45DA94CED51BFF9D6A722ED
      9742CD670921D982BE831EA4F6AE32D9A9DED8F28F91A10610EDBF4B08C916D9
      7DD08F64D752FAD56FBEF5D791F1AE0463ED8490AC59EF41E84D4ABF42F7EABE
      FAEEEACC2821C42291B10EF426F429A55FB13A08B111F62B42D8AF0861BF2284
      FD8A10C27E4508FB1521EC578410F62B42D8AF0861BF2284B05F11C27E4508FB
      152184FD8A10F62B42D8AF0821EC5784B05F11C27E450861BF2284FD8A10F62B
      42D8AFD8AF0861BF2284FD8A10F62B4208FB1521EC5784B05F1142D8AF0861BF
      2284FD8A10C27E4508FB1521EC578410F62B42D8AF0861BF2284B05F11C27E45
      08FB152184FD8A10F62B42D8AF0861BF62BF2284FD8A10F62B42D8AF0821EC57
      84B05F11C27E450861BF2284FD8A10F62B4208FB1521EC5784B05F1142D8AF08
      61BF2284FD8A10C27E4508FB1521EC578410F62B42D8AF0861BF2284FD8AFD8A
      10F62B42D8AF0861BF2284B05F11C27E4508FB152184FD8A10F62B42D8AF0821
      EC5784B05F11C27E450861BF2284FD8A10F62B4208FB1521EC5784B05F1142D8
      AF0861BF2284FD8A10F62BD60521EC5784B05F11C27E450861BF2284FD8A10F6
      2B4208FB1521EC5784B05F1142D8AF0861BF2284FD8A10C27E4508FB1521EC57
      8410F62B42D8AF0861BF2284B05F11C27E4508FB1521EC578410F62B42D8AF08
      61BF2284B05F11C27E4508FB152184FD8A10F62B42D8AF0821EC5784B05F11C2
      7E450861BF2284FD8A10F62B4208FB1521EC5784B05F1142D8AF0861BF2284FD
      8A10F62B4208FB1521EC5784B05F1142D8AF0861BF2284FD8A10C27E4508FB15
      21EC578410F62B42D8AF0861BF2284B05F11C27E4508FB152184FD8A10F62B42
      D8AF0861BF62BF2284FD8A10F62B42D8AF0821EC5784B05F11C27E450861BF22
      84FD8A10F62B4208FB1521EC5784B05F1142D8AF0861BF2284FD8A10C27E4508
      FB1521EC578410F62B42D8AF0861BF2284FD8AFD8A10F62B420AA45FADCD4D00
      560721B6EAD5EC1821C42ED8AF08D9BC7E45ED26C4F6CF812B816142885DACF7
      2BFF2021C42ED6FB956F80106217EC57846C5ABF5AF6F61142EC62BD5F4DF510
      42EC22D1AF9626BA082176C17E45C8E6F5ABF10E42885D24FA556CAC8D106217
      EBFD6AA485106217897E151D6E2284D805FB15219BD7AF861A082176B1DEAF06
      EB09217691E857114F2D21C42EEE7D7F159BEC218458E7DEF757EC57846C4EBF
      9AE82284586743BF2284D8BC8EA9EDF2BBABDE5E428875D09B947E2584D8FBC4
      7F8D793DCBBE01428815D08FD09BD0A7947E85EEF5CEF30F87BD43D1E9614248
      6EA007A11FA13725FA95EC5AE8679D772E85A7470921D982BE831E243BD5BD7E
      A5F62E42486E68BB52D9C7CA3EF5F99FCC95C5D31FFDCF65659FC0FFFFDDC7CA
      CA5AF1FF8F95FD9BF8FBE5FEB27BE9639AD7651571CA2A2AE4FF94FFF0A2B2B2
      B2ACB2BFB26CAEF64859D9C7CBF1F3207E70E0E307F153899F2118550C7F1C3F
      78518EE3E5385E8EE3E5385E8EE378ABEC411C7F10C71FC43F1EC4F10771FC41
      1C7F7028E117C72B70BCE2C1780C6515385E81E315388E97650771FC208E1FC4
      F183387E106F1EC4F183388EFF9555E278258E57E278A512F8412578FCE03828
      1BC2F1211C1FC2F1211C1FC2F1211C1F1A92E1977D1C3FCA7F0FE2A7023F07F1
      53899F2159B48FE338CA5F8EF297A3FCE5287F39CA5F8EF2C78B8D4CE578518E
      F297A3FCE5287F39CA5F8EF2C7AB04E52F47F9CB51FE7294BF1CE52F47F9CB51
      FE7875A1FCE5287F39CA5F8EF297A3FCE5287F39CA1FAF4A94BF1CE52F47F9CB
      51FE7294BF1CE52F47F9E3D58CF297A3FCE5287F39CA5F8EF297A3FCE528BFD2
      04E5287F39CA5F8EF297A3FCE5287F39CA5F8EF2CBF6FE78BCD415287FBCED51
      FE0A94BF02E58F370DCA5F81F257A0FC15287F05CA5F81F257A0FCF16643F92B
      50FE0A14B60205AA40D01508AC02CEE34D8AF257A0FC15287F05CA5F81F257A0
      FC15287FBCB9E1A402862A90B942F91B44F92B50FE0A943FFEA780F257A0FC15
      287F05CA5F81F257A0FC15287FFCCF04E5AF40F92B50FE0A94BF02E5AF40F92B
      507EE54FA802E5AF40F92B50FE0A94BF02E5AF40F92B50FEF89F0FCA5F196FF1
      07E3A5AE44F92BE3FF0DC93F2D94BF12E5AF44F92B51FE4A94BF12E5AF44F9E3
      7F76287F25CA5F89F257A2FC95287F25CA5F89F2C7FF2451FE4A94BF12E5AF44
      F92B51FE4A94BF12E58FFFB9A2FC95287F25CA5F89F257A2D095285825828FFF
      29A3FC95287F25CA5F89F257A2FC95287F25CA1FFF3347909508A412CE2A61B0
      1227CD2D8BB277947A522AB84CC42953F437FE2F4587957F4A3D2E634A4E898A
      61ED18D490FCCB624A5741AC9F8CF5C3C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
      C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
      C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
      C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
      C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
      C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
      C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4
      C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C494DF2458058675C3FAC9503FACA0B4D5
      23EB873594A676E215F36FF0F3A9CF3FE1936FFE117E3E819FCFE1E75F7FACAC
      EC6365BF177FFF93BE6403AB33A3C50DCBC832B28C2C23CBC832B28C66CB383B
      3A52736EACFED2546BA5AFE3B6BFA766A6BF71CED30C7C5D77BD1DB727DBAEAC
      064664CE60CFDDC9DA3360AAEEAC16F96670E086CCB9169A318363651CBD733A
      3CD5BF169B595B9A13CB0B62252C5663626D4501AF97179682BEF19A0F9133D8
      7D67B2FAF4B2B73F1D933567823D7764193306E36419E76F1E585B9C589EE85A
      9E1E5498195B9E19577E074697FDC3CB933D6239B250F516724EDCF92034DC1A
      6A3B16E9FB10C4862FC546AFC5C6AEC546AE463D17018E4EDC3DE5C2322E54ED
      5F0B4DA72BE3AA17658C2DDE52CA3876EDE044C3A5B99A43F3ED275382A3C8E3
      C232866E1D580BF95726BA5602C30F6D4C4A065F9F58892DDE91653CE06BB9E6
      BDF4CA54D5415DCEC9BBEF001C451E5DFC296CE6A78C0159C68FDE7C4E8B1289
      AF5F29E3ED7819AF2A659C3CBF7DECDA1E5DCED1CA834029E3557D19936D3A5F
      C6C5AA8362292C160322165A5B0AAFADC4D69697D796636B4B51110B8B5040AC
      2C2DDE7E4729E395FD739D55FEDB87FDF56703F5A7FDCD17FD4D1F4D375FF637
      5E9C6E38EF6F3C87A3C8E3C6FE587D442C47D7943286757F5722B6B8169A152B
      CB0B35C79411F8DAA1707FCDCC9DA328A32EE774E3055FFD47388A3C2EFC5B5D
      A83F8551652D3C8746D4FD5DADC5C2787F35321F8C9771FCC6E1A5A19AB9BAF7
      E75A3ED2E59C6BBB026283356357DCF8B7AA947165792DB2B0BA1455585E5A27
      B61A8BAC451751C6F98653B28CA1BE8658D7B5E5FE3B4B9EEAE5A1FA95E1DAD5
      A1FAE5A19A654FCD92A72632D03072F3B00BFF5667DAAE2D87C2AB91D05A2C22
      CB88CE8802AE2DC78B1C0B073D4DC8839C81C6731852C4445B3A7014795C58C6
      D844D74CFB0D639047E69C6DBE387EFD609C431B51DEC45199D36D9FE578DDC1
      32F2DA8AD756BCB6DAA46B2BEDA711E36B2B6D4EE36BAB949F70F2786DB5E153
      65D0BB3A3791EEDA4A9B13D75920DDB555CA4FAAF9BDB602ABC1A9D579AF5AC6
      74D7563A0CAEADDCF0B75A6AD75649654C7B6DE5AB3DEF6DBC32D97279BAE9D2
      54F325836B2B579451736D152FE3721CE593B9C1B59542C7F5B9CECAB98E4AE5
      45FA6B2BB79491D756BCB6E2B515AF3B78DDC1EB0E5E77A4B9EEA83FB24D8BC1
      75872EA7C175872E67DEAF3B6EBFB555FD4C7E74FB539294D71DC8292F37809A
      33E5750772AA8EEED9CCDF75C7C9579FD19611D71DD7F6BD90F2BA0339D52B0E
      E4C46FE44C79DD819CDA32E23772E6F1BA43AD67C95234726E5745CAEB0E5D4E
      940E39535E77E872E21DE4CCE37587EECB1734014879DD913267CAEB8E9439F3
      7EDDA18BCAE0BA4397D3E0BA23E55757BCEEE07507AF3B78DDC1EB0E5E77F0BA
      836BC99C5C4B567FF44580CFE48917E9D792C90CEA0B83B564AAA97B36F3FD7D
      47E5815F49327EDFA1E6CCF87DC73D9BAEF9BE43597D64EEFB0EE434F97D477E
      BF9BD37DDF71E295A7F1B119BF337EDFA1E6CCF87D879AD30DDF7724AE355696
      132FD27FDF91B8D6E8AC542F3AD25D77A8D71A795E2FC7EB0E5E77F0BAC3AD9F
      C973FB589EFCC97C79AAC72479F84C6EE163B9F693F9D24497499CFC4CBE148D
      E830F8589E9C59F7C97C434192323B5946ED6772DDBA68653152FA8FE5C99975
      9FCC97C63B5492336B8FE6F1FE8EAC6EF148BECB2336D6A6929C597BD4F13548
      93B92D434AFE641E1B693189939FC9937B8DC1C7F2E4CCBA4FE6D1E12695149D
      5773D4C9CFE4C9BDC6E063797266DD27736D2992333B5AC6A4CFE41BBE0BC8F4
      B15CF77580F6937974A8412539B3F668FE3E939BF9586EF4C93C3A586F12873F
      93AF59FB58AEFD641EF1D49AC40D9FC9CD7D2CD77F328F4DF698849FC95946A3
      321A5E6ECC0DB624F0B4CC0E3482406FBDFE1A64DD8EC195484A7497279B57C6
      0C971B624D24D25AE21D1CDA780D22317325627C7902E447AC9C4957C6C9CAB7
      94CB8D9116E5D3B8B72F31491E1851A6C74162B67C7DC25C7E2FE01BC035C85A
      68D27BEB986A475E89443A3F88E14AC4736179E42385B12B2B939560D57767D5
      5FADE0BDBD3C711D2C8D5C8A792E20B37A79A294D13F68857465F45EDBBFB6E8
      5D1969CEAA8CAB53DDB848F1DD7C47B5337EFBC46CF79DC5867770C115EEFA40
      7E15121DBCA07C1BA27E21A2F94E0447912DD47A0C678DDF399128A36FC00AE9
      CAE8BF8E8FE2D32BA3D9B523AEB3D6C28140D5BD324EDC3E36D57879EED69BB8
      E00A36BD2B2FAF16BACF2EF67CA8D07B4EB2D0F3E142E71930DF7612D9901967
      4DDC39BEA9659CBEBE3FF7326ADA71E2568A321AA12DE3EDC4DFBC128005D295
      31508932FA57C75A94AB2A9F27D17967C7E3D756EB9757EA1596BC9FC5EFC1B5
      E45A7866B6EAED7B7FAB5547876F9FF25FDEE1BFB1DB7FE760A0EE8801FEC6E3
      81DA23C8E6AFDC8DB3706EA28CA6677E324E0769CB387703650CAC8DB5665546
      E55A32323B77EB5E3B8EDD383270FD5DDFB9DF2817CED777ABEBE8929157D0CA
      EBEBBB9119678DDF3C228D989FF9C9381D645B1935ED68A58C387753CB1854CA
      38937519BDBD2232377F4BF3B75AF976DF9577BC675E983CBF7DFCD26B29E707
      B4B30478317EE977C88CB3706EA28C9AB99D1C4857C67979F93FEF53660022C1
      C41773CB115C772837B0C8BB75E49D2C4B515C442B13029179654E6039B2A029
      E3D8F5B746EB2E066EEEF7DF3E3C5D7D1CD7CEFEFA33D30DE77DCA6D4A1F4DC7
      6F56525E24BEBF3BEFAD3D856CD3B7DFC1593837715DA099DBC981B465BC7920
      F73256BD75AF8CD70EE9CAA87C3559AF9451BD216B1A2FD6BFA3DC50C6F87441
      56333F19A783B4655CA8DAAF4C71CCFB94590E042F6FB64A5BC698882D229B32
      EFB13E0FB95E466536724629E391E9EA13F1763CED4FB4638A32FAEA4E4FDF3D
      8E0A51A72875B3223990AE8CA15B0794298EC58032CB115D948B1EE3F300B1F8
      05F2D2EA8A7267D9EAD2927C4799F4882E20B33A0FB95E4665A66EA6EAD0CC9D
      A381DA93F2EBD7C9A68BF8E3546F3AC30BF57B58A5A16B4F22B33A45E9701995
      B2288DB8B47E67D97A53EACA785B53C6ABFA322AA0D5502885CBEB5CF2375E50
      D096F1EA7A1935733B3990AE8CCA9423E20FCDAE85836B4A678C2828C5595258
      5967595BC6C535FC55AFCF4326CA189F8D9CBB7B5499C86A3C9BB8A5AEED8A72
      33DDBD1BEBEEDD5BA71C4536645E9FA2CC6AE627E374D086FE587D243E5535BF
      165940FCEB1356B18D7356EB335772F22A5E4C751E32718D169F8D5C6C38156A
      B910EAB812EABA01C23DB7C2BD7714FAEE26C06BBCD9732BD455A9646B39AF4E
      516635F393713A68431995E9B8D05A34A4B44E34AC0C35CA80134BB4DAD2923A
      E0C47FA38011255B2CA4CE4326F4313E1BB9D4F651ACEB5AACEFA63A5FB7E2A9
      D54CD9DD9BB55B1AB8B5D47D33DA755D9DA2CC6AE627E37490AE8CCB21B40B62
      0EC5DB2892187094065D4A4CCD25069CE86A4C6965250F5A7C7D1E522D63A8AF
      61A1F34AACFB7AA4F74EC4733736703732501F1EAA5B1AAC8B791A23230D7811
      F53444F0CE4075B4AF3ADC772BD65DA94E516E5E1967DAAE053D4D626D2D5BD4
      79C8C4677B13B391C6539472BACF0AE9CA6872CAD1601E52B563381B7928E314
      E5E67D96E3DC23E71E39F7C8B947CE3D72EE91738F9C7B4C2EA35C7A617DEE11
      4337B03AF798B42ECB96B9C7C4D3992CCF3D4A3B16E71E13EBB26C9D7BDCF010
      2A0B738F5A3B39CF3DA65B7E6665EE3179214D6E738F2956EF643FF7986CC4FA
      DCE3436952B6738FE9EC6435F798CE08E71E39F7C8B947CE3D72EE91738F9C7B
      E4DC23E71E39F7C8B947CE3D72EE91738F9C7BE4DCA3C979B9147762CA49C82C
      E71ED3D9C96EEE318D118B738F0F3DF450F2349172176496738FE9EC6435F798
      CE88F5B9479DE54401B39F7B4CB693C3DC63B211BBD63DAA9695FBE62CAC7BD4
      DAC979DDA3D688BDEB1ED71FDC6175DD6362F72B6BEB1ED34D3972EE91738F9C
      7BE4DC23E71E39F7C8B947CE3D72EE91738F9C7BE4DC23E71EF33FF7984C9673
      8FE970C9DC63CA99A21CE61E53DAC976EE31753096E71E751B8BDCDB5E24CBB9
      C79476B29D7B4C69C4FABAC7DB6F6DD5CD8625B61AC972DD634A3BD9AE7B4C69
      C4FABAC773BB2A7466139B6E64B9EE31A59D6CD73DA634627DDDA3DC6543470E
      EB1E53DAC976DD634A23D6E71E759BA74872987B4C6927DBB9C79446ACCF3DA6
      5EFA98FDDC634A3BD9CE3D9A59FAC8B947CE3D72EE91738F9C7BE4DC23E71E39
      F7C8B947CE3D72EE91738F9C7BE4BA471BE71E534FF165BFEE31F57C6396EB1E
      CDCC37E630F798BC322DE5BDBA19E71E53DAC976DD634A23D6D73DA69C52C8E1
      9EEB9476B2BDE73AA5113EEF91CF7BE4F31EF9BC47CE3D72EE91738F9C7BE4DC
      23E71E39F7C8B947CE3D72EE317F738FEB70EE91738F9C7B74C1DC6362D2CFF2
      DCE38619C85CE71E0D66204DCE3DA65C5E9858F198CDDCA3811DF3738F0646AC
      CC3DDE7E6B6BCA392B65C56336738F89958D49E07DF3738FC92B1B8DDF3759C6
      6BFB5E485946BCAF5DBF9A71EE11F9539651B56366EE11995396453592DBDCA3
      B26032D5DFBFB2AA736EE2DEFAD54C738F0676462B95D63433F76860044795D6
      CC69EE31E5124A09AEB6508126E71E0DEC4C379C871D33738F0646701446729B
      7B4CB98452222BD0E4DC63463B66E61E331AC96DEEF1A1F44956A0C9B9C78C76
      CCCC3D663492715E4E7E059E725ECEA002B39A7B34B0637EEED1C08895321A54
      6056738F0676CCCF3D1A18C938F728CB58DC738FB28CC53DF798286351CF3DAA
      652CE2B94759C6E29E7B94652CEEB947E18EB4A9F372A553C6E29E7B94652CEE
      758F32F4E29E7B94652CEEB94759C6E29E7B94652CEEE73DCA3226DF736D30AB
      99D5F31E0DEC987FDEA3D114AB89B94759C6E4358119A6584DDF736D60C7FCF3
      1E0D8C98997B4C574665F22DD59AC0C414ABE9758FC653AC26D73D6635C59AAE
      8CC9EB1EAFED7B21651995F7B359F788FC29D73DE27DF3EB1E9529D6541F4D53
      BE9FAE8CC9EB1E0D6635B35AF76860C7FCBA47032356D63D1ACC6A66B5EED1C0
      8EF9758F4653AC16D63D1ACC8365B5EED16852CEF4BA47F3937259AD09349A94
      CB66DDA3811DF3EB1E8D26E5B8EE91EB1EB9EE91EB1EDD30F7383B068A7CDD63
      5219B9EEB11091733B455EC6F8DC4E71AF7B94F31EC57DCF7572198B6FEE51CE
      ED14F7BA4739B753DCEB1EE5BC87F1F31E372C748C9771C33BA6E71E936FB5DE
      F08EB9B9C7E4858E064B1FD3953179EEB1FEE88B1265B2313885DFEA3B59CD3D
      6AEDC8A948F51DF3738F5A23722A527D27DDDCA3FC3C90F17EE4BB6FFF46029B
      EAEB1CF6B94E6927DB7DAE531A3158F728E776CCDC735D79E0575A72BEE75A67
      27B77BAE75468CEFB996733BD9EE736DF19E6BED26D7D6F7B9CEF87955CE7B98
      BCE7FAEC6BBF9458BCE75AB563E59E6BD548C67BAE539431CD3DD7275E791A3C
      F4D043F245CEF75CEBECE476CFB5CE88F13DD7726E27E33DD747B7FF0CC8DD79
      F05BFE33877BAE53DAC9F69EEB94460CEE4796733B26E71ED57BAE2DCE3DAAF7
      5C5B997B347847574639B753DC738F72DEA3B8E71E93CB587C738F726EA7B8E7
      1E933FCB15E1DCA3B71714F7DCA37209BF711EA0F8E61EA3D3C3A0B8E7E5C2D3
      0AC55DC6E7BEF6670065FCD4E7FFAF7F5D164F7F849F4FE0E7DFE2E7FFC4CFC7
      CA7E2FFEFED8FF5256F67FFC6FF2673D09210EBEB1F32736A5577EFB2F30F8C1
      F1A3A78E1E44EFB6859BE7DF7FE3772F3FF5B39F0506947FC682D3D6090EB5CA
      80E787DB613334E5B1086CC294B4B930DA69974D98923617C77BECB20953099B
      93FDB6D99CEC9736F14FBB6CE2B7B419F60DDB6513A6A4CD887FD42E9B3095B0
      3933619BCD990969333A3B65974D98923695BF7F9B6C026973693E60974D984A
      D85C9CB3CDE6E29CB4B91C5EB0CB264C499B2BD1905D36614ADAC46745BB6CC2
      140C3EFFFCF37333015B0664C56C24FCD4534FDDBC7973DFDEBD01BF1FD56B11
      1839F6DE7B674E9F867CD4D5D56DDDBAD5BA18C1C8B56BD760F0539FFFC62737
      2AE33FE1E78F35CAF8894FA654C6F7DF7FFFD74CEBE9C0810393939365172E5C
      B874E95288693DE1EFF5F0E1C365DBB66D0B06834B4CEB095583BF9A32FCE015
      AB83F5C27A61BDB05E582FAC17D60BEB85F5C27A61BDB05E582FAC17D60BEB85
      F5C27A61BDB05E582FAC17D60BEB85F5C27A61BDB05E582FAC17D60BEB85F5C2
      7A61BDB05E582F4CAC17D60BEB85F5C27A61BDB05E582FAC17D60BEB85F5C27A
      61BD98AD971D3B764C4F4FB33AD4140C06B76DDB5676EBD6ADC3870F4F4E4EF2
      CE4624D4C3A953A72E5CB85026EFCCFDDDEF7EC73B6191500F376EDCC09F4CD9
      A73EFF7F576DBCBBF805FCFC427377F1D4CD94771733313131B93C1D6E1DD9F2
      EE0DB781A84AB02D9E3A716BFBC46ACDA21888BA02448278105529B6C5F15B4D
      21F1EC988B403C88AA04DBE2E9F76F7786C593432E02F120AA126C8B8A33D5F5
      8BE28BDD2E02F120AA126C8BE73EAC45D9FFA1DB45201E4455826DF1C2F93A94
      FDEFBB5D04E2415425D816BFBE585FB728EEEF761188075195605B6CFDA8A16E
      417CBECB45201E4455826DF19BCB8DED61F1D8A08B403C88AA04DB62DBD5E6A1
      9878DDEB22100FA22AC1B6D87EBD756C49BC1D701188075195605BBC7CA36D62
      491C9B711188075195605BECA86A9F5A16A7E65C04E2415425D816AFDEEEF42D
      8B0BF32E02F120AA126C8B9D77BBFC2BE2EAA28B403C88AA04DBE2B5EAEEC08A
      A80ABB08C483A84AB02D76D7F78DAF8896988B403C88AA04DBE2EDB6C1FEC548
      6C6DCD25F12012C483A84AB02D4666E78FB60FED691A700F8807510926262626
      21E6061A862FEF731B88AA04DBA2E66045CC3FEC36105509B6C59D7DCFC4A687
      429E7AF78078105509B645E56B4F46BC9EF9BE6AF78078105509B645D5EE2D61
      EF40B0F7AE7B403C88AA14C7A8BD4F8727FBE7BA6FBB07C483A84AB02D6A0F3D
      1B9AE89BEDAC720F88075195605B341EFE5568BC77A6E3A67B403C88AA04DBA2
      F5D8B6C5F19E40FB0DF78078105509B645E7C99716C6BAFD6DD7DD03E2415425
      D8163D67762E8C75F95BAFB907C483A84AB02D06CEEF0EFB4782834DEE01F120
      AA126C8BBE0B6FC47C9ED0408D7B403C88AA14C7A80F5F8FFA3C8B0335EE01F1
      20AA52D4EED33B51F685FE1AF78078105509B645FBC91D119F67BEBFC63D201E
      44558AD71727B6877D9E607FB57B403C88AA04DBA2F9BD6D28FB5C7FB57B403C
      88AA04DBA2E1C8D690D7B338D1E31E100FA22AC1B698F334B9F13B564F936062
      626212627566D49DB02DD8166C0BB605DB826DC1B6605BB02DD8166C0BB605DB
      826DC1B6605BB02DD8166C0BB605DB826DC1B6605BB02DD8166C0BB605DB826D
      C1C4C4C4C4C46431B9767FC3926D0BEB4FB62982DD2D5DD216D65723DF2EE4E4
      AAB6589CE8995BBF15653E7EA3D6E2FA9D8CC1C126E556DFB6EB81F61BF2B904
      B39D5573DDB783BD77E5636D94A70CB15F14B55E50A1989898985C95DCB91F6B
      69EE00EBB6FD584B79075817EEC75AB23BC0BA703FD692DD01F6171FDC690D89
      EF7A4A1AD400EA21EF6DF1CB53771B17C5D77A4B1AD400EA21EF6DE1C27D8A4B
      76676417EE535CB23B23BB709FE292DD19D985FB1497ECCEC82EDCA7B8647746
      76E13EC525BB33B20BF7292ED99D915DB84F71C9EE8CECC27D8A4B76676417EE
      535CB23B23BB709FE292DD19D985FB1497ECCEC82EDCA7B864774676E13EC525
      BB33B2DBF629763EB967676417EE53CC9D9199F29EB892D63D6B38D9166C0BB6
      05DB826DC1B6605BB02DD8166C0BB605DB826DC1B6605BB02DD8166C0BB605DB
      826DC1B6605BB02DD8166C0BB605DB826DC1B6605BB02D989898EC4A9FFAFCFE
      C7FFD73225FD117E3E819FFFE75F9595BDF9B1B2B28F95FD5EFCFD8771BCEA7F
      2F8BFFACA7A5D949420821841042082184104208218410420821841042082184
      1042082184104208218410420821841042082184104208218410420821841042
      08218410420821841042082184104208218410428A9EE1CBFB5C82FBA3727360
      127FEB35EB9617465A37A3D4E1E9C1CDB046082968013A3530F578503CBC287E
      BC289E0989DF84C5CE88D81F11EF46C5D998B8B6246A9645FB8AF0AC0AEF9A98
      5F135121D64486840CC886CC38657055391D46600A06DF8B2AC6E1028EE00E4E
      E11A019C189E51C755BCF87F9B844BD08EF6EEAC2E9D06857D9E987FD80A7D17
      DED0997DFA7C63DF9AF00B4BA86661AD6551BCDF38F170ADC8999E0F5F67FF25
      A40834E8910571D02F0EC5792B20DE0E887702E270401C0988A36046BC3B23DE
      9B11C7E21C9F112766C5FBB3E2E4ACF860569C8A737A4E9C99537ECB7F7E103F
      8A3CC8797CFDC4F7E27660ED68DCF2E1B817F88247E9FA9145A1D5A0EF5C8F1E
      9F59CD3B0843A7412EACAE640D5AE8AFC999D8F450F2F02E3568BF3F77AA23F7
      54831A44085107D5EF2E8ABDD3625F9C031857D373283D070D39608874FDDD8D
      1AF41F9AC4BB81D5BCF31F92AE835C585DC91A34DF579D33D4204288931AF458
      48ECF68937E2EC9916FB73629F217B0C91AE118656837EBF71ED887F35EF200C
      9D06B9B0BA1CD0A067A041C2360D82B59690550DEA3CBD93FD979022D0A02742
      E2775EF19A57BCEE13BB7C46A3DF9BBEB4BC61C8EEF4C023FCC2FB131B35E83F
      35AEBD33BD9A77FE539206B9B0BA923528D87B3767A2BEC1E4E15D6AD0EF7CB9
      73337C4F35A84184107550DD12123BA6C42B53E255AFD8E95546B974BCEE4DCB
      6B86FC2E3DF008BFF0BE65A306FD41E3DA5BDED5BCF307491AE4C2EA4AD6A0B9
      EEDB3913F579DA4FEE48D6A07E5B35A835AE41FFFD8EC899E420092185A841CF
      84C56F27C5F649F1D29478794A19E5D2F16A7A5E993262477AE0117EE11D6168
      35E83F37AE1D985ACD3BFF3949835C585D8E69D0BF4CE5CEE5D03DD5A0061142
      D441F5B9B0F8CD84F89709B16D52BC38A98C7239F0D2A411BF4D0F3CC22FBC3F
      B75183FEA86175DF44FE41183A0D726175D9AB4111AFA7F5C4769DD95F9C6F1C
      10E217E3B9736E41A86661ADCDB2062507490829440DDA1A162F8C895F8D895F
      8F8BADE3E2B7136979313DDBC68DF84D7AE0117EE17DEB460DFAE386D537C7F3
      CF1F2769900BAB2B5983663BAB7226EC1D687E6F9BFB352839484248216AD06F
      23A262543C3B2A9E1B534657E301301DBF36E45763698147F8857784A1D5A03F
      6958DD3D9A7FFE2449835C585D8E69D093A3B97372FE9E6A50830821EAA0FA6A
      443C3D229E1911BF185546D717C6D2F27C7A9E33E4D9D1B4C023FCC2FBAB1B35
      E8FFAB5F7D6D24FF200C9D06B9B0BA6CD6A0C9FE86235B9335C863AB06B5C735
      E89F6E8A9C490E921052881AB42B2AB60C8B9F0E8B9F8D889F8F28A35C3A7E99
      9E5F1882413B1DF008BFF08E30B41AF467F52BAF0EAFE61D84A1D32017569763
      1AF4C870EEBC1BBCA71AB66850DDDBCFB3FF1252041AB4372A7E3C249E1C12FF
      6358195D8D07C0743C65C84F87D3028FF00BEF7B376AD09FD7ADEC18CC3F0843
      A7412EACAE640D9AE9B89933A189BEE4E1FD97E71B0785F8A62777DE9ABDA71A
      B0D611A60611429441F550543C3E287E38247E34A48CAEC603603A7E62C89343
      69F971DC2FBC1FDAA8417F51B7B2DD937FFE2249835C585DC91A1468BF9133D4
      204288931A7424261EF588EF0F8A1F0C2AA3EBFF184ACB8FD3F384213F1C4CCB
      E371BFF08E30B41A545EB7F2E240FE294FD220175697331A3464AB0675528308
      21F141F5784C7C77403CEC118F7894D1F547836931181B7F60C8639EB43C1AF7
      0BEFC7376AD05FD5AEFC4B7FFE41183A0D726175256B90BFED7ACE84C67B6B0E
      56A4D4A02FF7E7CEDE19A19AB545839283248414A2069D8E897FEE17DF1E10DF
      C1D03A6034007E3F3D8F1AF2BDF43C1CF70BEFA7376AD0A76A57B6F6E69F4F25
      69900BAB2B8506B55ECB99C5F19E3BFB9E71BF062507490829440D3ABF24BED9
      27BED52FFE3B86D6FE0C03603ABE6BC843E9F976DC2FBC230CAD067DBA76E585
      9EFCF3E9240D72617539A34183427CB627775EF3DF530D5BBE0FA20611521C1A
      7479497CBD57FC539FF8469F78B04FF9989D8E6FF7A7E59F0DF9567A1E8CFB85
      F7CB1B35E8BEDA95E7BAF2CF7D491AE4C2EAB2578316C6BA6FED79CA190D7AE0
      9AC899E420092185A84195CBE2BFF588077AC5D77AC53FF62A1FB3D3F1ADBEB4
      7CD3907F4ACF3FC6FDC23BC2D06AD0676A967FD9B9927710864E835C585D0E68
      90BC3FE82FBB72E7A5E97BAAA1DE1F440D22841A747B597CB95B1957BFDA23BE
      D6A37CD24EC7377BD3F24F867C3D3D5F8BFB85F7DB1B35E86F6B969F695FC93B
      7F9BA4412EACAE640D0A0E36E5CCC258D7CD5D3F49A9415B4673E7D4BC50CDAA
      1AF4F85D9133C94112420A5183EA96C597BAC557E223DB033D469FCFBFD19B96
      7F34E46BE97920EE17DEEB366AD0E76A967FD2BC92773E97A4412EAC2E7B3528
      EC1FA97CEDC994CF8BB35183E4F3E25EE91439931C2421A41035A879C515832A
      C2D06AD07FA95EFA71C34ADE41183A0D72617539A64157E673A777F99E6A5083
      0821EAA0DAE98E41B573A3067DA17AE9F1DA95BCF385240D72617515AE06BDD1
      2372861A4448716850DF8AF862B7F8727C64FB6A8FB2EC2A1DB97D85F1F5F877
      E8E9F86ADC2FBCF76DD4A0FBAB97BE7F7725EFDC9FA4412EACAE640D0A0DD4E4
      4CCCE7A9DABD456756EEA36A9706A9FBA8528308A1060DAD8A9301D1B0A8D018
      A7294E739C161052688DD3B64E7B9C8EB042E73AF29FF2909A539E288DB4AC9B
      952EA43BF8FD202010865683F0CFFAC53C4705B451B9B6BA92356871A026670C
      34A832943B03AB42356B8B062507490829440D7AA7AEF7A9738D3F5739DFF8F4
      469ED1F08B8DFC3215BA3CDAD37596E14BF58B30B41AE4C2A8DC1C988D1A14F5
      79EEEC7D3A5983FA84B81DCE1D88A66A16D65A2C6B507290841042F28BD4A085
      FE9A9C8106D51E7A961A44082124370D9AEFAFC999941A84ABB0BE355113CD9D
      112154B3B0D6B2685583928324841052E81A14F1791A0FFF2A59837A6DD5A0E6
      B8061DEA1339931C24218410376850B0BF3A670C34A8712977C6C53DD5A00611
      4224337DD5631FEE2814102D9B6CB33508A7B71EDB96AC413D6BA2753977A684
      50CDC25A535C83DEF5889C490E9210527060605F9D192D14102D9BCC010DEA3C
      F912358810420DA206E5A64173FDD5399352837E7EBEB17B4D745AC027846A16
      D61AE31A746A48E44C729084106A1035A83835E89CAD1A742EA14117BAE77286
      1A440835881A547C1A14F27A7ACEEC4CD6A02E5B35A8811A4408A10615A9062D
      4EF4E48C8106C544EE2C0BA19A5535E8C0E96B39931C2421841A440DCA2FC397
      F7596776A07E33CC2E4CF66D8635420835881A440821841A440821841A440D22
      8410420D228410420DA206114208A106114208A1065183082145C64C5FF5C597
      1FCF0B85F854676A102184D8C8B96D8F7EE962E0AFDF8EFCEDBB91BF7B2F6CC0
      678FDB00ECC011DCC1295C5383A841849052E6F4AF1FFAE2F9C09FEF8F7CEAED
      E85FBF1331E0D347C286444C10861D38823B38856B6A1035881052CAEC7DEC73
      FFF5AC3F2F1A04D7D4206A1021A49479E391CF7CE1B4FF4FDF8CFCF9FEE85F1C
      30E22F0FD900ECC011DC41F8E09A1A440D22849432BB1EBEEFB327FD7FB82BF2
      C77BA27FB23762C09FEE0B1B1231411876E008EE207C704D0DA20691C2E570D5
      C896D76EE4004E64ED11C9EBDFFD3434E8DFEF0CFFFEEB91FFB82B6CC01FBC61
      03B003477007A7704D0DA20615D92AD38F76FCD03CDAA5A1F93AD70A4FBD716B
      7BED6ACD841898350B32E3149C282D886C12FFC08AF33AE8BB9FBEFF547E3468
      1735881A5464AB4C5FFCFEAD59010E8C674066437EEDB97FBE3FDD97B0FAEF55
      915377AEA7EAF47260D40CC8A93DD79206EDBED5E415CFDECA0E9C8213A94164
      7D2EEED30F7C18C88F063D4C0DA20615156F3EFA997726C5A35DE2914C200F72
      22BFF6DC3F7D3362F24B58E4D49D1B991E9EEDAC3203726ACFB5C2D37B6E77FA
      C59357B303A7E0446A1049FCF53EF2375FFF30F0C937C37FB92F52BEDF88BF3A
      6003B0034770878B2FB8A60651838AECDBD59DA3E2FE16F1854C200F726ABF12
      C56B7C3633F9C10F3975E7466726FC6D37CC809C767D15FB8B7D775A7DE2BB17
      B303A7E0446A105135E81F3F0C7CF568E4EBC7A25F3F6EC4D74E440CF8FA8968
      46946C30752C0A77B8F8A2065183A84105AD41CFBD555B3F29FEE1FDECC02938
      911A4424FB1EFBEC373E0C3C7E36FAA373D11F9E0D19F0835341031E3F3D9F11
      64831D38823B38856B6A1035A898D8FDBDFB768C88CF368BBFCB04F22027F26B
      CFFDE49B6193930FC8A93B77D13BE86DBE6206E4D49E6B8517DEA983A0FCFD89
      ECC02938D1408396E626A941A5C3A127BEF0E039FF960BD1A73E8AFDEC62D880
      2DE7170CF8E985C58C201BECC011DCC1295C5383A841C5C49E473FF3F2882231
      7F9B09E441CE3D9AEF65F05A998E4835F9903C9F809CBA7323FEB1407BA51990
      738F4DDF07FDFA487DDDA4B8FF7876E0149C984E8320401FBCF49D9432C43FB0
      E25CE1BFE58BDF3EEF7FF66AEC856B4BCF5F8B1AF0DC95B001CF5F8D6444C976
      2D0A477007A7704D0DA2065183D4731F3F1B4D39F9903C9F809C6ED0A0AD471B
      EA26C4E78F65074EC1892935480A90245986F80756AC1AF4F085C08B37633B6E
      2DBF7C6BC98097AA6206189FAB5AC06F38823B38A50651838A8CB77E7C7F7370
      E5ECD4D2994C200F7222BFF6DC2D17A229271F92E713905377EEF2BC2FECA933
      03726ACFB5C26FDE6B6C9F168F5DCA0E9C82139335482B402965887F6059DDAA
      86EEEF4E74B7A71D7BFAABF9D220B8A60651838AEB13DD973A1656AFF8972F67
      02799013F9B5E7A25FA4EC74C96F22A7EE5C0CD78B9E3A3320A7F65C2B6C3BDE
      3C1414AF3765074EC189C91AA413200935A8F8462ADDB874F2D96F7CFFD2CC6B
      77636FD4ACECAE59366057B511C6E7AA16F01B8EE00E4EE19A2D4B0DA20615AE
      066D3FD93AB620DEEECC0E9C8213B92E8E1AA46AD00F2ECFECAD5B3AD8B072C0
      90FD861C3081CC06477007A7D4206A509171EC99077A43AB55B32B66404EE4D7
      9E8BCF66293FF825BF899CBA736333630B9E3A3320A7F65C2BBC7CAA6D62511C
      EBCE0E9C8213A941D420C9995F7FFB4757660E352D1D6E5939DCB26CC03BCD4B
      06189FAB5A88BF58813B38856BB62C35A898F8E0B96F0E46D66AE757CD809CC8
      AF3D179FCD527EF04B7E133975E746FC23C1815A3320A7F65C2BEC38D33E1512
      A7FAB303A7E0446A10354872F1C5EFFDE023DFBEFAF05B8DD1438D11030ED487
      0C38D810CE08B2C10E1CC11D9CC2355B961A54641A34125B6B0E990239753A82
      7E91B2D325F723E4748306BD76A13B10115593D98153702235881A24B9B2E307
      8FBDDBF4C207ED5BCF746E3DDD61C4A976238CCF552DE0F7994EB88353B866CB
      52838C890C36189355E6E453ECE5EA2B8F8F2FAD818E48066436E4D79EAB74C3
      949D2EE94DE4D49DDB7BFDDDE068871990537BAEA57B722FF78D87444B203B70
      0A4EA4065183D4257CD777FE282FD8F50079B62C35C8251A14EF4D4F9847B7FF
      425ECECDBA0B8C8DA9AFDFBE35D81F88C456D7CCEB0832E3149C480DA2069152
      D3A048D7F5E1CBFBCC83FC164FB478AE72BAA7D698AC32279F42726660606064
      7AFEE89DA13DD706B202A7E0446A103588949A066184CF6A9719E4574FCC6A5B
      1CF544796E56DBE268CF5564A5BF1A84FB6E03F5292EF29FF25072E68CF0CFD8
      3D5083A841A4A43428AB5D66B41A94D5B6383A0DCA6A5B1C9D0649B909F7DCD4
      3DC505EF248429397326F8674C0DE248450D62CBE64583B27AC2BF5683B2DA92
      40A741596D49A0D72068CD4601DA20433894943923FC33A60671A472D59A848B
      2F3F9E17B826811A945983BA2B41CAA7B8C843C99933C2018A5083DC332E9DDB
      F6A8A7EA747D4C388CB2A9FDB647D9B20E6B5056BBCC683528AB6D71741A94D5
      B6382935C8A4A0DC7BBFF32AB8F7FD51FC9F0E68D0CAEC0871988268298E5406
      E3D2E95F3F64F2EB661B911EE19A1AE4F4F741D93CE15FAB41596D49A0D3A0AC
      B6C5D16B90948FF4A4CEDC7159FFFD51C7E594A7D848747A80384F41B414472A
      837169EF639F33F975B38DC86FAEE19A1A540A1A94D5B6387A0D827618923273
      EAEF8F529D62EFCD410E3F005F8E6FA5E6D7FAF0EE7CE41CA90CC6A5371EF9CC
      FE71F1AD0EF1A083C01D9CC23535C8610DCA6A9719AD0665B52D8E4E83B2DA16
      47A741A1B68B000A924CE250526690F2FB23F5E8E6FD6D080793FAA7583A7E0B
      B7A53852198C4BBB1EBE6FF798F86F6DE22B0E0277700AD7D420873528AB27FC
      6B3528AB2D09741A94D596047A0D6A3D0F526B4AFC5072E68C5083A841F98ADC
      B1B57F05A441AF7FF7D326973CD9885C3D05D7D4206A90B10645BAAE4B7402A4
      BE9F32B331D4209966FAAA3FDAF143F3203F35C85E0DDABCFDCA0BE93A287F1A
      B48B1AE4B80665B5CB8C5683B2DA1647A741596D8B934E83B43284D7B89CA106
      59D482732F7E3FABE766203F3528F3854C92ACA4D32075DD66A96BD0C39F36B9
      ECD646E40A5EB8A60639BE26218B27FC6B3528AB6D71741A94D5B6383A0D8A0E
      D62B0C35002943F82DFF290FA5C89C096A904C6F3EFA99AC9E9B81FCD4A08C02
      942C2B293548B76EB39435E8CD47FEC6E492271B91ABA7E09A1A54281A94D5B6
      383A0DCA6A5B1CBD06C5E52636DC248100A9AFE5A1E4CC19A106C9B4EBE1FBB2
      BA6719F9A9411905285956923528E5BA4D6A1035A8143428AB5D66B41A94D5B6
      383A0DCA6A5B1C9D06A98A938EAC32279F420DA206D92E403A5949D6A0946B6C
      4A5683F63DF6D9DAD995F7C697DE7510B88353B82E380D72F8CE027B6F4C28C4
      BD1B62232DC6649539F99452D6A0DDDFBB2FABE76620BF031A94FC7D4A416890
      81AC705D9CB1061D7AE20B266FFDB0117917095CF3B14EC498D868AB3159654E
      3EA5943568CFA39FC9EA9EE53D9BFF7D50CAEF53B836BBB835E8F0962F9A5C76
      6B2372052F5C738C25D4206A90F1F729D4206A10358890E2D3A0B77E7C7F56CF
      CD40FECDD32083EF53A841C5AD41C79EFEAAF95B3F6C044EE19A0317A106E54B
      830E6FF95256F72C23FFE66990C1F729D4A0E2D6A093CF7EC3FCAD1F3602A770
      CD818B5083A841A5F69C04AE8BA30611420D3AF6CC03593D3703F9DDA341A24C
      18E0F27571BC3F481BEA995F7FDBFCED873602A7705D70E34C64B0C155302493
      215183520C9BCF7D33AB7B96919F1A64CBFD417C4E8236D48B2F7ECFE4ED8736
      223DC275216A90A7EAB4084DB96AC06748D4A052D6A0D8BC2FEF1A94D573120C
      16A297A0065DD9F183DEEBEF4E2D0B878153B82E3C0DF2D42646574FADCD647F
      2F27CEDADC9072C29D21294B40AB46B6BC76C35E60B37035E8EA2B8F67F5DC0C
      E477A10641804E3FF3159D0CB9FF7971E96EC82D410D9AE9ABBEBEF34779212F
      DB0B5AD5A0FEEAC4E8DA5F6D2F9095AC1E62ACC8507FF5A686941BEE0C093CF5
      C6ADEDB5AB35136260D6066007D660B3A0F76EB8BEF309F3B86AEF06AD0049B4
      325410CFCDE6BA389203E1BEDB7274C50B7B5134259B8718233FCEDAD4900C50
      3FEFA53894A7908CA2951AB4FB5693573C7BCB36600D36B9875D1E3548152089
      1B34886BB3A9419BAB413D3713A36BCF4D7B81A664F5004945837A6E6E6A48E9
      D0CD7BEB8FE623A40C01C7DBEEB9B76AEB27C53FBC6F1BB0069BD420AE49706C
      5539358884BB2B13A36B77A5BDE4A241DD959B1A524A52AEFFD990C1F19032C7
      1C6FBB17DEA9836AFCFD09DB8035D8CCD7F36CE12ED05B0B4AC7AF5D1A94DFC8
      A941D420D76A50560F31CE9706A5BC0FA22034E8D747EAEB26C5FDC76D03D660
      53FDDB08F4D4904DC5AE5E5CB89117EB9A84ACF694B711EDC703BCEEBF71222F
      64F52925DC793531BA765EB597F80673593C4052D1A0CEAB9B1A526EE431A47B
      DF52258504B61E6DA89B109F3F661BB0069BEADFC69CA7856C2A768DCF851B79
      516A50567BCADB88DC9E5E0DA3EFFAB1999EBA959951878153B8CE42833A2E27
      46D78ECBF6928B06755CDED49072235F21E9BFA5DA1812F8CD7B8DEDD3E2B14B
      B6016BB0C9C901C2DD362D3D2761EB7796A68722C3CD0E03A78AEBF5307AAE1E
      5D098C2C4DF53A0C9CC2B5F9960DB55D94A32B5ED80B3425AB8718233FCEDAD4
      9072232F21A5FC964A1B12D876BC7928285E6FB20D58834D0E77841A644583F6
      FEE0BF447CC3735DB71D064EE15A0DA3E9F49E25FF4864B4C361E054716D5E83
      5ACF2746D7D6F3F6A2EC619DCD0324150D6A3DBFA921A504AE93D990C1F19040
      CA6FA9B42181ED275BC716C4DB9DB6016BB0C9E18E5083AC68D09B8F7EC6FC6D
      293602A770AD86D1F8C1EEA5C04878B4DD61E054716DFE1ED5AEEB89BB2FBBAE
      DB4B0E1A24B7BDDEBC90529272B4D766703EA48CC8B67BF954DBC4A238D66D1B
      B0069BC53D946D586C363799D5F2B3CD88212F015083365583767FEF6FC2BEE1
      40C74D878153B856C36838B91B9724A19136878153C5B53B3428AB8718E74B83
      92652879C077A706ED38D33E1512A7FA6D03D660B38044C4F3FEB3E906F393CF
      3E90726CD70A50E2293479D220ED826AE5890DD4A062D1A05D0FDF67FEB6141B
      8153B856C3A83FB96B79662C34DCE630700AD7E65B363A582F4757BCB097F89A
      842C1E20A9DC4F3458BFA921A5432B4378AD3B9A97908C916DF7DA85EE404454
      4DDA06ACC166A16810042834DE9D5286204038A49521DDE9FAA771E643833070
      057B6F4A949B4CA941D4A0D2D4A0A1C413A1F1C25E72D1A0A1864D0DC9002943
      8A00251DCA574806242EF92FF78D87444BC036600D360B4283203DB1A0174293
      2C43901E1C12426865487B7AEA5D090A53837C5E9FF57860C46D760A7C2EEE3E
      F3B746DA089CC2B5662E6E57CC3FBC30D4EC3070DA908D06C5869BE4E88A17F6
      024DC9EA21C6CADCDD70D3A686640C0428E5FB790C291DB2EDDEBE35D81F88C4
      56D76C79000BECC01A6CBA5F83A400A91AA495215580A406A932A43D3DF5EE6C
      85A6416DE70E143785AB417B1EFD8CF9DB526C044EF7E8D7248C86465A1D064E
      B35A93101B69498CAE232DF692C3DE0D386B5343CA0D77860446A6E78FDE19DA
      736DC02E600D365DAE418A00CD4D253468425199C5B18ED9CE2ABCAFC88D8809
      B12A1F962916C6C4FCA88806F0BE2D8FC4719B06E1C3DB7C5FB5456067FBC46A
      CDA21888E60E4E8711A91D169FE52E9FDF9EAC410E3F8FC8CAC38BA841D969D0
      686B62741D6D75030CC96448254B4A0DF2B7DDA006E5AC414D21F1EC98556044
      6A90F567B9C342B2061510FB7EF0B9E5A02F3C50E330700AD79AFB83DE5C999D
      589AE872183885EBAC34C85530246A50660D0A7A9716674068A20702B430DC62
      5E83DCF395962D1A34D77DDB22B0D319164F0E590546A40675FAC593572D010B
      05AD416FFDF87EF3B7E7DB089CC2B51A46CBD9BD2B73D0A06E878153B8E62A1A
      420DA20699D4A0D690F8AEC72AADEBD741AD3EF1DD8B96808582D6A0C35BBE64
      FED6481B8153C5B5E62F6465763C36D1ED30705AD0CD47C8A66A90BAAC2E2329
      977C67C4CCCC9E8D1A64FDE67AD8A95F145FECB60A8C480DAA9F145F3C610958
      A00651830801B303F5EAA211BC2E0E0D42CE8CB75AC8450EFA9B5EA3818CA4BC
      29C9FD1AF40FDD56D16A90F5BD140B7A103BF6CC03E66FCFB71138856B358C8E
      8B87966746A313DD0E03A770CDC193D802A467BEAF4A2E75561EBE542C1A24CF
      4A078E02DD9D478A7158CB44CA9B92364F83663A6E5A446AD0DF775B45AB41D6
      F7522C680DFAE0B96F9ABF35D246E014AED530BA2FBDB314188D4C74390C9C2A
      AE397E12FB34283EB6179506C9D574E9506F3BD2DD79A418CC44CA9B92364F83
      FC6DD72D023B758BE2FE6EABD4AD6B90F57D15EBA841D42042341A24292A0D9A
      E8C6B9E9E996ABBEB5321437BE6402A13EA261539F1797D0A0D66B1651546341
      7CBECB2A3092D0A0091BF6522C680D3AFBEB6F877D4373FDB50E03A770AD86D1
      7BE588B277C37897C3C0A9E29AE327E15C5C7A0D522DA444DE7C24D9701D64F2
      891341AF99EB208B3728D9A841ED61F1D8A055DAD7D7665BDF5711160A5A832E
      FEF691456F3F3E57380C9CC2B51A46FFF5F762FEA1F078A7C3C0295C73F0249B
      3417A75DA5908C03EB169CD420FDF7418AE50CA802B4D977BC4A0D0A0E365904
      768662E275AF5560446A90F57D1561A1A035E8EA2B8F9B7F4C998DC0295CDFEB
      29374FF8BBEF46BCFD0E03A770CDC1936CD25C9CF6CA28F98503D74AD69F93A0
      B5901A1C9D9B4AB12E4E319E01F3EBE24CE280068D2D89B703568111A941D6F7
      551C5B286C0DC225C9F59D4FE405ED5383F07AF0E6FB7941F7F022426C9C8BD3
      5E1925BF704083D2DDDD63700B4FF2DE0D6EB83FC8160D5A1CA8B108EC4C2C89
      6333569958D720EBFB2A4E2C0ADE604208493917A7BD324AC625DF19B91CDD82
      0483276166D4A085FE1A8BC0CED4B23835671518911A647D5FC5A91035881092
      7A2E2EEFDF07158706691766A7432ED836D6A0F9FE1A8BC08E7F455C5DB40A8C
      480DF247C4D5514BC002358810E2CEE7245083367C1FD45F6D11D809AC88AAB0
      5502EB1A647D6FDF00358810424A4683C657444BCC2AE3EB1A647D6FDF71CEC5
      114248217C1F641DD8E95F8CC4D62CEDC68BD361446A90C5BD7DE57EBED42042
      08D93C0DB2655D5C49EDE54D4A61C2DF0AF2CB02375B23A498348890E2A0E7CC
      4EEB8FFB00B023ADDD9A5BFDC3066111D5DA81D3D71EBA2A2C22AD11420871A1
      0685BC9EB9FE6A2BE834E8B11E4B38AF410B23ADB65C7065059C4AEFE1E941E7
      BDC3697E5DE7ABE6E1D18C53D93ACED70F3C9A71AAD6A1CB2364CFCA57CF2A14
      FC7E7FE7C997C23E1B3408766010BF6DD120D59A2D1A24AD19D077E18D987FD8
      61E054F53E12110E23BDF77CF8FA372A85C3C0691E6B1E1ECD3895F5E37CD3C8
      F04C365F5E5A101ECD3895ADCC9E95AF9E55405083E41F4C6C7AC8FA2DE7E681
      3BF50F062FAE05C4EF469C03EEA4F7BCF714876B5E567B46A76AEB38DC34B25D
      323A559BCFFD1AC49E450D32A941166F31280E0D9AEFAB760CF694BCD4BC5683
      CCB40E35C8160D62CFA20619D07A6C9B2D1A043BD29A2D1AA45AB34583A4356A
      50724FE93CBDD3F99E02A7D420BB34C8F9168447334E652BB367E5AB6715108D
      877F15F1792C3E720A1A043BD29A2D1AA45AB34583A435A38BC1D33BA3BEC160
      EF5DC7803BF50F062F2EFAC5B621E7803BE93DEF3DC5E19A97D59ED1A9DA3A0E
      378D6C978C4ED5E673BF06B1675183A8416634A8FDE48EA8CF33D77DDB31E00E
      4EF3DE5310C357AF0887510BEE7CCDCB6ACFE8546D1DF76B90F32D282BD0642B
      B367E5AB675183A841E67B0A5E9C9E16BFF43807DCA9430435C8A0751C6E1AD9
      2E199DAACD470D62CF2A1A0DB2FE7D50416B50EB89ED11AFA33D05EEE054F57E
      DC2B9EEC730EB893DEF1DBF99EA216DCF99A97D59ED1A9DA3A0E378D6C978C4E
      D5E6CB4B0BCA084DB6327B56BE7A1635A8B034A8F9BD6D61EFC06C679563C01D
      9CE6BDA72006E77B8A5A70E76B5E567B46A76AEBB85F839C6F415981265B993D
      2B5F3D8B1A440D32DF53F0E29D29F1488F73C09D3A4450830C5AC7E1A691ED92
      D1A9DA7CD420F62C6A50716850C391ADE1C97E477BCA643F9CE6BDA720862F5E
      140EA316DCF99A97D59ED1A9DA3AEED720E75B5056A0C95666CFCA57CFE2FD41
      85757F507E7B0A5EEC9F140F763907DC49EF756F3FEF7C4F81D342D120879B46
      B64B46A76AF3E5A505E1D18C53D9CAEC59F9EA59D4A0C2D220B45D68A26FA6E3
      A663C09DFA078317BBC7C597DB9D03EEA4F7BCF714876B5E567B46A76AEB38DC
      34B25D323A559BCFFD1AC49E450DA20699D7A040FB0DC7604FC94BCD6B35C84C
      EB50836CD120F62C6A109F17470DA2065183A841D4206A903B35A8E6604568BC
      D7DF76DD31E00E4E55EFAF8E89CFB53A07DC49EFF8ED7C4F510BEE7CCDCB6ACF
      E8546D1D879B46B64B46A76AF3E5A5056584265B993D2B5F3D8B1A54581A7467
      DF338BE33DB6EC276B12B883D3BCF714C4E07C4F510BEE7CCDCB6A4F761A9BF7
      A56C1D976810C24BA741CEB7A0AC40DD9B8830652B3BD0BEE9DACE99E64BD734
      0EB44BBA3AE7FE41D4A06C35082F5E1C11E54DCE0177EA10410D425F3EFDCC57
      B44399DA3A0E378D6C179D5335BCE4E6738906A9113AAF41066DE740F31934CD
      66B78B419D53830A51836EED796A61ACDB490D823B38CDBB062186FB3F140EA3
      16DCF99A97D5AE752AFBB2441DCAD4D6C9BB06E9C24BD620E75B5056A0FA4F5D
      84BA56DED4F6356EBBCD6E3EE3A6D9D47631AEF382A3E7CCCE90D7060D821DD5
      9A750D52ADD9A241D29A6B35082F5E181628B563C09D3A4494B806A97D59A26B
      1D879B46B68BD6A92E3C5DF3B9418374113AA941C66DB7D9CD67DC349BDA2EC6
      755EA01AB438D1630558D06A102E85AC70646A4DAB41D6C9A8413777FD6461AC
      2B38D8E4187007A7AA7714D9A2706705DC49EFF86D5DE2B3452DB8F3352FAB3D
      A353B5751C6E1AD92E199DAACD97971694119A6C65F6AC7CF5AC026276A07EF8
      F23EEBC08ECBAD1950F9DA9361FF88933D05EEE034EF3D05316CAD5F7518B5E0
      CED7BCACF68C4ED5D671BF0639DF82B2024DB6327B56BE7A56013171F3ADE173
      2F79DE7F3623C886CC8B631D8E916D6C3957427E7B0A5E340757CF4C2D3B06DC
      A9430435C8A0751C6E1AD92E199DAACD470D62CF2A020D1A39FFF2C270737466
      2C36E75D9A9F4ECD42607921109AE841E6F9813AC7C836366A500E3DE5E5A655
      87A106D9AB41CE379F19A7D4A0FCF6AC02021711E1A9FE794F7D68A23BEC1D08
      7B3DC944A687A381518CF6C83CDB79C331B28D2DE74AA8DABD25E6F384066A1C
      03EEE0943DC5E19A97D59ED1A9DA3AD4208B1AC49E450DB25D83FC4DE71DC361
      0D5A1CA8710C6D4FC18BB685D5F3D3CB8E0177D23B7E3BDF53D4823B5FF35A0D
      32D33A0E378D6C978C4ED5E6CB4B0BCA084DB6327B56BE7A566169D0E278D75C
      5FF5FC50B3EEEB9893CF3E205F84267AA0054B411F324F379C718CE4D8D49054
      B4B1E55C0977F63E1D75B6A7C01D9CAADE3B17562FFB571C03EEA477FC76BEA7
      A80577BEE665B56774AAB68EC34D23DB25A353B5F9F2D282324293ADCC9E95AF
      9E55601A34D6A18CF3838D0BC32D2A0DBBBF87015FBE96437D7E3468636C0809
      8169E3D4C6967325D41E7A167FBA0BFD358E017770CA9EE270CDCB6ACFE8546D
      1D6A90450D62CFA20699D1A0D078F7BCA76161A46D71AC53D2FFDECFA506C97F
      2AD71ADE81A5F969E7E7E274B1490D42786AA8DAD82C6AD07C7F8D63687B0A5E
      748756AFCFAC3806DC49EFF8ED7C4F510BEE7CCD6B35C84CEB38DC34B25D323A
      559B2F2F2D282334D9CAEC59F9EA5905A641133DF1C92E653C07C3E7B6AB1A24
      DF094FF5477C834BF37E45831A3F748CE4D8540D4290C9B159DCD0DCC99E0277
      EA0EE379EC29886157CBAAC368B75677B8E665B56774AAB68EFB35C8F9169415
      68B295D9B3F2D5B30A4B83627353D1997165FD73D0377E7D9F5683961767F126
      46F8E585C06A34149F8B3BEB18BAD880568310AA2E368B1A64F1E1E159A1ED29
      78D1175EB3F87089AC803B7588708306395CED199DAAADE370D3C876C9E8546D
      BE42D120F62C6A50260DF2C6662694F17C2100B41A24DFC1200F3192E3BCC3D7
      41BAD8B41A941C5B7E3793CD0AB8537777C50B4F78AD3AB8EA1870A7EE54BBBF
      7DC561B4DBDA3A5CF3B2DA333A555BC7E1A691ED92D1A9DA7C79694119A1C956
      66CFCA57CF2A3C0D9A9B522E28166725DAEB2085D0DC4A28B81A0B3BFF7D902E
      365583D450B5B1E57713A56C7B8AFA34EF52EE290ED7BCACF68C4ED5D6A10659
      D420F62C6A90590DC2EBF56B0DC986EBA0C519759C77785D9C2E36A941DA38B5
      B1E577038BACD0F614BC188AAED52FAE3A06DCA9BB631CE95C7118ED561A0ED7
      BC5683CCB48EC34D23DB25A353B5F9F2D282324293ADCC9E95AF9E5590DF07CD
      4EE285160CF8EBAFBD9AEF831CD6A00DB169429A4A8E8D1A94434F79BF71C261
      A841F66A90F3CD67C6293528BF3DAB383428E538EFF85C5C16B1E57713A5AC50
      77BB28F19EE270CDCB6ACFE8546D1D6A90450D62CFA206D9AE410E3F2FCE490D
      B2B889526E3B2E49EFC195B55907813B7B7768CA793B27876B5EAB4126F7C30A
      3ADE2E199DAACD97971694119A6C65F6AC7CF5AC02A2EFE84F43937D72E5B311
      F3D311FFF0E8A5D79C7C6E76B6B1E57D13A5DC76355A98EC73DE3B9CE6D775BE
      6A1E1ECD3895ADE37CFDC0A319A76A1DBA3C42F6AC7CF5AC02A275EFF77B0E3D
      EE39F9424686CFBDE4AD79DFC9FD83B28DAD10EB9FB887150B89B54708218410
      42082184104208218410420821C9C4861A425D95E3E75E193DB37DF4EC76E577
      7E89C78078101562630395141337DF1A3EF792E7FD6733826CC89C6D7ED63021
      6E23D8573779FDD0C248C7E278AF96F9BE2ADD3B4E82781015626303951423E7
      5F5E186E8ECE8C294F4A9F9F4E4DFC41B5A1891E64CE363F6B9810B73176EED5
      F9910E284E3251FF681E4154888D0D6465D57DDFD19F9AB94600189FDD709980
      48C253FDF39EFAD04477D83B10F67A92894C0F4703A35016197956F9F9574188
      DB183DB33DA50069356875C67ECCC81062CB18BF5D37C1A9F7B5150D3D871E0F
      4DF6691F28B1CE94B2FDDF78B77213D67817C67080AB89E1732F51830821D4A0
      AC3408F2E16FBD661DD829B296F59C7C6129E88BCE8C4B12CF3B9A99C0EBF9A1
      E6794FC35C5F35C0000EA233636E18A211036451894AD93C77C30DCBF19DE595
      1772F35C144D6A902EBF9A4D459B9FFD9D106A90ED1A64FDA1880E6BD0E2448F
      F4EB800629D21347EE39ABBC33E75D1CEB5C18699B1F6CC4D08D2B088037DDA2
      41631D8AA60C362E0CB7A8C89D44E46B292BF73468637EB9BB87F65C6D7EF677
      629EF0F4A05D4FD18129636B384A0D2A5C0DB2FE70F8CDD020DDDF984E833054
      3AA441EB7371F1BD9666954D97823E8CC98A0CC5C7E7F814D6C0D2FCB44B3428
      34DE8D6B3448242294A83B2ACA7F2AD735EB0127E7577739544FD7E6E7B84ACC
      D377E18D6F540A5B8029636B384A0DA206D9AE41EAF54EB20639771D94A441E3
      D7F76DD420E54B131769D0444F7C624DD10EA0DD595EBE139EEA8FF806714D97
      D0A08DF9B5BBBD27E7E7B84AB2F846F5C3D7EDD2209832B686A3D4A082D6208B
      FBFF3AAF41F9BA0EC2C82C71AD062576EB98F32278C8A55683140D8DCF28AABB
      75E8F203AD06E1745D7E8EAB841A440DA206E5EB3A0823B316B76A90373633A1
      EEDEAED5A0C4EEED7131D568D086FC5A0D4ACECF719598A7F3F44EBB3408A68C
      ADE12835A8703528E2F3CCF7D758C10DD741E9E609EDD2208CCCC9B85483A098
      B878599C9568AF831442732BA1E06A2C7C4F8334F9550D524FD7E6E7B84ACCD3
      7E72C757AF085B8029636B384A0DA206E5F73A48AA52F26F5B3408A6D2E1460D
      92ABF8E25731920DD7418B337A0DD2E4971AA43D579B9FE32AC9E22EEF13DBED
      D2209832B686A3D4206A507EAF83D2ED4D6CFB9A04FC76F39A8474BBB7A3C692
      776F4FCEAFC966E76EEFA404697E6F9B5D1A0453C6D670941A54D01A5458DF07
      39798FAA89B5D985A141293525DBFC1C5789791A8E6CFDE245610B30656C0D47
      A941D4A022D5A0C4237A961767964373188D97E6FDE1A9FEB80C29376F46A687
      814B1E65430D22EEA1EEEDE7EDD2209832B686A3D4206A50116AD0FCF4B25C18
      B61058090581F21DFD4220E21B0C7B07E4BD33D1C02858768706F51DFD6968B2
      4FAEB236627E3AE21F1EBDF45AB6F939AE129768506CDE470D32AF41F9A27434
      C8FAC34052D83CF712065E7CFE4F100B2BC45F2B0FED999F4E8CCFF12FEEE377
      83E6FF99A5AD7BBFDF73E871A8674610ADB7E6FD6CF3735C25E6A93958619706
      C194D61A04E8F4335FD1CA108E52830A5783C245A1416AE61C48691F432E3EF9
      17D6DE0D84B8873BFB9EB14B83604AB5260548A2CA108E5283A84145A64185B8
      7F1021EEE1D69EA7EEFF50D8024CA9D6540192A819A841D4A0BC6B50CEA4B45F
      88FB071133CCF4558F7DB8C3FD20CE82AEE79BBB7EF2D055610B30656C0D47A9
      41D4A022FB3EA810F70F2266C0F01E2A8484380BBA9E2B5F7B726BFDAA2DC094
      B1351CA50651838A736D7641ED1F545817231FEDF861B6E02C0CCE399FABD520
      E148B252CC22D0A0979B566D416A9071066A1035A854EF511DE0F63A3970EEC5
      EFDF9A15E0C0B82964669C85C119BFFF7C7FE4AFDFD9C0A78F8435443612467E
      9CE5BC06C1A9A7EAF47260D43CC82F8B59E81A54B57B8B5D1A0453C6D670941A
      54D01A5458FB07F1390945C09B8F7EE69D49F1689778C41CC889FC380B83337E
      FFE99B91BF3810D5F297878C407E9CE5BC06C169647A78B6B3CA3CC82F8B59E8
      1A7467EFD37669104C195BC3516A1035A88835A8509E595A40ECFEDEDFEC1F17
      DFEA100F9A0339911F676170C6EF3FDC15F993BD1BF8D37D610D918D84911F67
      39AF41701AF60D073A6E9A07F965310B5D836A0F3D6B9706C194B1351CA50615
      AE0685BCD4A0CCD74105B1774301B1EBE1FB768E8AFB5BC417CC819CC88FB330
      38E3F7BFDF19FE8FBB36F0076F1881FC38CB790D82D3E8CC84BFED8679905F16
      B3D035A8F1F0AF76B5ACDA024C195BC3516A50416B909585CD00163649830CD6
      4E3B3F17E7FE3DECA841D420F7D07A6CDBFEF6155B8029636B385ABAEB3CCFBD
      3A3FD2E1420D4254882D63FCB303F5D6173603D8B15D838CD74EE7E5FB2097EF
      E55D507371F7ED18119F6D167F670EE4447E9C159F8BBBEF936F86CBF747B4FC
      D50123901F67E5632EEEBE45EFA0B7F98A79905F16B3D035A8F3E44B473A576C
      01A68CADE168C976A5605FDDE4F5430B231D8BE3BDEE01F1202AC4C6B1CEF635
      09E3D7F7714D8275F63CFA9997471471F95B732027F2EF897F598FDF5F3D1AF9
      FAF1A896AF9D88A87CFD44540BDE41FE3DF9589300A711FF58A0BDD23CC8BFA7
      28D6244017DE6F9CB005A941C6194AB62BC5861A425D95E3E75E193DB37DF4EC
      76E5777E89C78078101562E358C7757145A9418F9F8DFEF06C48CB0F4E05551E
      3F3DAF4579E76C941AE4303D67761E387DCD1660CAD81A8EB24F9122D5A042DA
      3FA88078EBC7F7370757CE4E2D9D310772223FCEC2E08CDF5B2E447F7631AC65
      CBF905959F5E58D4A2BC79218AB39CD720385D9EF7853D75E6417E59CC42D7A0
      85C93E5BE6F9014C195BC351F62952841A5468FB07151087B77CA96361F58A7F
      F9B2399013F971160667FC7EF166ECE55B4B5A5EAA8AA9241F427E9CE5BC0629
      4EE726173D75E6417E59CC42D7204288A5451105B87F1035881A44EC654DACB1
      12485EE0FE419BCAB1671EE80DAD56CDAE9807F971160667FC7EED6E6C77CDB2
      965DD5F7483E84FC38CB790D82D3D8CCD882A7CE3CC82F8B59F0737123ADB6CD
      C58DB41A5BC351780C4F0FDAE511A68CADE1287B312185CB07CF7D7330B2563B
      BF6A1EE4C759189CF17B6FDDD28186152DFB35241F427E9CE5BC06C169C43F12
      1CA8350FF2CB6216BA06F55D7823E61FB6059832B686A3D2E34844D882F4689C
      81BD989082D6A091D85A73280B905FD5A07DF5E1438D112D07EA432A071BC25A
      F00EF253839C5E17F7E1EBB1E9A185FE1A8BC0084C19589319A4C76B01F1BB11
      ABC088F498CE9ACCC05E4C48E172F595C7C797D64047C4143233CEC2E08CDF2F
      7CD0BEF574C7064EB5DF23E910F2E32CE735084E7BAFBF1B1CED300FF2CB6216
      8706CDF7555B44AB410619A8415785C8FBC3792459855D287B4A16C7CE9244FB
      87777DE713D9A2EE1F94DBB9CE6B90956216FC3DAAA777467D83C1DEBB168111
      9832B02633488F17FD62DB905560447A4C674D66704F551FBF71FE1B2D6BEED1
      20448278109599E0F1772E0A2771A510B10EF7517586F6933BA23ECF5CF76D8B
      C0084C19589319A4C7D3D3E2971EABC088F498CE9ACCE09EAA3E5B5FF560D332
      46FE5860CC0D2012C483A8A8418414EEB57FA15FF5B79ED81EF1DAA041300253
      06D66406E9F1B8573CD9671518911ED35993195CA541FFDC10759506211E6A10
      21248F34BFB72DEC1DC86AFFBE94C0084C19589319A4C777A6C4233D568111E9
      319D3599C1551AF4505D1823FFD2CCB81B402488871A440A8E8C7F00ACA202A2
      E1C8D6F064BF0D1A34D90F5306D66406E971FFA478B0CB2A30223DA6B32633B8
      4A831EAE5D709506211E6A10679C0A6EB589031A141969750FC5FD1758F7F6F3
      A189BE998E9B1681119832B02633488FBBC7C597DBAD0223D2633A6B3283AB34
      E891EA605C8326DC0022413CD4206A50A870926C59273468B8C93D94820605DA
      6F5844AB41EA9BB1799F2EC3666B103CBA59831EBB33E32A0D423CD420AEFE72
      6C05B2C5E4A8060D36B807B7C52343B28B9A8315A1F15E7FDB758BC0084C69AD
      410E4E3FF315FCD666901E5F1D139F6BB50A8C488FAA35D5A33683AB34E8F15B
      D3AED220C4430DA20651830A42833C55A74568AAF834E8CEBE6716C77BFCADD7
      2C022330A55A9372205164683D83F4F8E288286FB20A8C488FD29ACEA39AC155
      1AF4A3AAA9ABAEF9C21491201E6A1035C89D1AB4343769468390ED8397BEA3CB
      6C8306796ADD838C27A141AE09C92E6EED796A61ACDBBA06C1084CA9D6543990
      A819A4C71786C51F36580546A447694DE751CDE02A0D7AF2C6B8AB3408F15083
      A8412ED4A094CA92AC41329B449BD9060DEAAF760F329E8406B92624BBB8B9EB
      270B635DC1C1268BC0084C19589319A4C723536B8FF5AC5A0446A4C774D66406
      5769D04F2A95A7132CCF4DB901448278A841D420B769503A65D16990369B2EB3
      F56A09F7DD760F321EA941EE09C92E2A5F7B32EC1FB1AE4130025306D66406E9
      B139B87A666AD92230223DA6B32633B84A837E766DD0551A8478A841D4205769
      9081B2E83448974D629B06F5DC740F329E8406B926247B352834506311AD0619
      6428710DFAF995014583825E378048100F35881AE42A0D32501627D72484BB2B
      DD838C27A141AE09C92EAA766F89F93C8B03351681119832B02633488F6D0BAB
      E7A7972D0223D2633A6B3283AB34E817977A5DA54188871A440DE2BA386A501E
      35E8CEDEA7A33E8FF5FD836004A60CACC90CD263E7C2EA65FF8A4560447A4C67
      4D66709506557CD415D7209F1B402488871A440DA206A5D0A0CEABEE41C693D0
      20D7846417B5879E853ACCF7D758044660CAC09ACC203D768756AFCFAC580446
      A4C774D664065769D073173A5CA54188871A9491899B6F0D9F7BC9F3FEB31941
      3664CEED14271D5183326B50C765F720E34968906B42B28BC6C3BF8AF83CC1FE
      6A8BC0084C19589319A4C7BEF0DAADB9558BC088F498CE9ACCE02A0DFAD5B956
      8CFC2BF3D36E0091201E6A504646CEBF2CE606C5EA8210510C6F695851084D21
      B33C65ACF58677B0C337DC3B3DDA9F9A318F7FCC33D1552B4FC9EDAC1C622B1A
      0DDAD43509A1B68BEE41C62335C83D21D9B677C3B16D613B34084660CAC09ACC
      203D7AC26BD5C1558BC088F498CE9ACCE02A0DDA7AB649D1A005BF1B40248887
      1A94115C4488C8B408F489D0A488FA45349082A5397CB640DB22B33C65B2A761
      B4E9EA4457CD646FE3646F533253FDAD5E4F3B34459E92DB5939C456346B1236
      756D76A8F5BC7B90F12434C83521D945E7C997A00E73FDD51681119832B02633
      488F43D1B5FAC5558BC088F498CE9ACCE02A0DDA76A61E23FFEA62C00D2012C4
      430DA20615E8DAECCDBD47B5EBBA7B90F124EE51754D48D4A082D320F0DB53B5
      770231F78078CC7F735DD21AB438217C5D6276502C8C69B9BAE3E1C4EBD094A2
      0522A64AC37867F570FD47A32D37C63BEE6839F0C467E58B89AE5A28CEF4489F
      56837467A99955746725C7762F24958DB115CD3DAA9BFBAC1E6A90531AD47366
      67C8EB599CE8B1088CC094813599417A0CAEACCD5A0646A4C7A06106B72D437A
      F9E45D97081022C96AF554496B1046728CF33303626E48A5FFE84F95015FFE53
      0EF55A0DEAB8A3A849F3F5B1D69B2AD7FEE56B9015F95A0A8A5E83369E85CC38
      456B417756726C08098169E3D4C5564CCFEA49F76439EB8D1E1DAC770F321EA9
      41EE09C92E6607EA872FEFB3059832B686A3F0B830D96797479832B686A32E5C
      0D7BA46DC80D64BB82B7B4AF832645A05F0447C4C2B864FAE2B68406C97730C8
      47FD18FC546998E8AC196DBA36D6766BBCE3AEA4E1CDEF4B0D92FF54AE687A1B
      A747FBB51AA43B4B6A104E548DE8CE4A8E4D6A10C25343D5C55664CF2CDDA475
      71D1A106F720E34968906B4222C4E1BB484A5A83308C2B935DF1F13C3435776B
      EF3D0D8ABFA34C76C5668458BEA7415DB5F12935453540EB915FA81A24DF99EC
      6998EA6B9E1E1DD8A0411BCF523508A7A73C2B393655831064CAD8B836DB0CB1
      E126F720E3911AE49E9008A10639A74122225617E3EB9F638B8D2736689058C3
      9B18E1E34BA0852A0DBEE11EEF60A7B2CA7AA4AFF3D44B5A0DF28F0FE14DE888
      7FCC33E39DD06A90F62CA0D52018493E4B171BD06A10424D8E8D1A644A83465A
      DC838C27A141AE0989106A90831A1415ABA1F878AEDC6BB3518356D659DBA841
      BDBEC12E4535C63C40AB41F21D4809C4284983369CA5D5A0946725C7B6E13A28
      556C2935A8B0F6F27680D868AB7B90F12434C835216D366B628D03AFBD8C9ED9
      7EEECEED376F36B807C483A8A841A63408971BCA05C59A64E375D09AEA7A8306
      0DF728972DE34312ED7590C2C470606264C637A9D720CD59AA06A946746725C7
      76EFFBA0F55075B1E998E9AB4675150A88B66435C8552C8CB4DAF5B5BEFE4BFC
      91D6F0F4E0261987E54D35EE7E0DEAF62FBCD53A74A475F0DDD681E3ADFD27DB
      FA4EB7F57ED8D67BBEADE7A3B66E1D97DB3AB55C6BD753A9A3A34307F2E0C48F
      DABA601F5EE00B1EE117DE11C35B2D43DE193F35C8AC06AD85D56B0DC9C6EBA0
      D5141A34D4AD5ED148365C078D0FA6D620CD595283B416746725C7965817A789
      53171B31A54163EDEEC185F5D377E18D987F783380653012119B8134FE8D4AB1
      19C0B2FB35A8C73F7FB8C5F36E4BFFF1D6BE0F5A7BCFB4F69C6BEDBED8D6A548
      4C5B878E1BEDED5AAADADB74DCCA04F2E0449882FD8BAD5DF0058FF07BBCA50F
      312092E999696A5016DF0729437D444B5C83E4EB68EAEF8386BAF1420B6465FD
      756FDAEF83D6CFD264EE497956726C9A90222963236670D71241F7D54FCF87AF
      C7A687AC3FEC5A076CC232B81610BF1BB119D894C637498360D9FD1AD4EB9F7F
      AF65E0446BFFA9D6BEB3AD3D17DABA2FB5755D6BEBBCD1D671BBBD5DC7DD8E36
      2DD51DAD3A6A32813C77DB5B610AF6AFB775C2173CC22FBCBFDFDA8F4866A841
      D63428DD386FA041E9D424B7B372888D10BB3468BEAFDA5EA8419BAD41FDFEE0
      FBAD7DA7DB7ACEB5757FD4DE7515EAD30EF551F4A5AEA345477D47B39686241A
      33D1103FB1AEA319F66F77E062AA031EE1F77C5BCFE9D69EF7DBFAE6667DD420
      6A1021593F60E7F4CEA86F30D87BD75E601396C145BFD8366433B0298D6F9206
      C1B2FB35C8E39F3BDB86CB9FAE2BED5D95509F8EF69AF6D6FA8E9696CEE6CDA0
      B5B349D2DC09316A812F78845F78572E88DA7A1666BDD4A0CC53DF477F2AC23E
      B9F2D99025B13C377AE93579CA4477BD5C5F6DC468FFD440AB3C25B7B372888D
      10EBB49FDC11F579E6BA6FDB0B6CC232383D2D7EE9B119D894C6BF7A456C06B0
      EC7E0D1AF2CF5E68EDBC12FFAEE74E7B6B6D7B735347735B4743E76651AFD089
      DF0DF0D2D4D1048FF00BEF88E1626B5768768A1A94F9D9F27BBFDF73E871CFC9
      1732327CEE256FCDFBB99DE2A42342AC768A13DB235EFB35083661191CF78A27
      FB6C0636A5F14DD2205876BF068D0466AEB57554C5BFDCA96F6F6EE9688446F4
      76D6F56D0EFD5D09F01A5EE00B1EE117DE11032289C6A3A2061142B2A2F9BD6D
      61EFC06C6795BDC0262C8377A6C4233D36039BD2F82669102CBB5F83C682A15B
      4353B523534D63DEF6095FEFD4B467DA3FE4F70F6F12D381047EC50B7CC123FC
      C23B6240244B4B316A1021245B1A8E6C0D4FF6DBAF4193FDB00CF64F8A07BB6C
      0636A5F12F5E149B012CBB5F83BCC160E380A7CD33D03B343038DC3F36D23F39
      D63F35DEEF1DDB14A6C71378E35EE00B1E874614EF88019188F01C352823D9EE
      97BD38D6E118D6F7F2262407EADE7E3E34D137D371D35E601396C1EE71F1E576
      9B814D697C93340896DDAF41BE60B06DA0BF67B0DF33D8373ADC3735DA0BBCA3
      3DBED1DECD607A1D5FDC8B7407BFF08E18108908CF5283323272FEE585E1E6E8
      CC586CCEBB343F9D9A85C0F2422034D183CCF303758E916D6C1C3C898D1A1468
      BF6191D8BC4FFB4F7B3508C6374F8360BC1035C81F9CEBF2F40E0CF58E0CF74E
      8E744F8D747B4715A6C73605FF688F04AFA52378845F78470C88448467A84166
      D66687A7FAE73DF5A189EEB07720ECF52413991E8E064631DA23F36CE70DC7C8
      36360E9EC4166A0E5684C67BFD6DD7AD8061FCF4335FC16FF51DD88465F0EA98
      F85CAB2554E3EA3BB0298DDB2240D2B8F64D5876BF06CD04E7FA3D3D439EEE89
      A1AEA9912EEF70A74FA1CB3FB229044613E035BCC0173CC2EFC4502762402422
      14A006D9AE41FEA6F38E410D2279E1CEBE6716C77BFCADD772460EE3124586E2
      6FC2262C831747447953EEE88CCB3761531AB7458054E3EAFBB0EC7E0D9A0BCE
      0E7ABAC6873A27873AA6863ABCC31DD30A9DFEE18E64021B99196ED733B281B9
      513DC81358B7062FF0058FF00BEFE3431D88442CF27971A6346871BC6BAEAF7A
      7EA859F775CCC9671F902F42133DD082A5A00F99A71BCE3846726C6A482ADAD8
      3878A67C3EF3E651AC95766BCF530B63DD5634481DC625F24DD88465F0C2B0F8
      C386DCD119976FC2A6347EFF87C20A3AE3EAFBB0EC7E0D0A0667C6063AA606DB
      A706DBBC836DBEC1F6694F9B7FB03D30D496CCCCF00666875A8D090EEBC19B38
      515AF3C77DC123FCC2FB94A71D9188056A90390D1AEB50C6F9C1C685E1169586
      DDDFC3802F5FCBA13E3F1AB431368484C0B4716A63E393DC5CFB04B6C2E2E6AE
      9F2C8C7505079BEC053661191C995A7BAC67D55E60531A7FE8AAD80C60D9FD1A
      B410F44F7A5AA7065AA63C2D5E4FF3F4608BDFA3101804CD3A66363237A427A8
      A74907F2CC24AC251CC123FCC23B6240246281CFEA31A541A1F1EE794FC3C248
      DBE258A7A4FFBD9F4B0D92FF54AE35BC034BF3D3CECFC5E962931A84F0D450B5
      B15183643A5C35B2E5B51B8E017745A64195AF3D19F68FD8AE41B009CBA039B8
      7A666AD95E60531ADF5ABFBA19C0B2FB352814F44F799ABD034DBE387E4F73C0
      D32499196CD431EBD9C09CA741073EFA6EA44107F2E0449852BDC0A3748D1810
      0935C8AC064DF4C427BB94F11C0C9FDBAE6A907C273CD51FF10D2ECDFB150D6A
      FCD03192635335084126C7460D92E9A9376E6DAF5DAD991003B39B0B5CC011DC
      15A50685066AECC5190D7AB969753328100D9A9EEA6FF40E344C0F34023FE86F
      0C0C34CC28D4EBD0294E70A04EC7C260C346EA7520CF5CC25A03BCC0973FEE17
      20064422E6F9BC38531A149B9B8ACE8C2BEB9F83BEF1EBFBB41AB4BC388B3731
      C22F2F0456A3A1F85CDC59C7D0C506B41A845075B15183121AB4FB5693573C7B
      CB09E008EE8A4C83AA766F89F93C8B0335F6029BB00CDA1656CF4F2FDB0B6C4A
      E39BA441B0EC7E0D9AEAABF7F6D5F9FAEAFD7102FD7560A6AF76B61FD4E808F6
      D76A99EFAF31666140CF7CDC48DC5A2DBC4877D2B52F1EC99AE70E35E8FF6FEF
      4C83E338B23BAFD9D84FDAD0C6C6466CC47ED8D8D88F8E58D8D1D5772B026B7B
      C67678C6D648D661AF2DDBB1200912F080040D8087C65A891AC9A3B1D6A4246B
      34238DAEA128911245521425521429DE1409F004419C6CDC47E306719FDDA87D
      AFB2BABABAAABABABAABBBBABAF15A7FB60A595959D959AFF257999599CF1883
      86972642589FCF8C83E40C622150C9038C583D6F713B4891373983D4792306B1
      CFB3EF7CD73CC6D79CB1427022385DA18D8B7BF7D9C591CE8CFB0F8234216550
      F34CE4F45838B3823459E2596210A46CFF0BD7F7E59E91E0B599E1AEA83A6787
      3BE7C431B41DFA82ABA352479C86551A9192C5B3C0B96650E2D92127901F8339
      27064173031B14B3F799E4ED20D4DC64786E2AB2346FFDFB2045DE2406495995
      E78D18C43ECFBD77A56184DF74D20AC189E07405C6A06B7B5F80EA25E98371AA
      8234216550EB5CE4DC4438B3823459E2596210A49C17D70EAA7DA6FE2F5F15F5
      5522BD962145138C9E51CA83F16C138396603BDAD6608A6B07CD4E48F5BCC5E3
      E21479630C92E7539E376210FBECFA6DED8D41FE894356084E04A72B3006DDFA
      F89F17463AA7DA6B332B4813520605E7572F4F46322B489325FEEB3B916C0852
      A60193D913BD0FC2772EF70761432EA8F0A3DBC3B2F7411633282E6FB22C0DA9
      F3460C629F9F7D780DD0F0F8612B042782D3159AEF8683AFCC6781419026A40C
      EA9C5FAD9D8A645690264BFCFDC670360429E7C1EDB37C7971B4C726E2971788
      412619A459CF5BDE179742DE8841ECF3D247D7010D8F1DB2427022385D8131A8
      F9C81EE0C5647B6D66056942CAA0EEC5D51BB391CC0AD26489EF6F0E67439032
      31881864070659BC5E1C31288DCFCFF7DFB83EC83FFA99158213C1E98841F661
      D0E15BA16CC8FE0CEA3BB65B6050AF4D040C82FCD0B8B8A40A1ED83937186423
      9FF5343DBA30D6D377EA4D2BD7CD4E356FC420F679F9C0CDEB21FE918356084E
      04A72B3006B51D7B03873985DA322B481352064D8557EF675A90264BFC832FCE
      664390727E3068ACCF264A894113C1DACC8D91C8BA20B799ECFA4ED15FB695FE
      83D6A02FEF8C30E8179FDE6A1CE5379FB2427022385D8131E87EC78D9ED3EF65
      4390F2CC60304B8943CA594D9C18943D06914885C4A0573EABEF9EE27F75DB0A
      C189E07474E1483661D0D278BF4D440C22AD5906ED3ED2D03FC3EF6BB6427022
      381D5D3812318818442206B1CFAB47EF8666F983AD56084E04A7A30B47B20983
      9627066C22621069CD32E8B5638D4373FCD1762B042782D3D185CB89D278914D
      0C2206D94DA18B7B7B8EEFE93CB44B471001A265353229830C7AE344CBD8027F
      A6CF0AC189E07474E17235B97EB2EDC2D4BD8B06B5361814B289884106D573E2
      D5FE860BA37D1D3A8208108D45E627BB787E454F935D52E4999EFAE5E9311D41
      041699944106BDF975EBF8027F69D00AC189E07474E188417661908D26CC1283
      0CA9E3D0AEC1B61B83F76EEBA9ED06446391F985117E715C4F0B2352E4F9A1E0
      BCB8686D020D055964520619F4D6E9E0C01C7F67DC0AC189E07474E18841C420
      6250BA0C7A7EA0E9EA40E3777A6ABA0AD158647E66809FEED3D3CC8014195D9D
      F635EAA9BF994526659041FB2E77B58F2F2C4556B33D5D1A4E012782D3D18523
      06D984412B93433611318818B46619D43B3A7DE04AF73B673B2C109C084E4753
      BF8941C42062507AEA3CB46BA0E94A7FC3451D41844EA1C70CBEF9997E7EB25B
      4F33FD52E4D9FEA6999E3B3A82089DD417976906D9A7868C4CF4E58BF2B17E26
      066930686AD8262206196750A8B90E28A323881063D0EC20624847B38352E4B9
      8156FDD5782002318818440C22061183884105C9A07CE90E923A8288413967D0
      DBB782C6C50EF987B73E322E76C874F0927111835261D0884D440C4A81412D75
      A1966BBA9231686E909F1BD2958C41A1D6B9509BAEB2CB20B8E9E6F2E123550E
      1961D0C70DBD3B3EB96099E07405C62083E52C67D09327C7FFF493851F7E3A2F
      D78F3E1305DBB017E21083B2CDA0F0F4A84D440C32CEA091DE7BA37DED3A8208
      3106F18BF0A0ADAB4529F2D2D4F0F2F4A88E2082050CB2B9338E8C33E8A7872E
      EF0E45EA66F98EC5EC0A4E012782D3151E835EEF49220583FEE2CBB1EFEF5BFC
      C1470B20D890B62541C813278841C4205202060D74E948C5A088AEE219343BA1
      237D060DD71DEE3BF566E7E1178CA8F7C4ABA18B1F128390419F5DBE3DC7BFD0
      6F85E04470BAC263D02B5D49A460D08F8E8CF9DE59F4BFBB00820D26F6A714F8
      E32FC688415967D0CC984D440C4A894163A11E1DA918A4FF8963D0CADCA48EF4
      19D4737C0FBF3299E02C2B429B6B495018353704F18941F079F6F077CDF37C4D
      B7158213C1E90A8F412F76C4697972F0F33D1BE5216A06397EB5C0FD7A1E041B
      2076080B618110479F41EC10629019064566C76D226290F1F94146DA41B1F941
      06DA41526423ED209DF9419D475E1240138E8A7D56717B69825F1CC3D74F0BA3
      7C781AC587D5EEBCD726839EFBFC4AC31CBFA9D30AC189E07485C7A067833131
      3480E4810A06FDF557E372064987186790740831C8048316EC266250FE336849
      38E362F4BCBC00A315440F0068A61FBF972751C4A0E867D7B1DA1BB3FC13AD56
      084E04A72B3C066D6B1325A101240582140CFADBAFC69F3EB8F8F46728F9212C
      0475701138958841F24388410583210290C1F5E2467ADA80327AEA698BAD17C7
      2FC8A0A0A90529F2D2E41050464F93433AEBC54519B41055586C044120026880
      4D8915D7A9E3978941ECF3B3AFAE011A1E6FB5427022385DE131E8E49428090D
      202910A460D0DF7F35FE8FC717B77E3907921FC24240B0F7EF1333487E0831C8
      1486BEDCC3D4FFE5ABA2BE92249B1071FC75A681E3FF26EA84A437A28A8644E3
      4847C5CFAD88A61F3DA39407E28B1105F76F0FB5DE18E90DEA0822403416999F
      1F89BE8549A0F91129F2DC6070696A44471081454E8941B3B70E1183743E2F9D
      B80E6878ACD50AC189E07485C7A0BAD998243AC803150CDA7062ECA5B3CB2F9E
      5D04C18674080B61811047A72F8E18445A9BAA7FE7276D7B2B3B8FBCA8238800
      D1B21AD93883262FBFCB440C4AF4F9F9C91BD767F9475BAD109C084E57780C0A
      2EC489D1411EA26050D9D7E3AF5D5E79F5F232083640EC1016C202218EFE9804
      62108964AF317B2A068D9E7C452E6290E6E7E56F6E5E9FE11F69B1427022385D
      E131686C5929A083FC4F05832A4E4DBC5D177EAB6E452E3844DA86BD1027E9D8
      6C621089645B06B51FD8A9163148FDF9C5E95B8DF3FCE62E2B042782D3151E83
      22E1245230E81FBF9DF8F84EF8E33B2B89158638343FC86E6B2D5235BB46BAFB
      82FBB7771CDAD571E87990A6536FB60BE2F4E054D3BD6A069D79AD2C9188418A
      CF2B67EABB97F85F0D5B2138119C8ED6EAD9FCC9ED978F35BFFC4553421D6B86
      38C4A0ECA9E7F47B63774E4696E68D8B18B446D4B6B712873DA846DFE13A75CD
      75D11553AF8206DB6EA0DFF0E854531A1797DE67F7B986FE657EDFB8158213C1
      E968CD525AB3D4260C0ACF4F1B97C4A027CFF2A0A72FA62CAADEF3A44BED4561
      7C9D380B692CD4831B7DEDA1966B6C5D6E74512438CB1BBC777BB4AF435A39C1
      3083C650C4A0E8E7D50B7743CBFCC1092B042782D391EF06F2DD90D70CFAFD6F
      9640DF3F97B2A87A5F130C5A9D17853C5A1167AD0280A67AF9890EFE7E97B094
      F720AE11440C123EAF5D6A1C5AE18F4E5A2138119C8EDA41D40EB209839667C6
      8D4B62D0FF3C3D979EA87A5F130C8ACC8A420C2DF09139DC06F48CB7F3232DA8
      F1202A32430C629F37AEB68C85F933B356084E04A7A3F741E4BBC1260CC279F1
      862531287069313D51F55ED80C6ADB5B294C8995FAE2624B31605F1CF3A6371B
      C2757B40935DB46629FBBC59DB3A1EE62FCD5B2138119C8E7C3730DF0D7291EF
      869C306871BCDFB8AC67D052F7CDCE3B97B327485F7EBAD3A3E17DFD915F762E
      FD2CB854DDBABCA16199651B5A70DF3FB7B476DE67A5CDA086772B82077692EF
      86543F6FDD080E84F93B4B56084E04A72B6CDF0D9FEFD9B83C3968C477832476
      484ABE1BD821C4A09C30082AE7F494726578E77256CD18D2270665904199F261
      B7D6FCA8EEBBDBD53EBBB0B4BA9A6D7AC229E04470BAC2F6DDC0962F004024F5
      DD20493AC4F8BAD9D221C420330C9A1FE9342E89415B9A578C0B2A7349C4A0C2
      6690791F7613C1DAF8D5056D2AC8670619D47B7FFA4063F73BB73B2C109C084E
      57D8BE1BA495DC0010FABE1B140C9263C820833431440C32CEA0B9C17BC62531
      E885E09271FD4C2662506133A8E7F89EA18E8689E190A8914194B00DD1D0CF78
      6F10D5DF0982D4D4EF83D6C85C6F7B4EFD2E0CDF0D20F9A2D6497C3744253FC4
      88EF06FDA5B38941C61934DBD7685CD2CDF246F7927141952E292F1804790674
      420B8E1894C6B8388836D6DFC9341EEA058D0D74C3F650B07EF0DE2D4861B0ED
      E67067230802D5E3E2D6268372F22954DF0D72F70D497D37484AD57703AD9B9D
      5B0641459D9E884185CF2038B0E71ED398702CB006E2007AD8E1F03DD4DE001A
      25061183B2E9BB411E92C877832485E306E3BE1B684C8249064D77DD322EC96E
      A1AE4E4FC4A0825FAB4760501B1350061A41D8F3D61B14007415E1D57405C825
      C0AB9D18440CCA86EF0685D7061DDF0D92E45E1B0CFA6E48042062506A7354A7
      478DCBFA8E6B6250DEAD59AAC9A0E6A37B8841C4208B7D372864C477835C067D
      3710834C322825118368FA6A52DF0D6A0635EC7F8E499F41E6E7161183D63283
      C877437E69351C0606A52A6250B67FEF44B036DA00D16B83C85B22D220617B32
      E8E66F2AE4D26150DBDE4AF4241E5B976338AAA1B950DBDC40EB6C7FD3EC40CB
      FC503B68A6A79E7500A6D16403334EBBA1470C22DF0DC4A0CC3CBC3DC06755C4
      A0B45FC4403D2C2EF2C94704F1C2F7B2B0EE743F6AB29B9FEE43A1FB8315CDE1
      CD2667D9A4CD350583CEFECBDFA895884170ECF2D4C8E2C400D3D2FD4124D144
      08B6A7BBEBA73B6F4E066B41D39D37408B13FDECD818B9A686E59A0BB502B644
      72F53783E687828C5C50A0B2358516E33437880B0AB135856606500B239A6B0A
      E53B800A8C41B4662931881894A901694B5323293148738D02305D7E75753512
      590DAF44569622CB0BE1C5B9F0C2F4CADC242E3F3B3502953656F563BD0BA3DD
      F3C31D503F0B6D8D16ACAEFB1AD3B67C39833EA8FA5122E93008D12308B697A7
      C784AC0E43AE667AEFE2C098EE7A844BA81502D9B1ACC4003ACBB31320FC81B0
      313D0A3F47A04FD34CCF1D36AA737EB8131284E2820285A3CC17724132C878F5
      987391EF867C6750E785CF8C48C24A4AF1D70E83A0C9000FC9EA9E1C08945A13
      46E2648541AB091834AD605067361894EAB8389141D1BE38C8E7CAEC7D464C01
      28CD4893FE2624E67007508618440CA27650BE336836D947C120E3F1D70E833A
      0E3D0F1538AB00E582C08E68C5057104373A1AEA88AFDC32C9205E64D0AA0683
      46A30CEACB11836E810C3268E0DC7BF10CEA1468420C220691EF864260D0B92F
      0F9E3F7EF8D2A92FEBCE9FAAAFBDD85C7FBDA3E56E7F57FB48A85F934106E3AF
      2906B17A5BA9FE66D8156310F35EAD9214275B0C8A281924BD2A828DC5711983
      06D97B7FF82D4D6619D4DDCA84CBF2F475B059AB08A0BB97FBEACFF5DDB980F3
      8C5AEA203029837A8EEF66220659C3A0946ADADC8A7C37140683CE7C71A0B7AB
      23D4D73B3C181A1F1D99BC3F313B33BDB8B00058D16490143F78EDB44EFCB5C3
      20A89D5845A71004C6560F807A8F55682A7566BB1D14C7A019A8A21980987933
      062D2083DA33C8A0E1AE662624113488BA5A601BD0D377FB6CCF8D6F407DB7CF
      8086BB9AF419D4FEE93FC9450C2206E93048E1A9412D7DDF0D20B9E30623BE1B
      2C63505EACE22B574A0CFAF6C8479DC1563586A075A3C920161F00B4F799A7E4
      1852C42706D98141BCC8A06564D05262068D3006DDC38164E618145B6041D4BD
      A8DA422DD7C405169A6B07DB6E82E40B2CA81974F3AD72B58841C4A0440C620E
      1A962707D5D2F7DDA07988FEBAD99A876495418537564462CAA9431FB635DE51
      63A8B9FEBA2683203E031093842145FC0C32885F5EC89E8C33E8F7BF597AF2AC
      3683A20380E30481710C823A4D4B8ACA2D5363B3550C5A8C2464504F06196466
      9EA99C41475EF8EB44220611833419A4F0DA2097BEEF06CD43F419A479083128
      3D067D73F0FDBB37EBD418AAAFBDA8C92088CFE803F1E51852C4CF148372E247
      352B0C62359B4A8ACA2DF539AABB34E7F2080CE205068557C33206CDEB322864
      964126E7B76A8E49806F1A93400C4ACA204DC70D067D37280E31E2BB410740C4
      A0941874F2C03BB7AE5E5063A8EEFC294D0629E24B1852C45F43ABD3008370C6
      4A9B4AE9302883D3101230682A1183E62506F5DB8B41AAB1D9C4201A17A7312E
      AE807D37E4E9B38141067DFDF1DB75E7BF5163E8D2A92F3519A48ECF30A4884F
      0C5232082A372D59C8A079430C1A883128AB2E4DD5CDB72883C4257A5604A0AC
      E048F2316CA6094C816FCCF0680FB08918440C4AE4BB81B96F48C9770373DF90
      92EF069DA5B38941C619747CDFAF2E7F734C8DA1F3C70F6B32C860FCC25EFA58
      C120AC00556B8C43601C83A07ED392E9BEB8E70DF7C56932A85F6050972683E0
      5B36DABC294EFDFA6A566B4EAE8166B5A12283A647013A4CE1B929103485601B
      7338DC0158817C0237412B5106D15A3DC420B5EF064DE9FB6E00A5EABBC1CA71
      7105CCA0AFF6BE015881D6CDC903EF7C73F0FD53873EFCF6C84767BE3870EECB
      839A0C32183F4FDD584C77DD6255EEDCE0BDF9914EA8A241AC5F283C3F0D829A
      5C9B41AA39AA2A064534A5392641EC8F5257AA71F56A13AB57138F4930C6A031
      5D06E97224AA96646A8D29244A6DA8F043203391C539514BF328611B17ED01B2
      4F8DA0A06534330E3CB2C39AA5C420FB30A8807D371436836CBE4E42BE30087B
      8DE2A56290F647736C36838EBA7349DEBFC4BA986057E2B1D96C8690C0A01581
      418BB30919342C31A845CE207D8EC4AB2DA10699EE31CD0B521BEA70DDE1BE53
      6FE697EF0662907D1854C0BE1B0A9841F65F2FCEFE0C8247E544EDA0B8751212
      B48334D749C805833AB419A4CB917805631A52AB5D21B5A1C279A73BAEDF6FBE
      3076FBC4E8CD6320D818BBF5D5E8CD2FE15B1E08712026C42706659C415043E6
      8BD68EEF86421D179717EB66138332CBA0B006837AA30C92968C8B31489F23A2
      A00D25AC23AAA54EA605D0489C88413664505647A1646F584BC1AF594A0C2206
      E9326897FADD0D6A7248B666E92EE5BBEFA83AACED8B53326822198374390207
      6A6BB43B817A241183EC0620926D7D37108388419960D092A62C6190E0BE4164
      D0B482418BBA0CD2E7086A4C522F6851437D6C249B42C42062103188182429D8
      587FE6B3F76F9FF8A8FDFC41F8866D0849C4172391D70E8382FBB7E348360447
      9C201076198F937D062D683168409F41FA1C61E513D304D340028596EEC75418
      0C22D941D41797EF0C3A75F0FDDE9BDF0E74774C4DDE9F9D9D856FD886100857
      03C860E4B5C3A089606DDBDE4A6087421028F76197344E76C6662B5CA9266090
      CA956A8C41518264E44D012422FC34FC39C42052061954D8FE83F274AC884106
      013BDAEFDE181B1D69A9BF567BE6F8D9A3FBEBCE9EB877F7168440B8822CC623
      AF1D066556995E2F4EC5A085D41824AD9C63FE494C5CD43D3A87D79E0C5A8522
      B38114DD7D4419230C2A60FF41793A56C40883828DF5D084191D19BE79F1F49D
      DA0B3DC1968991A1C19ECED6FA6BF557CF4338EC95FAD9E491AF1C3F70F2EDE7
      3F7AE68953EFBC70FDF41175646250CEBB9DB51834972A83704EE8F408434646
      842BF008CA1483F8C2FD1083526290C25BD0F2E460AAFE83E09054FD07295C36
      900FBB947CD881CE7CF67E5FE7BDBB37BEBB79E9DBDE8E7BA1DEAE91501F6068
      6A62BCE5765D5BC30DD80B7114912F7DB1EF83AA1FC975FDF461456462905D18
      B46A90419DDA0C1216250065AA2F6E657E72657E8A4D53CA39833EBED4BBE3CD
      0BF614E48D18941283989320C98BD0E77B364A9E83F4FD07495E84D821DCAFE7
      99747C37480062871867501AF7516133E8F6898F26C6C72F9F3C7AF7DA771DCD
      0DD00EEAEF6A1FEAEF191B0AF577DEAB3DF315EC85388AC8C7DED8F9C9F37F7B
      E4E58D4CB0FDCD6F76292213836CC1205E64D0AA1E83FA7418A45EFF0115E588
      5C6151D3A216149A51C80E0CFAE9DB97775F8BD485F88EFB3612E40772057923
      06A5C420E62408C4D0C004DB527822FF411280A4438C30487188410691140C6A
      3F7F706666E6CCE71FDFBD7EA5A5FE7AB0B1BEABAD89358886FB7BCE1CDD0F7B
      218E22F2873BFEE2C247AF5C3AB08709B6F73DF384223231C8460C8AE832685C
      C6A0A83B6F8941FA1C11B5389B4073715A9A8BC4346F0B06BD75F9F630FFC265
      DB097205792306A5C420E624488E060910FAFE83340FD1F71FA479083128BD76
      D0F8D8D8A51347AE5F38D570ED72D3ADBAB6865BAC41146CBC7DE5F431D82B6F
      07B1C89FBF5AF3DDA7AF07AF9D6682EDE3BF7E56119918645706CD6832686198
      B9B1533148972309B400E74AA045497660D0B3EF7CD73CC6D79CB19D20579037
      62504A0C52780E924BDF7F90E621FAFE838CFB51CDA371E3B97A1FD4D3D176FB
      BB7397BEFEFCE6E5B3F5B5171B6F5C650DA29B97BE6DBC7105F6CADF07B1C8A7
      3F79FB8B7FAD68387370B4EF1E7CC3F6A52FF6292213836CC220993BEF85F052
      8C414C8B13219141F1EEBC2506E97344D48A5C4B0AADC6B48C0A8BB203839E7B
      EF4AC308BFE9A4ED04B982BCC91964E5AB2BE955547E3148E12D48ADA4FE83E4
      CE830CFA0F4A5ACFE7D1B8F19C30880D751B1E0C5D3975ECE28923B567BFBEF5
      DDB99B97CFD49E395177F66B08578F8B63914F1D78EBC89EEA0F77FCC5D1D7B7
      9D3BFCBE3A723E32C8A0F29641A22B55E9AD28CED6B91F52BAF356304897235A
      5AD15044AE30931D18B4EBB7B53706F9270ED94E902BC89B9C41D6BCBA52BC8A
      CA2F06D9D37F50A6C68D2BC6906763DC784E18C4A6FCDCABBF363C3870EBF2D9
      8BC70F9DF9FCE38B270ED75F3D0F2110AE9E1F643072DE31C8B8F28A419AEEBC
      275784851770E28F9A41A13806E97324B122A25663E2E3650706FDECC36B50DB
      3F7ED876825C41DEE21864D5AB2BF9AB28F31E1EAD64903DFD07698E1B572BE9
      B871B90C8E1BCF1706494B1FF474B48D8F8DCECCCCC0376CEBAF93903432F551
      DB98415351060D2B1834AF66902E47A2D29D70C92B247EECC0A0973EBA0EB5FD
      63876C27C815E44DCE20CB5E5DC95F45E51783ECE93F483D6E5C53FAE3C61532
      326E3CBF1844EBC5AD1906CDC731682A018306620CD2E788998F1D18F4F3FD37
      AE0FF28F7E663B41AE206F720659F6EA4AFE2A2ABF18644FFF418A71E3D2203A
      B66164DCB8E210230C521C92170C5AE3EB66179E4C4E2965AB6D64758510F582
      1ED633E8E50337AF87F8470EDA4E902BC89B9C4196751BCABB01F38841B61D7B
      261F37CE248DA39307261A37CE241D2286E88E1B578CDCCB9776103188947359
      CFA05F7C7AAB7194DF7CCA76825C41DEE40CB2ACDB50DE0D982F0CCA9771E34C
      D2EA0AF2C044E3C699A443D89FFAE3C6D35EC3C16A062D2F64406870E91C4896
      49B203835EF9ACBE7B8AFFD56DDB097205799333C8B26E437937A00E83A07223
      06A5316E5CEA1F3BF4FAB3B06D64DCB8E21036865C7FDCB8E2107B32A8F3CEE5
      1C4A3F6F33BD0D290D544B2448677EB42B2349413A194C8A6E4C9B3068F79186
      FE197E5FB3ED04B982BCC9196459B7A1BC1B301183A4676C6250AAE3C6191AE4
      1B49C78DB398F28DA4E3C6A55E383BBF0F021084EFF7E644491914FCFAEDA5B1
      1EF3827440BD0BBC79B1A4FEFE3C6F5E904EB6DFE6D873A9761B32E8D5A37743
      B3FCC156DB097205799333C8B26E437937A0268314EBA41183B2376E5C5296C6
      8DE79C418BA31D39515206B57DF5ABA5D1EE99F63A338214201DD0D971FE97BD
      A60429B0A432C22048C7C8A8B6C8445FBE28534BFB5ACFA0D78E350ECDF147DB
      6D27C815E44DCE20CBBA0DE5DD806A0669AE93968841F9F528958DC72A9B8F1B
      2706E933683A586B46C4206250D2CF1B275AC616F8337DB613E40AF226679065
      DD86F26E40358334D7494BC4A0D804817CFB64D063829DC78DE79C410BC3C19C
      2829839ABF786371A46BEADE55338214201DD0C931FE956E5382145852196110
      A4430CB20983DEFCBA757C81BF34683B41AE206F720659D66D28EF0634392E8E
      18446B96EA33687EE85E4E9494418D475E5B1CE99C6CFDCE8C20054807F4C528
      FF7CA729410A2CA9FFFD2D6F5E900E31C8260C7AEB7470608EBF336E3B41AE20
      6F720659D66D28EF06240691D626831A0EED5E1836CB204801D2017D36CCD704
      4D09526049658441900E31C8260CDA77B9AB7D7C6129B26AAB0A10F203B982BC
      C9196459934DDE04230691B2CAA0B9504B4E949441F59FBE323FDC71BFF99219
      410A900EE8A321FE1FDA4C09526049658441900E31C8260CEA1D9D3E70A5FB9D
      B31D7613E40AF2266790654D3679138C1864B721761674EBA1262D62D0EC4073
      4E94944137F7BF3C3FD86E964183ED900EE8FD41FEFFB49812A4C0927AE2246F
      5E900E31C8260CCA0F7793423EAD69B2299A60C4201B0EF3CEB62B222B1934D9
      7327274ACAA0EBFB5E9C0B05279A2E9A11A400E980DE1AE09F6A342548812595
      1106413AC4206250AA0CB2ACC9266F8211836CC8A0F45C11FDE0A305B9FE68BF
      28B52B226290C4A0F1C60B66440C220615C0C70EBEBC8941B66290DCEB10C0C2
      A02B22FFBB0B4C70087C07DE13A57645642D83EA73A2A40CAAFBEDAEB9817B63
      77CF9911A400E980FEAD9FFFB3065382145852196110A4430CB209833E6EE8DD
      F1C9057B0AF2961E0232883F625066D6D534B72667225744D28A49465C1171BF
      9E074987B8DE9E6752BB81B09441DDB773A2A40CBAF2DEFF9D1D681B6B386B46
      9002A403FA7FBDFC1FDC3625488125951106413AC4209B30E8A7872EEF0E45EA
      66F98E451B09F203B982BCD9844119706295B70CCAEDBA9A8AD535355D1131A6
      4881895C114900920E2106E9E8F23B3F9DE96F35C9204801D201BDD4C37B6E9A
      12A4C0927AF42BDEBC201D62905D18F4D9E5DB73FC0BFDB613E40AF246ED203B
      302832D99F43A919247742246D003592B822FA4C7442246DC0214F1FD2704544
      0C025DFCF5F699FE96A9AEDB660429403AA0FD43AB9BDB22660429B0A44ACFF0
      E605E910836CC2A0670F7FD73CCFD774DB4E902BC81B31C80E0CCAD5DACEEA15
      9ED5AE889824A6E8B822DAFAE59C5CD2216A57445632E87ED7AD9C282983CEBF
      59333FD66B92419002A403AA9F8A1C1B5A3123488125F5F28D8879413AC4209B
      30E8B9CFAF34CCF19B3A6D27C815E48D18640706AD4CF4E4506A06492E87E462
      4CD17145F4E2D9C5389D115D84AB5D1111832406CD75D499513618F4EAED8879
      153C8386EB0EF79D7AB3F3F00B46D47BE2D5D0C50FC5F531DEAD081ED899EA81
      66AA9A5DC76A6FCCF24FB4DA4E902BC81B31C80E0C5A1EEFCAA1D40C925C0E25
      12AFE58AE8D5CBCB89A47045440C025D7A6BC7D248E76C479D19410A900EE8EE
      4CE4C4E88A19410A2CA98C3008D2296C06F51CDF33D4D130311C1235328812B6
      47FB3A46FBDA477B83A8FE4E50A8E51AC417D74BDF5B3937185C9A1C8A6A38AA
      A1B950DBDC402B347C66075AE687DA41333DF5EC403355CDCFBEBA06B5FDE3AD
      B613E40AF2460C2206A919949E2B22B507A244AE882C6550E7CD9C28F9B8B877
      9F5D1CE934E93F0852807440CD3391D363613382145852196110A453D80CEA3C
      F2128066ACBF93693CD40B1A1BE886EDA160FDE0BD5BC09DC1B69BC39D8D2008
      84468D74E0F2D4C8E2C400D3D2FD4124D14408B6A7BBEBA73B6F4E066B41D39D
      37408B13FDEC403355CD4B27AE436DFF58ABED04B982BC1183ECC0A0A5B1CE1C
      4ACDA06CBB22220681AEED7D010832DD5E67469002A4036A9D8B9C9B089B11A4
      C092CA0883209DC267506F70A4E71ED3D840D758A80758038D20400F0068A0E9
      0A7C0FB5378046550C42F40882EDE5E9310C991C9EED6F9EE9BD3BDD750B6034
      176A0541A07906FDFCE48DEBB3FCA3ADB613E40AF26667062572E45D780CCA95
      9F35B5B7356B5C1159C9A089F61B39515206DDFAF89F17463AA7DA6BCD085280
      7440C1F9D5CB93113382145852BFBE13312F48676D30A88D0928038D20EC79EB
      0D0A00BADADF7011303478EF36085A4C4A0645FBE29667C65766EFC33704CE85
      DA10433D7766FB9BE6873B40CBD3A3E619F4F23737AFCFF08FB4D84E902BC89B
      6D19244D75240659CCA0025BB3D4B60C6A38F8CABC6906410A900EA8737EB576
      2A624690024BEAFDC6B079413A6B9341F09D2106758232C2A05F9CBED538CF6F
      EEB29D205790377B324831D5B1F01934D29E4325AD2DF3DA77C344F07A4E94DC
      8FEA913D4090C9F65A338214201D50F7E2EA8DD98819410A2CA9FDCD61F38274
      D60E833EA8FA5122E933E8C80B7F9D481964D02B67EABB97F85F0DDB4E902BC8
      9B0D19240750220C15188372E56FDAA0D76962D09A62D0E15B21F35A530C029D
      FD97BF51CB483BE8E65BE56A65B61DB4FB5C43FF32BF6FDC76825C41DE6CC820
      0580980A9B41B9F2F5A9F6F859787D71E3F7AEE5444919D476EC8DB9E1CED950
      9B19410A900E682ABC7ADF9C200596D4075F9C352F4867ADF5C5DDFC4D855CC6
      FBE2DA3FFD27B932DE17F7EA85BBA165FEE084ED04B982BCD1B8385B3068B02D
      87323F26C1CEFE83C6DBEA72A2A40CBADF71A3E7F47BE605E9CC0C06339214A4
      93C1A4D6E0FBA086FDCF31A5FA3EA8E7F86EA66CBC0F7AED52E3D00A7F74D276
      825C41DE8841766050AEFC4DABBD4E17A0FFA0CE3B395101F770664A053926A1
      F9E89EF4C6240C9C7B2F4B6312DEB8DA3216E6CFCCDA4E902BC81B31C80E0CCA
      95BF69B5D769B5FF204D1742BCAEFF20E642C82EFE83BA1A722262108DCD1618
      740B94DB71716FD6B68E87F94BF3B613E40AF2460CB2038366FA9B72283583E4
      AE82345D08F189FD07A95D08E5D677C3746F534E94170CB2CC4755C132A8BB95
      0997E5E9EB60B3561140772FF7D59FEBBB7321D4520782401583C4257A566627
      56E626578041D363F343ED02869AE07B61B407046C32CFA0B76E0407C2FC9D25
      DB097205792306D983418D39948EFF20C520F9A4FE83345D08E59641B9F20C68
      7F06410EC1082D50013368B8AB990949040DA2AE16D806F4F4DD3EDB73E31B50
      DFED33A0E1AEA638064D8F027498C2735320680AC1F6C248D7FC7007000860B4
      38DE075AC90483F6DDED6A9F5D585A5DB5550508F9815C41DE88417660D064CF
      9D1C2A91FF20CD41F2FAFE83340FC9A1FFA0A5EE9BB9720B08A7CE0B0665DB33
      48A132A86D6F65A8F586D417272DDA03DBA1966BA1E6BA81A62B03CDB5836D37
      41FD0D17A4354B616361AC27B238276A691E256CE3A23DD3A3B87A0F085A4633
      E3C023F36B96F6DE9F3ED0D8FDCEED0EBB097205792306D98341F5395422FF41
      9A83E4F5FD07691E9243FF41A4A40CCAF62A1C85CAA0F45C30A4EDF4812FDC0F
      F9F2260619F41F24176FCC7F90A8DCF90F22256550B6679F152A83AC54381CE6
      0BFA23FDD28960AD35FDC31911E4B6701894237FD36AAFD305E63F88949441D9
      1EF95FA80C4ADB871D3148BF5F6B2E7F3ECC248841D96050C1F80F22256550B6
      DF36162A837A8EEFE1572613DCDC2B50ADF2FC92A0306A6E487A1F94E608C6B5
      C420EB33B0CAA73C60A3C018942B5F9F6A8F9F05E63F88648041D9EDE92DE071
      710268C251452B33D85E9AE017C7803BFCC2281F9E46F161695C1C31C8860C4A
      E3430CCA2A838C7CF2C27F10293983B2DCCA2E680641336731AA88705B84B111
      04E80100CDF4E3F7F2248A18440C220619665021AD594A22066599410B5185C5
      461004228006F8C96EC4D0E2388A5F260611836CCDA01CF99B36E8759A54C00C
      CAF613CEDA63D02A3188DE0711838841562F7AF3009F5565914159B6AEB5C0A0
      33AF95251231682DB483A6EE5D4C49D3C14B761031A890B8A0D8D579E4C5B79F
      2B7F6FE7D31FEEF84BF8866D0849948E91C8D96350B67D9AAF917650FB819D6A
      513B28DF19A4E9C5BB9018040D40D1D76796EB017D15EAFB20A8BAF7ED78CA88
      A4AA3EA5F88918F49B9F559E787DDBBDEBE7277ADB664241F8866D0881703580
      0C46CE2283B2EC4F76EDF4C58D9E7C452EEA8BCB230645120048D38B7741B683
      6CC5A034C6C5D9D3871D630AF3CBA62305838CC7D76410B0A3EEC481DEFEAEC3
      EDF75F6A5E28AF5FF9E796C5A3DDD31002E10AB2188F9C3D0665DB9FEC9A7A1F
      3479F95D267A1F94EF0C52ACBDACCF20F338805348DB3A90922806F1CD13CDCE
      0C2A0C1F761253DEE959F9B06FE5D381F0D1C1F0C9E1F0B9B1F09589F0CDC948
      E37444934106E3AB19D479E44568C2F4F476FEB279EAFD1E382AD2B7B07A6B72
      F5D3FEC85BC1790887BD523F5B5CE4BAA623BFDDBDEFA74F7DB177F781EBCDEA
      C8591C179769E77DECBE90FE5C6B6312666F1DA23109F93E264173EDE52C3188
      01859D222956240049F1F593552B2183B2DC1FA2AFA43EECD4E293F9B003E5DC
      879DC4945F76AE0041EE4E47DA6623DDF3ABA185D5B1A5D5E9955508D4649014
      3F78EDB44E7C3583DE7EAEBCB5EECCA7ADC36F7585EF4EAFB6CDAE76CDAFF62F
      AC8E2CF19FF4473EEF9A82BD104711F937579B3EA8FA915CFBAF372B22678F41
      D9F6A3B4E6C7668FA1884179F53E4873EDE52C3148D1E0D26FD748004A1A1FC2
      357F45BE3048F25EA796BE0F3BCD4372E53F4862CAEEF6E5AB13113586A075A3
      C920161F00B4F799A7E41852C45733E8BD9D4F8F7537EFBA337D7430727D72F5
      CEF46AF3CC6AFBDC6AEFC2EAB5FB91979A17602FC45144FEF8FDDD9F3CFFB747
      5EDEC804DB9FEFDDAD884CFE836CCAA0D57951C8A31571D62A0068AA979FE8E0
      EF77F17383287E911864EB765064C9CCB838330C62689090A168AAE800CB487C
      456405B0ECCC20E6A84E13A3FA3EEC340FC9318342C19FDF5B3E3F165663E8DC
      5818F62A1924C46700629230A488AF66D0873BFE723A142CBBBD7C7A74F5E2F8
      6AEDFDD55B53ABAC4104242AAF5F86BD104711194E71E1A3572E1DD8C304DBFB
      7EFA9422729618648D0AD597371227322B0A31B4C047E6701BD033DECE8FB4A0
      C683A8C80C31C8D60C4A7D55D80CF6C5494A8A95A44D1B9D43F4DF0765FBBDB0
      BE12F9B003297EAC14CE27F06107521CF2F4A1C55CF9B09398F27CEBF2A991B0
      1A432787B51904F1197D20BE1C438AF89AEDA0D1AEA6E76F4FEEEB8F9C1A8D9C
      1F5FFD6E62953588CE8C465E6C9C83BDF276108BFCDB77777FF7E9EB700A26D8
      3EF8C16E45E4821C3C9FEF3EECF8F911595F9CB468CF02F6C5CD0E6247DC6C08
      D7ED014D76D19AA5053C47D5CCB838C52E7DACA437CA2E51827666107354A7F0
      64270FE413F8B063920EA9FC621A942B1F7612539E695AF97228ACC6D0D1416D
      0629E24B1852C4D77C1FD452FBEDC70D7DFF120C7F391C3939123933263688DE
      EA0A1F6C1B81BDF2F7412CF29ECB4D5FFC6B45C39983A37DF7E01BB67F73B549
      11991854303EEC88413447D53C56323E367BBCAD2E874AEAC30E6892AA0F3B38
      24E73EEC24A654DD5D3934185663E8D3016D06A9E3330C29E2271A17D7D5D5BE
      FBD6D02F82E1DFF6468044070622AF77845FBB3B0EE1EA71712CF2EECB4D1FBC
      BBFBB7CF3CF5E17BBB7F79A5491D9918B4967DD81183B2FE09E78C4136991F94
      F1F1B129A9507DD8494CA9B8B3F2F140448DA10FFB563419A4191FBE15F113CD
      0FBAFAD5C79D5DED1FDDE97DEED6FDB2DB4BCFDF9EDCDF38002110AE9E1F6430
      32318818440CB2788EEADA625057430E55A83EECA24CB9577A7B05B002AD9B67
      9A569E6F5DFEF9BDE5DDEDCBBFEC5C79A70798724FC520A3F1F5D74968A9FD76
      A4B3717A2008DFB0ADBF4E42D2C8C420621031A860FAE26C822A3983B23D4743
      5F85EAC34E628ABED40C32183FDFD78BCBB92682B5D60C0ECF8820B7C4206B18
      9477BEBC27DB2EA4241BB683ECC6A054D7EAB1A70FBB5CAD17972FEB6693F269
      01DEB5C1A07C7C2CC9AF3C6B3E56010266FA5B73A8025EB33457EB66138348C4
      A0341844CA952B317E79218722FF412412318818B466B5D47DD3B219EB9A820C
      D05520914824122923FAFE23FFFDFAF71EC08F17FEFD0EFC0BC2BF63F0EF7B0F
      FC57217CE8DAF71EB8F41F1F10FE453F7DDF1D2291EC23B24912D92489443649
      229B2491C8264964932412D924896C9244229B2491C8264964932412D924896C
      9244229B24914D9248649324B24912896C9244229B24914D9248649324B24912
      896C9244364922914D92C8264924B24912896C9244364922914D92C8264924B2
      4912D92489443649229B2491C8264924B24912D92489443649229B2491C82649
      64932412D92489443649229B2491C8264964932412D924896C9244229B24914D
      924864932412D924896C9244229B24914D9248649324B24912896C9244364922
      914D9248649324B24912896C9244364922914D92C8264924B24912D924894436
      4922914D92C8264924B24912D92489443649229B2491C8264964932412D92489
      443649229B2491C8264964932412D924896C9244229B2491C8264964932412D9
      24896C9244229B24914D9248649324B24912896C9244229B24914D9248649324
      B24912896C9244364922914D92C8264924B24912896C9244364922914D92C826
      4924B24912D92489443649229B2491C8264924B24912D92489443649229B2491
      C8264964932412D924896C9244229B2491C8264964932412D924896C9244229B
      24914D924864932412D924896C9244229B24914D9248649324B24912896C9244
      364922914D9248649324B24912896C9244364922914D92C8264924B24912D924
      8944364922914D92C8264924B24912D92489443649229B2491C8264964932412
      D92489443649229B2491C8264964932412D924896C9244229B24914D92486493
      2412D924896C9244229B24914D9248649324B24912896C9244229B24914D9248
      649324B24912896C92546036F9FD47AE3CF880F0D90EFF7E07FEFD1DFCF3C1BF
      EF3DF0EF85F0C760FF7FFE0FECDF7F7A40FED925E8815DBBD8FFF03F0C82AFF3
      E7CF43082FE8019E67FFC3FF3008BE261F48E5935A6CFAD0873EF4A10F7DE843
      1FFAE4DF27D5E7C3EF3FF26FE2F6FF129F62FF1BFCFB2FC253ECF784F0271F88
      3DC5FE3BD9B1F834BA4BF9606BF283E93DFD977FFCF8133F7CF4C77FF7D083DB
      4BAB8AB9871EACFE49F9962D259B4B8B1FDDB8B17C7DA9D3E1F0B1C0926D3565
      9555C57F58B1B9744379C986D2ED0F3DC8824A3797945714576FDBBAB5B2AAE6
      0F4A2A36C3BEDF5B5FB939BA7F5B5545F18E1D3B7E4FBE0713848DCDA55B6AAA
      8B1F7AF0A1079F7EEC873F78F2A9C7FFF809C8C9D6F2F535DBAA4A8B21DD2DBF
      B76EF3D6871E84B3AFAF29DF5E1ADDF3D0839B4BAA7F528C5F2C42DCEEEAF595
      DBB6D414FB1F7AD051CC76B0485C7159F9969A1DE55B3654EE6021CEE2ADE296
      AB18F2B2ADBCA67473350B7017AFAFDC5253555921FEED29DEBCA17CDD26F687
      178E8B9DDC274B37160ABFE94F1E7DFC911FFEF84F1E85DF5451BAB1A6A6128A
      086216078A9C81871EAC2ADF54160B73FADC452E078BB8AE12C237B3707F115C
      0231B23C1CE30B7BD6579443295695AEAF2986105F91D3CFC10EEF430FAEDB24
      960764AC7467F1EFC2C5157E425CA8879DB11A12A8595F561C3D93EC6FC8A1EC
      2F96055900FE603C794955690964C005E777B2F39795D7D49456D7C4FD725F51
      6C87F2F7078AFC7107C97F2D9498C3197F647C617821820BB2B70D02B7540BA5
      E12812FE83122AD95A535EB94508741579580EDD52E4CA8D1BAB4B210D29A07C
      0B9E9EFDB8F22D68175B2BB76E83FF5801546D28ADDA51BEA1A6ACD8259838DC
      01509455E55B3645CDB47C73C9A6528C1C0D28DDB8114F5E5EBAA9AAE499EAF5
      2515A50F3DB8B1B26AF3E6F22D2C25E14AE25DF0E8634F3DF6573FFCF11F3DFA
      576034CCA4E2AE979395785C9857615EBE229FD2BAFC5E0C5396AAAFC8EDD730
      2D3F84837D0A37835068505C4501AEC803BFB77A3DDC12159B4BAA7E525AB5BE
      B2022A04BFDBC9791CEEF85DEC67B3080EB32606E5F2A73FFCF1937AC5C26914
      8B4F512C2EB43D85D171455E75B1788A38B7D61DE710C2E3EE3730777711E7C7
      ABB9A546A836FFB0AABCA482FD5D568A4914E341F86775CD33155875E1B666C9
      708A92E18C94CC137FF6C31FFFE0D13F7FF471AC39D7AFABD9B2B1647D6931E7
      F5BA399FD7C5826A4A770AE6BC9E951CECF5F97C70D5A4102942199CBF82E5DA
      E5F5FA210979A0104D7630242D3B202EBCBAAC443893DBEDE0DC9E58561FFDFE
      8FFEF8074F0A79152A69CE85B5F4FA8ACAEA5276F73D5C5DB3816D6185BDB964
      A73AD8590CF78D3AD8558CF6B76DAB7A8FBBB8FA996ABC8FD5BB3CC562EDF0B0
      F87FACDCA3287838BA81757CB42E585752C5F6C5FFFDD083FE62F1CFF893C9E2
      454F1A88C694FF6E8D789C231A31560E5AD138299A542E5AD19CC53550FDA8CB
      002E8D2C237F87D52C5C991F609082ACECC672307EE32D00155C94C95C2CB4D8
      E3801AC3071C7245139076C11D83F70CEE89D68ED23EA9C6DE5C59B51532B1A9
      38BA0D3136146FFE09DE2D50856EC03BF0A107C1C0D871483DA8CA8444379457
      97ACAB606956C763009E374A2099F59BD7B39F064F0A5879C79F5A0C6439D3DC
      259D56B923FA7BE27742E94A572F5AB68F94EC2CDF5CFE5333C5EBC1F2757BB5
      CAD783058CBB522FE00DA51B4BB65528CBD683858B091A29DCCDD26F93972F64
      19D2802C7B035A65EC122E9F5BBE579E033CBD5FBE33715147EF00A9A8CBB798
      2C6AC83428E0D4286A3471B7B02B43458DD7D42F2468A8A8A5DF968BA296D7B6
      D1D27E1CC29EDA9A7E59739C50069CCBAF51DAB813718B3B3354DE9824FC5C21
      492325CE7EB3AABC39B760269C97D32E71DC8F3997ED8FCB855BB864F2DD094B
      3D0E2ED1627FE2996A40D0FFC01D6996BDCB0B8F31DE22FC2D0175D9B39D4E71
      6746CA9E13927479589246CA5EFCE516D6DBE22341B49453285A87DCAC8B0077
      7E87D0E4485470268A141FCAA2ADBF22D62AD47F1CF5CA1F473756AFABACD820
      7F28052BE438874B228B6C0FC779FD2E7CDA2D81473E7CBCA829AE294126FFC3
      B6EA9AF28DCFC0E3AC700A87B8211E060D04CEE997AC4ABECB03579FF363BB42
      7C5E8C6E45F3127DA6148B4773DFC62AF8A5F1A526665DBD4308928A2C3E187F
      89D8188C0609CFE3B130F1D15B6CCEE179A0022EA9D1B86CC2D1EC1137160D8C
      A8B46A7B4945B15376C9D93E3033E1A4DB2A2A8443C5A7FBE803A8AE09BA929A
      A0D880D3B04027D21D76B97DA68C10F3282B3EA78705C98BCF8377F9F6726829
      8BD6EAE18AFC81228F5B0A5724108D1D9F8674ED9C50AD1609B5129C0B1BDC42
      28542B584F39B9F49B644AB387A06D5B4AB760FDB441763338BD2EA7D3E3D530
      0AA91C953BC45F94752BDA56CDBA20A4FCC7FF25EBA490C284A7D4B8068D6993
      F3C0C58547A48086CDF9B133A18873709934BA0436271107CEE7124E8BCD0459
      AD090F44DEA495668A0683674D6C413F102B30B71BB2E4545A10977983106B12
      65DBD424D85CC01A3734BCB085E0D67866C09D5C80EDCCC833834348D2E56249
      DAF39941DDB2375FCA5C20209432C7693D99C14E2C658ECB5829639258CA98A4
      2DDBD38A4E910CD831E7124AD8E9D1B263D889252C502D43760C49620933CEA5
      DBA8B6A490950D6A13858CCD4B28645740AB90B11D14603B3355C89024163226
      997E733AAB851CEB9053F6573C59F924EC4BBF251D700B2D52CEA3D1900EB885
      D628E7C9583B1A52C4062CE749ADA46B2A6B841F695979B3DEF21F3FF9F8A37F
      1EEB83F6BAB10F5AEC178DF53DD75456566C2DD9525AF1B0F08DFDCE18A488E7
      2A0670AFFFC9BACA9D0F0B1BD83B59895DCE9B4AB66D2A7D58F8C66EE6ED717F
      7B8B8578CAA37CC57127F4175794AC833F856FEC3686D2825395543D1CDD10FA
      88CBB482B9E24D55E51B1EC62FD6F55BB2EE61F807DBAEE2D20DE5350FE317FC
      E52EDE5CBAB9F261FC82BF3CC565EC350EA6266DC10E6FF176ED1DBEE28AF2EA
      1AFC21E2FF21CC5F0C977A1DFB75E2068406584945A3CBFF80B27514576F2DDF
      22E42CBA01A1F82B2AB76DC5F8D18BE02CAEAED9C0CA25BA01A12E082DA9D956
      CDCA2F1AEA164331D3D1E33DE295961582137EDDB6AD684D0FB3FF4190AFB84C
      19E48FBE2B50FD626720BA4BE727BA1C522475E9B8B8E8FB66CC6B6C13F638E5
      AF1EE41DFBB0CF0597656B05BE1585AB226E40B01B2EA346B0A718EE0FB8ED94
      26EC2D5E575953A67DE55DBEE275E59B54F782CB1F0D56261610EE12F90B1069
      136E0B87B497D9AA46142E9A72A2349CF2080993018B60BF02CA59DA8270B760
      B0DBCB4B773C1CDD80500FDC5BA5A54268740342BDA2FDC4DDBB6E5F7155395C
      5AB49FE80684FA8B4B77B22212FF0F6181E2EA0A6CF13DCCFE07F500D433A5DB
      218EF00D7F73E21964D6E87146AD5669A79EA8956BDC2A9EA8AD6B1897C72394
      BAD61EAFB0472B3D9FB0477E76BFACFE93870744B3521989D721DBA3B0132F27
      56128A6067F176E1926A1DE212AB3A8D7D50B74B1C8D83A55BE3CDF0EFCA59E9
      F6F88B9C3E68AE3AE08921E056BD34568DD4C03E4B4EFDD698F147F9D298812F
      F6CA187B62B03358FD523CFE55AFF215B9EAD5AFAA13219BAD5791E9F2EE0F4F
      80F33A5DEAF77B427106FC4271BA9C6262717B5DF0EC21EC95BD51DA207B7471
      B1CBE1F6B0CB91F439C44463B9BAAC72C7C6CAF5DBAA85C4A1F660A317365694
      28FA0763FB12856B3D70C4F6AA9F5462FBC0A4B700B7AA4A65058E8F86D1BB29
      658B8602F41641F179FC0A6376C60636C4AC195A8F9E74AD191A31452E369A29
      C3D6AC3178493E8C27D6D12BEB895E5FBA45E09CDE9DE0D4B913045CC7BA12A5
      736CDB92680F5EC0449DCC99EC7786A7B8AD5B95B62706CACCA7583354695469
      D6931E4F918B2BF23B8A3CCA8135AC3E548CAC71146159A75F493A5D427775BE
      5792388446DDDC855284B2E41C1EA130E36A480CC47D2E56D0AAFAD178FBAC40
      EBC568732B75030E14799D4501EC7D5619B05F3D1CB3C86FC67CF112FA6C63BE
      C2154FE72587C7EFE1DC3E75B72394A55F284BA10F3F563D0AA34021B488F30B
      C3E2B0C66361F862C6E5120A45519B7281221FD8BCBB28A055D7BA7027A41690
      32AD3CDC5FE48CA6CC22A8D2C00BC2F98418D28F4C5CD98B11746AFD64771E58
      A9D05648DD44B1489D58AABEE426CAB9B4C6741A37518E8D73CCB0896EADAADC
      040FFDD5A225B0D3B862E1ECF46EA1C7085F01C1B3C7BAD24DE55B62B02BDDB2
      21F607541D35E5EBA15A3261FDD1532B48A911AC3A247EACE5F6F4AE2AFC542F
      FE54B8671CAAA1BA1EE565152E95C6905497D1CB8AE34CB27B5939F1341EC565
      0D78B15600E365D582A1EBCAD9E0BA46FBE20829F98414E006438A5F0B29901C
      20C5E7D6408A1B772275DC0990E2C197C2DE80907202A440ABC7056D54218A55
      4C49AF35C8B9B92261AA4891C7AB32525573D0E3D21A118FCD490D2BF5B88451
      A10A3BF540A5E6A006617E3408859EF2D48906B72234F0F09D5E4061536EF5E4
      136C36A6DFC3203DDCD9A4E2636FED84D72CA9DF8BF01C80758F1FC75C290A0E
      0AD46FE8598063430993169D036F7BB821FD992D3A9C9582BF5FA88365E760DD
      0AEC6742EDE803FB809AC02F8141B11F1F14603F0E75963F0BB0587213D60A94
      4600725CC0E511AE4959FA1705C7BDE2000ABF1AE3F824A3E2B8DB44FFAF1B6E
      5527B4589C19B7E7D845919D435EE89C305E9D73BA8AFC01AD8BC2A614702E8F
      B05FFEE0ADBE280E631705DF3EA67C3D627561F94E606A694505AB09A009E9F4
      6243D10BBF0ED2AF867A727D4D6C3F86E37E1C948FFB850E8CD86E9F7878403C
      5C4A5D56DBBAE52795D5B8F2F0D80044D64B253C7EA892D14821D1C115E55B70
      CAAA5078AE80DBCF71C2E44DD528D734EB2B564CF1CF6E5832F121F8EB546788
      06CA4F130D530C1F8E06C7D809BF565DE7460B51B527AEC709ABD8927569F47B
      BBA0E9010FE42E0F1830A4C08696F8848E360E1F1F9DD2A8E6E85EBC97E1C908
      DB574EB16064BB700823F63EE0F4C24A1C55B945B6136E14DCE9513E0179A24F
      401A8F2CC9DA08F044A9814A7782C72FB7306CB7061F2DE5A320318F8A41B325
      EBAAD76D121F07E1B4F0F48B370BDBA1ACDDCDD54B19EC61559BA97811E2DB18
      C2EBF9E8DB7A8525091BAC1C762AFE7E46B4347C8999B2A93971D4B45F98490C
      B59DEA11480D0D0F67021AAE585B23C3D04834F827DDABA8D107EE75B87D1E2F
      A7798565F8510CDDD7DA83D7572B5C6A5E69ED1446B26DAE4CF90A63B5E1C297
      1838F7C5A97A2BEC525D600F8629AFAF537B86B5C72B541096349CB27F891DB9
      BAB66A488A275085E303A234A825F527440F7B21E3C42E07B7B26BD6E9523779
      DCEEF4FB66B1A71A274764A1172FF68CC879A1083D4ED627BE5556B810E628F2
      FAE5DDE9F2DD4E07CE660BB0A2F07AD9858B8B818FD3420C8733164371F5E0EC
      B1F415FB85C27663EABED8F1CA3898418CE377B3383565DB36AF134FCF095DAD
      5CC013C7FB5804AF9745F03B58044C3BB65B322E2188A182C3F90EB2BF9DD2DF
      8A67626598F2917853C5335BCBB46E098D1D982D8D60EC864EDF929D4E717EB0
      A328E052B5759C6E430D506F91DB486734EBB1F366A34E933740055B025356D8
      B168DD60CA89ED1847FCE08B6A4ECB8E3186DF25440804B4ADD827DCA39A56EC
      74C0931C1CCC265D69983046C02B0131DC9CDC809D6EAEC807877AFCB239C7B2
      DDF04C8ABB7D5E364D38DF8C571C0E997D1EBBB578EC4EC063F6246D098F8539
      4AC229BC1C0E9FE1DCB26512E276C24FC5BD6EAFF8DC1AB7136A3FDCE90D189C
      07854171AD4FAC6603597E5ED7ECA1150395279605CBCE2F0B8D664316246B04
      247EDCD0DEA7BADF933E8A68DEE7714725DAC7862C244C32E16E4C2FE1CE1805
      8452DC2E1BB35B16BFAB4CB62B7EA0AFB03B3E48DD148F8E164DBD3D0EF53F18
      B80FE787A99B484E553731EB6CB3DBB8CA8453B6A37723FE4C9C69022D00B747
      7523CB9EB7E5B7301EE46607793DE9DCC2C2780AF61895F62B3CD5FDAAFF18EF
      E658A5E8D47A927761172A54583E2805B7EA26C2BD6E8FB0171725D27DAA1709
      21FC2269F0BCB01895BA0B5F2CD2A4DD49F291F8849E6267C0C1C6DCB88B026A
      93C5BD01B875DD42AF990A3E012C0A8EEDC6471785EDBA1C06F883EB03E1F319
      018800A40F20B41B36454AD67874261B29A637C40C175111A739A4D5EFC77970
      094120984FBDC29CBAE30FA8163005358F9550CBE4F8588DAE400EEAD180B2C7
      C1EDC5EE4D5F516C76B3C11BC6E9C78B81D30DBC9A3D0D9030C7092907D2B879
      84D4BD606BD89180434584F7596C325AEA8F4250D92119397C01A7460817D060
      88D3A109112E01445CCAC6374E00101A0FD68EC4C007138F5F185A98EA588C84
      16165B7926EDB1A3793732233AB951696BBFCB197F819AA1BB39B616A4902F69
      9E65EAB701F6BDE173328E1EF47954EFC3021AFDA881F45FB53B71658F2CBC35
      313174449A8F9A566B8AF3C0E3A6D7A3811EAD39186E87D9896AEE6C0C54A091
      5CE9D4175CE2FA226EC8456C7A661A161600CB0A402BCDCB96965634D9D53321
      5DE9DF9DC2D4314F9EBED354CCEB49D46086F6B9531823A035DEC6E9C3F1ACD0
      A40EF8C435F014CF1F01B6DFC589FB93BDE614A7B0A731288D1346A471D8ADCC
      292B96D8D5D47F2960ECAAC71AF999BDE6AA27C6B8BE7945BFBEB2675EB55BD6
      2FAF7A6064AF1B5CCE84FDFE1AEF1534E2C8DE2CE0BBC9342F9DF02B1CB8861B
      AED613C8FF4B27BC967439F3ECED636CA9C874BB985C3EEC2A75BBE1D159A3AB
      D4AB31F5870B18EF62F2ABBB98A00CE0B6A7D71B19EB5D12A6DE788B145D4699
      E95FE21C503F7BB08517DF70C681025E67516CE043FCEE80031BD638F6CDA771
      A7781C3EDCED744ABBE5E4C2091798BE27C17D828943FD85A9BBB45F7062FA18
      034E803194DD48C22807973CF3CA1842FEBDC2293C09FAA284DFE015CEE1B1F4
      95887AB1974CDEF2ECB14871CBC75A3269F62A5B70CB47BB953D6BA85B393AB9
      D46D41C732DDF139B9E3B3D207AD580B2A936F57B53A03E8ED2ABD5D55BE5D8D
      7F6835FF92555AB52C939314DD1A9314DD451EAD39D26E6F02147AAD7EC18A33
      3B02F05B58AB4CA3C7AB0C3B73C47A016E2C2FB658385CBE1DEAB4D82E686038
      B1B1016939712165DC131DD5E594FF290CEA8A5FC339ADD7DC0EAFE01281C309
      5D72FF4F1C5B7F962DCF212E105DACF280235BF456C3C30D1C1C5D4B54E5AF06
      F3B653B12F1A0059942F5AACE965471C12889D76ECDE0A04FCE8984A162E7749
      E5E67C0E27B6E185D194E20279A91B2DF6C806D8942A27E752BDD53136B5DF15
      7BD8CB45F35BDEFFC8A1B317340161ACB3DB543F6459FAC58AF33DB1F30BDFB3
      3A5CC9AB0304A1DD7A35E28A15E7C962B1BAD1335EC054B1CA17704C7DDA2EF6
      4BB9D9E5F5BA927B8D838735AF96D7389756C9C28FC43B4AB968015C1B9FCACD
      99AC74359C9EC5972EA73101D5E2659C1453586496EA6405EA73B2028D5FC9C9
      E712F6E25ACF6C6F5EADE58473E9F0CDBA8B83ABE8C8D69A4EF1EF2EE21EC2D3
      59F70E27B7A27723E5CB0B6896A8E768F8CCCED170D01C0D9AA3A13DCC5DBE66
      6EEA4B92E2CA48456EF4C3A97E1A766ABDE78D2E9597DE7B387CF8A6F7BC7932
      2E246ED9E5CC3E02B835FA1D5DDA03918CF61BB88427006F9E2FE4E8585BE8B7
      6A79DB384F342956911C3362B75B9C82AF346497D68AA4A646C3886F8CF37C45
      52BFC7E10DA8DD860AE588E5E9F3B2F28C5FB6D9C71A85D8FBCAF6DAD29E751E
      592DB0EBD823846C4D7AB5C70FF5BAF5A91B3F2EDAEC152F96DF6B606E8D9333
      6BFC85B01CAF34FE5869FC3E9F509E1EAC54FC2AE3C7D2F6FB85D2167A45C8F8
      53317EA730A4C3272C37127B7C3151F50BC3D3D0C331BE84D17A8651B5F49C01
      CDE112292DBDE8F215ACF5E31B162C4F1C4AAF7A9471E39B07DC1B08D8F95126
      1FAA7E6DAF25A90FFAE298FDE39B014DFB0F683CC39BB47F6FFE3FC3277CF411
      5EBE38B1F792D3B07F97933DCAE3CB35B2FF94ED1FD829F461B9D84047C9114F
      26DF10C2B38DEA0DA1AF48E371878D7E51BF21F42957E311E7B078382B3A45C4
      4511D0E5500EE67A68AE951375816497FCC8BC306578CE8957BD069BDB6562A4
      84E84E360BEB95C6ADC00D3C164EE331BCB0BA53BE00B7D3660BAB47DD68D9C5
      DE440F5E999DE6A7D5BBE6714BA662649A9F5308B7669A1F56D465B22692F0C6
      01FBA439A78FEDDD1EDB0BCD2388E071FB8AB0F9843BE3C7DB608862BC0D0641
      1EE30358B6E2C3B6C78FB6E3705885E0C70833183FF350F036E0F1C58D441047
      96059042D8C0F37AE376CB28E8F67A3092DBEF50469260E8F60B030CDD019F10
      A54CC8B3EC346EB6D8A4DB2BAE0B288B203F11E762D19C7E55B4D8A970C9018C
      248C97142231E7968AF3051CEC740EB7328AE28C18114FA88E1877CE80D8A986
      D1B66BFC3E1FFB79C21AB1097F9D8FFD3845A4B8F3F8D84F6351347F198E6A82
      33F95CCA188A93613C38993A5EDCF930169C0F6325302833D3FA04FF7EE92F75
      1BAB85BC6ECE878F996555DB2AC467379C09E4F40259B03719F35F265B0E0A1D
      DCE2D2B61E5CF5D68F25107F9CCF2DAC8AEA14CA59BE8C949B1D872F047091E6
      D20D9B84A105C806A1B6892E49CBB95D5E17CE37C4160C7A2D3451495760612A
      EBDB0DD2A01DCE8DA376C4713931BF88164C33759AE81EF320F23DB43A679AAB
      732A7D5DA6F3DADF2F2C98E87264D90B87073B42FDF93A6731BEF99B70CE228E
      A1478CF9352EB6DF2354269C031A744E97EA9A0BBECB70BF53DC6FECDAA7BD1A
      87C7295C7A9C6FA7BEF6DE22CD7E4087998B8F2E58FC85B21847F4CE8F1B19E2
      F288B3E6535D8C03574712AEBDCB07C5E4D118A38C2E23C4F9F8292FC621A42E
      7892F232CB928C27EDF1F31C8EB7F5B3712C5AD6A38204DCF90153C6E3CE46B3
      30E9007A1CD3EBF4BB84F5CA9D8180D121F49CF040E11286E008872906D1BBD5
      83E8DD8A41F43888C5C91AA9560DA287DFE8404FF4CE5450855D4B2E9C34830B
      77E1640ACB9727937B674EBD3FD80B040C60B71F4E16F71B589308C72DBBD2EF
      0F760BAFC29DD69B32FA6F700AFE1BF061D86DD494856767C14B09FCDFED504F
      2D539BB24BC394450F825699B2130B1ADF9B39533065A7DF2BF4630BB6807DAE
      3931E5B481EEC299F768CA5E9786293B355E6C0B9315D23765AF30D79F2BE8F5
      B5D019341A12E7CCF0FA5A58B7BB0413E5D2403A36D2B0D6C5196C2ECE25194F
      5A86C3F9591D880B2268D6812E8DB1ED9CDB8CE1E0E21E5C012F5E92C5265F6C
      FC629A8BF08917DB9BE062735A93A73933179BF315F6C5468789518B567B8642
      6E629947A1A2B194397B4D6A043AD224968C8C8FF6246FF1BB34D710C381A95A
      B3587C42B872EEAB5335403A03B3586880748607486BCC94CAD650698F7A769F
      4B989AA69E95EAD27296000D95029D2D85D32E3D0E77FE8D98363557CA6BF55C
      29D65C4C730411767D0484C9C9AC1D956C456B4E73456B97B6536AEC74772BD7
      1E894E27B2700891D3826900718F421AA1F964C44E715D63A7D7C95E1765DF88
      B70BC3854CD4D1D83CC197EE9C1F871871C92DD9E9D05E9BDDA5E551152716BB
      15EFDBB112B3BA92B6C29239BF4F284927C7B1928CB368AC9685BDF87C24ECCD
      27CBB6623E4B9959537609BD1E1E4ED38E5573DE71D928AD870DA7568D8C1304
      D50F1B6EE602B2D0EC181B2350909CC7A961C71E56CAD8F74F66AC61C6FF1F23
      A0346C}
  end
  object srcContatos: TDataSource
    DataSet = cdsContatos
    Left = 394
    Top = 192
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 424
    Top = 320
  end
  object qryContatos: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 303
    Top = 192
  end
  object dspContatos: TDataSetProvider
    DataSet = qryContatos
    Left = 334
    Top = 192
  end
  object cdsContatos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContatos'
    Left = 365
    Top = 192
  end
  object qryGrupoContato: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 495
    Top = 152
  end
  object srcGrupoContato: TDataSource
    DataSet = qryGrupoContato
    Left = 527
    Top = 152
  end
end
