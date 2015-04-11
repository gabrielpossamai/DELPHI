object FNotaEnt: TFNotaEnt
  Left = 148
  Top = 81
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Rech Center'
  ClientHeight = 492
  ClientWidth = 769
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
    Width = 769
    Height = 30
    Align = alTop
    Alignment = taCenter
    Caption = 'Nota de Entrada'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -21
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 462
    Width = 769
    Height = 30
    Align = alBottom
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 32
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
      Left = 32
      Top = 0
      Hint = 'Registro Anterior'
      Caption = 'BtnAnterior'
      ImageIndex = 0
      OnClick = BtnAnteriorClick
    end
    object BtnProximo: TToolButton
      Left = 64
      Top = 0
      Hint = 'Pr'#243'ximo Registro'
      Caption = 'BtnProximo'
      ImageIndex = 11
      OnClick = BtnProximoClick
    end
    object BtnUltimo: TToolButton
      Left = 96
      Top = 0
      Hint = #218'ltimo Registro'
      Caption = 'BtnUltimo'
      ImageIndex = 16
      OnClick = BtnUltimoClick
    end
    object ToolButton10: TToolButton
      Left = 128
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object BtnIncluir: TToolButton
      Left = 136
      Top = 0
      Hint = 'Incluir Novo Registro - Insert'
      Caption = 'BtnIncluir'
      ImageIndex = 9
      OnClick = BtnIncluirClick
    end
    object btnnovopadrao: TToolButton
      Left = 168
      Top = 0
      Hint = 'Incluir novo registro pegando esse como padr'#227'o - F11'
      ImageIndex = 17
      OnClick = btnnovopadraoClick
    end
    object BtnAlterar: TToolButton
      Left = 200
      Top = 0
      Hint = 'Alterar Registro - F10'
      Caption = 'BtnAlterar'
      ImageIndex = 3
      OnClick = BtnAlterarClick
    end
    object BtnExcluir: TToolButton
      Left = 232
      Top = 0
      Hint = 'Excluir Registro - Ctrl + Delete'
      Caption = 'BtnExcluir'
      ImageIndex = 5
      OnClick = BtnExcluirClick
    end
    object ToolButton14: TToolButton
      Left = 264
      Top = 0
      Width = 8
      Caption = 'ToolButton14'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object BtnSalvar: TToolButton
      Left = 272
      Top = 0
      Hint = 'Salvar - F12'
      Caption = 'Salvar'
      ImageIndex = 14
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TToolButton
      Left = 304
      Top = 0
      Hint = 'Cancelar - Esc'
      Caption = 'Cancelar'
      ImageIndex = 13
      OnClick = BtnCancelarClick
    end
    object ToolButton4: TToolButton
      Left = 336
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object BtnImprimir: TToolButton
      Left = 344
      Top = 0
      Hint = 'Imprimir - F8'
      Caption = 'BtnImprimir'
      ImageIndex = 8
      OnClick = BtnImprimirClick
    end
    object btnhtml: TToolButton
      Left = 376
      Top = 0
      Hint = 'Exportar dados para HTML'
      Caption = 'btnhtml'
      ImageIndex = 7
      OnClick = btnhtmlClick
    end
    object btnexcel: TToolButton
      Left = 408
      Top = 0
      Hint = 'Exportar para o Excel'
      Caption = 'btnexcel'
      ImageIndex = 4
      OnClick = btnexcelClick
    end
    object ToolButton19: TToolButton
      Left = 440
      Top = 0
      Width = 8
      Caption = 'ToolButton19'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object btndesconectar: TToolButton
      Left = 448
      Top = 0
      Hint = 'Desconectar - F7'
      Caption = 'btndesconectar'
      ImageIndex = 2
      OnClick = btndesconectarClick
    end
    object BtnFiltro: TToolButton
      Left = 480
      Top = 0
      Hint = 'Atualizar - F9'
      Caption = 'BtnFiltro'
      ImageIndex = 1
      OnClick = BtnFiltroClick
    end
    object ToolButton22: TToolButton
      Left = 512
      Top = 0
      Width = 8
      Caption = 'ToolButton22'
      ImageIndex = 12
      Style = tbsSeparator
    end
    object btnexportar: TToolButton
      Left = 520
      Top = 0
      Hint = 'Exportar Dados - F4'
      ImageIndex = 18
      OnClick = btnexportarClick
    end
    object btnimportar: TToolButton
      Left = 552
      Top = 0
      Hint = 'Importar Dados - F2'
      ImageIndex = 19
      OnClick = btnimportarClick
    end
    object ToolButton1: TToolButton
      Left = 584
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object btnsair: TToolButton
      Left = 592
      Top = 0
      Hint = 'Sair - Esc'
      ImageIndex = 12
      OnClick = btnsairClick
    end
  end
  object PageControl: TPageControl
    Left = 0
    Top = 73
    Width = 769
    Height = 389
    ActivePage = TabCadastro
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Images = DM.ImageListPageControl
    ParentFont = False
    TabOrder = 1
    TabStop = False
    object TabConsulta: TTabSheet
      object DBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 761
        Height = 148
        Align = alClient
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
        TitleFont.Color = clTeal
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = [fsBold]
        OnKeyDown = txtpesquisaKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'CLINOME'
            Title.Caption = 'Fornecedor'
            Width = 180
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOTNOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Nota'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOTDATASTR'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFOPNOME'
            Title.Caption = 'CFOP'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTOPERACAO'
            Title.Caption = 'Opera'#231#227'o'
            Width = 188
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTTOTAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total'
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 148
        Width = 761
        Height = 211
        TabStop = False
        Align = alBottom
        DataSource = DM.DSItemNotaEnt
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clTeal
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = [fsBold]
        OnKeyDown = txtpesquisaKeyDown
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEPRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Produto'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Produto'
            Title.Caption = '-'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITESITTRIB'
            Title.Caption = 'Sit. Trib.'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEBASECALC'
            Title.Alignment = taRightJustify
            Title.Caption = 'B. Calc.'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEQUANT'
            Title.Alignment = taRightJustify
            Title.Caption = 'Quant.'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEPRECO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Pre'#231'o'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEICMS'
            Title.Alignment = taRightJustify
            Title.Caption = 'ICMS'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEIPI'
            Title.Alignment = taRightJustify
            Title.Caption = 'IPI'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEDESC'
            Title.Alignment = taRightJustify
            Title.Caption = 'Desc.'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITETOTAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'Total'
            Width = 55
            Visible = True
          end>
      end
    end
    object TabCadastro: TTabSheet
      ImageIndex = 1
      object PageControlCad: TPageControl
        Left = 0
        Top = 0
        Width = 761
        Height = 359
        ActivePage = TabPrincipal
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Images = DM.ImageListPageControl
        ParentFont = False
        TabOrder = 0
        object TabPrincipal: TTabSheet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ImageIndex = 4
          ParentFont = False
          object Label2: TLabel
            Left = 200
            Top = 49
            Width = 25
            Height = 16
            Caption = 'Data'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 2
            Top = 49
            Width = 41
            Height = 16
            Caption = 'N'#250'mero'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 2
            Top = 10
            Width = 59
            Height = 16
            Caption = 'Fornecedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnfornecedor: TRxSpeedButton
            Left = 191
            Top = 7
            Width = 23
            Height = 20
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
            OnClick = btnfornecedorClick
          end
          object Label13: TLabel
            Left = 385
            Top = 49
            Width = 58
            Height = 16
            Caption = 'Data Lcto.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btncfop: TRxSpeedButton
            Left = 191
            Top = 68
            Width = 23
            Height = 20
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
          object Label15: TLabel
            Left = 2
            Top = 71
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
          object Label16: TLabel
            Left = 2
            Top = 90
            Width = 50
            Height = 16
            Caption = 'Opera'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object txtdata: TWSDBEdit
            Left = 275
            Top = 49
            Width = 100
            DataField = 'NOTDATA'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 4
            OnKeyDown = txtcodfornecedorKeyDown
            FocoAlterar = True
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtnumero: TWSDBEdit
            Left = 90
            Top = 49
            Width = 100
            DataField = 'NOTNOTA'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 3
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtcodfornecedor: TWSDBEdit
            Left = 90
            Top = 9
            Width = 100
            DataField = 'NOTFORNECEDOR'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 0
            OnExit = txtcodfornecedorExit
            OnKeyDown = txtcodfornecedorKeyDown
            Chave = True
            FocoNovo = True
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtfornecedor: TWSDBEdit
            Left = 215
            Top = 9
            Width = 370
            DataField = 'fornecedor'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 1
            OnKeyDown = txtcodfornecedorKeyDown
            Chave = True
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit2: TWSDBEdit
            Left = 485
            Top = 49
            Width = 100
            DataField = 'NOTDATALCTO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 5
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtcfop: TWSDBEdit
            Left = 215
            Top = 70
            Width = 370
            DataField = 'cfop'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 7
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtcodcfop: TWSDBEdit
            Left = 90
            Top = 70
            Width = 100
            DataField = 'NOTCFOP'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 6
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtoperacao: TWSDBComboBox
            Left = 90
            Top = 90
            Width = 283
            Height = 23
            DataField = 'NOTOPERACAO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ItemHeight = 15
            Items.Strings = (
              'Compra'
              'Empr'#233'stimo'
              'Devolu'#231#227'o'
              'Consigna'#231#227'o'
              'Bonifica'#231#227'o'
              'Transfer'#234'ncia')
            ParentFont = False
            ParentShowHint = False
            TabOrder = 8
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 122
            Width = 753
            Height = 167
            TabStop = False
            Align = alBottom
            DataSource = DM.DSItemNotaEnt
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 9
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clTeal
            TitleFont.Height = -11
            TitleFont.Name = 'Comic Sans MS'
            TitleFont.Style = [fsBold]
            OnKeyDown = txtpesquisaKeyDown
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ITEPRODUTO'
                Title.Alignment = taCenter
                Title.Caption = 'Produto'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Produto'
                Title.Caption = '-'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITESITTRIB'
                Title.Caption = 'Sit. Trib.'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEBASECALC'
                Title.Alignment = taRightJustify
                Title.Caption = 'B. Calc.'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEQUANT'
                Title.Alignment = taRightJustify
                Title.Caption = 'Quant.'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEPRECO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Pre'#231'o'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEICMS'
                Title.Alignment = taRightJustify
                Title.Caption = 'ICMS'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEIPI'
                Title.Alignment = taRightJustify
                Title.Caption = 'IPI'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEDESC'
                Title.Alignment = taRightJustify
                Title.Caption = 'Desc.'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITETOTAL'
                Title.Alignment = taRightJustify
                Title.Caption = 'Total'
                Width = 55
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 0
            Top = 289
            Width = 753
            Height = 40
            Align = alBottom
            TabOrder = 10
            object Label5: TLabel
              Left = 5
              Top = 3
              Width = 40
              Height = 16
              Caption = 'Produto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 112
              Top = 3
              Width = 54
              Height = 16
              Caption = 'Sit. Trib.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 515
              Top = 3
              Width = 30
              Height = 16
              Caption = 'Desc.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btnproduto: TRxSpeedButton
              Left = 86
              Top = 16
              Width = 23
              Height = 21
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
              OnClick = btnprodutoClick
            end
            object Label1: TLabel
              Left = 180
              Top = 3
              Width = 39
              Height = 16
              Caption = 'B.Calc.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 313
              Top = 3
              Width = 29
              Height = 16
              Caption = 'Pre'#231'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label34: TLabel
              Left = 246
              Top = 3
              Width = 38
              Height = 16
              Caption = 'Quant.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label35: TLabel
              Left = 446
              Top = 3
              Width = 18
              Height = 16
              Caption = 'IPI'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label36: TLabel
              Left = 379
              Top = 3
              Width = 32
              Height = 16
              Caption = 'ICMS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object txtproduto: TWSEdit
              Left = 5
              Top = 19
              Width = 80
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
              OnKeyDown = txtcodfornecedorKeyDown
              ColorOnFocus = clBlack
              ColorOnNotFocus = clGray
            end
            object ToolBarItem: TToolBar
              Left = 682
              Top = 1
              Width = 70
              Height = 38
              Align = alRight
              BorderWidth = 2
              ButtonHeight = 30
              ButtonWidth = 31
              Caption = 'ToolBarItem'
              EdgeBorders = []
              Flat = True
              Images = DM.ImageList
              TabOrder = 8
              object btnsalvaritem: TToolButton
                Left = 0
                Top = 0
                Hint = 'Salvar'
                Caption = 'btnsalvaritem'
                ImageIndex = 14
                ParentShowHint = False
                ShowHint = True
                OnClick = btnsalvaritemClick
              end
              object btnexcluiritem: TToolButton
                Left = 31
                Top = 0
                Hint = 'Excluir'
                Caption = 'btnexcluiritem'
                ImageIndex = 5
                ParentShowHint = False
                ShowHint = True
                OnClick = btnexcluiritemClick
              end
            end
            object txtsittrib: TWSEdit
              Left = 110
              Top = 19
              Width = 65
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
              OnExit = txtsittribExit
              OnKeyDown = txtcodfornecedorKeyDown
              ColorOnFocus = clBlack
              ColorOnNotFocus = clGray
            end
            object txtdesc: TWSEdit
              Left = 512
              Top = 19
              Width = 58
              height = 17
              BevelInner = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              TabOrder = 7
              OnExit = txtsittribExit
              OnKeyDown = txtcodfornecedorKeyDown
              OnKeyPress = txtdescKeyPress
              ColorOnFocus = clBlack
              ColorOnNotFocus = clGray
            end
            object txtbasecalc: TWSEdit
              Left = 177
              Top = 19
              Width = 65
              height = 17
              BevelInner = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              TabOrder = 2
              OnEnter = txtbasecalcEnter
              OnKeyDown = txtcodfornecedorKeyDown
              ColorOnFocus = clBlack
              ColorOnNotFocus = clGray
            end
            object txtpreco: TWSEdit
              Left = 311
              Top = 19
              Width = 65
              height = 17
              BevelInner = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              TabOrder = 4
              OnExit = txtsittribExit
              OnKeyDown = txtcodfornecedorKeyDown
              ColorOnFocus = clBlack
              ColorOnNotFocus = clGray
            end
            object txtquant: TWSEdit
              Left = 244
              Top = 19
              Width = 65
              height = 17
              BevelInner = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              TabOrder = 3
              OnExit = txtsittribExit
              OnKeyDown = txtcodfornecedorKeyDown
              ColorOnFocus = clBlack
              ColorOnNotFocus = clGray
            end
            object txtipi: TWSEdit
              Left = 445
              Top = 19
              Width = 65
              height = 17
              BevelInner = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              TabOrder = 6
              OnExit = txtsittribExit
              OnKeyDown = txtcodfornecedorKeyDown
              ColorOnFocus = clBlack
              ColorOnNotFocus = clGray
            end
            object txticms: TWSEdit
              Left = 378
              Top = 19
              Width = 65
              height = 17
              BevelInner = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              TabOrder = 5
              OnExit = txtsittribExit
              OnKeyDown = txtcodfornecedorKeyDown
              ColorOnFocus = clBlack
              ColorOnNotFocus = clGray
            end
          end
          object txtdados: TWSDBEdit
            Left = 90
            Top = 29
            Width = 495
            DataField = 'fornecedordados'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            TabOrder = 2
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
        end
        object TabSheet1: TTabSheet
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ImageIndex = 5
          ParentFont = False
          object Label17: TLabel
            Left = 2
            Top = 10
            Width = 54
            Height = 16
            Caption = 'Sub Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 200
            Top = 10
            Width = 32
            Height = 16
            Caption = 'ICMS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 380
            Top = 10
            Width = 18
            Height = 16
            Caption = 'IPI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 2
            Top = 30
            Width = 73
            Height = 16
            Caption = 'ICMS Subst.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 200
            Top = 30
            Width = 29
            Height = 16
            Caption = 'Frete'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 380
            Top = 30
            Width = 97
            Height = 16
            Caption = 'ICMS Sob Frete.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 2
            Top = 50
            Width = 37
            Height = 16
            Caption = 'Seguro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 200
            Top = 50
            Width = 71
            Height = 16
            Caption = 'Outras Desp.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 380
            Top = 50
            Width = 48
            Height = 16
            Caption = 'Desconto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 1
            Top = 70
            Width = 88
            Height = 16
            Caption = 'Valor Base Calc.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 200
            Top = 70
            Width = 61
            Height = 16
            Caption = 'Taxa Juros'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 380
            Top = 70
            Width = 91
            Height = 16
            Caption = 'Valor Total Nota'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 2
            Top = 112
            Width = 66
            Height = 16
            Caption = 'Forma Pgto.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnforma: TRxSpeedButton
            Left = 191
            Top = 109
            Width = 23
            Height = 20
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
            OnClick = btnformaClick
          end
          object Label31: TLabel
            Left = 2
            Top = 132
            Width = 41
            Height = 16
            Caption = 'Entrada'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btnbanco: TRxSpeedButton
            Left = 191
            Top = 87
            Width = 23
            Height = 20
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
            OnClick = btnbancoClick
          end
          object Label32: TLabel
            Left = 2
            Top = 90
            Width = 31
            Height = 16
            Caption = 'Banco'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label37: TLabel
            Left = 378
            Top = 132
            Width = 99
            Height = 16
            Caption = 'T'#237'tulo Cont. Pagar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 488
            Top = 132
            Width = 48
            Height = 16
            AutoSize = True
            DataField = 'NOTCONTPAGAR'
            DataSource = DataSource
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 202
            Top = 132
            Width = 122
            Height = 16
            Caption = 'Aut. Cont. Pag. (S/N)'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object WSDBEdit7: TWSDBEdit
            Left = 90
            Top = 9
            Width = 100
            DataField = 'NOTSUBTOTAL'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            TabOrder = 0
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit8: TWSDBEdit
            Left = 275
            Top = 9
            Width = 100
            DataField = 'NOTICMS'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            TabOrder = 1
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit9: TWSDBEdit
            Left = 485
            Top = 9
            Width = 100
            DataField = 'NOTIPI'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            TabOrder = 2
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit10: TWSDBEdit
            Left = 90
            Top = 29
            Width = 100
            DataField = 'NOTICMSSUBST'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 3
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit11: TWSDBEdit
            Left = 275
            Top = 29
            Width = 100
            DataField = 'NOTFRETE'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 4
            OnExit = WSDBEdit11Exit
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit12: TWSDBEdit
            Left = 485
            Top = 29
            Width = 100
            DataField = 'NOTICMSFRETE'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 5
            OnExit = WSDBEdit11Exit
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit13: TWSDBEdit
            Left = 90
            Top = 49
            Width = 100
            DataField = 'NOTSEGURO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 6
            OnExit = WSDBEdit11Exit
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit14: TWSDBEdit
            Left = 275
            Top = 49
            Width = 100
            DataField = 'NOTOUTRASDESP'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 7
            OnExit = WSDBEdit11Exit
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit15: TWSDBEdit
            Left = 485
            Top = 49
            Width = 100
            DataField = 'NOTDESCONTO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            TabOrder = 8
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit16: TWSDBEdit
            Left = 90
            Top = 69
            Width = 100
            DataField = 'NOTVALORBASECALC'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            TabOrder = 9
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit17: TWSDBEdit
            Left = 275
            Top = 69
            Width = 100
            DataField = 'NOTTAXAJURO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 10
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit18: TWSDBEdit
            Left = 485
            Top = 69
            Width = 100
            DataField = 'NOTTOTAL'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            TabOrder = 11
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtcodforma: TWSDBEdit
            Left = 90
            Top = 111
            Width = 100
            DataField = 'NOTPLANOPGTO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 14
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtforma: TWSDBEdit
            Left = 215
            Top = 111
            Width = 370
            DataField = 'planopgto'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 15
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object WSDBEdit21: TWSDBEdit
            Left = 90
            Top = 131
            Width = 100
            DataField = 'NOTENTRADA'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 16
            OnExit = WSDBEdit21Exit
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtcodbanco: TWSDBEdit
            Left = 90
            Top = 89
            Width = 100
            DataField = 'NOTBANCO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 12
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object txtbanco: TWSDBEdit
            Left = 215
            Top = 89
            Width = 370
            DataField = 'banco'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 13
            OnKeyDown = txtcodfornecedorKeyDown
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
          object DBGrid3: TDBGrid
            Left = 0
            Top = 160
            Width = 753
            Height = 169
            TabStop = False
            Align = alBottom
            DataSource = DM.DSVctoNotaEnt
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 17
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clTeal
            TitleFont.Height = -11
            TitleFont.Name = 'Comic Sans MS'
            TitleFont.Style = [fsBold]
            OnKeyDown = txtpesquisaKeyDown
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VCTODATA'
                Title.Alignment = taCenter
                Title.Caption = 'Vencimento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VCTOVALOR'
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor'
                Visible = True
              end>
          end
          object txtatucontpag: TWSDBEdit
            Left = 336
            Top = 131
            Width = 38
            CharCase = ecUpperCase
            DataField = 'NOTATUCONTPAGAR'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -11
            Font.Name = 'Comic Sans MS'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            TabOrder = 18
            OnExit = WSDBEdit21Exit
            OnKeyDown = txtcodfornecedorKeyDown
            EnterClicar = True
            ColorOnFocus = clBlack
            ColorOnNotFocus = clGray
          end
        end
      end
    end
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 30
    Width = 769
    Height = 43
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object lblpesq: TLabel
      Left = 179
      Top = 24
      Width = 26
      Height = 16
      Caption = 'Nota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 10
      Top = 6
      Width = 63
      Height = 16
      Caption = 'Data Inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 10
      Top = 25
      Width = 55
      Height = 16
      Caption = 'Data Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtpesquisa: TWSEdit
      Left = 248
      Top = 23
      Width = 121
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
    object txtfiltrofinal: TWSMaskEdit
      Left = 80
      Top = 23
      Width = 80
      height = 17
      BevelInner = bvNone
      EditMask = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      ParentShowHint = False
      TabOrder = 2
      Text = '  /  /    '
      OnKeyDown = txtpesquisaKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtfiltroinicial: TWSMaskEdit
      Left = 80
      Top = 4
      Width = 81
      height = 17
      BevelInner = bvNone
      EditMask = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      ParentShowHint = False
      TabOrder = 1
      Text = '  /  /    '
      OnKeyDown = txtpesquisaKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
  end
  object panimpressao: TPanel
    Left = 218
    Top = 274
    Width = 161
    Height = 140
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 3
    Visible = False
    object Image1: TImage
      Left = 5
      Top = 32
      Width = 100
      Height = 106
      AutoSize = True
      Picture.Data = {
        07544269746D61706E7C0000424D6E7C00000000000036000000280000006400
        00006A0000000100180000000000387C0000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFEFEFEFEFEFEFE7E7E7E7E7E7EFEFEF
        F7F3F7F7F3F7F7F3F7E7DFDED6CFCEB5B2ADA5A2A5A5A2A5B5B2ADD6CFCEE7DF
        DEEFEFEFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFFFFFFFFFFBFFF7F3F7E7DFDED6CFCE
        BDBAB5BDBAB5BDBAB5CEC7C6D6CFCEDED7D6CEC7C6BDBAB5A5A2A58C8A847B75
        737B7D7B84827BA5A2A5BDBAB5D6CFCEE7E7E7FFFBFFFFFBFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBFFE7E7E7
        E7DFDED6CFCEC6BEBDA5A2A59C96948C8A84948E8C948E8C9C9E9C9C9694948E
        8C8C8A8484827B84827B948E8C8C8A848C8A848C8A849C9E9CBDBAB5CEC7C6DE
        D7D6E7E7E7F7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFBFFF7F3F7E7DFDECEC7C6B5B2ADA5A2A59C96948C8A8473716B6B6D636B6D
        6373716B73716B7B75737B75737B7D7B84827B9C9E9CADAAADADAAAD9C9E9C94
        8E8C948E8CA5A2A5ADAAADB5B2ADC6BEBDE7DFDEEFEFEFFFFBFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEFEFEFE7E7E7DED7D6C6BEBDA5A2A5948E8C7B75737371
        6B6B6D636B656363615A63615A63615A6B6D637B75738C8A849C9694B5B2ADCE
        C7C6DED7D6DED7D6D6CFCEB5B2ADA5A2A59C9694948E8C8C8A84A5A2A5BDBAB5
        D6CFCEE7DFDEF7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFF7F3F7F7F3F7EFEFEFDED7D6BDBAB5ADAAAD9C96
        948C8A8473716B6B6D636B65636B656363615A63615A5A59526B656373716B8C
        8A84A5A2A5C6BEBDDED7D6E7E7E7EFEFEFF7F3F7E7E7E7DED7D6C6BEBDADAAAD
        948E8C8C8A848C8A849C9E9CA5A2A5BDBAB5D6CFCEE7E7E7F7F3F7FFFBFFFFFB
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBFFF7F3F7F7F3F7EFEFEFF7
        F3F7EFEFEFF7F3F7F7F3F7FFFBFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFEFEFEFE7DFDED6CF
        CEB5B2AD9C969484827B7B757373716B73716B6B6D6373716B6B6D636B6D636B
        6D637B757384827B9C9E9CB5B2ADDED7D6E7E7E7F7F3F7F7F3F7FFFBFFFFFBFF
        F7F3F7EFEFEFE7E7E7D6CFCEBDBAB59C9E9C948E8C8C8A848C8A84948E8CADAA
        ADC6BEBDDED7D6E7E7E7F7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF
        EFEFE7E7E7D6CFCECEC7C6CEC7C6D6CFCED6CFCEE7DFDEEFEFEFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFEFEFEFDED7D6C6BEBDA5A2A5948E8C7B7D7B7B75736B6D636B6D636B6D6373
        716B73716B7B75737B7D7B8C8A849C9694ADAAADC6BEBDDED7D6E7E7E7EFEFEF
        EFEFEFF7F3F7F7F3F7FFFBFFF7F3F7FFFBFFEFEFEFE7E7E7D6CFCEC6BEBDA5A2
        A59C96948C8A848C8A84948E8C9C9E9CADAAADC6BEBDD6CFCEE7E7E7F7F3F7F7
        F3F7F7F3F7F7F3F7E7E7E7DED7D6BDBAB5ADAAADA5A2A5ADAAADADAAADB5B2AD
        CEC7C6E7DFDEE7E7E7F7F3F7F7F3F7FFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFBFFF7F3F7E7DFDEC6BEBD9C9E9C8C8A847B75737B757373
        716B7B757373716B7B75737B75737B7D7B84827B9C9E9CB5B2ADCEC7C6DED7D6
        E7E7E7E7E7E7E7E7E7E7DFDEE7DFDEE7DFDEE7E7E7EFEFEFF7F3F7F7F3F7F7F3
        F7EFEFEFEFEFEFE7E7E7DED7D6C6BEBDADAAAD9C96948C8A8484827B8C8A849C
        9694ADAAADCEC7C6E7DFDEDED7D6DED7D6D6CFCECEC7C6B5B2AD9C9E9C8C8A84
        948E8C9C96949C9E9CA5A2A5BDBAB5C6BEBDD6CFCED6CFCEE7DFDEE7E7E7F7F3
        F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBFFE7E7E7CEC7C6A5A2A594
        8E8C7B75737B757373716B7B75737B75737B7D7B7B7D7B8C8A84948E8CADAAAD
        C6BEBDDED7D6E7DFDEE7E7E7DED7D6DED7D6C6BEBDBDBAB5B5B2ADBDBAB5BDBA
        B5D6CFCEDED7D6E7E7E7E7E7E7EFEFEFEFEFEFEFEFEFE7E7E7E7DFDECEC7C6B5
        B2AD9C9E9C948E8C84827B84827B8C8A849C9E9CA5A2A5ADAAADA5A2A5A5A2A5
        9C9E9C9C9694948E8C8C8A848C8A849C96949C9E9CADAAADADAAADB5B2ADADAA
        ADB5B2ADB5B2ADCEC7C6DED7D6EFEFEFEFEFEFFFFBFFFFFBFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7
        F3F7DED7D6B5B2AD9C96947B7D7B7B75737B75737B75737B757384827B8C8A84
        9C9694A5A2A5BDBAB5D6CFCEE7E7E7EFEFEFEFEFEFDED7D6CEC7C6B5B2ADA5A2
        A59C9E9C9C96949C96949C9E9CADAAADC6BEBDDED7D6E7E7E7E7E7E7EFEFEFEF
        EFEFF7F3F7EFEFEFE7E7E7DED7D6C6BEBDA5A2A59C969484827B84827B84827B
        84827B84827B84827B84827B8C8A848C8A84948E8C948E8C9C96949C9E9CADAA
        ADB5B2ADBDBAB5ADAAADADAAAD9C9E9C9C9E9CADAAADCEC7C6D6CFCEE7DFDEE7
        E7E7F7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFFEFEFEFCEC7C6A5A2A584827B7B7D7B7B75737B7573
        7B7D7B84827B8C8A849C9E9CB5B2ADD6CFCEDED7D6E7E7E7E7E7E7E7DFDECEC7
        C6C6BEBDADAAADA5A2A5948E8C948E8C8C8A848C8A848C8A849C9694A5A2A5C6
        BEBDD6CFCEE7DFDEE7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7DED7D6CEC7C6
        BDBAB5A5A2A58C8A8484827B7B757373716B73716B7B75737B7D7B8C8A84948E
        8C9C96949C9694A5A2A5B5B2ADC6BEBDBDBAB5BDBAB5B5B2ADADAAADA5A2A5AD
        AAADADAAADADAAADB5B2ADCEC7C6DED7D6E7E7E7EFEFEFFFFBFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7E7DFDEC6BEBD9C9694
        84827B7B7D7B7B7D7B84827B948E8C9C9694ADAAADBDBAB5DED7D6E7E7E7F7F3
        F7EFEFEFE7DFDECEC7C6BDBAB5ADAAADA5A2A59C9E9C9C9694948E8C948E8C8C
        8A848C8A848C8A849C9694ADAAADCEC7C6DED7D6E7DFDEE7DFDEE7DFDEE7DFDE
        E7E7E7E7E7E7E7E7E7E7DFDEDED7D6C6BEBDADAAAD948E8C84827B7B75737B75
        737B757384827B8C8A849C96949C9E9CA5A2A5A5A2A5BDBAB5C6BEBDCEC7C6C6
        BEBDCEC7C6C6BEBDCEC7C6BDBAB5BDBAB5A5A2A5A5A2A5B5B2ADC6BEBDCEC7C6
        E7DFDEEFEFEFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E7DFDEC6BEBD9C9E9C948E8C7B7D7B84827B84827B9C9694A5A2A5BDBAB5D6CF
        CEE7E7E7EFEFEFF7F3F7E7E7E7DED7D6C6BEBDB5B2ADA5A2A5A5A2A5A5A2A5AD
        AAADADAAADADAAAD9C9E9C9C9E9C9C9694948E8C948E8C9C9E9CADAAADD6CFCE
        DED7D6DED7D6DED7D6DED7D6DED7D6DED7D6DED7D6E7DFDEE7DFDEDED7D6CEC7
        C6BDBAB59C9E9C948E8C84827B84827B84827B948E8C9C96949C9E9C9C9E9CAD
        AAADBDBAB5CEC7C6CEC7C6D6CFCED6CFCEE7DFDEE7DFDEE7DFDED6CFCEBDBAB5
        ADAAADADAAADADAAADADAAADB5B2ADCEC7C6E7DFDEEFEFEFEFEFEFFFFBFFFFFB
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCEC7C6A5A2A5948E8C84827B8C8A84948E8CA5A2
        A5B5B2ADCEC7C6DED7D6EFEFEFF7F3F7F7F3F7E7E7E7DED7D6C6BEBDB5B2ADA5
        A2A5A5A2A5ADAAADB5B2ADB5B2ADBDBAB5B5B2ADADAAADA5A2A5A5A2A59C9694
        948E8C948E8C9C9E9CB5B2ADCEC7C6D6CFCEDED7D6D6CFCED6CFCED6CFCEDED7
        D6DED7D6E7DFDEE7DFDEE7DFDECEC7C6BDBAB5A5A2A59C96948C8A848C8A8494
        8E8C9C9E9C9C9E9CA5A2A5ADAAADC6BEBDCEC7C6D6CFCED6CFCEE7DFDEE7E7E7
        FFFBFFF7F3F7EFEFEFDED7D6CEC7C6C6BEBDBDBAB5A5A2A5ADAAADB5B2ADCEC7
        C6D6CFCEDED7D6E7DFDEF7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADAAAD948E8C7B7D
        7B84827B948E8CADAAADC6BEBDE7DFDEEFEFEFF7F3F7F7F3F7F7F3F7E7DFDED6
        CFCEB5B2ADA5A2A59C9E9CA5A2A5A5A2A5B5B2ADB5B2ADBDBAB5B5B2ADB5B2AD
        ADAAADADAAAD9C9E9C9C9694948E8C948E8C8C8A849C9694A5A2A5BDBAB5C6BE
        BDD6CFCED6CFCED6CFCECEC7C6CEC7C6CEC7C6D6CFCED6CFCED6CFCECEC7C6B5
        B2AD9C9E9C948E8C8C8A849C96949C9694A5A2A5A5A2A5B5B2ADC6BEBDD6CFCE
        CEC7C6D6CFCEDED7D6E7E7E7F7F3F7FFFBFFFFFBFFFFFBFFEFEFEFE7E7E7D6CF
        CEC6BEBDB5B2ADB5B2ADADAAADADAAADB5B2ADC6BEBDDED7D6E7E7E7EFEFEFFF
        FBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF9C9E9C948E8C948E8C9C9E9CBDBAB5D6CFCEE7E7E7EFEFEFFFFBFFFF
        FBFFF7F3F7E7E7E7D6CFCEB5B2ADA5A2A59C9E9CA5A2A5A5A2A5ADAAADADAAAD
        B5B2ADB5B2ADBDBAB5B5B2ADADAAADA5A2A59C9E9C9C96949C96948C8A848C8A
        847B7D7B948E8C9C9E9CB5B2ADC6BEBDCEC7C6CEC7C6CEC7C6C6BEBDC6BEBDC6
        BEBDC6BEBDBDBAB5B5B2ADA5A2A59C9E9C9C96949C96949C9E9CA5A2A5A5A2A5
        ADAAADB5B2ADC6BEBDCEC7C6D6CFCED6CFCEE7DFDEE7E7E7FFFBFFFFFBFFFFFF
        FFFFFBFFFFFBFFF7F3F7EFEFEFE7DFDED6CFCEC6BEBDBDBAB5ADAAADADAAADB5
        B2ADC6BEBDCEC7C6DED7D6E7DFDEF7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9E9C9C9E9CB5B2ADCEC7C6E7DFDEEF
        EFEFF7F3F7FFFBFFF7F3F7FFFBFFE7E7E7D6CFCEB5B2AD9C9E9C9C96949C9E9C
        9C9E9CADAAAD9C9E9CA5A2A5A5A2A5B5B2ADB5B2ADB5B2ADA5A2A59C9E9C948E
        8C948E8C948E8C948E8C84827B7B75737B75738C8A849C9694ADAAADB5B2ADBD
        BAB5BDBAB5BDBAB5B5B2ADADAAAD9C9E9C9C9694948E8C9C96949C96949C9E9C
        9C9E9CA5A2A5A5A2A5ADAAADADAAADB5B2ADC6BEBDD6CFCED6CFCEDED7D6DED7
        D6E7E7E7EFEFEFF7F3F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFBFFEFEFEFE7
        E7E7D6CFCEC6BEBDB5B2ADADAAADADAAADADAAADB5B2ADCEC7C6E7DFDEEFEFEF
        EFEFEFFFFBFFFFFBFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEC7C6CE
        C7C6DED7D6E7E7E7F7F3F7F7F3F7FFFBFFFFFBFFFFFBFFF7F3F7E7E7E7C6BEBD
        ADAAAD948E8C948E8C9C96949C9E9C9C9E9C9C9E9C9C9E9CA5A2A5B5B2ADC6BE
        BDB5B2ADA5A2A59C96949C96949C96949C9E9C9C96949C96948C8A848C8A848C
        8A84948E8C948E8C9C9E9C9C9E9CA5A2A5A5A2A59C9E9C9C9694948E8C8C8A84
        8C8A848C8A84948E8C948E8C9C96949C9E9CADAAADADAAADB5B2ADB5B2ADCEC7
        C6D6CFCED6CFCED6CFCEE7DFDEE7E7E7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFFF
        FBFFFFFFFFFFFBFFFFFBFFF7F3F7EFEFEFE7DFDEDED7D6CEC7C6BDBAB5ADAAAD
        ADAAADADAAADC6BEBDCEC7C6D6CFCEE7DFDEF7F3F7FFFBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFF7F3F7F7F3F7FFFBFFF7F3F7F7F3F7
        F7F3F7F7F3F7E7DFDEC6BEBDA5A2A5948E8C948E8C9C96949C96949C9E9C9C96
        949C96949C9694ADAAADBDBAB5B5B2AD9C9E9C9C9694948E8C9C9E9C9C9E9CA5
        A2A5A5A2A5A5A2A59C9E9C9C96948C8A8484827B7B7D7B84827B84827B8C8A84
        84827B84827B7B7D7B84827B84827B84827B84827B8C8A84948E8C9C9E9CA5A2
        A5B5B2ADB5B2ADBDBAB5CEC7C6DED7D6D6CFCEDED7D6DED7D6E7E7E7F7F3F7F7
        F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFBFF
        F7F3F7EFEFEFD6CFCEC6BEBDADAAADADAAADADAAADADAAADADAAADCEC7C6DED7
        D6EFEFEFF7F3F7FFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF7F3F7EFEFEFE7E7E7
        F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7EFEFEFE7E7E7D6CFCEBDBAB59C9E9C9C96
        94948E8C948E8C948E8C948E8C948E8C948E8C948E8C9C9E9C9C9E9CA5A2A59C
        9E9CA5A2A5A5A2A5B5B2ADADAAADB5B2ADB5B2ADBDBAB5B5B2ADA5A2A58C8A84
        7B7D7B73716B73716B6B6D6373716B7B75737B7D7B7B7D7B8C8A8484827B8482
        7B84827B948E8C9C9E9CADAAADB5B2ADBDBAB5C6BEBDD6CFCEDED7D6DED7D6DE
        D7D6E7E7E7E7E7E7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7
        FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFF7F3F7F7F3F7E7E7E7E7DFDED6CFCEC6BE
        BDADAAADADAAADB5B2ADC6BEBDC6BEBDD6CFCEDED7D6E7E7E7F7F3F7FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFF7F3F7EFEFEFEFEFEFE7E7E7EFEFEFEFEFEFF7F3F7EFEFEFEFEFEFE7E7
        E7E7DFDECEC7C6BDBAB5A5A2A59C9E9C9C96949C96949C96949C9694948E8C94
        8E8C948E8C9C96949C9E9CA5A2A5ADAAADB5B2ADB5B2ADBDBAB5BDBAB5BDBAB5
        BDBAB5BDBAB59C9E9C8C8A8473716B6B656363615A6B65636B656373716B7B75
        737B7D7B84827B84827B7B7D7B84827B948E8CA5A2A5ADAAADBDBAB5B5B2ADC6
        BEBDD6CFCEDED7D6DED7D6E7DFDEE7DFDEEFEFEFEFEFEFF7F3F7EFEFEFF7F3F7
        EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFFFFBFFFFFBFFFFFB
        FFFFFBFFF7F3F7EFEFEFDED7D6CEC7C6B5B2ADB5B2ADB5B2ADADAAADA5A2A5B5
        B2ADC6BEBDE7DFDEF7F3F7FFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFF7F3F7E7E7E7E7E7
        E7E7E7E7EFEFEFEFEFEFF7F3F7EFEFEFE7E7E7DED7D6D6CFCEC6BEBDBDBAB5B5
        B2ADB5B2ADB5B2ADB5B2ADADAAADB5B2ADA5A2A5A5A2A5A5A2A5B5B2ADB5B2AD
        BDBAB5BDBAB5C6BEBDBDBAB5B5B2ADA5A2A58C8A847B75736B6D636B65636B65
        636B65636B6D636B6D637B7D7B7B7D7B84827B7B7D7B84827B84827B9C9694AD
        AAADBDBAB5BDBAB5C6BEBDC6BEBDDED7D6DED7D6E7DFDEE7DFDEE7E7E7E7E7E7
        EFEFEFEFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7FFFB
        FFF7F3F7FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFF7F3F7F7F3F7EFEFEFE7E7E7D6
        CFCECEC7C6ADAAAD9C9E9C948E8C9C9E9CBDBAB5E7E7E7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFBFFF7F3F7E7E7E7E7E7E7E7E7E7EFEFEFEFEFEFEFEFEFE7E7E7E7
        E7E7E7DFDEDED7D6CEC7C6CEC7C6C6BEBDC6BEBDC6BEBDC6BEBDBDBAB5B5B2AD
        ADAAADADAAADADAAADB5B2ADB5B2ADBDBAB5B5B2ADADAAAD9C9E9C948E8C7B7D
        7B73716B6B6D636B6D636B65636B6D636B6D6373716B7B75737B7D7B7B7D7B84
        827B84827B948E8C9C9E9CB5B2ADBDBAB5BDBAB5BDBAB5CEC7C6D6CFCEE7DFDE
        DED7D6E7DFDEE7DFDEE7E7E7EFEFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7EFEF
        EFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFF
        FBFFFFFBFFFFFBFFF7F3F7EFEFEFDED7D6CEC7C6B5B2ADA5A2A59C9E9CB5B2AD
        D6CFCEF7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF7F3F7EFEFEFEFEFEFE7
        E7E7E7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7DFDEDED7D6D6CFCED6CFCECEC7C6
        D6CFCECEC7C6CEC7C6C6BEBDC6BEBDADAAADADAAADADAAADB5B2ADA5A2A5A5A2
        A59C9694948E8C84827B7B7D7B73716B73716B6B6D6373716B6B6D637B75737B
        75737B7D7B7B7D7B8C8A848C8A849C9694A5A2A5B5B2ADBDBAB5C6BEBDC6BEBD
        CEC7C6CEC7C6DED7D6E7DFDEE7DFDEE7DFDEE7E7E7E7E7E7EFEFEFEFEFEFEFEF
        EFEFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7
        F3F7FFFBFFF7F3F7FFFBFFF7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFBFFEFEFEF
        EFEFEFDED7D6D6CFCECEC7C6D6CFCECEC7C6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFBFFFFFBFFF7F3F7EFEFEFE7E7E7E7E7E7E7E7E7EFEFEFE7E7E7E7E7E7
        E7DFDEE7DFDEDED7D6D6CFCECEC7C6CEC7C6CEC7C6CEC7C6BDBAB5B5B2AD9C9E
        9C9C9E9C9C96949C96948C8A848C8A847B7D7B7B757373716B73716B6B6D6373
        716B6B6D6373716B73716B7B7D7B84827B948E8C948E8C9C9E9CA5A2A5B5B2AD
        BDBAB5C6BEBDC6BEBDC6BEBDC6BEBDD6CFCEDED7D6E7DFDEE7DFDEE7E7E7E7DF
        DEE7E7E7E7E7E7EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF7F3F7EFEFEFF7
        F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFF
        F7F3F7FFFBFFFFFBFFFFFBFFF7F3F7F7F3F7E7E7E7DED7D6C6BEBDBDBAB5FFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7F7F3F7EFEFEF
        EFEFEFE7E7E7E7DFDEDED7D6E7E7E7E7E7E7E7DFDED6CFCED6CFCECEC7C6CEC7
        C6C6BEBDBDBAB5ADAAAD9C9E9C948E8C8C8A8484827B84827B7B75737B757373
        716B73716B73716B73716B73716B73716B7B75737B7D7B84827B9C96949C9E9C
        ADAAADB5B2ADC6BEBDC6BEBDC6BEBDC6BEBDCEC7C6CEC7C6CEC7C6D6CFCEE7DF
        DEE7DFDEE7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEF
        EFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7
        FFFBFFF7F3F7FFFBFFFFFBFFFFFBFFF7F3F7FFFBFFFFFBFFFFFBFFFFFBFFF7F3
        F7DED7D6CEC7C6BDBAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFBFFF7F3F7F7F3F7E7E7E7D6CFCEBDBAB5B5B2ADC6BEBDDED7D6E7DF
        DEE7DFDEDED7D6D6CFCEBDBAB5B5B2ADA5A2A59C9E9C948E8C8C8A8484827B84
        827B7B7D7B7B7D7B7B75737B757373716B7B757373716B7B75737B757384827B
        8C8A849C9694A5A2A5B5B2ADB5B2ADC6BEBDBDBAB5C6BEBDC6BEBDCEC7C6C6BE
        BDCEC7C6CEC7C6D6CFCEDED7D6E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EF
        EFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF7F3F7EFEFEFF7F3F7
        EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7FFFBFFF7F3
        F7FFFBFFFFFBFFFFFBFFEFEFEFE7DFDECEC7C6BDBAB5FFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFE7E7E7C6BEBDA5A2
        A59C9694ADAAADBDBAB5DED7D6E7DFDEE7DFDED6CFCEB5B2AD9C9E9C9C969494
        8E8C8C8A8484827B8C8A8484827B84827B7B7D7B7B7D7B7B75737B7D7B7B7573
        7B7D7B7B7D7B8C8A84948E8CA5A2A5ADAAADBDBAB5BDBAB5C6BEBDC6BEBDCEC7
        C6C6BEBDCEC7C6CEC7C6D6CFCECEC7C6D6CFCEDED7D6E7DFDEE7E7E7EFEFEFE7
        E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEF
        F7F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3
        F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFBFFFFFBFFF7F3F7E7E7E7D6CFCEBD
        BAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFBFFE7DFDEB5B2AD948E8C8C8A84948E8CA5A2A5ADAAADBDBAB5BDBAB5B5
        B2ADA5A2A5A5A2A59C9694948E8C84827B84827B7B7D7B84827B7B7D7B84827B
        7B7D7B7B7D7B7B7D7B84827B8C8A849C96949C9E9CADAAADB5B2ADBDBAB5BDBA
        B5C6BEBDC6BEBDCEC7C6CEC7C6CEC7C6CEC7C6D6CFCECEC7C6D6CFCED6CFCEDE
        D7D6E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEF
        E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFF7F3F7EFEF
        EFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7FF
        FBFFEFEFEFE7E7E7CEC7C6BDBAB5FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFE7DFDEADAAAD948E8C84827B948E8C9C
        96949C96949C96949C96949C96949C9E9C9C96949C9694948E8C948E8C84827B
        84827B7B7D7B84827B7B7D7B84827B84827B8C8A84948E8C9C9E9CA5A2A5BDBA
        B5BDBAB5C6BEBDC6BEBDCEC7C6CEC7C6CEC7C6CEC7C6D6CFCED6CFCED6CFCED6
        CFCEDED7D6D6CFCEDED7D6DED7D6E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7
        E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7
        F3F7FFFBFFF7F3F7FFFBFFF7F3F7F7F3F7E7E7E7D6CFCEBDBAB5FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFF7F3F7D6CFCEAD
        AAAD8C8A8484827B948E8C9C9694948E8C8C8A847B75737B75737B7D7B8C8A84
        948E8C9C96949C9694948E8C8C8A8484827B7B7D7B7B7D7B84827B948E8C9C96
        94A5A2A5ADAAADBDBAB5BDBAB5C6BEBDC6BEBDCEC7C6C6BEBDCEC7C6CEC7C6D6
        CFCECEC7C6D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6E7DFDEE7DFDEE7E7E7
        E7E7E7EFEFEFE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7
        E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF7
        F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFEFEFEFE7E7E7
        CEC7C6BDBAB5FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFEFEFEFD6CFCEA5A2A5948E8C8C8A849C96949C96949C969484827B
        73716B6B656373716B7B757384827B8C8A84948E8C948E8C948E8C8C8A848C8A
        848C8A849C96949C9E9CADAAADB5B2ADBDBAB5C6BEBDC6BEBDC6BEBDCEC7C6CE
        C7C6CEC7C6CEC7C6D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6
        DED7D6DED7D6E7DFDEE7E7E7EFEFEFE7E7E7EFEFEFE7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7
        FFFBFFF7F3F7F7F3F7E7DFDED6CFCEBDBAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFEFEFEFCEC7C6A5A2A5948E8C948E8C
        9C96949C9E9C9C96948C8A846B6D636B656363615A6B6D6373716B7B7D7B7B7D
        7B8C8A848C8A849C96949C96949C9E9CA5A2A5B5B2ADB5B2ADC6BEBDBDBAB5C6
        BEBDC6BEBDCEC7C6C6BEBDCEC7C6CEC7C6D6CFCED6CFCED6CFCED6CFCEDED7D6
        DED7D6DED7D6DED7D6DED7D6DED7D6DED7D6E7DFDEE7E7E7E7E7E7EFEFEFE7E7
        E7EFEFEFE7E7E7E7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFF7F3F7
        EFEFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7EFEFEFE7DFDECEC7C6BDBAB5FFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF
        CEC7C69C9E9C9C9694948E8C9C9E9CA5A2A5A5A2A58C8A8473716B6B65636B65
        636B656373716B73716B7B7D7B8C8A849C9E9CA5A2A5ADAAADADAAADBDBAB5BD
        BAB5C6BEBDC6BEBDCEC7C6C6BEBDCEC7C6CEC7C6D6CFCECEC7C6D6CFCED6CFCE
        DED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6E7DFDEDED7D6DED7D6DED7D6E7DF
        DEE7DFDEE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFE7E7E7E7E7E7E7DFDEE7E7E7E7
        DFDEE7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFE7E7E7
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF7F3F7EFEFEFF7F3F7F7F3F7EFEF
        EFE7DFDECEC7C6B5B2ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFEFEFEFCEC7C6A5A2A5948E8C948E8C9C9E9CADAAAD9C9E
        9C948E8C7B75736B6D636B65636B6D6373716B7B75737B7D7B9C9694A5A2A5B5
        B2ADB5B2ADBDBAB5BDBAB5C6BEBDC6BEBDCEC7C6C6BEBDCEC7C6CEC7C6D6CFCE
        D6CFCED6CFCED6CFCEDED7D6DED7D6DED7D6DED7D6DED7D6DED7D6DED7D6DED7
        D6DED7D6DED7D6DED7D6DED7D6E7DFDEE7E7E7EFEFEFE7E7E7EFEFEFE7E7E7E7
        E7E7E7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFF7F3F7E7E7E7E7DFDECEC7C6BDBAB5FFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFEFEFEFD6CFCEA5A2A59C96
        94948E8CA5A2A5ADAAADA5A2A59C96947B7D7B73716B73716B7B757384827B8C
        8A849C9694A5A2A5BDBAB5BDBAB5C6BEBDC6BEBDCEC7C6CEC7C6CEC7C6CEC7C6
        D6CFCECEC7C6D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6E7DF
        DEE7DFDEE7E7E7E7DFDEE7DFDEDED7D6E7DFDEDED7D6E7DFDEE7DFDEE7E7E7EF
        EFEFEFEFEFEFEFEFEFEFEFE7E7E7E7E7E7E7DFDEE7DFDEE7DFDEE7E7E7E7DFDE
        E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF7F3F7EFEFEFEFEFEFE7DFDECEC7C6BD
        BAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFB
        FFEFEFEFCEC7C6A5A2A5948E8C948E8C9C9E9CADAAADA5A2A59C9E9C84827B7B
        7D7B7B7D7B8C8A849C9694A5A2A5ADAAADBDBAB5BDBAB5C6BEBDC6BEBDCEC7C6
        C6BEBDCEC7C6CEC7C6D6CFCECEC7C6D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7
        D6DED7D6DED7D6DED7D6DED7D6E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEDED7D6DE
        D7D6DED7D6E7DFDEE7DFDEEFEFEFEFEFEFEFEFEFE7E7E7EFEFEFE7DFDEE7DFDE
        E7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFE7E7E7E7DFDECEC7C6BDBAB5FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCEC7C69C9E9C9C9694948E8CA5A2A5AD
        AAADB5B2ADA5A2A59C9694948E8C9C96949C9E9CADAAADB5B2ADBDBAB5C6BEBD
        CEC7C6C6BEBDCEC7C6CEC7C6D6CFCECEC7C6D6CFCED6CFCED6CFCED6CFCEDED7
        D6DED7D6DED7D6DED7D6E7DFDEDED7D6E7DFDEDED7D6DED7D6D6CFCED6CFCECE
        C7C6DED7D6E7DFDEE7DFDEDED7D6E7DFDEE7DFDEE7E7E7E7E7E7EFEFEFEFEFEF
        F7F3F7EFEFEFEFEFEFE7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7
        E7E7EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE7DFDECEC7C6B5B2ADFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFEFEFEFCEC7C6A5
        A2A5948E8C948E8CA5A2A5B5B2ADADAAADADAAAD9C9E9CA5A2A5A5A2A5B5B2AD
        BDBAB5C6BEBDC6BEBDC6BEBDC6BEBDCEC7C6CEC7C6CEC7C6CEC7C6D6CFCED6CF
        CED6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6E7DFDEDED7D6DED7D6D6CFCED6
        CFCEBDBAB5B5B2ADA5A2A5ADAAADB5B2ADD6CFCEDED7D6E7DFDEE7DFDEE7DFDE
        E7DFDEE7E7E7E7E7E7EFEFEFEFEFEFEFEFEFE7E7E7E7E7E7E7DFDEE7DFDEE7DF
        DEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7
        E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFE7E7E7E7DFDE
        CEC7C6BDBAB5FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBFFEFEFEFCEC7C69C9E9C9C9694948E8CADAAADB5B2ADBDBAB5B5B2AD
        BDBAB5BDBAB5C6BEBDBDBAB5C6BEBDC6BEBDCEC7C6CEC7C6D6CFCECEC7C6D6CF
        CED6CFCEDED7D6D6CFCEDED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6E7DFDEDE
        D7D6DED7D6CEC7C6C6BEBDADAAAD9C96947B7D7B7B75737B7573948E8CADAAAD
        D6CFCEE7DFDEE7E7E7E7DFDEE7E7E7E7E7E7EFEFEFEFEFEFF7F3F7EFEFEFF7F3
        F7E7E7E7E7E7E7E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7
        DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        EFEFEFEFEFEFE7E7E7DED7D6CEC7C6BDBAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFEFEFEFCEC7C6A5A2A5948E8C9C9694
        A5A2A5BDBAB5BDBAB5BDBAB5BDBAB5C6BEBDC6BEBDCEC7C6C6BEBDCEC7C6CEC7
        C6CEC7C6CEC7C6D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6DE
        D7D6DED7D6E7DFDEDED7D6D6CFCEC6BEBDB5B2AD9C96947B7D7B6B6D635A5952
        52514A5A59526B6D638C8A84B5B2ADDED7D6E7DFDEE7E7E7E7DFDEE7E7E7E7E7
        E7EFEFEFEFEFEFF7F3F7EFEFEFEFEFEFE7E7E7E7E7E7E7DFDEE7DFDEDED7D6E7
        DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7
        E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7E7DFDEC6BEBDBDBAB5FFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF
        CEC7C69C9E9C9C96949C9694ADAAADBDBAB5C6BEBDC6BEBDC6BEBDC6BEBDCEC7
        C6C6BEBDCEC7C6CEC7C6D6CFCED6CFCED6CFCED6CFCEDED7D6DED7D6DED7D6DE
        D7D6E7DFDEDED7D6E7DFDEDED7D6E7DFDEDED7D6D6CFCEBDBAB5A5A2A584827B
        6B6D635255524A4D424241394245424A4D425255526B65639C9694C6BEBDE7DF
        DEE7E7E7E7E7E7E7E7E7EFEFEFEFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7E7
        E7E7E7E7E7E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7E7DFDE
        E7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7E7E7
        E7DED7D6CEC7C6B5B2ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFEFEFEFCEC7C6A5A2A5948E8C9C9694ADAAADC6BEBDBDBA
        B5C6BEBDC6BEBDCEC7C6C6BEBDCEC7C6CEC7C6D6CFCECEC7C6D6CFCED6CFCEDE
        D7D6D6CFCEDED7D6DED7D6DED7D6DED7D6E7DFDEDED7D6E7DFDED6CFCEC6BEBD
        A5A2A5948E8C73716B63615A52514A42454242413942454242454252514A5251
        4A63615A7B7D7BADAAADD6CFCEEFEFEFE7E7E7E7E7E7E7E7E7EFEFEFEFEFEFF7
        F3F7EFEFEFF7F3F7F7F3F7EFEFEFE7E7E7E7DFDEDED7D6E7DFDEDED7D6E7DFDE
        E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7DF
        DEE7E7E7E7E7E7EFEFEFE7DFDEDED7D6C6BEBDBDBAB5FFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD6CFCEA5A2A59C96
        949C9694B5B2ADC6BEBDCEC7C6C6BEBDCEC7C6CEC7C6CEC7C6CEC7C6D6CFCED6
        CFCED6CFCED6CFCEDED7D6DED7D6DED7D6DED7D6E7DFDEDED7D6DED7D6DED7D6
        DED7D6CEC7C6BDBAB59C9E9C7B7D7B63615A52514A4245424245424245425251
        4A52514A5A59525A59525A595263615A7B7573948E8CCEC7C6E7E7E7EFEFEFE7
        E7E7EFEFEFEFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7EFEFEFE7E7E7
        E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7E7
        E7E7DFDEE7E7E7E7DFDEE7E7E7E7E7E7EFEFEFE7E7E7E7DFDED6CFCECEC7C6BD
        BAB5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFB
        FFEFEFEFCEC7C6A5A2A59C96949C9E9CADAAADCEC7C6CEC7C6CEC7C6CEC7C6CE
        C7C6CEC7C6D6CFCED6CFCED6CFCED6CFCEDED7D6DED7D6DED7D6DED7D6E7DFDE
        DED7D6DED7D6D6CFCECEC7C6B5B2AD9C96947B75736B656352514A4A4D424245
        4242454242454252514A5255525A59525A595263615A63615A6B6D6373716B84
        827BADAAADDED7D6E7DFDEEFEFEFE7E7E7EFEFEFEFEFEFF7F3F7F7F3F7FFFBFF
        F7F3F7FFFBFFF7F3F7EFEFEFE7E7E7E7DFDEDED7D6E7DFDEDED7D6E7DFDEDED7
        D6E7DFDEDED7D6E7DFDEE7DFDEE7E7E7E7DFDEE7DFDEE7DFDEE7E7E7E7DFDEE7
        E7E7DED7D6D6CFCEC6BEBDBDBAB5FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD6CFCEA5A2A59C9E9C9C9E9CBDBAB5CE
        C7C6D6CFCECEC7C6D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6
        E7DFDEDED7D6E7DFDEDED7D6DED7D6D6CFCEC6BEBDADAAAD8C8A846B65635251
        4A4241394241394241394A4D4252514A52555252555263615A63615A6B65636B
        65636B6D6373716B7B75737B7D7B9C9E9CBDBAB5E7DFDEEFEFEFEFEFEFEFEFEF
        F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFFFFBFFFFFBFFFFFBFFF7F3F7E7E7E7E7E7
        E7E7DFDEE7DFDEDED7D6E7DFDEDED7D6E7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7
        DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7DFDECEC7C6C6BEBDC6BEBDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFEFEFEFCEC7C6A5
        A2A59C96949C9E9CB5B2ADD6CFCECEC7C6D6CFCED6CFCED6CFCED6CFCEDED7D6
        DED7D6DED7D6DED7D6DED7D6DED7D6E7DFDEE7DFDEDED7D6C6BEBDADAAAD8C8A
        8473716B5A595252514A4241394245424245424A4D4252514A5255525A595263
        615A63615A6B65636B6D6373716B73716B7B75737B75737B7D7B8C8A84A5A2A5
        CEC7C6E7E7E7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7FFFBFFFFFBFFFFFBFFFFFB
        FFFFFBFFF7F3F7F7F3F7E7E7E7E7E7E7E7DFDEE7DFDEDED7D6DED7D6DED7D6E7
        DFDEDED7D6E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7D6CFCEC6BEBD
        C6BEBDCEC7C6FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFEFEFEFD6CFCEA5A2A59C96949C9E9CBDBAB5D6CFCED6CFCED6CFCE
        DED7D6DED7D6DED7D6DED7D6DED7D6DED7D6E7DFDEDED7D6E7DFDEDED7D6D6CF
        CEB5B2AD9C9E9C7B7D7B6B656352514A4245424241394245424A4D4252514A52
        55525A59525A59526B65636B65636B6D636B6D6373716B7B75737B7D7B7B7D7B
        7B7D7B7B7D7B84827B948E8CB5B2ADD6CFCEEFEFEFF7F3F7F7F3F7EFEFEFEFEF
        EFE7E7E7EFEFEFF7F3F7FFFBFFFFFBFFFFFFFFFFFBFFFFFBFFEFEFEFEFEFEFE7
        DFDEE7DFDEDED7D6E7DFDEDED7D6E7DFDEDED7D6E7DFDEE7DFDEE7DFDEE7DFDE
        E7E7E7E7DFDEDED7D6BDBAB5CEC7C6DED7D6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFEFEFEFCEC7C6A5A2A59C96949C9E9C
        BDBAB5D6CFCED6CFCEDED7D6D6CFCEDED7D6DED7D6DED7D6DED7D6E7DFDEDED7
        D6E7DFDED6CFCEBDBAB59C96947B757363615A52514A4A4D424245424245424A
        4D424A4D425255525255525A59525A59526B65636B65636B6D6373716B7B7573
        7B75737B7D7B7B7D7B84827B7B7D7B84827B84827B8C8A849C9694B5B2ADDED7
        D6EFEFEFEFEFEFE7DFDEC6BEBDC6BEBDC6BEBDE7E7E7F7F3F7FFFBFFFFFBFFFF
        FBFFFFFBFFFFFBFFF7F3F7EFEFEFE7E7E7E7E7E7DED7D6E7DFDEDED7D6E7DFDE
        DED7D6E7DFDEE7DFDEE7DFDEE7DFDEE7DFDED6CFCECEC7C6D6CFCEE7E7E7FFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF
        D6CFCEA5A2A59C96949C9E9CBDBAB5D6CFCEE7DFDEDED7D6DED7D6DED7D6E7DF
        DEE7DFDEE7DFDEDED7D6D6CFCEBDBAB5ADAAAD8C8A8473716B5255524A4D4242
        45424245424A4D4252514A52514A5A59525A595263615A63615A6B6D636B6D63
        73716B73716B7B75737B75737B7D7B7B7D7B84827B84827B8C8A8484827B8C8A
        848C8A84948E8C9C9E9CCEC7C6DED7D6E7E7E7CEC7C6BDBAB5B5B2ADC6BEBDE7
        DFDEFFFBFFFFFBFFFFFFFFFFFBFFFFFFFFFFFBFFFFFBFFF7F3F7F7F3F7EFEFEF
        E7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7DFDED6CFCED6CF
        CECEC7C6E7DFDEF7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFF7F3F7D6CFCEADAAAD9C96949C9694BDBAB5DED7D6DED7
        D6E7DFDEDED7D6DED7D6DED7D6E7DFDEDED7D6CEC7C6A5A2A584827B6B656352
        55524A4D424A4D424245424A4D424A4D4252514A5255525A59525A595263615A
        6B65636B6D636B6D6373716B7B75737B7D7B7B7D7B7B7D7B7B7D7B84827B8482
        7B84827B84827B8C8A848C8A848C8A848C8A849C9694A5A2A5BDBAB5C6BEBDBD
        BAB5ADAAADC6BEBDD6CFCEEFEFEFF7F3F7FFFFFFFFFBFFFFFFFFFFFBFFFFFBFF
        FFFBFFFFFBFFF7F3F7F7F3F7EFEFEFEFEFEFE7E7E7EFEFEFE7E7E7EFEFEFE7E7
        E7E7E7E7DED7D6C6BEBDB5B2ADCEC7C6E7DFDEFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7E7DFDEBDBAB5A5A2
        A59C9E9CBDBAB5D6CFCEE7DFDEDED7D6E7DFDEDED7D6DED7D6CEC7C6BDBAB59C
        96947B7D7B63615A52514A42454242454242454252514A52514A5255525A5952
        63615A63615A6B65636B656373716B73716B7B75737B75737B7D7B7B7D7B8482
        7B84827B84827B84827B8C8A848C8A848C8A848C8A84948E8C8C8A84948E8C94
        8E8C9C9E9CA5A2A5B5B2ADB5B2ADC6BEBDD6CFCEEFEFEFF7F3F7FFFFFFFFFBFF
        FFFBFFF7F3F7F7F3F7EFEFEFF7F3F7F7F3F7FFFBFFF7F3F7F7F3F7F7F3F7F7F3
        F7EFEFEFF7F3F7E7E7E7E7DFDED6CFCEC6BEBDA5A2A5B5B2ADD6CFCEEFEFEFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFBFFE7E7E7CEC7C6B5B2ADADAAADB5B2ADCEC7C6DED7D6E7DFDEDED7D6DE
        D7D6CEC7C6ADAAAD84827B6B656352514A4A4D424245424245424A4D4252514A
        52514A5255525A595263615A63615A6B65636B6D6373716B73716B7B75737B75
        737B7D7B7B7D7B84827B84827B84827B84827B8C8A848C8A848C8A848C8A848C
        8A848C8A84948E8C948E8C948E8C948E8C9C9E9C9C9E9CB5B2ADCEC7C6E7E7E7
        F7F3F7FFFBFFFFFBFFF7F3F7E7E7E7E7DFDEDED7D6E7DFDEE7E7E7EFEFEFF7F3
        F7F7F3F7EFEFEFF7F3F7EFEFEFEFEFEFE7E7E7E7DFDECEC7C6BDBAB5A5A2A59C
        9694ADAAADDED7D6F7F3F7FFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7DED7D6BDBAB5A5A2A5B5B2ADC6
        BEBDE7DFDEE7DFDEE7DFDECEC7C6B5B2AD84827B63615A52514A4A4D42424542
        4A4D424A4D425255525255525A59525A59526B65636B65636B6D636B6D637B75
        737B75737B7D7B7B7D7B84827B7B7D7B84827B84827B8C8A8484827B8C8A848C
        8A84948E8C8C8A84948E8C948E8C948E8C948E8C9C96949C96949C96949C9694
        9C9E9CA5A2A5BDBAB5D6CFCEE7E7E7F7F3F7F7F3F7E7E7E7E7DFDED6CFCEDED7
        D6DED7D6E7E7E7EFEFEFF7F3F7EFEFEFEFEFEFE7E7E7E7E7E7DED7D6D6CFCEBD
        BAB5B5B2ADA5A2A59C9E9C9C9694B5B2ADE7DFDEFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFF7F3F7E7
        DFDEBDBAB5A5A2A5ADAAADC6BEBDD6CFCEE7DFDEDED7D6C6BEBD9C9E9C6B6D63
        42454242454242454252514A52514A5255525255525A595263615A6B65636B65
        636B6D6373716B7B75737B75737B7D7B7B7D7B84827B7B7D7B84827B84827B8C
        8A8484827B8C8A848C8A84948E8C8C8A84948E8C948E8C948E8C948E8C9C9694
        9C96949C96949C96949C9E9C9C9E9C9C9E9CA5A2A5BDBAB5CEC7C6E7DFDEE7DF
        DEDED7D6CEC7C6CEC7C6CEC7C6DED7D6E7DFDEE7E7E7E7E7E7E7E7E7E7DFDEE7
        DFDED6CFCEC6BEBDB5B2ADADAAAD9C9E9CA5A2A59C9E9C9C9E9CADAAADE7DFDE
        F7F3F7FFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFFE7E7E7C6BEBD9C9E9CA5A2A5B5B2ADDED7D6E7DFDE
        E7DFDEC6BEBD9C9E9C6B65634A4D4242454252514A5255525A59525A59526361
        5A63615A6B6D636B6D6373716B73716B7B7D7B7B7D7B7B7D7B7B7D7B84827B84
        827B8C8A8484827B8C8A848C8A84948E8C8C8A84948E8C948E8C948E8C948E8C
        9C96949C96949C96949C96949C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C9E
        9CA5A2A5B5B2ADBDBAB5C6BEBDBDBAB5C6BEBDC6BEBDCEC7C6D6CFCEE7DFDEE7
        DFDEE7DFDED6CFCED6CFCEC6BEBDC6BEBDB5B2ADB5B2ADADAAADB5B2ADADAAAD
        ADAAAD9C9E9CB5B2ADE7DFDEFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFEFEFEFCEC7C6ADAAAD
        9C9E9CADAAADCEC7C6E7DFDEDED7D6CEC7C69C9E9C73716B4A4D4252514A5255
        525A59525A59526B65636B65636B6D636B6D6373716B7B75737B7D7B7B7D7B7B
        7D7B7B7D7B84827B84827B84827B84827B8C8A848C8A848C8A848C8A84948E8C
        948E8C9C9694948E8C9C96949C96949C96949C96949C9E9C9C96949C9E9C9C9E
        9C9C9E9C9C96949C9E9C9C96949C9E9C9C9694A5A2A5A5A2A5ADAAADADAAADB5
        B2ADBDBAB5CEC7C6CEC7C6CEC7C6C6BEBDC6BEBDB5B2ADB5B2ADB5B2ADBDBAB5
        BDBAB5C6BEBDBDBAB5BDBAB5ADAAADA5A2A5B5B2ADE7DFDEF7F3F7FFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F3F7DED7D6BDBAB5ADAAADADAAADCEC7C6DED7D6E7DFDED6CFCEB5B2
        AD84827B63615A52555263615A63615A6B65636B656373716B73716B7B75737B
        75737B7D7B7B7D7B84827B84827B84827B84827B8C8A8484827B8C8A848C8A84
        948E8C8C8A84948E8C948E8C9C96949C96949C96949C96949C9E9C9C96949C9E
        9C9C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C96949C9E9C9C96949C96949C
        96949C96949C96949C9E9C9C9E9CA5A2A5A5A2A5ADAAADADAAADADAAADADAAAD
        B5B2ADB5B2ADCEC7C6D6CFCEE7DFDEDED7D6DED7D6CEC7C6BDBAB5A5A2A5BDBA
        B5E7DFDEFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFBFFFFFBFFE7DFDECEC7C6ADAAADADAAADBDBA
        B5D6CFCEE7DFDEE7DFDEC6BEBD9C9E9C73716B6B656363615A6B65636B6D6373
        716B73716B7B75737B75737B7D7B7B7D7B84827B84827B84827B84827B8C8A84
        8C8A848C8A848C8A848C8A848C8A84948E8C948E8C9C9694948E8C9C96949C96
        949C9E9C9C96949C9E9C9C96949C9E9C9C96949C9E9C9C96949C9E9C9C96949C
        9694948E8C9C9694948E8C948E8C8C8A84948E8C8C8A84948E8C948E8C9C9694
        9C9694A5A2A5A5A2A5ADAAADB5B2ADBDBAB5C6BEBDDED7D6E7DFDEE7E7E7E7DF
        DEDED7D6C6BEBDADAAADB5B2ADE7DFDEF7F3F7FFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3
        F7DED7D6BDBAB5A5A2A5B5B2ADC6BEBDE7DFDEE7DFDEE7DFDEBDBAB59C96947B
        75736B6D636B6D637B75737B75737B7D7B7B7D7B84827B84827B84827B84827B
        8C8A848C8A848C8A848C8A84948E8C8C8A84948E8C948E8C9C9694948E8C9C96
        949C96949C9E9C9C96949C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C96949C9E9C9C
        96949C9E9C9C96949C96949C96949C9694948E8C948E8C8C8A84948E8C8C8A84
        8C8A848C8A848C8A84948E8C9C9E9CADAAADBDBAB5C6BEBDC6BEBDC6BEBDCEC7
        C6D6CFCEE7DFDEE7E7E7EFEFEFE7E7E7DED7D6ADAAADBDBAB5E7DFDEFFFBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFF7F3F7E7E7E7BDBAB5ADAAADA5A2A5BDBAB5D6CFCEE7
        DFDEE7DFDEDED7D6B5B2AD948E8C7B75737B75737B75737B7D7B7B7D7B84827B
        84827B84827B84827B8C8A8484827B8C8A848C8A84948E8C8C8A84948E8C948E
        8C9C9694948E8C9C96949C96949C9E9C9C96949C9E9C9C96949C9E9C9C96949C
        9E9C9C96949C9E9C9C96949C96949C96949C9694948E8C948E8C948E8C948E8C
        8C8A848C8A8484827B8C8A8484827B948E8C948E8CA5A2A5ADAAADC6BEBDD6CF
        CEDED7D6CEC7C6CEC7C6BDBAB5CEC7C6D6CFCEE7DFDEE7E7E7E7E7E7D6CFCEB5
        B2ADBDBAB5E7E7E7F7F3F7FFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD6CFCEAD
        AAADADAAADADAAADCEC7C6E7DFDEEFEFEFE7E7E7DED7D6ADAAAD948E8C84827B
        7B7D7B7B7D7B84827B84827B8C8A848C8A848C8A848C8A84948E8C8C8A84948E
        8C948E8C948E8C948E8C9C96949C96949C96949C96949C9E9C9C9E9C9C9E9C9C
        9E9C9C9E9C9C9E9C9C9E9C9C96949C9E9C9C96949C96949C96949C9694948E8C
        948E8C948E8C948E8C8C8A848C8A848C8A848C8A848C8A84948E8C9C9E9CADAA
        ADBDBAB5D6CFCEDED7D6EFEFEFE7E7E7DED7D6CEC7C6BDBAB5BDBAB5CEC7C6D6
        CFCEE7DFDEDED7D6D6CFCEBDBAB5CEC7C6E7E7E7FFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFF7F3F7E7DFDECEC7C6ADAAADB5B2ADC6BEBDDED7D6E7E7E7EFEFEF
        E7DFDECEC7C6ADAAAD948E8C84827B84827B84827B8C8A8484827B8C8A848C8A
        84948E8C8C8A84948E8C948E8C948E8C948E8C9C96949C96949C96949C96949C
        9E9C9C96949C9E9C9C96949C9E9C9C96949C9E9C9C96949C9E9C9C96949C9694
        948E8C9C9694948E8C948E8C8C8A848C8A8484827B8C8A8484827B948E8C948E
        8C9C9694A5A2A5B5B2ADC6BEBDD6CFCEDED7D6E7E7E7E7E7E7E7E7E7DED7D6CE
        C7C6BDBAB5C6BEBDC6BEBDCEC7C6CEC7C6CEC7C6C6BEBDCEC7C6D6CFCEEFEFEF
        FFFBFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF7F3F7DED7D6C6BEBDB5B2AD
        C6BEBDD6CFCEE7E7E7EFEFEFEFEFEFE7DFDECEC7C6A5A2A5948E8C8C8A848C8A
        848C8A848C8A848C8A84948E8C948E8C9C9694948E8C9C9694948E8C9C96949C
        96949C9E9C9C96949C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C9694
        9C9E9C9C96949C96949C96949C9694948E8C948E8C8C8A84948E8C8C8A848C8A
        848C8A84948E8C9C9694A5A2A5ADAAADC6BEBDCEC7C6DED7D6E7DFDEE7E7E7EF
        EFEFEFEFEFE7E7E7DED7D6CEC7C6C6BEBDC6BEBDD6CFCECEC7C6CEC7C6C6BEBD
        CEC7C6D6CFCEE7E7E7F7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFEFEFEFD6CFCEC6BEBDB5B2ADC6BEBDDED7D6E7E7E7EFEFEFEFEFEFE7DF
        DEC6BEBD9C9E9C948E8C8C8A848C8A848C8A84948E8C948E8C9C9694948E8C9C
        96949C96949C96949C96949C96949C96949C9E9C9C96949C9E9C9C96949C9E9C
        9C96949C96949C96949C9694948E8C9C9694948E8C9C96948C8A84948E8C8C8A
        848C8A848C8A848C8A848C8A849C96949C9E9CADAAADBDBAB5CEC7C6D6CFCEE7
        DFDEE7DFDEE7E7E7E7E7E7EFEFEFEFEFEFE7E7E7D6CFCED6CFCECEC7C6DED7D6
        E7DFDEDED7D6D6CFCEDED7D6DED7D6EFEFEFF7F3F7FFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFE7E7E7CEC7C6BDBAB5B5B2ADCEC7
        C6DED7D6EFEFEFEFEFEFEFEFEFDED7D6C6BEBDA5A2A59C9694948E8C948E8C94
        8E8C9C9694948E8C9C96949C96949C9E9C9C96949C9E9C9C9E9C9C9E9C9C9E9C
        9C9E9C9C9E9C9C9E9C9C96949C9E9C9C96949C96949C96949C9694948E8C948E
        8C948E8C948E8C8C8A848C8A848C8A84948E8C948E8C9C9E9CA5A2A5BDBAB5C6
        BEBDDED7D6E7DFDEE7E7E7E7DFDEE7E7E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7
        DED7D6D6CFCED6CFCEDED7D6EFEFEFE7E7E7EFEFEFEFEFEFF7F3F7FFFBFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFF7F3
        F7E7E7E7BDBAB5ADAAADA5A2A5C6BEBDE7DFDEEFEFEFEFEFEFEFEFEFE7DFDEC6
        BEBDA5A2A59C9694948E8C9C9694948E8C9C96949C96949C9E9C9C96949C9E9C
        9C9E9C9C9E9C9C96949C9E9C9C96949C9E9C9C96949C96949C96949C9694948E
        8C948E8C948E8C948E8C8C8A848C8A848C8A848C8A848C8A84948E8C9C9694A5
        A2A5B5B2ADCEC7C6D6CFCEE7DFDEE7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7
        E7E7E7EFEFEFEFEFEFE7E7E7DED7D6D6CFCECEC7C6E7DFDEEFEFEFFFFBFFFFFB
        FFFFFBFFFFFBFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7D6CFCEB5B2ADADAAADB5B2ADD6CFCEE7
        DFDEF7F3F7F7F3F7F7F3F7E7DFDECEC7C6ADAAADA5A2A59C96949C96949C9694
        9C9E9C9C96949C9E9C9C9E9C9C9E9C9C9E9C9C9E9C9C96949C9E9C9C96949C96
        949C96949C9694948E8C9C9694948E8C948E8C8C8A848C8A848C8A848C8A8494
        8E8C9C96949C9E9CB5B2ADBDBAB5CEC7C6DED7D6E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFEFEFEFEFEFEFE7E7E7E7DFDED6CFCED6CF
        CEDED7D6F7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFBFFEFEFEFDE
        D7D6B5B2ADADAAADB5B2ADD6CFCEE7E7E7F7F3F7F7F3F7F7F3F7E7E7E7CEC7C6
        B5B2ADA5A2A59C96949C9E9C9C96949C9E9C9C96949C9E9C9C96949C9E9C9C96
        949C96949C96949C96949C96949C9694948E8C948E8C8C8A848C8A848C8A848C
        8A8484827B8C8A848C8A849C9E9CADAAADBDBAB5CEC7C6DED7D6DED7D6E7DFDE
        E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFDED7D6D6CFCECEC7C6E7DFDEEFEFEFFFFBFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFFE7E7E7CEC7C6B5B2ADB5B2ADBDBAB5DED7D6EFEFEF
        FFFBFFFFFBFFFFFBFFE7E7E7D6CFCEBDBAB5ADAAADA5A2A59C9E9C9C96949C9E
        9C9C9E9C9C9E9C9C96949C96949C96949C9694948E8C9C9694948E8C948E8C8C
        8A848C8A848C8A848C8A848C8A849C96949C9694A5A2A5B5B2ADCEC7C6D6CFCE
        E7DFDEE7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEF
        EFEFEFEFF7F3F7EFEFEFF7F3F7EFEFEFE7DFDEDED7D6D6CFCEDED7D6EFEFEFFF
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFF7F3F7E7DFDECEC7C6
        B5B2ADB5B2ADB5B2ADE7DFDEEFEFEFFFFBFFFFFBFFFFFBFFEFEFEFDED7D6C6BE
        BDB5B2ADA5A2A59C9E9C9C96949C9E9C9C96949C9694948E8C948E8C948E8C94
        8E8C948E8C948E8C8C8A848C8A8484827B8C8A848C8A849C96949C9E9CB5B2AD
        C6BEBDD6CFCEE7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFEFEFEFF7F3F7EFEFEFEFEFEFE7DFDEDE
        D7D6D6CFCEE7DFDEEFEFEFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFBFFF7F3F7E7DFDED6CFCEBDBAB5BDBAB5CEC7C6E7DFDEE7E7E7F7F3
        F7FFFBFFFFFBFFEFEFEFE7DFDED6CFCEBDBAB5ADAAADA5A2A59C96949C969494
        8E8C948E8C8C8A84948E8C8C8A84948E8C8C8A848C8A848C8A84948E8C9C9694
        A5A2A5B5B2ADC6BEBDCEC7C6DED7D6E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFF7F3F7F7
        F3F7F7F3F7EFEFEFE7E7E7DED7D6DED7D6DED7D6EFEFEFFFFBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFF7F3F7E7DFDED6CFCEC6BE
        BDCEC7C6CEC7C6DED7D6E7DFDEF7F3F7F7F3F7FFFBFFF7F3F7E7E7E7D6CFCEC6
        BEBDADAAADA5A2A59C96949C9694948E8C948E8C8C8A848C8A848C8A848C8A84
        8C8A84948E8C9C9E9CADAAADBDBAB5D6CFCEDED7D6E7E7E7E7DFDEE7E7E7E7DF
        DEE7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEF
        EFEFEFEFEFF7F3F7F7F3F7F7F3F7F7F3F7EFEFEFE7DFDEDED7D6D6CFCEE7DFDE
        E7E7E7FFFBFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFBFFFFFBFFF7F3F7EFEFEFCEC7C6BDBAB5C6BEBDCEC7C6D6CFCEE7DFDEEF
        EFEFF7F3F7F7F3F7EFEFEFE7DFDEDED7D6C6BEBDBDBAB5ADAAADADAAAD9C9E9C
        9C9694948E8C948E8C8C8A849C9694A5A2A5BDBAB5D6CFCEDED7D6DED7D6E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFEF
        EFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFFFFBFFFFFBFFF7F3F7
        E7E7E7DED7D6DED7D6E7DFDEEFEFEFF7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFDED7D6C6BEBDCE
        C7C6BDBAB5BDBAB5CEC7C6DED7D6E7DFDEE7E7E7E7E7E7E7E7E7DED7D6D6CFCE
        CEC7C6C6BEBDB5B2ADADAAAD9C9E9C9C9E9C948E8C9C96949C9E9CB5B2ADCEC7
        C6E7E7E7E7E7E7E7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7EF
        EFEFE7E7E7EFEFEFEFEFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7FFFBFF
        FFFBFFFFFBFFF7F3F7F7F3F7E7E7E7E7DFDEDED7D6E7DFDEE7E7E7F7F3F7FFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF7F3F7EFEFEFE7DFDED6CFCEBDBAB5C6BEBDC6BEBDC6BEBDBDBAB5
        C6BEBDC6BEBDCEC7C6CEC7C6C6BEBDBDBAB5BDBAB5B5B2ADBDBAB5B5B2ADB5B2
        ADADAAADB5B2ADB5B2ADD6CFCEEFEFEFEFEFEFE7E7E7E7E7E7E7E7E7EFEFEFE7
        E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFF7F3F7F7F3F7F7F3F7F7F3F7
        FFFBFFF7F3F7FFFBFFFFFBFFFFFFFFFFFBFFFFFBFFF7F3F7E7E7E7E7DFDEDED7
        D6DED7D6E7E7E7EFEFEFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFF7F3F7E7DFDEDED7D6
        CEC7C6CEC7C6BDBAB5B5B2ADB5B2ADBDBAB5BDBAB5C6BEBDBDBAB5C6BEBDC6BE
        BDCEC7C6D6CFCED6CFCECEC7C6BDBAB5B5B2ADB5B2ADD6CFCEF7F3F7EFEFEFE7
        E7E7E7E7E7E7E7E7E7E7E7EFEFEFE7E7E7EFEFEFEFEFEFEFEFEFEFEFEFF7F3F7
        EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFF7F3
        F7EFEFEFE7DFDEE7DFDEDED7D6E7DFDEE7DFDEEFEFEFF7F3F7FFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFBFFFFFBFFF7F3F7EFEFEFE7DFDEDED7D6CEC7C6CEC7C6C6BEBDCEC7
        C6C6BEBDCEC7C6CEC7C6DED7D6E7E7E7EFEFEFEFEFEFE7DFDEC6BEBDB5B2ADB5
        B2ADD6CFCEEFEFEFF7F3F7E7E7E7EFEFEFE7E7E7EFEFEFE7E7E7EFEFEFEFEFEF
        F7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFF
        FFFFFFFFFFFFFFF7F3F7F7F3F7E7E7E7E7E7E7E7DFDEE7DFDEE7DFDEEFEFEFEF
        EFEFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFF7F3F7E7E7
        E7E7E7E7E7DFDEE7DFDEDED7D6DED7D6DED7D6E7DFDEE7E7E7F7F3F7FFFBFFFF
        FBFFE7E7E7C6BEBDADAAADB5B2ADD6CFCEF7F3F7EFEFEFEFEFEFE7E7E7EFEFEF
        E7E7E7EFEFEFEFEFEFF7F3F7EFEFEFF7F3F7EFEFEFF7F3F7F7F3F7FFFBFFF7F3
        F7FFFBFFFFFBFFFFFFFFFFFBFFFFFBFFF7F3F7EFEFEFE7E7E7E7E7E7E7DFDEE7
        DFDEE7DFDEE7E7E7E7E7E7F7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFFFFBFFF7F3F7FFFBFFF7F3F7FFFBFFFF
        FBFFFFFBFFFFFFFFFFFFFFFFFBFFE7E7E7C6BEBDB5B2ADB5B2ADD6CFCEF7F3F7
        F7F3F7EFEFEFEFEFEFEFEFEFF7F3F7EFEFEFF7F3F7F7F3F7F7F3F7F7F3F7F7F3
        F7F7F3F7FFFBFFFFFBFFFFFFFFFFFBFFFFFFFFFFFBFFFFFBFFEFEFEFEFEFEFE7
        E7E7E7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7E7E7EFEFEFFFFBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFBFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBFFE7E7E7C6BEBD
        ADAAADB5B2ADD6CFCEF7F3F7F7F3F7EFEFEFEFEFEFEFEFEFEFEFEFF7F3F7F7F3
        F7F7F3F7F7F3F7F7F3F7F7F3F7FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFF7F3F7F7
        F3F7EFEFEFE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7DFDEE7DFDEEFEFEF
        EFEFEFFFFBFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F3F7E7E7E7C6BEBDB5B2ADB5B2ADDED7D6F7F3F7F7F3F7EFEFEFF7F3
        F7EFEFEFF7F3F7F7F3F7FFFBFFF7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFFFFFF
        FBFFFFFBFFF7F3F7F7F3F7E7E7E7E7E7E7E7DFDEE7E7E7E7E7E7EFEFEFE7E7E7
        E7E7E7E7DFDEEFEFEFEFEFEFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFBFFE7DFDEC6BEBDB5B2ADBDBAB5D6CF
        CEF7F3F7F7F3F7F7F3F7EFEFEFF7F3F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFF
        FBFFFFFBFFFFFBFFF7F3F7F7F3F7EFEFEFE7E7E7E7DFDEE7E7E7E7DFDEE7E7E7
        E7DFDEE7E7E7E7E7E7EFEFEFEFEFEFF7F3F7EFEFEFFFFBFFFFFBFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7E7E7
        E7C6BEBDB5B2ADBDBAB5DED7D6F7F3F7FFFBFFF7F3F7F7F3F7F7F3F7FFFBFFFF
        FBFFFFFBFFFFFBFFFFFFFFFFFBFFFFFBFFF7F3F7F7F3F7EFEFEFEFEFEFE7DFDE
        E7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7EFEFEFF7F3F7FFFBFFFFFBFFFFFB
        FFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFBFFE7DFDEC6BEBDB5B2ADBDBAB5DED7D6FFFBFFF7F3F7F7
        F3F7F7F3F7FFFBFFF7F3F7FFFBFFFFFBFFFFFFFFFFFBFFFFFBFFF7F3F7EFEFEF
        E7DFDEE7E7E7E7DFDEE7E7E7E7DFDEE7DFDEE7DFDEE7E7E7E7E7E7EFEFEFF7F3
        F7FFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7E7E7E7C6BEBDBDBAB5BD
        BAB5E7DFDEFFFBFFFFFBFFF7F3F7FFFBFFFFFBFFFFFBFFFFFBFFFFFFFFFFFBFF
        F7F3F7EFEFEFEFEFEFE7E7E7E7E7E7E7DFDEE7E7E7E7E7E7E7E7E7E7E7E7EFEF
        EFEFEFEFF7F3F7F7F3F7FFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFFF
        FBFFE7DFDEC6BEBDB5B2ADC6BEBDDED7D6FFFBFFFFFBFFFFFBFFFFFBFFFFFBFF
        FFFBFFFFFBFFF7F3F7F7F3F7E7E7E7E7E7E7E7DFDEE7E7E7E7DFDEE7DFDEE7DF
        DEE7E7E7E7E7E7EFEFEFEFEFEFF7F3F7FFFBFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF7F3F7E7E7E7C6BEBDBDBAB5C6BEBDE7DFDEFFFBFF
        FFFFFFFFFBFFFFFBFFFFFBFFFFFBFFF7F3F7EFEFEFE7E7E7E7E7E7E7DFDEE7DF
        DEE7DFDEE7E7E7E7E7E7E7E7E7E7E7E7F7F3F7F7F3F7FFFBFFFFFBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFF7F3F7E7DFDEC6BEBD
        B5B2ADC6BEBDE7DFDEFFFFFFFFFBFFFFFBFFF7F3F7F7F3F7EFEFEFEFEFEFE7DF
        DEE7DFDEE7DFDEE7DFDEE7DFDEE7E7E7E7E7E7EFEFEFEFEFEFEFEFEFEFEFEFFF
        FBFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F3F7E7E7E7BDBAB5BDBAB5C6BEBDE7E7E7FFFBFFFFFFFFF7F3F7F7F3
        F7E7E7E7E7E7E7E7DFDEE7E7E7E7DFDEE7DFDEE7DFDEE7E7E7E7E7E7EFEFEFF7
        F3F7FFFBFFFFFBFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFF7F3F7E7DFDEC6BEBDB5B2ADC6BEBDDED7
        D6F7F3F7F7F3F7F7F3F7E7E7E7E7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7DFDEE7
        E7E7E7E7E7EFEFEFEFEFEFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F3F7E7E7
        E7CEC7C6C6BEBDC6BEBDDED7D6E7E7E7EFEFEFE7DFDEE7E7E7E7DFDEE7DFDEE7
        DFDEE7E7E7E7E7E7E7E7E7EFEFEFF7F3F7F7F3F7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFBFFEFEFEFDED7D6CEC7C6D6CFCED6CFCEE7DFDEDED7D6DE
        D7D6E7DFDEE7E7E7E7DFDEE7E7E7EFEFEFEFEFEFEFEFEFF7F3F7F7F3F7FFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFBFFEFEFEFEFEFEFE7
        E7E7E7DFDECEC7C6D6CFCEDED7D6E7E7E7E7E7E7E7E7E7E7E7E7F7F3F7FFFBFF
        FFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFBFFF7F3F7EFEFEFD6CFCEB5B2ADBDBAB5D6CFCEE7DFDEF7F3F7
        EFEFEFF7F3F7F7F3F7FFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFB
        FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFF
        FFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFF
        FFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFE7E7E7CEC7C69C9E9C
        ADAAADBDBAB5E7DFDEF7F3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFE7E7E7BDBAB59C9E9C9C9E9CB5B2ADDED7D6FFFBFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFF
        FFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF
        FFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF
        FFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btncomprovante: TSpeedButton
      Left = 6
      Top = 94
      Width = 147
      Height = 29
      Caption = 'Resumido por Produto'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      OnClick = btncomprovanteClick
    end
    object btnsintetico: TSpeedButton
      Left = 6
      Top = 46
      Width = 147
      Height = 29
      Caption = 'Ficha'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnsinteticoClick
    end
    object Label19: TLabel
      Left = 2
      Top = 2
      Width = 157
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Modelos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object RLReport: TRLReport
    Left = 44
    Top = 477
    Width = 794
    Height = 1123
    DataSource = DataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 343
      Width = 718
      Height = 57
      BandType = btFooter
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
        DataField = 'recENDERECO'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
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
        Left = 268
        Top = 2
        Width = 182
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Nota de Entrada'
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
      Height = 77
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      PageBreaking = pbBeforePrint
      object RLLabel2: TRLLabel
        Left = 10
        Top = 2
        Width = 69
        Height = 16
        Caption = 'Fornecedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 155
        Top = 35
        Width = 35
        Height = 16
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 13
        Top = 35
        Width = 66
        Height = 16
        Caption = 'N'#250'mero...:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 279
        Top = 35
        Width = 39
        Height = 16
        Caption = 'CFOP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 80
        Top = 3
        Width = 49
        Height = 15
        AutoSize = False
        DataField = 'NOTFORNECEDOR'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 136
        Top = 3
        Width = 61
        Height = 15
        DataField = 'fornecedor'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 80
        Top = 35
        Width = 71
        Height = 15
        AutoSize = False
        DataField = 'NOTNOTA'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 194
        Top = 35
        Width = 81
        Height = 15
        AutoSize = False
        DataField = 'NOTDATA'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText14: TRLDBText
        Left = 322
        Top = 35
        Width = 54
        Height = 15
        AutoSize = False
        DataField = 'NOTCFOP'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 381
        Top = 35
        Width = 27
        Height = 15
        DataField = 'cfop'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText16: TRLDBText
        Left = 79
        Top = 19
        Width = 90
        Height = 15
        DataField = 'fornecedordados'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 13
        Top = 53
        Width = 65
        Height = 16
        Caption = 'Opera'#231#227'o.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 79
        Top = 53
        Width = 89
        Height = 15
        DataField = 'NOTOPERACAO'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 207
      Width = 718
      Height = 92
      DataSource = DM.DSItemNotaEnt
      object RLBand8: TRLBand
        Left = 0
        Top = 38
        Width = 718
        Height = 47
        BandType = btFooter
        object RLLabel16: TRLLabel
          Left = 9
          Top = 4
          Width = 84
          Height = 16
          Caption = 'Sub. Total...:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText25: TRLDBText
          Left = 95
          Top = 4
          Width = 64
          Height = 15
          AutoSize = False
          DataField = 'NOTSUBTOTAL'
          DataSource = DataSource
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText26: TRLDBText
          Left = 226
          Top = 4
          Width = 64
          Height = 15
          AutoSize = False
          DataField = 'NOTICMS'
          DataSource = DataSource
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 180
          Top = 4
          Width = 42
          Height = 16
          Caption = 'ICMS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText27: TRLDBText
          Left = 366
          Top = 4
          Width = 64
          Height = 15
          AutoSize = False
          DataField = 'NOTIPI'
          DataSource = DataSource
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 317
          Top = 4
          Width = 48
          Height = 16
          Caption = 'IPI....:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText28: TRLDBText
          Left = 500
          Top = 4
          Width = 64
          Height = 15
          AutoSize = False
          DataField = 'NOTFRETE'
          DataSource = DataSource
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 460
          Top = 4
          Width = 39
          Height = 16
          Caption = 'Frete:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText29: TRLDBText
          Left = 650
          Top = 4
          Width = 64
          Height = 15
          AutoSize = False
          DataField = 'NOTSEGURO'
          DataSource = DataSource
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 601
          Top = 4
          Width = 47
          Height = 16
          Caption = 'Seguro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 11
          Top = 24
          Width = 81
          Height = 16
          Caption = 'Outras Desp.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText30: TRLDBText
          Left = 95
          Top = 24
          Width = 64
          Height = 15
          AutoSize = False
          DataField = 'NOTOUTRASDESP'
          DataSource = DataSource
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText31: TRLDBText
          Left = 226
          Top = 24
          Width = 64
          Height = 15
          AutoSize = False
          DataField = 'NOTDESCONTO'
          DataSource = DataSource
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 180
          Top = 24
          Width = 40
          Height = 16
          Caption = 'Desc.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText32: TRLDBText
          Left = 366
          Top = 24
          Width = 64
          Height = 15
          AutoSize = False
          DataField = 'NOTVALORBASECALC'
          DataSource = DataSource
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 316
          Top = 24
          Width = 49
          Height = 16
          Caption = 'B. Calc:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText33: TRLDBText
          Left = 500
          Top = 24
          Width = 64
          Height = 15
          AutoSize = False
          DataField = 'NOTTAXAJURO'
          DataSource = DataSource
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 460
          Top = 24
          Width = 39
          Height = 16
          Caption = 'Juros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText34: TRLDBText
          Left = 650
          Top = 24
          Width = 64
          Height = 15
          AutoSize = False
          DataField = 'NOTTOTAL'
          DataSource = DataSource
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 601
          Top = 24
          Width = 48
          Height = 16
          Caption = 'Total..:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 18
        Width = 718
        Height = 20
        object RLDBText8: TRLDBText
          Left = 55
          Top = 3
          Width = 212
          Height = 15
          AutoSize = False
          DataField = 'Produto'
          DataSource = DM.DSItemNotaEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 3
          Top = 3
          Width = 51
          Height = 15
          Alignment = taJustify
          AutoSize = False
          DataField = 'ITEPRODUTO'
          DataSource = DM.DSItemNotaEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 660
          Top = 3
          Width = 55
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITETOTAL'
          DataSource = DM.DSItemNotaEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText18: TRLDBText
          Left = 604
          Top = 3
          Width = 55
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITEDESC'
          DataSource = DM.DSItemNotaEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText19: TRLDBText
          Left = 548
          Top = 3
          Width = 55
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITEIPI'
          DataSource = DM.DSItemNotaEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 492
          Top = 3
          Width = 55
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITEICMS'
          DataSource = DM.DSItemNotaEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText21: TRLDBText
          Left = 436
          Top = 3
          Width = 55
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITEPRECO'
          DataSource = DM.DSItemNotaEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText22: TRLDBText
          Left = 380
          Top = 3
          Width = 55
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITEQUANT'
          DataSource = DM.DSItemNotaEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText23: TRLDBText
          Left = 324
          Top = 3
          Width = 55
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITEBASECALC'
          DataSource = DM.DSItemNotaEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText24: TRLDBText
          Left = 268
          Top = 3
          Width = 55
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'ITESITTRIB'
          DataSource = DM.DSItemNotaEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 18
        BandType = btHeader
        object RLLabel6: TRLLabel
          Left = 7
          Top = 0
          Width = 45
          Height = 16
          Caption = 'Produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 393
          Top = 0
          Width = 43
          Height = 16
          Caption = 'Quant.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 457
          Top = 0
          Width = 34
          Height = 16
          Caption = 'Pre'#231'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 680
          Top = 0
          Width = 33
          Height = 16
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 265
          Top = 0
          Width = 59
          Height = 16
          Caption = 'Sit. Trib.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 332
          Top = 0
          Width = 49
          Height = 16
          Caption = 'B. Calc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 625
          Top = 0
          Width = 35
          Height = 16
          Caption = 'Desc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 580
          Top = 0
          Width = 23
          Height = 16
          Caption = 'IPI'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 510
          Top = 0
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
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 38
      Top = 299
      Width = 718
      Height = 44
      DataSource = DM.DSVctoNotaEnt
      object RLBand9: TRLBand
        Left = 0
        Top = 18
        Width = 718
        Height = 20
        object RLDBText53: TRLDBText
          Left = 317
          Top = 3
          Width = 70
          Height = 15
          Alignment = taRightJustify
          DataField = 'VCTOVALOR'
          DataSource = DM.DSVctoNotaEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText54: TRLDBText
          Left = 235
          Top = 3
          Width = 64
          Height = 15
          Alignment = taRightJustify
          DataField = 'VCTODATA'
          DataSource = DM.DSVctoNotaEnt
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand10: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 18
        BandType = btHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel36: TRLLabel
          Left = 11
          Top = 1
          Width = 81
          Height = 16
          Caption = 'Entrada......:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel40: TRLLabel
          Left = 241
          Top = 1
          Width = 65
          Height = 16
          Caption = 'Vencimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel41: TRLLabel
          Left = 356
          Top = 1
          Width = 32
          Height = 16
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText35: TRLDBText
          Left = 95
          Top = 2
          Width = 64
          Height = 15
          AutoSize = False
          DataField = 'NOTENTRADA'
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
  end
  object DataSource: TDataSource
    DataSet = DM.CDSNotaEnt
    Left = 8
    Top = 8
  end
  object WSInformacao: TWSInformacao
    Tabela = 'TNOTAENT'
    Programa = 49
    Left = 40
    Top = 8
  end
end
