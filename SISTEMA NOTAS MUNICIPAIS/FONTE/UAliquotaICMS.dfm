object FAliquotaICMS: TFAliquotaICMS
  Left = 250
  Top = 169
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Rech Center'
  ClientHeight = 343
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clTeal
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
    Width = 625
    Height = 30
    Align = alTop
    Alignment = taCenter
    Caption = 'Tabela de Aliquota de ICMS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -21
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 313
    Width = 625
    Height = 30
    Align = alBottom
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 31
    EdgeBorders = []
    Flat = True
    Images = DM.ImageList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object BtnPrimeiro: TToolButton
      Left = 0
      Top = 0
      Hint = 'Primeiro Registro'
      Caption = 'BtnPrimeiro'
      ImageIndex = 10
      OnClick = BtnPrimeiroClick
    end
    object BtnAnterior: TToolButton
      Left = 31
      Top = 0
      Hint = 'Registro Anterior'
      Caption = 'BtnAnterior'
      ImageIndex = 0
      OnClick = BtnAnteriorClick
    end
    object BtnProximo: TToolButton
      Left = 62
      Top = 0
      Hint = 'Pr'#243'ximo Registro'
      Caption = 'BtnProximo'
      ImageIndex = 11
      OnClick = BtnProximoClick
    end
    object BtnUltimo: TToolButton
      Left = 93
      Top = 0
      Hint = #218'ltimo Registro'
      Caption = 'BtnUltimo'
      ImageIndex = 16
      OnClick = BtnUltimoClick
    end
    object ToolButton10: TToolButton
      Left = 124
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object BtnIncluir: TToolButton
      Left = 132
      Top = 0
      Hint = 'Incluir Novo Registro - Insert'
      Caption = 'BtnIncluir'
      ImageIndex = 9
      OnClick = BtnIncluirClick
    end
    object btnnovopadrao: TToolButton
      Left = 163
      Top = 0
      Hint = 'Incluir novo registro pegando esse como padr'#227'o - F11'
      ImageIndex = 17
      OnClick = btnnovopadraoClick
    end
    object BtnAlterar: TToolButton
      Left = 194
      Top = 0
      Hint = 'Alterar Registro - F10'
      Caption = 'BtnAlterar'
      ImageIndex = 3
      OnClick = BtnAlterarClick
    end
    object BtnExcluir: TToolButton
      Left = 225
      Top = 0
      Hint = 'Excluir Registro - Ctrl + Delete'
      Caption = 'BtnExcluir'
      ImageIndex = 5
      OnClick = BtnExcluirClick
    end
    object ToolButton14: TToolButton
      Left = 256
      Top = 0
      Width = 8
      Caption = 'ToolButton14'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object BtnSalvar: TToolButton
      Left = 264
      Top = 0
      Hint = 'Salvar - F12'
      Caption = 'Salvar'
      ImageIndex = 14
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TToolButton
      Left = 295
      Top = 0
      Hint = 'Cancelar - Esc'
      Caption = 'Cancelar'
      ImageIndex = 13
      OnClick = BtnCancelarClick
    end
    object ToolButton4: TToolButton
      Left = 326
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object BtnImprimir: TToolButton
      Left = 334
      Top = 0
      Hint = 'Imprimir - F8'
      Caption = 'BtnImprimir'
      ImageIndex = 8
      OnClick = BtnImprimirClick
    end
    object btnhtml: TToolButton
      Left = 365
      Top = 0
      Hint = 'Exportar dados para HTML'
      Caption = 'btnhtml'
      ImageIndex = 7
      OnClick = btnhtmlClick
    end
    object btnexcel: TToolButton
      Left = 396
      Top = 0
      Hint = 'Exportar para o Excel'
      Caption = 'btnexcel'
      ImageIndex = 4
      OnClick = btnexcelClick
    end
    object ToolButton19: TToolButton
      Left = 427
      Top = 0
      Width = 8
      Caption = 'ToolButton19'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object btndesconectar: TToolButton
      Left = 435
      Top = 0
      Hint = 'Desconectar - F7'
      Caption = 'btndesconectar'
      ImageIndex = 2
      OnClick = btndesconectarClick
    end
    object BtnFiltro: TToolButton
      Left = 466
      Top = 0
      Hint = 'Atualizar - F9'
      Caption = 'BtnFiltro'
      ImageIndex = 1
      OnClick = BtnFiltroClick
    end
    object ToolButton22: TToolButton
      Left = 497
      Top = 0
      Width = 8
      Caption = 'ToolButton22'
      ImageIndex = 12
      Style = tbsSeparator
    end
    object btnexportar: TToolButton
      Left = 505
      Top = 0
      Hint = 'Exportar Dados - F4'
      ImageIndex = 18
      OnClick = btnexportarClick
    end
    object btnimportar: TToolButton
      Left = 536
      Top = 0
      Hint = 'Importar Dados - F2'
      ImageIndex = 19
      OnClick = btnimportarClick
    end
    object ToolButton1: TToolButton
      Left = 567
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object btnsair: TToolButton
      Left = 575
      Top = 0
      Hint = 'Sair - Esc'
      ImageIndex = 12
      OnClick = btnsairClick
    end
  end
  object PageControl: TPageControl
    Left = 0
    Top = 68
    Width = 625
    Height = 245
    ActivePage = TabCadastro
    Align = alClient
    Images = DM.ImageListPageControl
    MultiLine = True
    TabOrder = 1
    TabStop = False
    object TabConsulta: TTabSheet
      object DBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 617
        Height = 217
        TabStop = False
        Align = alClient
        Color = clWhite
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = []
        OnKeyDown = txtpesquisaKeyDown
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ALISIGLA'
            Title.Alignment = taCenter
            Title.Caption = 'Sigla'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'Comic Sans MS'
            Title.Font.Style = [fsBold]
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFOP'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'Comic Sans MS'
            Title.Font.Style = [fsBold]
            Width = 250
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ALICODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'Comic Sans MS'
            Title.Font.Style = [fsBold]
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIOBS'
            Title.Caption = 'Observa'#231#245'es'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'Comic Sans MS'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object TabCadastro: TTabSheet
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Label1: TLabel
        Left = 11
        Top = 18
        Width = 26
        Height = 16
        Caption = 'Sigla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 11
        Top = 67
        Width = 34
        Height = 16
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 11
        Top = 91
        Width = 79
        Height = 16
        Caption = 'ICMS Revenda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 11
        Top = 42
        Width = 29
        Height = 16
        Caption = 'CFOP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btncfop: TRxSpeedButton
        Left = 214
        Top = 37
        Width = 23
        Height = 22
        Hint = 'Abrir Cadastro'
        Flat = True
        Glyph.Data = {
          42060000424D360A000000000000360800002800000010000000100000000100
          1000030000000002000000000000000000000001000000000000007C0000E003
          00001F0000000000000000008000008000000080800080000000800080008080
          0000C0C0C000C0DCC000F0CAA600330000000000330033003300333300001616
          16001C1C1C002222220029292900555555004D4D4D004242420039393900807C
          FF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD0000FF33000000
          6600000099000000CC00003300000033330000336600003399000033CC000033
          FF00006600000066330000666600006699000066CC000066FF00009900000099
          330000996600009999000099CC000099FF0000CC000000CC330000CC660000CC
          990000CCCC0000CCFF0000FF660000FF990000FFCC0033FF0000FF0033003300
          6600330099003300CC003300FF00FF3300003333330033336600333399003333
          CC003333FF00336600003366330033666600336699003366CC003366FF003399
          00003399330033996600339999003399CC003399FF0033CC000033CC330033CC
          660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FFCC0033FF
          FF00660000006600330066006600660099006600CC006600FF00663300006633
          330066336600663399006633CC006633FF006666000066663300666666006666
          99006666CC00669900006699330066996600669999006699CC006699FF0066CC
          000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF990066FF
          CC00CC00FF00FF00CC009999000099339900990099009900CC00990000009933
          3300990066009933CC009900FF00996600009966330099336600996699009966
          CC009933FF009999330099996600999999009999CC009999FF0099CC000099CC
          330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC660099FF
          990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00CC009933
          0000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC6633009966
          6600CC669900CC66CC009966FF00CC990000CC993300CC996600CC999900CC99
          CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF
          0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF006600FF00
          9900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF660000FF66
          3300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF996600FF99
          9900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCC
          FF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FFFF00FF66
          6600FF66FF00FFFF66002100A5005F5F5F00777777008686860096969600CBCB
          CB00B2B2B200D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FB
          FF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
          0000FFFFFF001F7C205E205E205E205E205E205E205E205E205E205E205E205E
          1F7C1F7C1F7C205E846A0E77507F2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7FA76E
          63661F7C1F7C205EE972A76A947F4D7F4D7F4D7F4D7F4D7F4D7F4D7F4D7FC76E
          D97B205E1F7C205E4E7F205EB57F6F7F6F7F6F7F6F7F6F7F6F7F6F7F6F7FC86E
          D97B205E1F7C205E6F7F6362737B927F907F907F907F907F907F907F907FE96E
          D97B42621F7C205E907FC86E0C73D57FB17FB17FB17FB17FB17FB17FB17FE96E
          D97BD97B205E205EB17F6E7B6462FF7FD97FD97FD97FD97FD97FD97FD97F5373
          FD7FDA7F205E205ED27FD27F4262205E205E205E205E205E205E205E205E205E
          205E205E205E205ED37FD37FD37FD37FD37FD37FD37FD37FD37FD37FD37F215E
          1F7C1F7C1F7C205EFF7FF47FF47FF47FF47FF47FF47FF47FF47FF47FF47F215E
          1F7C1F7C1F7C1F7C205EFF7FF47FF47FF47F205E205E205E205E205E205E1F7C
          1F7C1F7C1F7C1F7C1F7C205E205E205E205E1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C}
        ShowHint = False
        OnClick = btncfopClick
      end
      object Label5: TLabel
        Left = 11
        Top = 185
        Width = 66
        Height = 16
        Caption = 'Observa'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 11
        Top = 115
        Width = 96
        Height = 16
        Caption = 'ICMS Consumidor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 11
        Top = 163
        Width = 90
        Height = 16
        Caption = 'Situa'#231#227'o Tribut.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 11
        Top = 139
        Width = 83
        Height = 16
        Caption = 'Base de Calculo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object WSDBEdit1: TWSDBEdit
        Left = 111
        Top = 17
        Width = 99
        DataField = 'ALISIGLA'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 0
        OnKeyDown = WSDBEdit1KeyDown
        Chave = True
        FocoNovo = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit2: TWSDBEdit
        Left = 111
        Top = 66
        Width = 101
        DataField = 'ALICODIGO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 3
        OnKeyDown = WSDBEdit1KeyDown
        Chave = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit3: TWSDBEdit
        Left = 111
        Top = 90
        Width = 101
        DataField = 'ALIICMSREVENDA'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 4
        OnKeyDown = WSDBEdit1KeyDown
        FocoAlterar = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtcodcfop: TWSDBEdit
        Left = 111
        Top = 41
        Width = 101
        DataField = 'ALICFOP'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 1
        OnKeyDown = WSDBEdit1KeyDown
        Chave = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtcfop: TWSDBEdit
        Left = 239
        Top = 41
        Width = 361
        DataField = 'CFOP'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 2
        OnKeyDown = WSDBEdit1KeyDown
        Chave = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit4: TWSDBEdit
        Left = 112
        Top = 185
        Width = 489
        DataField = 'ALIOBS'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 8
        OnKeyDown = WSDBEdit1KeyDown
        EnterClicar = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit5: TWSDBEdit
        Left = 111
        Top = 114
        Width = 101
        DataField = 'ALIICMSCONSUMIDOR'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 5
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit6: TWSDBEdit
        Left = 111
        Top = 138
        Width = 101
        DataField = 'ALIBASECALC'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 6
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit7: TWSDBEdit
        Left = 111
        Top = 162
        Width = 101
        DataField = 'ALISITTRIB'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 7
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
    end
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 30
    Width = 625
    Height = 38
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object Label4: TLabel
      Left = 226
      Top = 10
      Width = 34
      Height = 16
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 18
      Top = 11
      Width = 29
      Height = 16
      Caption = 'CFOP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnfiltrocfop: TRxSpeedButton
      Left = 169
      Top = 8
      Width = 23
      Height = 22
      Hint = 'Abrir Cadastro'
      Flat = True
      Glyph.Data = {
        42060000424D360A000000000000360800002800000010000000100000000100
        1000030000000002000000000000000000000001000000000000007C0000E003
        00001F0000000000000000008000008000000080800080000000800080008080
        0000C0C0C000C0DCC000F0CAA600330000000000330033003300333300001616
        16001C1C1C002222220029292900555555004D4D4D004242420039393900807C
        FF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD0000FF33000000
        6600000099000000CC00003300000033330000336600003399000033CC000033
        FF00006600000066330000666600006699000066CC000066FF00009900000099
        330000996600009999000099CC000099FF0000CC000000CC330000CC660000CC
        990000CCCC0000CCFF0000FF660000FF990000FFCC0033FF0000FF0033003300
        6600330099003300CC003300FF00FF3300003333330033336600333399003333
        CC003333FF00336600003366330033666600336699003366CC003366FF003399
        00003399330033996600339999003399CC003399FF0033CC000033CC330033CC
        660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FFCC0033FF
        FF00660000006600330066006600660099006600CC006600FF00663300006633
        330066336600663399006633CC006633FF006666000066663300666666006666
        99006666CC00669900006699330066996600669999006699CC006699FF0066CC
        000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF990066FF
        CC00CC00FF00FF00CC009999000099339900990099009900CC00990000009933
        3300990066009933CC009900FF00996600009966330099336600996699009966
        CC009933FF009999330099996600999999009999CC009999FF0099CC000099CC
        330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC660099FF
        990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00CC009933
        0000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC6633009966
        6600CC669900CC66CC009966FF00CC990000CC993300CC996600CC999900CC99
        CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF
        0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF006600FF00
        9900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF660000FF66
        3300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF996600FF99
        9900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCC
        FF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FFFF00FF66
        6600FF66FF00FFFF66002100A5005F5F5F00777777008686860096969600CBCB
        CB00B2B2B200D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FB
        FF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
        0000FFFFFF001F7C205E205E205E205E205E205E205E205E205E205E205E205E
        1F7C1F7C1F7C205E846A0E77507F2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7FA76E
        63661F7C1F7C205EE972A76A947F4D7F4D7F4D7F4D7F4D7F4D7F4D7F4D7FC76E
        D97B205E1F7C205E4E7F205EB57F6F7F6F7F6F7F6F7F6F7F6F7F6F7F6F7FC86E
        D97B205E1F7C205E6F7F6362737B927F907F907F907F907F907F907F907FE96E
        D97B42621F7C205E907FC86E0C73D57FB17FB17FB17FB17FB17FB17FB17FE96E
        D97BD97B205E205EB17F6E7B6462FF7FD97FD97FD97FD97FD97FD97FD97F5373
        FD7FDA7F205E205ED27FD27F4262205E205E205E205E205E205E205E205E205E
        205E205E205E205ED37FD37FD37FD37FD37FD37FD37FD37FD37FD37FD37F215E
        1F7C1F7C1F7C205EFF7FF47FF47FF47FF47FF47FF47FF47FF47FF47FF47F215E
        1F7C1F7C1F7C1F7C205EFF7FF47FF47FF47F205E205E205E205E205E205E1F7C
        1F7C1F7C1F7C1F7C1F7C205E205E205E205E1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      ShowHint = False
      OnClick = btnfiltrocfopClick
    end
    object txtpesquisa: TWSEdit
      Left = 272
      Top = 11
      Width = 130
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 0
      OnKeyDown = txtpesquisaKeyDown
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtfiltrocfop: TWSEdit
      Left = 64
      Top = 11
      Width = 102
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 1
      OnKeyDown = txtpesquisaKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
  end
  object RLReport: TRLReport
    Left = 47
    Top = 326
    Width = 794
    Height = 1123
    DataSource = DataSource
    DefaultFilter = DM.RLDraftFilter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 188
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText6: TRLDBText
        Left = 474
        Top = 39
        Width = 239
        Height = 15
        AutoSize = False
        DataField = 'RECEMAIL'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
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
        DataField = 'RECTELEFONE'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
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
        DataField = 'RECCIDADE'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBImage1: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'RECLOGO'
        DataSource = DM.DSRechCenter
        Stretch = True
      end
      object RLDBText2: TRLDBText
        Left = 190
        Top = 23
        Width = 283
        Height = 15
        AutoSize = False
        DataField = 'RECENDERECO'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 189
        Top = 3
        Width = 524
        Height = 19
        AutoSize = False
        DataField = 'RECNOME'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 475
        Top = 23
        Width = 238
        Height = 15
        AutoSize = False
        DataField = 'RECBAIRRO'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
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
        DataSource = DM.DSParamEmp
        Stretch = True
      end
      object RLDBRichText1: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
        DataSource = DM.DSParamEmp
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
        Left = 208
        Top = 2
        Width = 302
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Tabela de Al'#237'quota de ICMS'
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
      Height = 38
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 13
        Top = 18
        Width = 31
        Height = 16
        Caption = 'Sigla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 260
        Top = 18
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
      object RLLabel4: TRLLabel
        Left = 54
        Top = 18
        Width = 34
        Height = 16
        Caption = 'CFOP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 319
        Top = 18
        Width = 47
        Height = 16
        Caption = 'Revenda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 369
        Top = 18
        Width = 64
        Height = 16
        Caption = 'Consumidor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 324
        Top = 1
        Width = 37
        Height = 16
        Caption = 'ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 382
        Top = 1
        Width = 37
        Height = 16
        Caption = 'ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 508
        Top = 17
        Width = 59
        Height = 16
        Caption = 'Tribut'#225'ria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 459
        Top = 17
        Width = 42
        Height = 16
        Caption = 'C'#225'lculo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 455
        Top = 1
        Width = 46
        Height = 16
        Caption = 'Base de'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 510
        Top = 1
        Width = 51
        Height = 16
        Caption = 'Situa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 572
        Top = 17
        Width = 71
        Height = 16
        Caption = 'Observa'#231#245'es'
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
      Top = 168
      Width = 718
      Height = 20
      object RLDBText7: TRLDBText
        Left = -1
        Top = 2
        Width = 60
        Height = 15
        Alignment = taCenter
        DataField = 'ALISIGLA'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 250
        Top = 2
        Width = 48
        Height = 15
        Alignment = taCenter
        AutoSize = False
        DataField = 'ALICODIGO'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 55
        Top = 2
        Width = 194
        Height = 15
        AutoSize = False
        DataField = 'CFOP'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 302
        Top = 2
        Width = 65
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ALIICMSREVENDA'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 368
        Top = 2
        Width = 65
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ALIICMSCONSUMIDOR'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 500
        Top = 2
        Width = 65
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ALISITTRIB'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 434
        Top = 2
        Width = 65
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ALIBASECALC'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText14: TRLDBText
        Left = 572
        Top = 2
        Width = 143
        Height = 15
        AutoSize = False
        DataField = 'ALIOBS'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object DataSource: TDataSource
    DataSet = DM.CDSAliquotaICMS
    Left = 8
    Top = 8
  end
  object WSInformacao: TWSInformacao
    Tabela = 'TALIQUOTAICMS'
    Programa = 48
    Left = 40
    Top = 8
  end
end
