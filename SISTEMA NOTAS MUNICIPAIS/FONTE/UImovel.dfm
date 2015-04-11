object FImovel: TFImovel
  Left = 192
  Top = 103
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Rech Center'
  ClientHeight = 444
  ClientWidth = 627
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
    Width = 627
    Height = 30
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro de Im'#243'veis'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -21
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 414
    Width = 627
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
    Top = 73
    Width = 627
    Height = 341
    ActivePage = TabConsulta
    Align = alClient
    Images = DM.ImageListPageControl
    MultiLine = True
    TabOrder = 1
    TabStop = False
    object TabConsulta: TTabSheet
      object DBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 619
        Height = 313
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
            FieldName = 'IMOCOD'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'Comic Sans MS'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMOEMPREENDIMENTO'
            Title.Caption = 'Empreendimento'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'Comic Sans MS'
            Title.Font.Style = [fsBold]
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'proprietario'
            Title.Caption = 'Propriet'#225'rio'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'Comic Sans MS'
            Title.Font.Style = [fsBold]
            Width = 250
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
        Left = 8
        Top = 9
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
      object Label2: TLabel
        Left = 8
        Top = 30
        Width = 86
        Height = 16
        Caption = 'Empreendimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 71
        Width = 62
        Height = 16
        Caption = 'Construtora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 8
        Top = 50
        Width = 62
        Height = 16
        Caption = 'Propriet'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btncliente: TRxSpeedButton
        Left = 203
        Top = 45
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
        OnClick = btnclienteClick
      end
      object Label5: TLabel
        Left = 8
        Top = 115
        Width = 48
        Height = 16
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 8
        Top = 136
        Width = 32
        Height = 16
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 456
        Top = 137
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
      object Label9: TLabel
        Left = 8
        Top = 157
        Width = 57
        Height = 16
        Caption = 'Pavimentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 456
        Top = 158
        Width = 41
        Height = 16
        Caption = 'Alugado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 178
        Width = 49
        Height = 16
        Caption = #193'rea '#218'til'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 424
        Top = 179
        Width = 75
        Height = 16
        Caption = #193'rea Garagem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 232
        Top = 179
        Width = 67
        Height = 16
        Caption = #193'rea Comum'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 8
        Top = 199
        Width = 61
        Height = 16
        Caption = 'Dormit'#243'rios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 424
        Top = 200
        Width = 50
        Height = 16
        Caption = 'Banheiros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 232
        Top = 200
        Width = 33
        Height = 16
        Caption = 'Su'#237'tes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 8
        Top = 220
        Width = 28
        Height = 16
        Caption = 'Salas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 232
        Top = 221
        Width = 43
        Height = 16
        Caption = 'Sacadas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 8
        Top = 242
        Width = 51
        Height = 16
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnfotos: TSpeedButton
        Left = 496
        Top = 4
        Width = 104
        Height = 19
        Caption = 'Fotos'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          52060000424D5206000000000000360000002800000016000000170000000100
          1800000000001C060000C40E0000C40E00000000000000000000CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          0000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D68C6D18CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6846100FF9E298C6D18CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6ADAAAD737173523C
          29523C29393C39393C39B5B6B5846100FF9E29DEA67BFF9E298C6D1873717373
          7573393C39A5A6A5CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6949294AD
          FFFF9CFBFF9CFBFF52DFFF52BED6846100DEA67BDEA67BDEA67BDEA67BFF9E29
          8C6D1852DFFF52C3D6393C39CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6
          949294ADFFFFADFFFFADFFFFADFFFF846100DEA67BFFFFC6FFFFC6DEA67BDEA6
          7BDEA67BFF9E298C6D1852DFFF393C39CED3D6CED3D6CED3D6CED3D60000CED3
          D6CED3D6949294ADFFFFADFFFFADFFFFE7BE7B8C6D188C6D188C6D18FFFFC6FF
          FFC6DEA67B8C6D188C6D188C6D18E7BE7B737173CED3D6CED3D6CED3D6CED3D6
          0000CED3D6CED3D6949294ADFFFFADFFFFADFFFFADFFFFADFFFFADFFFF9C7D31
          FFFFC6FFFFC6FFF3AD9C7D31B5B6B59CFBFF52DFFF393C39CED3D6CED3D6CED3
          D6CED3D60000CED3D6CED3D6949294CED3D6ADFFFFADFFFFADFFFFADFFFFADFF
          FFAD8A42FFFFC6FFFFC6DEA67BFFD7949CF7FF52DFFFADDFD6393C39CED3D6CE
          D3D6CED3D6CED3D60000CED3D6CED3D6949294ADFFFFADFFFFADFFFFADFFFFAD
          FFFFBD964ADEA67BFFF3ADFFFFC6AD8A429CF7FF9CF7FF9CFBFF52DFFF5A595A
          CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6ADAAADCED3D6ADFFFFCED3D6
          ADFFFFADFFFFBD964AFFE79CFFF3ADE7BE73FFD794ADFFFFADFFFFADFFFFADFF
          FF636563CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6B5B6B5ADFFFFCED3
          D6ADFFFFADFFFFAD8A39DEA67BFFD794E7BE7BADFFFFADFFFFADFFFFADFFFFAD
          FFFFADFFFF737173CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6C6C3C6CE
          D3D6ADFFFFCED3D6D6B26BD6B26BD6B26BD6B26BEFCB84C6C7C6C6C7C6ADDFD6
          52BED652BED652BED6848284CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6
          CECFCEB5B6B5B5B6B5B5B6B5CECBCEADDFD6ADDFD652DFFF52DFFF52DFFF52DF
          FF52DFFF52DFFF52DFFF52BED6C6C3C6CED3D6CED3D6CED3D6CED3D60000CED3
          D6CED3D6CED3D6DEDBDE00F3FF00F3FF00F3FF00F3FF52BED6E7E7E78C8E8C8C
          8E8C8C8E8C8C8E8C8C8E8C8C8E8C8C8E8CCED3D6CED3D6CED3D6CED3D6CED3D6
          0000CED3D6CED3D6CED3D69C9A9C52FFFF63F7FF63F7FF63F7FF00F3FFB5B6B5
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D60000CED3D6CED3D6CED3D6CED3D69C9A9C8C8E8C8C8E8C8C8E8C9C9A
          9CCED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
          CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3
          D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
          D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000}
        ParentFont = False
        OnClick = btnfotosClick
      end
      object btncidade: TRxSpeedButton
        Left = 203
        Top = 87
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
        OnClick = btncidadeClick
      end
      object Label21: TLabel
        Left = 8
        Top = 92
        Width = 34
        Height = 16
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 476
        Top = 114
        Width = 20
        Height = 16
        Caption = 'CEP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object WSDBEdit1: TWSDBEdit
        Left = 106
        Top = 7
        Width = 121
        DataField = 'IMOCOD'
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
        Left = 106
        Top = 28
        Width = 495
        DataField = 'IMOEMPREENDIMENTO'
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
        FocoAlterar = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit3: TWSDBEdit
        Left = 106
        Top = 71
        Width = 495
        DataField = 'IMOCONSTRUTORA'
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
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtcodcliente: TWSDBEdit
        Left = 106
        Top = 50
        Width = 95
        DataField = 'IMOPROPRIETARIO'
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
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtcliente: TWSDBEdit
        Left = 232
        Top = 48
        Width = 369
        DataField = 'proprietario'
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
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit4: TWSDBEdit
        Left = 106
        Top = 135
        Width = 343
        DataField = 'IMOBAIRRO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 9
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit5: TWSDBEdit
        Left = 106
        Top = 114
        Width = 343
        DataField = 'IMOENDERECO'
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
      object WSDBEdit6: TWSDBEdit
        Left = 506
        Top = 135
        Width = 95
        DataField = 'IMONUMERO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 10
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit7: TWSDBEdit
        Left = 106
        Top = 156
        Width = 95
        DataField = 'IMOPAVIMENTO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 11
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit8: TWSDBEdit
        Left = 506
        Top = 156
        Width = 95
        DataField = 'IMOALUGADO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 12
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit9: TWSDBEdit
        Left = 106
        Top = 177
        Width = 95
        DataField = 'IMOAREAUTIL'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 13
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit10: TWSDBEdit
        Left = 506
        Top = 177
        Width = 95
        DataField = 'IMOAREAGARAGEM'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 15
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit11: TWSDBEdit
        Left = 306
        Top = 177
        Width = 95
        DataField = 'IMOAREACOMUM'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 14
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit12: TWSDBEdit
        Left = 106
        Top = 198
        Width = 95
        DataField = 'IMODORMITORIOS'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 16
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit13: TWSDBEdit
        Left = 506
        Top = 198
        Width = 95
        DataField = 'IMOBANHEIROS'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 18
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit14: TWSDBEdit
        Left = 306
        Top = 198
        Width = 95
        DataField = 'IMOSUITES'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 17
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit15: TWSDBEdit
        Left = 106
        Top = 219
        Width = 95
        DataField = 'IMOSALAS'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 19
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit16: TWSDBEdit
        Left = 306
        Top = 219
        Width = 95
        DataField = 'IMOSACADAS'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 20
        OnKeyDown = WSDBEdit1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBMemo1: TWSDBMemo
        Left = 106
        Top = 241
        Width = 497
        height = 57
        BevelInner = bvNone
        DataField = 'IMODESCRICAO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 21
        OnKeyDown = WSDBMemo1KeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtcidade: TWSDBEdit
        Left = 232
        Top = 90
        Width = 369
        DataField = 'cidade'
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
      object txtcodcidade: TWSDBEdit
        Left = 106
        Top = 92
        Width = 95
        DataField = 'IMOCIDADE'
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
      object WSDBEdit17: TWSDBEdit
        Left = 506
        Top = 114
        Width = 95
        DataField = 'IMOCEP'
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
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object panfotos: TPanel
        Left = 8
        Top = 71
        Width = 593
        Height = 230
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWhite
        TabOrder = 22
        Visible = False
        object Label20: TLabel
          Left = 2
          Top = 2
          Width = 589
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'Fotos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnaddfoto: TSpeedButton
          Left = 17
          Top = 188
          Width = 153
          Height = 19
          Caption = 'Adicionar Foto'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = [fsBold]
          Glyph.Data = {
            52060000424D5206000000000000360000002800000016000000170000000100
            1800000000001C060000C40E0000C40E00000000000000000000CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            0000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D68C6D18CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D6846100FF9E298C6D18CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6ADAAAD737173523C
            29523C29393C39393C39B5B6B5846100FF9E29DEA67BFF9E298C6D1873717373
            7573393C39A5A6A5CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6949294AD
            FFFF9CFBFF9CFBFF52DFFF52BED6846100DEA67BDEA67BDEA67BDEA67BFF9E29
            8C6D1852DFFF52C3D6393C39CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6
            949294ADFFFFADFFFFADFFFFADFFFF846100DEA67BFFFFC6FFFFC6DEA67BDEA6
            7BDEA67BFF9E298C6D1852DFFF393C39CED3D6CED3D6CED3D6CED3D60000CED3
            D6CED3D6949294ADFFFFADFFFFADFFFFE7BE7B8C6D188C6D188C6D18FFFFC6FF
            FFC6DEA67B8C6D188C6D188C6D18E7BE7B737173CED3D6CED3D6CED3D6CED3D6
            0000CED3D6CED3D6949294ADFFFFADFFFFADFFFFADFFFFADFFFFADFFFF9C7D31
            FFFFC6FFFFC6FFF3AD9C7D31B5B6B59CFBFF52DFFF393C39CED3D6CED3D6CED3
            D6CED3D60000CED3D6CED3D6949294CED3D6ADFFFFADFFFFADFFFFADFFFFADFF
            FFAD8A42FFFFC6FFFFC6DEA67BFFD7949CF7FF52DFFFADDFD6393C39CED3D6CE
            D3D6CED3D6CED3D60000CED3D6CED3D6949294ADFFFFADFFFFADFFFFADFFFFAD
            FFFFBD964ADEA67BFFF3ADFFFFC6AD8A429CF7FF9CF7FF9CFBFF52DFFF5A595A
            CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6ADAAADCED3D6ADFFFFCED3D6
            ADFFFFADFFFFBD964AFFE79CFFF3ADE7BE73FFD794ADFFFFADFFFFADFFFFADFF
            FF636563CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6B5B6B5ADFFFFCED3
            D6ADFFFFADFFFFAD8A39DEA67BFFD794E7BE7BADFFFFADFFFFADFFFFADFFFFAD
            FFFFADFFFF737173CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6C6C3C6CE
            D3D6ADFFFFCED3D6D6B26BD6B26BD6B26BD6B26BEFCB84C6C7C6C6C7C6ADDFD6
            52BED652BED652BED6848284CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6
            CECFCEB5B6B5B5B6B5B5B6B5CECBCEADDFD6ADDFD652DFFF52DFFF52DFFF52DF
            FF52DFFF52DFFF52DFFF52BED6C6C3C6CED3D6CED3D6CED3D6CED3D60000CED3
            D6CED3D6CED3D6DEDBDE00F3FF00F3FF00F3FF00F3FF52BED6E7E7E78C8E8C8C
            8E8C8C8E8C8C8E8C8C8E8C8C8E8C8C8E8CCED3D6CED3D6CED3D6CED3D6CED3D6
            0000CED3D6CED3D6CED3D69C9A9C52FFFF63F7FF63F7FF63F7FF00F3FFB5B6B5
            CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D60000CED3D6CED3D6CED3D6CED3D69C9A9C8C8E8C8C8E8C8C8E8C9C9A
            9CCED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
            CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D60000CED3D6CED3D6CED3D6CED3D6CED3
            D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
            D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D60000}
          ParentFont = False
          OnClick = btnaddfotoClick
        end
        object Image: TImage
          Left = 176
          Top = 23
          Width = 406
          Height = 198
          Stretch = True
        end
        object ImageBranco: TImage
          Left = 128
          Top = 8
          Width = 41
          Height = 33
          Picture.Data = {
            0A544A504547496D616765B9200000FFD8FFE000104A46494600010101006000
            600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
            0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
            3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
            3232323232323232323232323232323232323232323232323232323232323232
            32323232323232323232323232FFC00011080187026603012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
            2B81F887F15749F00A476ED0FF00686A9260AD9C7284D8BFDE76C1DBC74E0E7E
            9CD72DE1DFDA2F42D46EE4875CD365D1E3C031CEB21B9527B860A81876C601EF
            D3B807B3D159BA2788348F12582DF68DA8417B6E719689B254919C30EAA71D88
            06B4A800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28AF14F897F1CBFB03517D1BC3096F7
            3790B15BABA98168E33D36A0046581EA4F0318C1E7001ED75425D734883548F4
            B9B55B18F5093052D1EE104AD9E9842727A1ED5F22EA1F17BC7BA9DA3DADC788
            EE1636C64DBC71C0DFF7D46A187E75C609A559C4EB2389436F12063B836739CF
            AE6803EFCA2B90F869E321E38F065B6A9222A5E46C6DEED173B44AA012467B10
            55BBE37632715D7D001451450014514500145145001451450014514500145145
            00473CF1DB5BCB3CCC162890BBB1EC00C935F30F88BF683F13EA46EADF4886D7
            4CB591B114AA85EE153DD892B93ECBC6783DEBDD3E28DFA69DF0C3C453BB150D
            66D0640CF326231FAB0AF8BA801F34D2DC4F24F3C8F2CD2317791D8B33313924
            93D4935D35AFC36F19DE692FA9C1E1BD41AD54E398B0EDC03958CFCEC39EA011
            5EC3F02FE1BE9E7458BC57AC59A5C5D4F21362932E5624538126D23EF160483C
            E000475AF75A00F957E15F863C7BA5F8F74E92DB4BD574DB4F355AF5AE619218
            5E107E60DB800C704ED1C9C9078C647D55451400514514005145140051451400
            5145140051451400514514005145140051451400514514005145140051451400
            5145140051451400514514005145140051451400514514005145140051451400
            5145140051451400514514005145140051451400514514005145140051451401
            C9FC4CD76E7C37F0E75AD52CB8B98E258E36CE0A348EB1EE1EE3767F0AF9B3E1
            278023F1E789A48EF8C8BA5D8A096E4A1C1724E163CF519C31C8ECA7A120D7D4
            DE2CF0F41E2BF0AEA3A1DC36C4BB8B6ABF3F2382191B008CE1829C679C62BE60
            F0AEBFACFC18F1DDCDAEAD60ED0B8115DC00E3CC4CFCB2C67A1C7246782091C1
            E4007D53A4687A568167F64D274FB6B283209482309B8E3196C75380393CD79D
            7C56F84B69E2EB4B8D6348B7D9E21441B555D512EB0470F918DC17201C8EC09C
            018EF7C39E26D23C59A52EA5A2DE25CDB9255B0086461D5594F20FD7A8C11C10
            6B5E803CE7E0B785358F087832E6C75BB516D752DFBCEB18915F085235192A48
            EAA7BD7A35145001451450014514500145145001451450014514500145145007
            9FFC6DFF009243AEFF00DBBFFE94475F2057D7FF001B7FE490EBBFF6EFFF00A5
            11D7C81401F70781A2920F00787229559244D32D832B2ED2A7CB5E08F5ADFAE3
            ACFE24F8212C2D00F1469D878976EE94291C0FBC0F2A7D8E315BBA6F89342D62
            431E99AD69D7B22804A5B5D248C3EA149A00D4A28A2800A28A2800AE7B5DF1CF
            863C33790D9EB1ACDB5ADCCC40589896619E8580076AFF00B4D81EF5D0D7C117
            E2E86A3722F99DEEC4ADE7B48FBD8BE4EE25B9C9CE79A00FBCADAE60BCB68EE6
            D668E782550F1CB13065753D0823822A5AF11FD9BB54BFB9D0359D3672CD6367
            3C6F6CCD93B4C81B7A8278C0DAA703BB93DEBDBA800A28A2800A28A2800A28A2
            800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
            800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2
            800A28A2800A28A2800A28A2800A28A2800A28A2800AC8F11F86748F16694DA6
            EB5669736E4865C921918746561C83F4EA320F048AD7A2803E6ED67E1BF8CBE1
            55F3F883C1FA8CD7B6119DD2A229F30264F12C638914023E61D324E1719AF51F
            863F13ECFC7DA7982654B6D6EDD375C5B2E76B2E40F3133FC39238EA09C73C13
            E815F3A7C4AB097E1A7C56D2FC61A4C5241A75E3AB5C240A0296040963C63037
            A60F3CEE2C78C7001F45D6278ABC55A5783B439756D5A6290A9DA91A72F2BF64
            41DC9FD39270056CC7224B1A491B0647019581C820F435F1EFC60F11DC7883E2
            46AAAF24BF66B099ACE089F184F2CED7C63D5C31CF5E47A60007A33FED32A1D8
            27848B264ED2DA8E091EE3CA38AD7D03F68CD02FEE043ADE9973A4863C4C8FF6
            88C0C672D850C39E3853D6BC5BC1DE27F0D7868BCFAA784135DBB3C2B5D5E011
            20F68BCB209F52C4F418C739CAF14EABA4EB3AC1BCD1B414D16DD93E7B64B833
            297DC4960481B47206D03031C5007DB961A8596AB66979A7DDC1776B26764D04
            81D1B07070471C1045799FC5AF8B373E03BCB4D2F4BB2827BF9E1FB434973B8A
            46858A8E011B892ADDC6303AE6BCB3E016B5ABDAF8FE1D22D5E47D32EE391EEE
            2C1644DA84AC9E8A77055CF7DD8F4AEFBF691D3ADA4F09E93A9B27FA5437DF67
            57CFF03C6CCC0FAF31AFEBEB401CFF0087BF68FD446A0A9E23D26D1ECD88065B
            10C8F1FA9DACCC1BB7191F8D77DAD7C78F046913A450DC5DEA658658D8C20AA7
            008C972A0E73DB38C1CE2BE4CAF55F03FC15BEF137866E75DD4AE5F4FB76819A
            C63D996988070ED9E899C63BB0C9E060900FA1B46F1EF8735BF0B9F1143A9450
            69E9F2CCD72C23303F1F23E4E03723B9CE4633915976BF163C23AC99AD343D6E
            D67D4CC4C6DA0BA592DD6693A2A6F7503258818193EDC57C836ED7B72A9A6DB1
            B89567994A5AC7B9BCC97EEAE10756E7038CF38AEA754F853E37D17499B54BFD
            0648ECE04DF2BACF13945F52AAC5B03BF1C0C93D2803EAFF00085DF896F74159
            BC57A75AD86A7E63030DAC9BD767F09EAD83D78DC7A678CE06F5717F09F57BBD
            73E18E8B7B7D319AE7CB789E42492DB24640493D4ED5193DCF35DA5001451450
            0737F106149FE1CF8911C640D32E1FF158D987EA2BE30D2B4CBCD6B55B5D36C2
            169AEEE6411C68BDC9F5F403A93D80CD7DDB756EB75673DBB805258D91811918
            2315F197C39B99B4AF89FE1F6311128D423B7747182BBDBCB6C8F51B8FE5401E
            DD6FFB37F85D615173AB6B124B8E5A378914FE050FF3AD4D13E03785343D72CB
            5586EF569E6B399678D279E3D85D4E549DA80F0403D7B7A57A8D14005794F8DF
            E3AE8FE14D5E4D2AC2C24D5AF207D973B661147130CE5776189604723181EB90
            4577BE2DD564D0FC21AC6AB095135A59CB2C5BC646F0A76E7DB38AF87259649E
            5796591A491D8B3BB9C96279249EE6803ED5F0178D6D3C79E1A5D5ED6DDED996
            5682781DB77972000901B0370C329CE075AE9EBC7AFF00C1BAFF0083FE0FE991
            784E0035EB375BCBCC2AC923315CCBB060AB904200304954C0C9EACF855F19CF
            8A2F60F0FEBF12C7AABA620BB8C612E580248650308D819E383CFDDE0100B7AB
            FC69B887C6577E1BD07C1F7DACDC5ABB4521494C6772B6D6214237C80E3E6247
            5AF966BEF5D4F508749D26F352B924416903CF2103276A2963FA0AF82A803BCF
            025C7C486B096CBC18BA8FD8E59CB48F044A23F302AE73230C29C6DE323B57AF
            F83A1F8DA35FB5FEDE9AD174B475FB42DD980978F2376D3082DBF19C64E33D6B
            A8F833A7C9A77C29D152687CA9665927238F983C8CC8DC7AA1535D22F85B465F
            143789459FFC4DDA2F24DC79AFCA6318DB9DBDBD280303E207C4ED1FE1FC11C7
            74925DEA53A1786CE22012BC8DCEC7EEAE4633827D01C1C67FC36F8B769F106F
            EEF4F3A5BE9F79045E7AA79DE6ABC60852776D5C1058718EF5F38FC48D6AE35E
            F887ADDDCF26F54BA7821033858A362AA00CF1C0C9F724F7AF5CF82BE0A73F0E
            F58D7228A3FED5D523960B0799BE4554FBA4E3900CABF37B22F1EA01EF3457CE
            BE15F8D1AFF8535C7F0F78F2D9DE3865113CC225496D46001F2A0C489D0E4738
            2482DC0AFA251D64457460CAC32181C82280168A28A0028A28A0028A28A0028A
            28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
            28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A
            28A0028A28A0028A28A0028A2B89F1AFC4197C15A9D9ADCF87750BBD2248CBDC
            EA56C372DB9C900118E4F43C95E0F19C11401DB578CFED23756E9E0AD2ECDA45
            1732EA22548FB9458DC31FA02EBF98AD9BCF8F3E0B85A18EC1F50D5279582245
            6968C1B71E83E7DB9E78E3358FA0F86F5DF88BE39B5F1978B34B974AD374F0BF
            D9FA64AEDBCBAB64330201C6EC9C90376146081C807A77852C67D2FC1FA269F7
            4A12E2D6C2082550738758D548CFD41AF947E306812681F13356460FE4DF486F
            A17720EE12125BA7401F7AF3CFCBF8D7D8B5C2FC4EF8716FF107468D1265B6D5
            2D3735A4ED9D8738CA381FC27039C6463233C8201E21E05F82DFF09C78620D66
            0F12416E5E478E5B716DE634254E304EF1C9186C71C30AF4EF0F7ECF7E14D361
            FF0089CC973AC4E72096668231CF18546DC0E3D58FE15E37A3EAFE2CF82FE2C9
            A29ECCA0930B3DBCA0F957480F0C8C3D3270C3A64823A8AF48BEFDA1D751D3E0
            B4D07C3F7E7589CAAECDCAC15B3C84C2B17CF4E5475CD007B1E87E1CD1BC3564
            2D346D3ADECA1C0C889797C0C02CDD58FB924D709F1F74E17DF0BA7B82CC0D85
            D437000EF93E560FFDFCFD2BBBF0DDD6A57BE1DB1B8D62C5AC75178879F03BAB
            9561C672BC738DD8ED9C76AE6FE30D94F7FF0009F5F86DD773AC49311FECC722
            3B1FFBE549A00F937C31A4AEBDE2AD27497F37CBBCBB8A190C432CA8CC0330EB
            D064FE15F72C36B05B5A47690431C56D146224891405540301401D001C62BE41
            F83040F8B7A0929BFE69863FED8BF3F875FC2BEC09599217645DCC1490BEA7D2
            803E5DFD9F7C3BFDABE3B9356933E4E9309718C732C80A28208E9B779FAA8AFA
            4FC45A6BEB3E19D5B4B8DC46F7B6735BAB9190A5D0A83FAD78B7ECD56D3C2BE2
            969609235DF6D1E5D081BD7CDDCBF519191DB22BDEE803C77F673D4C5CF81AFB
            4F69C3CB677C488F8CA46EAA47E05849FAD7B1579AFC2DF87F7DE06D67C52665
            8574FBDB88FEC01252EC2246971BB3D0ED75FD6BD2A800A28A2800AF8F618C43
            F1FE3897EEA78A028CFB5D57D855F1AF896EC787FE34EA3A8964985A6BAD767C
            A60D9C4DE66DFA8E8476208A00FB2A8A28A00E13E335BCD75F0975E8E08DA470
            91485546485599198FD02827F0AF947C2F7B6DA6F8B746BEBC38B5B6BE82698E
            DDDF22C8A5B8EFC03C57DCB716F0DDDB4B6D73124D04C86392391772BA918208
            3D4115F337C40F817ABE937F3DF785AD9EFF004A605C5BAB6E9E0EE5707971E9
            8CB7620E32403E9B4759115D183230CAB29C823D457C75F11161B3F8BFAB1F0E
            16DE97CAF0F904B30B83B4B05F712EEC01D3A55ED2E4F8BBA5694747D3ECFC51
            059B8D823FB14BF203D958AE507FBA47AD779F0A7E0AEA5A5EB96FE20F14471C
            0D6ADE65AD8865918C9CE1DC8C81B7820039CE338C60807BCDC409736D2DBC83
            292A1461EC460D7C095F7FD7C0F7B693585F5C59DC00B35BCAD14801CE194E0F
            EA2803ED8F027FC93CF0D7FD82AD7FF452D74154342D3E3D27C3FA6E9B148648
            ED2D62815CF56088141FD2AFD007C0B736F359DD4D6D711B453C2E639236182A
            C0E083EE0D7D9DF0CB50B4D47E1AF87E5B375648ACA381F0318923508E08FF00
            781FAF5EF5E7DF15BE0B3EBD7926BDE178A35D42562D7766CC116763FC684F01
            C9EA0900E73C1CEEF2AD134EF8A3E0FBB9C68DA5788AD1892B22C5652491391C
            671B4A37B373EC6803B2FDA4E1D397C41A24D095FED27B6905C00DCF96187964
            8FA9939EF8F6AF58F83F25DC9F0A3406BDF33CD113AAF98307CB12388FF0D817
            1ED8AF13F0F7C20F1978DF5D1AAF8A7ED3656D3B892E6E2EDBFD2241FDD543CA
            9E001B8000740718AFA7ED6D60B2B486D2DA258ADE08D638A341808AA3000F60
            05004B4514500145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            1450014514500145145001451450014514500145145001451450014514500145
            145001451450055D434CD3F56B6FB36A5636D790641F2AE6259173EB8604557D
            37C3BA268D2BCBA5E8DA7D8C8E30ED6B6A91161E84A819AD2A2800A8EE2DE1BB
            B696DAE6249A0990C724722865752304107A823B5494500733E1CF87BE15F095
            E4977A26911DADCC89B1A532C9236DF405D8E3DF18CF15D35145001451450014
            5145001451450015F217C5CF066A9E1FF1E5FDD4913CD69AADD49736D3A21C31
            918B18FF00DE04E31DC60F7C57D7B450065F86D2FA3F0B6911EA9BBFB416CA11
            75BC82DE6841BF24719DD9AD4A28A0028A28A0028A28A002BC1BE247C09BAD53
            56BDD77C313C6D2DCBB4D3584CDB7321C9628E78E4FF000B600C9E71803DE68A
            00F3AF026A3F106D60D3346F11F84912086310C9AA0D4A26215570A5A3058B31
            C00483D4E6BD168A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            2800A28A2803FFD9}
          Stretch = True
          Visible = False
        end
        object txtfoto3: TWSDBEdit
          Left = 17
          Top = 83
          Width = 150
          DataField = 'IMOFOTO3'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          MaxLength = 12
          ParentFont = False
          ParentShowHint = False
          TabOrder = 0
          ColorOnFocus = clBlack
          ColorOnNotFocus = clGray
        end
        object txtfoto4: TWSDBEdit
          Left = 17
          Top = 103
          Width = 150
          DataField = 'IMOFOTO4'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          MaxLength = 12
          ParentFont = False
          ParentShowHint = False
          TabOrder = 1
          ColorOnFocus = clBlack
          ColorOnNotFocus = clGray
        end
        object txtfoto1: TWSDBEdit
          Left = 17
          Top = 43
          Width = 150
          DataField = 'IMOFOTO1'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          MaxLength = 12
          ParentFont = False
          ParentShowHint = False
          TabOrder = 2
          OnKeyDown = WSDBEdit1KeyDown
          ColorOnFocus = clBlack
          ColorOnNotFocus = clGray
        end
        object txtfoto2: TWSDBEdit
          Left = 17
          Top = 63
          Width = 150
          DataField = 'IMOFOTO2'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          MaxLength = 12
          ParentFont = False
          ParentShowHint = False
          TabOrder = 3
          ColorOnFocus = clBlack
          ColorOnNotFocus = clGray
        end
        object txtfoto5: TWSDBEdit
          Left = 17
          Top = 123
          Width = 150
          DataField = 'IMOFOTO5'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          MaxLength = 12
          ParentFont = False
          ParentShowHint = False
          TabOrder = 4
          ColorOnFocus = clBlack
          ColorOnNotFocus = clGray
        end
        object RGFoto: TRadioGroup
          Left = 16
          Top = 144
          Width = 153
          Height = 34
          Columns = 5
          ItemIndex = 0
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5')
          TabOrder = 5
          OnClick = RGFotoClick
        end
      end
    end
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 30
    Width = 627
    Height = 43
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object Label4: TLabel
      Left = 10
      Top = 14
      Width = 86
      Height = 16
      Caption = 'Empreendimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtpesquisa: TWSEdit
      Left = 103
      Top = 13
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
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
  end
  object RLReport: TRLReport
    Left = 23
    Top = 428
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
      Top = 171
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
        Left = 250
        Top = 2
        Width = 218
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Im'#243'veis'
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
      Height = 21
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 11
        Top = 2
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
      object RLLabel3: TRLLabel
        Left = 86
        Top = 2
        Width = 85
        Height = 16
        Caption = 'Empreedimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 398
        Top = 2
        Width = 67
        Height = 16
        Caption = 'Propriet'#225'rio'
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
      Top = 151
      Width = 718
      Height = 20
      object RLDBText7: TRLDBText
        Left = 3
        Top = 2
        Width = 52
        Height = 15
        Alignment = taCenter
        DataField = 'IMOCOD'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 87
        Top = 2
        Width = 300
        Height = 15
        AutoSize = False
        DataField = 'IMOEMPREENDIMENTO'
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 398
        Top = 3
        Width = 300
        Height = 15
        AutoSize = False
        DataField = 'proprietario'
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
    DataSet = DM.CDSImovel
    Left = 8
    Top = 8
  end
  object WSInformacao: TWSInformacao
    Tabela = 'TIMOVEL'
    Programa = 56
    Left = 40
    Top = 8
  end
  object OpenPictureDialog: TOpenPictureDialog
    Title = 'Abrir Figura'
    Left = 28
    Top = 133
  end
end
