object frmCadDespesas: TfrmCadDespesas
  Left = -2
  Top = 1
  Width = 800
  Height = 569
  Caption = 'Cadastro e consulta de des Despesa'
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
  object PagCadastro: TPageControl
    Left = 0
    Top = 131
    Width = 792
    Height = 392
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PagCadastroChange
    object TabSheet1: TTabSheet
      Caption = 'Consulata'
      object dbgConsulta: TDBGrid
        Left = 0
        Top = 0
        Width = 396
        Height = 364
        Align = alClient
        DataSource = SrcCadDespesas
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 396
        Top = 0
        Width = 388
        Height = 364
        Align = alRight
        TabOrder = 1
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 386
          Height = 21
          Align = alTop
          TabOrder = 0
        end
        object lstDespesas: TListView
          Left = 1
          Top = 22
          Width = 386
          Height = 310
          Align = alClient
          Color = clInfoBk
          Columns = <
            item
              Caption = 'Codigo'
              Width = 49
            end
            item
              Caption = 'Descri'#231#227'o'
              Width = 150
            end
            item
              Caption = 'Realizado'
              Width = 60
            end
            item
              Caption = 'Previsto'
              Width = 60
            end
            item
              Caption = 'Resultado'
              Width = 60
            end>
          GridLines = True
          ReadOnly = True
          RowSelect = True
          TabOrder = 1
          ViewStyle = vsReport
        end
        object Panel3: TPanel
          Left = 1
          Top = 332
          Width = 386
          Height = 31
          Align = alBottom
          Alignment = taLeftJustify
          Caption = '  Total Selecionado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object EdtTotal: TEditN
            Left = 276
            Top = 3
            Width = 105
            Height = 24
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            ColorOnFocus = clInfoBk
            ColorOnNotFocus = clInfoBk
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
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Manute'#231#227'o'
      ImageIndex = 1
      object Label1: TLabel
        Left = 26
        Top = 113
        Width = 71
        Height = 13
        Caption = 'Conta Corrente'
      end
      object Label3: TLabel
        Left = 11
        Top = 138
        Width = 86
        Height = 13
        Caption = 'Tipo de Despesas'
      end
      object Label4: TLabel
        Left = 12
        Top = 13
        Width = 85
        Height = 13
        Caption = 'Data Lan'#231'amento'
      end
      object Label2: TLabel
        Left = 56
        Top = 163
        Width = 41
        Height = 13
        Caption = 'Historico'
      end
      object Label5: TLabel
        Left = 212
        Top = 13
        Width = 84
        Height = 13
        Caption = 'Valor da Despesa'
      end
      object Label6: TLabel
        Left = 14
        Top = 63
        Width = 83
        Height = 13
        Caption = 'Tipo Lan'#231'amento'
      end
      object Label8: TLabel
        Left = 15
        Top = 37
        Width = 82
        Height = 13
        Caption = 'Data Vencimento'
      end
      object Label11: TLabel
        Left = 4
        Top = 88
        Width = 93
        Height = 13
        Caption = 'Tipo de Pagamento'
      end
      object Edthistorico: TEdit
        Left = 104
        Top = 155
        Width = 317
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 11
      end
      object cmbCod_contaCorrente: TDBLookupComboBox
        Left = 104
        Top = 105
        Width = 85
        Height = 21
        KeyField = 'codigo'
        ListField = 'codigo;Descricao'
        ListSource = srcCadCodtasCorrente
        TabOrder = 7
        OnClick = cmbCod_contaCorrenteClick
      end
      object cmbNome_ContaCorrente: TDBLookupComboBox
        Left = 189
        Top = 105
        Width = 233
        Height = 21
        KeyField = 'codigo'
        ListField = 'descricao;codigo'
        ListSource = srcCadCodtasCorrente
        TabOrder = 8
        OnClick = cmbNome_ContaCorrenteClick
      end
      object cmbCod_TipoDespesa: TDBLookupComboBox
        Left = 104
        Top = 130
        Width = 85
        Height = 21
        KeyField = 'codigo'
        ListField = 'codigo;descricao'
        ListSource = srcCadtipoDespesas
        TabOrder = 9
        OnClick = cmbCod_TipoDespesaClick
      end
      object cmbNome_TipoDespesa: TDBLookupComboBox
        Left = 189
        Top = 130
        Width = 233
        Height = 21
        KeyField = 'codigo'
        ListField = 'Descricao;Codigo'
        ListSource = srcCadtipoDespesas
        TabOrder = 10
        OnClick = cmbNome_TipoDespesaClick
      end
      object EdtData: TDateTimePicker
        Left = 104
        Top = 5
        Width = 89
        Height = 21
        Date = 38128.533845312500000000
        Time = 38128.533845312500000000
        TabOrder = 1
        OnChange = EdtDataChange
      end
      object EdtValor: TEditN
        Left = 317
        Top = 2
        Width = 105
        Height = 24
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        Text = '0,00'
        ColorOnFocus = clInfoBk
        ColorOnNotFocus = clInfoBk
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
      object cmbD_C: TComboBox
        Left = 104
        Top = 55
        Width = 89
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'Debito'
        Items.Strings = (
          'Debito'
          'Credito')
      end
      object edtDataVencimento: TDateTimePicker
        Left = 104
        Top = 30
        Width = 89
        Height = 21
        Date = 38128.533845312500000000
        Time = 38128.533845312500000000
        TabOrder = 3
        OnChange = edtDataVencimentoChange
      end
      object cmbCod_TipoPagamento: TDBLookupComboBox
        Left = 104
        Top = 80
        Width = 85
        Height = 21
        KeyField = 'codigo'
        ListField = 'codigo;Descricao'
        ListSource = SrcCadTipoPagamento
        TabOrder = 5
        OnClick = cmbCod_TipoPagamentoClick
      end
      object cmbNome_TipoPagamento: TDBLookupComboBox
        Left = 189
        Top = 80
        Width = 233
        Height = 21
        KeyField = 'codigo'
        ListField = 'descricao;codigo'
        ListSource = SrcCadTipoPagamento
        TabOrder = 6
        OnClick = cmbNome_TipoPagamentoClick
      end
      object edtDataLan: TEditN
        Left = 104
        Top = 5
        Width = 71
        Height = 21
        Color = clWhite
        TabOrder = 0
        Text = 'edtDataLan'
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
        ValueDate = 38883.000000000000000000
        ValueTime = 0.623061157407407400
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
        TextHint = True
      end
      object EdtdataVen: TEditN
        Left = 104
        Top = 30
        Width = 71
        Height = 21
        Color = clWhite
        TabOrder = 2
        Text = 'edtDataLan'
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
        ValueDate = 38883.000000000000000000
        ValueTime = 0.623061157407407400
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
        TextHint = True
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Grafico'
      ImageIndex = 2
      object chtGraficos: TChart
        Left = 0
        Top = 0
        Width = 784
        Height = 364
        AllowPanning = pmNone
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Gradient.EndColor = 11118482
        BackWall.Gradient.Visible = True
        BackWall.Transparent = False
        Border.Color = 14645801
        Border.Width = 7
        Border.Visible = True
        BottomWall.Brush.Color = clWhite
        BottomWall.Gradient.EndColor = 16580349
        BottomWall.Gradient.StartColor = 3114493
        BottomWall.Gradient.Visible = True
        Gradient.Direction = µˇˇ[]√ç@ UãÏÅƒà˛ˇˇSVWâç†˛ˇˇàïß˛ˇˇâÖ¨˛ˇˇã}ãuã] É} u°H`$BâEãÖ¨˛ˇˇã@ËµíˇˇÑ¿uãÖ¨˛ˇˇã@ËãíˇˇâÖú˛
        Gradient.EndColor = 11645361
        Gradient.Visible = True
        LeftWall.Brush.Color = clWhite
        LeftWall.Gradient.EndColor = 2413052
        LeftWall.Gradient.StartColor = 900220
        LeftWall.Gradient.Visible = True
        Legend.ColorWidth = 15
        Legend.DividingLines.Color = clSilver
        Legend.Font.Charset = ANSI_CHARSET
        Legend.Font.Color = 6553600
        Legend.Gradient.Direction = gdTopBottom
        Legend.Gradient.EndColor = clYellow
        Legend.Gradient.StartColor = clWhite
        Legend.Gradient.Visible = True
        Legend.Shadow.Transparency = 50
        Legend.Symbol.Squared = True
        Legend.Symbol.Width = 15
        PrintProportional = False
        Title.Alignment = taLeftJustify
        Title.Color = clBlack
        Title.Frame.Color = 10083835
        Title.Frame.Width = 2
        Title.Gradient.Balance = 40
        Title.Gradient.Direction = gdRightLeft
        Title.Gradient.EndColor = clBlack
        Title.Gradient.MidColor = 8388672
        Title.Gradient.StartColor = clGray
        Title.Gradient.Visible = True
        Title.Shadow.HorizSize = 4
        Title.Shadow.Transparency = 70
        Title.Shadow.VertSize = 4
        Title.Text.Strings = (
          'TChart')
        BottomAxis.LabelsAngle = 90
        BottomAxis.MinorGrid.Color = 15066597
        Chart3DPercent = 25
        ClipPoints = False
        Shadow.Color = clBlack
        Shadow.HorizSize = 10
        Shadow.VertSize = 10
        View3DOptions.Elevation = 357
        View3DOptions.HorizOffset = -14
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 317
        View3DOptions.VertOffset = -14
        View3DOptions.Zoom = 83
        View3DOptions.ZoomText = False
        View3DWalls = False
        Zoom.Allow = False
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        PrintMargins = (
          15
          16
          15
          16)
        object meses: TListBox
          Left = 616
          Top = 128
          Width = 121
          Height = 97
          ItemHeight = 13
          Items.Strings = (
            'Nenhum'
            'Janeiro'
            'Fevereiro'
            'Marco'
            'Abril'
            'Maio'
            'Junho'
            'Julho'
            'Agosto'
            'Setembro'
            'Outubro'
            'Novembro'
            'Desembro')
          TabOrder = 0
          Visible = False
        end
        object Series1: TBarSeries
          ColorEachPoint = True
          Marks.ArrowLength = 20
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 20
          Marks.Gradient.Visible = True
          Marks.Visible = True
          SeriesColor = clRed
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Bar'
        end
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 792
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 788
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 775
      Height = 40
      ButtonHeight = 36
      ButtonWidth = 61
      Caption = 'ToolBar'
      Color = clBtnFace
      EdgeBorders = [ebTop, ebRight, ebBottom]
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Images = FrmPrincipal.ImageList1
      ParentColor = False
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      Transparent = True
      Wrapable = False
      object BtnIncluir: TToolButton
        Left = 0
        Top = 0
        Hint = 'Bot'#227'o Incluir'
        Caption = '&Incluir'
        Enabled = False
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnIncluirClick
      end
      object BtnAlterar: TToolButton
        Left = 61
        Top = 0
        Caption = '&Alterar'
        Enabled = False
        ImageIndex = 1
        OnClick = BtnAlterarClick
      end
      object BtnExcluir: TToolButton
        Left = 122
        Top = 0
        Caption = '&Excluir'
        Enabled = False
        ImageIndex = 2
        OnClick = BtnExcluirClick
      end
      object ToolButton11: TToolButton
        Left = 183
        Top = 0
        Width = 23
        Caption = 'ToolButton11'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object BtnOk: TToolButton
        Left = 206
        Top = 0
        Caption = '&Ok'
        Enabled = False
        ImageIndex = 3
        OnClick = BtnOkClick
      end
      object BtnCancela: TToolButton
        Left = 267
        Top = 0
        Caption = '&Cancela'
        Enabled = False
        ImageIndex = 4
        OnClick = BtnCancelaClick
      end
      object ToolButton6: TToolButton
        Left = 328
        Top = 0
        Width = 27
        Caption = 'ToolButton6'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object BotaoFechar: TToolButton
        Left = 355
        Top = 0
        Caption = '&Fechar'
        ImageIndex = 7
        OnClick = BotaoFecharClick
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 523
    Width = 792
    Height = 19
    Panels = <>
  end
  object PanelConsulta: TPanel
    Left = 0
    Top = 44
    Width = 792
    Height = 87
    Align = alTop
    TabOrder = 3
    object Label7: TLabel
      Left = 7
      Top = 67
      Width = 86
      Height = 13
      Caption = 'Tipo de Despesas'
    end
    object Label9: TLabel
      Left = 469
      Top = 12
      Width = 20
      Height = 13
      Caption = 'Mes'
    end
    object Label10: TLabel
      Left = 581
      Top = 12
      Width = 19
      Height = 13
      Caption = 'Ano'
    end
    object SpeedButton1: TSpeedButton
      Left = 370
      Top = 60
      Width = 21
      Height = 20
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFF4C692F4C692F4C692F4C692F4C692F4C692F4C692FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4C692FDF4D1FEF9D8FCF0CEF5
        E6C2FBE3C3F3DAB5F8D1A9F4C692FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        F4C692FFFDDEFFFFE0FFFDDEFFF8DDB6D49245A9320C9A0C40A226EAD3A9F4C6
        92FF00FFFF00FFFF00FFFF00FFFF00FFF4C692FEFBDCFFFFE1FFFEE0FFFFE8AC
        D791008D0030A3233EA72D73C367FFE3C4FF00FFFF00FFFF00FFFF00FFFF00FF
        F2B475F9C78DFBE1B4FEF2CFFEF8DFB9DC9D36A2246EB855FFF8F087C672FCE5
        C6F4C692FF00FFFF00FFFF00FFF2BC84F5B776F8BB7CF9C185FCD09BFEE3C085
        C269FDF4DB89C36C4EB14662B953FCF4DCF4C692FF00FFFF00FFFF00FFF3BA81
        F7B776F8BE81FAC68DFDD09CFFE7C55EAF417DC46BA7D694008F0021A320FFFC
        ECF4C692FF00FFFF00FFFF00FFF0B77AF7B877F8BF82FBC88EFDD29DFFE5C0D0
        DEAA06980600940000960027A526FFFCF1F2C084FF00FFFF00FFF2BD87F5B97A
        F7B776F8BD7FF7C48AF9CC96FBD4A4FDE1BDCBCE9170AF49A3C87CAFD593F9FB
        E5F2C084F3C18BFF00FFF1BA82F5B97AF6C995F6C995F6C995EFC087EFC087EF
        C087F1C896F2CD9FFFDFB9FED8ADF3D6A7F6DCB1F3C18BFF00FFF3C18AF6C995
        F0B87CECAE6EEEB475F1BF86F4CD99F7DCAFFBEBC6FEF8D9FFFCDEFEF9DAFBE9
        C1F5D09BF2C088FF00FFF6C995EDAF6FECAB6AECAD6CEEB577F1C188F4CE9BF7
        DCAFFBEBC4FEF9D8FFFCDEFFFCDDFFFEE1FEFBDBF1C084FF00FFF2BE86EBAA68
        ECAD6CECAD6CEEB679F2C28AF4CF9DF8DDB1FBECC6FEFAD9FFFCDDFFFCDDFFFC
        DDFFFFE5F1C084FF00FFF5C894EFB579ECAC6AECAD6CEFB67AF2C48DF5D29FF8
        DFB4FCEEC9FFFCDDFFFEE0FFFFE1FFFEDFFBE8BFF1C084FF00FFFF00FFF2C084
        F2C084EEB475F0B97EF2C58FF5D4A4F9E3BAFDF2CFFEF8D7FDF1CCFBE8C0F6D0
        9DF2C084FF00FFFF00FFFF00FFFF00FFFF00FFF2C084F2C084F2C084F2C084F2
        C084F2C084F2C084F2C084F2C084FF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton1Click
    end
    object Label12: TLabel
      Left = 403
      Top = 67
      Width = 70
      Height = 13
      Caption = 'Tp Pagamento'
    end
    object SpeedButton2: TSpeedButton
      Left = 762
      Top = 59
      Width = 21
      Height = 21
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFF4C692F4C692F4C692F4C692F4C692F4C692F4C692FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF4C692FDF4D1FEF9D8FCF0CEF5
        E6C2FBE3C3F3DAB5F8D1A9F4C692FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        F4C692FFFDDEFFFFE0FFFDDEFFF8DDB6D49245A9320C9A0C40A226EAD3A9F4C6
        92FF00FFFF00FFFF00FFFF00FFFF00FFF4C692FEFBDCFFFFE1FFFEE0FFFFE8AC
        D791008D0030A3233EA72D73C367FFE3C4FF00FFFF00FFFF00FFFF00FFFF00FF
        F2B475F9C78DFBE1B4FEF2CFFEF8DFB9DC9D36A2246EB855FFF8F087C672FCE5
        C6F4C692FF00FFFF00FFFF00FFF2BC84F5B776F8BB7CF9C185FCD09BFEE3C085
        C269FDF4DB89C36C4EB14662B953FCF4DCF4C692FF00FFFF00FFFF00FFF3BA81
        F7B776F8BE81FAC68DFDD09CFFE7C55EAF417DC46BA7D694008F0021A320FFFC
        ECF4C692FF00FFFF00FFFF00FFF0B77AF7B877F8BF82FBC88EFDD29DFFE5C0D0
        DEAA06980600940000960027A526FFFCF1F2C084FF00FFFF00FFF2BD87F5B97A
        F7B776F8BD7FF7C48AF9CC96FBD4A4FDE1BDCBCE9170AF49A3C87CAFD593F9FB
        E5F2C084F3C18BFF00FFF1BA82F5B97AF6C995F6C995F6C995EFC087EFC087EF
        C087F1C896F2CD9FFFDFB9FED8ADF3D6A7F6DCB1F3C18BFF00FFF3C18AF6C995
        F0B87CECAE6EEEB475F1BF86F4CD99F7DCAFFBEBC6FEF8D9FFFCDEFEF9DAFBE9
        C1F5D09BF2C088FF00FFF6C995EDAF6FECAB6AECAD6CEEB577F1C188F4CE9BF7
        DCAFFBEBC4FEF9D8FFFCDEFFFCDDFFFEE1FEFBDBF1C084FF00FFF2BE86EBAA68
        ECAD6CECAD6CEEB679F2C28AF4CF9DF8DDB1FBECC6FEFAD9FFFCDDFFFCDDFFFC
        DDFFFFE5F1C084FF00FFF5C894EFB579ECAC6AECAD6CEFB67AF2C48DF5D29FF8
        DFB4FCEEC9FFFCDDFFFEE0FFFFE1FFFEDFFBE8BFF1C084FF00FFFF00FFF2C084
        F2C084EEB475F0B97EF2C58FF5D4A4F9E3BAFDF2CFFEF8D7FDF1CCFBE8C0F6D0
        9DF2C084FF00FFFF00FFFF00FFFF00FFFF00FFF2C084F2C084F2C084F2C084F2
        C084F2C084F2C084F2C084F2C084FF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton2Click
    end
    object cmbPesqCod_TipoDespesa: TDBLookupComboBox
      Left = 95
      Top = 59
      Width = 85
      Height = 21
      KeyField = 'codigo'
      ListField = 'codigo;descricao'
      ListSource = srcCadtipoDespesas
      TabOrder = 0
      OnClick = cmbPesqCod_TipoDespesaClick
    end
    object cmbPesqNome_TipoDespesa: TDBLookupComboBox
      Left = 180
      Top = 59
      Width = 189
      Height = 21
      KeyField = 'codigo'
      ListField = 'Descricao;Codigo'
      ListSource = srcCadtipoDespesas
      TabOrder = 1
      OnClick = cmbPesqNome_TipoDespesaClick
    end
    object cmbMes: TComboBox
      Left = 493
      Top = 4
      Width = 85
      Height = 21
      ItemHeight = 13
      TabOrder = 2
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
        'Dezembro'
        '')
    end
    object cmbAno: TComboBox
      Left = 605
      Top = 4
      Width = 53
      Height = 21
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 3
      Text = '2006'
      Items.Strings = (
        '2004'
        '2005'
        '2006')
    end
    object BtnAtualizar: TBitBtn
      Left = 664
      Top = 4
      Width = 121
      Height = 21
      Caption = 'ATUALIZAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BtnAtualizarClick
      Glyph.Data = {
        72020000424D7202000000000000720100002800000010000000100000000100
        08000000000000010000D10E0000D10E00004F0000004F0000001C6A1C001C73
        1C0016841C001C841C001C981C001C732300237323001C7B2300237B23001C84
        23001C8F23001CA1230023732A00237B2A002A7B2A0023842A001C8F2A00238F
        2A001CA12A0023A12A002A7B3100317B310023843100238F31002A8F31002398
        310023AB31002A843800388438002A8F38002A98380023AB38002AAB3800408F
        4000319840002AA1400031A140002AB64000408F4800488F480031A1480031AB
        48002AB6480031B64800488F500038AB500038B6500031C05000508F580038B6
        580031C0580038C0580040C058005898600060A1600038C0600040C0600038CA
        600040CA600060986A0038CA6A0040CA6A0048CA6A0040D46A006AA1730040D4
        730048D4730048E0730050E0730050E07B0058E07B0050EA7B0058EA840058F4
        840058F48F0060F48F0060FF8F00FF00FF00FFFFFF004D4D4D4D4D4D4D4D0F26
        4D4D4D4D4D4D4D4D4D4D4D4D4D4D401D4D4D4D4D4D4D4D4D4D4D4D4D4D4D224B
        223B4D4D4D4D4D4D4D4D4D4D4D4D284946054D4D4D4D4D360D4D4D4D4D4D4048
        4944274D4D4D4D3633164D4D4D2645484849144D4D4D4D363337164D0D384545
        4848144D4D4D4D36333331002E4243454545144D4D4D4D362B2F33373D3D4242
        4522274D4D4D4D362B2B33333D3D3F42380D4D4D4D4D4D3620252B2F33373D3D
        144D4D4D4D4D4D3620202B2B333339284D4D4D4D4D4D4D36131A20252B2F3337
        054D4D4D4D4D4D36131320202B2B2F331E144D4D4D4D4D36040B131A20252B2F
        3333144D4D4D4D3603030909111117171E1E0D0C4D4D}
    end
    object rdgTipoFiltro: TRadioGroup
      Left = 8
      Top = 1
      Width = 125
      Height = 52
      Caption = 'Tipo de Filtro'
      ItemIndex = 1
      Items.Strings = (
        'Vencimento '
        'Emiss'#227'o')
      TabOrder = 5
    end
    object rdgTipoResumo: TRadioGroup
      Left = 136
      Top = 1
      Width = 145
      Height = 52
      Caption = 'Tipo de Resumo'
      ItemIndex = 0
      Items.Strings = (
        'Tipo de Despesa'
        'Tipo de Pagamento')
      TabOrder = 6
    end
    object rdgTipoVisualizacao: TRadioGroup
      Left = 284
      Top = 1
      Width = 180
      Height = 52
      Caption = 'Tipo de Visualiza'#231#227'o'
      ItemIndex = 0
      Items.Strings = (
        'Listagem Simples'
        'Acompanhamento Mes a Mes')
      TabOrder = 7
    end
    object cmbPesqCod_TipoPagamento: TDBLookupComboBox
      Left = 479
      Top = 59
      Width = 85
      Height = 21
      KeyField = 'codigo'
      ListField = 'codigo;descricao'
      ListSource = SrcCadTipoPagamento
      TabOrder = 8
      OnClick = cmbPesqCod_TipoPagamentoClick
    end
    object cmbPesqNome_TipoPagamento: TDBLookupComboBox
      Left = 568
      Top = 59
      Width = 189
      Height = 21
      KeyField = 'codigo'
      ListField = 'Descricao;Codigo'
      ListSource = SrcCadTipoPagamento
      TabOrder = 9
      OnClick = cmbPesqNome_TipoPagamentoClick
    end
  end
  object srcCadtipoDespesas: TDataSource
    DataSet = QryCadTipoDespesas
    Left = 340
    Top = 300
  end
  object QryCadTipoDespesas: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 340
    Top = 272
  end
  object QryModific: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 396
    Top = 272
  end
  object QryCadContasCorrente: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 368
    Top = 272
  end
  object srcCadCodtasCorrente: TDataSource
    DataSet = QryCadContasCorrente
    Left = 368
    Top = 300
  end
  object QryCadDespesas: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    AfterOpen = QryCadDespesasAfterOpen
    Parameters = <>
    Left = 312
    Top = 272
  end
  object SrcCadDespesas: TDataSource
    DataSet = QryCadDespesas
    Left = 312
    Top = 300
  end
  object QryCadTipoPagamento: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 284
    Top = 272
  end
  object SrcCadTipoPagamento: TDataSource
    DataSet = QryCadTipoPagamento
    Left = 285
    Top = 300
  end
  object qryResumo: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 424
    Top = 272
  end
  object ADOQuery1: TADOQuery
    Connection = FrmPrincipal.AdoPrincipal
    Parameters = <>
    Left = 256
    Top = 272
  end
end
