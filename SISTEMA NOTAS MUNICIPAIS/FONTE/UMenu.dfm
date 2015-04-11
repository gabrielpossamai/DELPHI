object FMenu: TFMenu
  Left = 131
  Top = 4
  Width = 812
  Height = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MenuUniversidade
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object img: TImage
    Left = 0
    Top = 0
    Width = 804
    Height = 566
    Align = alClient
    Stretch = True
  end
  object Label1: TLabel
    Left = 16
    Top = 247
    Width = 54
    Height = 266
    Alignment = taRightJustify
    Caption = 
      'Atalhos:'#13#10'Insert -'#13#10'F11 -'#13#10'F10 -'#13#10'Ctrl -'#13#10'F12 -'#13#10'Esc -'#13#10'F8 -'#13#10'F7' +
      ' -'#13#10'F9 -'#13#10'F4 -'#13#10'F2 -'#13#10'F5 -'#13#10'F6 -'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 78
    Top = 266
    Width = 130
    Height = 247
    Caption = 
      'Incluir novo registro'#13#10'Incluir novo padr'#227'o'#13#10'Alterar'#13#10'Delete - Ex' +
      'cluir'#13#10'Salvar'#13#10'Cancelar ou Sair'#13#10'Imprimir'#13#10'Desconectar'#13#10'Atualiza' +
      'r'#13#10'Exportar'#13#10'Importar'#13#10'Visualizar Consulta'#13#10'Visualizar Cadastro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object RlReportAniver: TRLReport
    Left = 36
    Top = 421
    Width = 794
    Height = 1123
    DataSource = DSAniver
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
        Left = 209
        Top = 2
        Width = 300
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Aniversariantes'
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
        Width = 35
        Height = 16
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 494
        Top = 2
        Width = 66
        Height = 16
        Caption = 'Nascimento'
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
        Left = 6
        Top = 2
        Width = 46
        Height = 15
        Alignment = taCenter
        DataField = 'CLICOD'
        DataSource = DSAniver
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
        Width = 394
        Height = 15
        AutoSize = False
        DataField = 'CLINOME'
        DataSource = DSAniver
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 494
        Top = 3
        Width = 25
        Height = 15
        DataField = 'DIA'
        DataSource = DSAniver
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 534
        Top = 3
        Width = 28
        Height = 15
        DataField = 'MES'
        DataSource = DSAniver
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 638
        Top = 3
        Width = 29
        Height = 15
        DataField = 'ANO'
        DataSource = DSAniver
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object MonthCalendar1: TMonthCalendar
    Left = 8
    Top = 15
    Width = 272
    Height = 224
    Date = 39920.547144097230000000
    TabOrder = 1
  end
  object MenuHotel: TMainMenu
    Images = DM.ImageListMenu
    OwnerDraw = True
    Left = 272
    Top = 216
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Cidades1: TMenuItem
        Caption = 'Cidades'
        ImageIndex = 2
        OnClick = Cidades1Click
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        ImageIndex = 0
        OnClick = Clientes1Click
      end
      object Grupos1: TMenuItem
        Caption = 'Grupos'
        ImageIndex = 3
        OnClick = Grupos1Click
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        ImageIndex = 4
        OnClick = Produtos1Click
      end
    end
    object Movimentaes1: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object Reservar1: TMenuItem
        Caption = 'Reservas'
        ImageIndex = 5
        OnClick = Reservar1Click
      end
      object Vendas1: TMenuItem
        Caption = 'Vendas'
        ImageIndex = 17
        OnClick = Vendas1Click
      end
    end
    object Configuracoes: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Programas1: TMenuItem
        Caption = 'Programas'
        ImageIndex = 10
        OnClick = Programas1Click
      end
      object Usuarios1: TMenuItem
        Caption = 'Usuarios'
        ImageIndex = 12
        OnClick = Usuarios1Click
      end
      object CadastrodeEmpresas1: TMenuItem
        Caption = 'Cadastro de Empresas'
        ImageIndex = 8
        OnClick = CadastrodeEmpresas1Click
      end
    end
    object outros1: TMenuItem
      Caption = 'Outros'
      object Calculadora1: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
        OnClick = Calculadora1Click
      end
      object Calendrio1: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object Impressoras1: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
      object Ajuda2: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object SObre1: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object W31: TMenuItem
        Caption = 'Rech Center'
        ImageIndex = 18
        OnClick = W31Click
      end
      object Pginanaweb1: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object ContatoW31: TMenuItem
        Caption = 'Contato Rech Center'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      object Sair2: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
  object RxCalculator: TRxCalculator
    Title = 'Calculadora'
    Left = 176
    Top = 216
  end
  object AppEvents: TAppEvents
    HintPause = 0
    Left = 208
    Top = 216
  end
  object PrinterSetupDialog: TPrinterSetupDialog
    Left = 240
    Top = 216
  end
  object MenuPrefeitura: TMainMenu
    Images = DM.ImageListMenu
    OwnerDraw = True
    Left = 304
    Top = 216
    object MenuItem1: TMenuItem
      Caption = 'Cadastros'
      object MenuItem2: TMenuItem
        Caption = 'Atividades'
        ImageIndex = 26
        OnClick = Atividades1Click
      end
      object MenuItem3: TMenuItem
        Caption = 'Bairros'
        ImageIndex = 25
        OnClick = Bairros1Click
      end
      object MenuItem5: TMenuItem
        Caption = 'Cidades'
        ImageIndex = 2
        OnClick = Cidades1Click
      end
      object MenuItem8: TMenuItem
        Caption = 'Escrit'#243'rios Cont'#225'beis'
        ImageIndex = 17
        OnClick = EscritriosContbeis1Click
      end
    end
    object MenuItem14: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object MenuItem16: TMenuItem
        Caption = 'Cola de Sapateiro'
        ImageIndex = 4
        OnClick = ColadeSapateiro1Click
      end
      object MenuItem18: TMenuItem
        Caption = 'Estabelecimentos'
        ImageIndex = 27
        OnClick = Estabelecimentos1Click
      end
    end
    object MenuItem22: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Programas2: TMenuItem
        Caption = 'Programas'
        ImageIndex = 10
        OnClick = Programas1Click
      end
      object MenuItem24: TMenuItem
        Caption = 'Usuarios'
        ImageIndex = 12
        OnClick = Usuarios1Click
      end
      object MenuItem25: TMenuItem
        Caption = 'Cadastro de Empresas'
        ImageIndex = 8
        OnClick = CadastrodeEmpresas1Click
      end
    end
    object MenuItem26: TMenuItem
      Caption = 'Outros'
      object MenuItem27: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
        OnClick = Calculadora1Click
      end
      object MenuItem28: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object MenuItem29: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
    end
    object MenuItem30: TMenuItem
      Caption = 'Ajuda'
      object MenuItem31: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object MenuItem32: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object MenuItem33: TMenuItem
        Caption = '-'
      end
      object W32: TMenuItem
        Caption = 'Rech Center'
        ImageIndex = 18
        OnClick = W31Click
      end
      object MenuItem35: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object MenuItem36: TMenuItem
        Caption = 'Contato Rech Center'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object MenuItem37: TMenuItem
      Caption = 'Sair'
      object MenuItem38: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
  object MenuMedicos: TMainMenu
    Images = DM.ImageListMenu
    OwnerDraw = True
    Left = 336
    Top = 216
    object MenuItem39: TMenuItem
      Caption = 'Cadastros'
      object MenuItem42: TMenuItem
        Caption = 'Bancos'
        ImageIndex = 20
        OnClick = Bancos1Click
      end
      object MenuItem43: TMenuItem
        Caption = 'Cidades'
        ImageIndex = 2
        OnClick = Cidades1Click
      end
      object MenuItem44: TMenuItem
        Caption = 'Clientes'
        ImageIndex = 0
        OnClick = Clientes1Click
      end
      object MenuItem45: TMenuItem
        Caption = 'Conv'#234'nios'
        ImageIndex = 21
        OnClick = Convenios1Click
      end
      object MenuItem47: TMenuItem
        Caption = 'Exames'
        ImageIndex = 22
        OnClick = Exames1Click
      end
      object MenuItem48: TMenuItem
        Caption = 'Grupos'
        ImageIndex = 3
        OnClick = Grupos1Click
      end
      object MenuItem50: TMenuItem
        Caption = 'Procedimentos AMB'
        ImageIndex = 24
        Visible = False
        OnClick = ProcedimentosAMB1Click
      end
      object MenuItem51: TMenuItem
        Caption = 'Profiss'#245'es'
        ImageIndex = 19
        OnClick = Profisses1Click
      end
    end
    object MenuItem52: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object MenuItem53: TMenuItem
        Caption = 'Agenda'
        ImageIndex = 1
        OnClick = Agenda1Click
      end
      object MenuItem55: TMenuItem
        Caption = 'Contas a Receber'
        ImageIndex = 17
        OnClick = ContasaReceber1Click
      end
      object MenuItem57: TMenuItem
        Caption = 'Hist'#243'rico do Cliente'
        ImageIndex = 23
        OnClick = HistricodoCliente1Click
      end
    end
    object MenuItem60: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Programas3: TMenuItem
        Caption = 'Programas'
        ImageIndex = 10
        OnClick = Programas1Click
      end
      object MenuItem62: TMenuItem
        Caption = 'Usuarios'
        ImageIndex = 12
        OnClick = Usuarios1Click
      end
      object MenuItem63: TMenuItem
        Caption = 'Cadastro de Empresas'
        ImageIndex = 8
        OnClick = CadastrodeEmpresas1Click
      end
    end
    object MenuItem64: TMenuItem
      Caption = 'Outros'
      object MenuItem65: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
        OnClick = Calculadora1Click
      end
      object MenuItem66: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object MenuItem67: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
    end
    object MenuItem68: TMenuItem
      Caption = 'Ajuda'
      object MenuItem69: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object MenuItem70: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object MenuItem71: TMenuItem
        Caption = '-'
      end
      object W33: TMenuItem
        Caption = 'Rech Center'
        ImageIndex = 18
        OnClick = W31Click
      end
      object MenuItem73: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object MenuItem74: TMenuItem
        Caption = 'Contato Rech Center'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object MenuItem75: TMenuItem
      Caption = 'Sair'
      object MenuItem76: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
  object MenuContRec: TMainMenu
    Images = DM.ImageListMenu
    OwnerDraw = True
    Left = 368
    Top = 200
    object MenuItem4: TMenuItem
      Caption = 'Cadastros'
      object MenuItem6: TMenuItem
        Caption = 'Bancos'
        ImageIndex = 20
        OnClick = Bancos1Click
      end
      object MenuItem7: TMenuItem
        Caption = 'Cidades'
        ImageIndex = 2
        OnClick = Cidades1Click
      end
      object MenuItem9: TMenuItem
        Caption = 'Clientes'
        ImageIndex = 0
        OnClick = Clientes1Click
      end
      object CondiesdePagamento1: TMenuItem
        Caption = 'Condi'#231#245'es de Pagamento'
        ImageIndex = 33
        OnClick = CondiesdePagamentos1Click
      end
      object MenuItem12: TMenuItem
        Caption = 'Grupos'
        ImageIndex = 3
        Visible = False
        OnClick = Grupos1Click
      end
      object MenuItem15: TMenuItem
        Caption = 'Profiss'#245'es'
        ImageIndex = 19
        OnClick = Profisses1Click
      end
    end
    object MenuItem17: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object MenuItem20: TMenuItem
        Caption = 'Contas a Receber'
        ImageIndex = 40
        OnClick = ContasaReceber1Click
      end
      object ContasaPagar3: TMenuItem
        Caption = 'Contas a Pagar'
        ImageIndex = 39
        OnClick = ContasaPagar1Click
      end
      object MenuItem21: TMenuItem
        Caption = 'Hist'#243'rico do Cliente'
        ImageIndex = 23
        OnClick = HistricodoCliente1Click
      end
    end
    object MenuItem23: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Programas4: TMenuItem
        Caption = 'Programas'
        ImageIndex = 10
        OnClick = Programas1Click
      end
      object MenuItem40: TMenuItem
        Caption = 'Usuarios'
        ImageIndex = 12
        OnClick = Usuarios1Click
      end
      object MenuItem41: TMenuItem
        Caption = 'Cadastro de Empresas'
        ImageIndex = 8
        OnClick = CadastrodeEmpresas1Click
      end
    end
    object MenuItem46: TMenuItem
      Caption = 'Outros'
      object MenuItem49: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
        OnClick = Calculadora1Click
      end
      object MenuItem54: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object MenuItem56: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
    end
    object MenuItem58: TMenuItem
      Caption = 'Ajuda'
      object MenuItem59: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object MenuItem61: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object MenuItem72: TMenuItem
        Caption = '-'
      end
      object W34: TMenuItem
        Caption = 'Par'#226'metros da Empresa'
        ImageIndex = 18
        OnClick = W31Click
      end
      object MenuItem78: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object MenuItem79: TMenuItem
        Caption = 'Contato'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object MenuItem80: TMenuItem
      Caption = 'Sair'
      object MenuItem81: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
  object MenuFerroVelho: TMainMenu
    Images = DM.ImageListMenu
    OwnerDraw = True
    Left = 400
    Top = 216
    object MenuItem34: TMenuItem
      Caption = 'Cadastros'
      object MenuItem77: TMenuItem
        Caption = 'Cidades'
        ImageIndex = 2
        OnClick = Cidades1Click
      end
      object MenuItem82: TMenuItem
        Caption = 'Clientes'
        ImageIndex = 0
        OnClick = Clientes1Click
      end
      object MenuItem83: TMenuItem
        Caption = 'Grupos'
        ImageIndex = 3
        OnClick = Grupos1Click
      end
      object GruposdoCaixa1: TMenuItem
        Caption = 'Grupos do Caixa'
        ImageIndex = 3
        OnClick = GruposdoCaixa1Click
      end
      object MenuItem84: TMenuItem
        Caption = 'Produtos'
        ImageIndex = 4
        OnClick = Produtos1Click
      end
      object Profisses1: TMenuItem
        Caption = 'Profiss'#245'es'
        ImageIndex = 19
        OnClick = Profisses1Click
      end
    end
    object MenuItem85: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object MenuItem87: TMenuItem
        Caption = 'Vendas'
        ImageIndex = 17
        OnClick = Vendas1Click
      end
      object Compras: TMenuItem
        Caption = 'Compras'
        ImageIndex = 23
        OnClick = ComprasClick
      end
      object CAixa1: TMenuItem
        Caption = 'Caixa'
        ImageIndex = 20
        OnClick = CAixa1Click
      end
      object ContaCorrentedoCliente1: TMenuItem
        Caption = 'Conta Corrente do Cliente'
        ImageIndex = 0
        OnClick = ContaCorrentedoCliente1Click
      end
    end
    object MenuItem88: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Programas5: TMenuItem
        Caption = 'Programas'
        ImageIndex = 10
        OnClick = Programas1Click
      end
      object MenuItem90: TMenuItem
        Caption = 'Usuarios'
        ImageIndex = 12
        OnClick = Usuarios1Click
      end
      object MenuItem91: TMenuItem
        Caption = 'Cadastro de Empresas'
        ImageIndex = 8
        OnClick = CadastrodeEmpresas1Click
      end
      object Parmetros1: TMenuItem
        Caption = 'Par'#226'metros'
        ImageIndex = 28
        OnClick = Parmetros1Click
      end
    end
    object MenuItem92: TMenuItem
      Caption = 'Outros'
      object MenuItem93: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
        OnClick = Calculadora1Click
      end
      object MenuItem94: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object MenuItem95: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
    end
    object MenuItem96: TMenuItem
      Caption = 'Ajuda'
      object MenuItem97: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object MenuItem98: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object MenuItem99: TMenuItem
        Caption = '-'
      end
      object W35: TMenuItem
        Caption = 'Rech Center'
        ImageIndex = 18
        OnClick = W31Click
      end
      object MenuItem101: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object MenuItem102: TMenuItem
        Caption = 'Contato Rech Center'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object MenuItem103: TMenuItem
      Caption = 'Sair'
      object MenuItem104: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
  object MenuRodosul: TMainMenu
    Images = DM.ImageListMenu
    OwnerDraw = True
    Left = 432
    Top = 216
    object MenuItem86: TMenuItem
      Caption = 'Cadastros'
      object Categorias1: TMenuItem
        Caption = 'Categorias'
        ImageIndex = 27
        OnClick = Categorias1Click
      end
      object MenuItem89: TMenuItem
        Caption = 'Marcas'
        ImageIndex = 8
        OnClick = MenuItem89Click
      end
      object Modelos1: TMenuItem
        Caption = 'Modelos'
        ImageIndex = 20
        OnClick = Modelos1Click
      end
    end
    object MenuItem109: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object Pesagens1: TMenuItem
        Caption = 'Pesagens'
        ImageIndex = 23
        OnClick = Pesagens1Click
      end
    end
    object MenuItem114: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Programas6: TMenuItem
        Caption = 'Programas'
        ImageIndex = 10
        OnClick = Programas1Click
      end
      object MenuItem116: TMenuItem
        Caption = 'Usuarios'
        ImageIndex = 12
        OnClick = Usuarios1Click
      end
      object MenuItem117: TMenuItem
        Caption = 'Cadastro de Empresas'
        ImageIndex = 8
        OnClick = CadastrodeEmpresas1Click
      end
      object MenuItem118: TMenuItem
        Caption = 'Par'#226'metros'
        ImageIndex = 28
        OnClick = Parmetros1Click
      end
    end
    object MenuItem119: TMenuItem
      Caption = 'Outros'
      object MenuItem120: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
        OnClick = Calculadora1Click
      end
      object MenuItem121: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object MenuItem122: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
    end
    object MenuItem123: TMenuItem
      Caption = 'Ajuda'
      object MenuItem124: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object MenuItem125: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object MenuItem126: TMenuItem
        Caption = '-'
      end
      object W36: TMenuItem
        Caption = 'Rech Center'
        ImageIndex = 18
        OnClick = W31Click
      end
      object MenuItem128: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object MenuItem129: TMenuItem
        Caption = 'Contato Rech Center'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object MenuItem130: TMenuItem
      Caption = 'Sair'
      object MenuItem131: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
  object MenuFactory: TMainMenu
    Images = DM.ImageListMenu
    OwnerDraw = True
    Left = 464
    Top = 216
    object MenuItem100: TMenuItem
      Caption = 'Cadastros'
      object MenuItem107: TMenuItem
        Caption = 'Banco'
        ImageIndex = 20
        OnClick = Bancos1Click
      end
      object Cidades2: TMenuItem
        Caption = 'Cidades'
        ImageIndex = 2
        OnClick = Cidades1Click
      end
      object Clientes2: TMenuItem
        Caption = 'Clientes'
        ImageIndex = 0
        OnClick = Clientes1Click
      end
      object Contas1: TMenuItem
        Caption = 'Contas'
        ImageIndex = 10
        OnClick = Contas1Click
      end
      object Empresas1: TMenuItem
        Caption = 'Empresas'
        ImageIndex = 8
        OnClick = Empresas1Click
      end
      object GrupodeClientes1: TMenuItem
        Caption = 'Grupo de Clientes'
        ImageIndex = 3
        OnClick = Grupos1Click
      end
      object GrupoFinanceiro1: TMenuItem
        Caption = 'Grupo Financeiro'
        ImageIndex = 3
        OnClick = GrupoFinanceiro1Click
      end
      object Profisso1: TMenuItem
        Caption = 'Profiss'#227'o'
        ImageIndex = 19
        OnClick = Profisses1Click
      end
    end
    object MenuItem108: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object MenuItem110: TMenuItem
        Caption = 'Caixa'
        ImageIndex = 23
        OnClick = CAixa1Click
      end
      object LanamentodeDocumentos1: TMenuItem
        Caption = 'Lan'#231'amento de Documentos'
        ImageIndex = 7
        OnClick = LanamentodeDocumentos1Click
      end
      object DocumentoscomProblemas1: TMenuItem
        Caption = 'Documentos com Problemas'
        ImageIndex = 24
        OnClick = DocumentoscomProblemas1Click
      end
      object ContasaPagar1: TMenuItem
        Caption = 'Contas a Pagar'
        ImageIndex = 17
        OnClick = ContasaPagar1Click
      end
    end
    object MenuItem111: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Programas7: TMenuItem
        Caption = 'Programas'
        ImageIndex = 10
        OnClick = Programas1Click
      end
      object MenuItem113: TMenuItem
        Caption = 'Usuarios'
        ImageIndex = 12
        OnClick = Usuarios1Click
      end
      object MenuItem115: TMenuItem
        Caption = 'Cadastro de Empresas'
        ImageIndex = 8
        OnClick = CadastrodeEmpresas1Click
      end
      object MenuItem127: TMenuItem
        Caption = 'Par'#226'metros'
        ImageIndex = 28
        OnClick = Parmetros1Click
      end
    end
    object MenuItem132: TMenuItem
      Caption = 'Outros'
      object MenuItem133: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
        OnClick = Calculadora1Click
      end
      object MenuItem134: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object MenuItem135: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
    end
    object MenuItem136: TMenuItem
      Caption = 'Ajuda'
      object MenuItem137: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object MenuItem138: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object MenuItem139: TMenuItem
        Caption = '-'
      end
      object W37: TMenuItem
        Caption = 'Rech Center'
        ImageIndex = 18
        OnClick = W31Click
      end
      object MenuItem141: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object MenuItem142: TMenuItem
        Caption = 'Contato Rech Center'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object MenuItem143: TMenuItem
      Caption = 'Sair'
      object MenuItem144: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
  object MenuApae: TMainMenu
    Images = DM.ImageListMenu
    OwnerDraw = True
    Left = 496
    Top = 216
    object MenuItem105: TMenuItem
      Caption = 'Cadastros'
      object MenuItem106: TMenuItem
        Caption = 'Banco'
        ImageIndex = 20
        OnClick = Bancos1Click
      end
      object MenuItem112: TMenuItem
        Caption = 'Cidades'
        ImageIndex = 2
        OnClick = Cidades1Click
      end
      object MenuItem140: TMenuItem
        Caption = 'Clientes'
        ImageIndex = 0
        OnClick = Clientes1Click
      end
      object MenuItem147: TMenuItem
        Caption = 'Grupo de Clientes'
        ImageIndex = 3
        OnClick = Grupos1Click
      end
      object Profisses2: TMenuItem
        Caption = 'Profiss'#245'es'
        ImageIndex = 19
        OnClick = Profisses1Click
      end
    end
    object MenuItem150: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object GerarBoletos1: TMenuItem
        Caption = 'Gerar Boletos'
        ImageIndex = 23
        OnClick = GerarBoletos1Click
      end
      object ContasaReceber1: TMenuItem
        Caption = 'Contas a Receber'
        ImageIndex = 17
        OnClick = ContasaReceber1Click
      end
    end
    object MenuItem155: TMenuItem
      Caption = 'Configura'#231#245'es'
      object MenuItem156: TMenuItem
        Caption = 'Programas'
        ImageIndex = 10
        OnClick = Programas1Click
      end
      object MenuItem157: TMenuItem
        Caption = 'Usuarios'
        ImageIndex = 12
        OnClick = Usuarios1Click
      end
      object MenuItem158: TMenuItem
        Caption = 'Cadastro de Empresas'
        ImageIndex = 8
        OnClick = CadastrodeEmpresas1Click
      end
      object MenuItem159: TMenuItem
        Caption = 'Par'#226'metros'
        ImageIndex = 28
        OnClick = Parmetros1Click
      end
    end
    object MenuItem160: TMenuItem
      Caption = 'Outros'
      object MenuItem161: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
        OnClick = Calculadora1Click
      end
      object MenuItem162: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object MenuItem163: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
    end
    object MenuItem164: TMenuItem
      Caption = 'Ajuda'
      object MenuItem165: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object MenuItem166: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object MenuItem167: TMenuItem
        Caption = '-'
      end
      object MenuItem168: TMenuItem
        Caption = 'Rech Center'
        ImageIndex = 18
        OnClick = W31Click
      end
      object MenuItem169: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object MenuItem170: TMenuItem
        Caption = 'Contato Rech Center'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object MenuItem171: TMenuItem
      Caption = 'Sair'
      object MenuItem172: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
  object MenuEstoque: TMainMenu
    Images = DM.ImageListMenu
    OwnerDraw = True
    Left = 528
    Top = 216
    object MenuItem145: TMenuItem
      Caption = 'Cadastros'
      object Alquotas1: TMenuItem
        Caption = 'Al'#237'quotas'
        ImageIndex = 30
        OnClick = Alquotas1Click
      end
      object MenuItem146: TMenuItem
        Caption = 'Banco'
        ImageIndex = 20
        OnClick = Bancos1Click
      end
      object CFOP1: TMenuItem
        Caption = 'CFOP'
        ImageIndex = 32
        OnClick = CFOP1Click
      end
      object MenuItem148: TMenuItem
        Caption = 'Cidades'
        ImageIndex = 2
        OnClick = Cidades1Click
      end
      object MenuItem149: TMenuItem
        Caption = 'Pessoas e Empresas'
        ImageIndex = 0
        OnClick = Clientes1Click
      end
      object CondiesdePagamentos1: TMenuItem
        Caption = 'Condi'#231#245'es de Pagamentos'
        ImageIndex = 33
        OnClick = CondiesdePagamentos1Click
      end
      object MenuItem151: TMenuItem
        Caption = 'Grupo de Pessoas e Empresas'
        ImageIndex = 3
        OnClick = Grupos1Click
      end
      object GrupodeProdutos: TMenuItem
        Caption = 'Grupo de Produtos'
        ImageIndex = 36
        OnClick = GrupodeProdutosClick
      end
      object MargensdeLucro1: TMenuItem
        Caption = 'Margens de Lucro'
        ImageIndex = 29
        OnClick = MargensdeLucro1Click
      end
      object Observaes1: TMenuItem
        Caption = 'Observa'#231#245'es'
        ImageIndex = 35
        OnClick = Observaes1Click
      end
      object Produtos4: TMenuItem
        Caption = 'Produtos'
        ImageIndex = 4
        OnClick = Produtos1Click
      end
    end
    object MenuItem152: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object MenuItem154: TMenuItem
        Caption = 'Contas a Receber'
        ImageIndex = 40
        OnClick = ContasaReceber1Click
      end
      object ContasaPagar2: TMenuItem
        Caption = 'Contas a Pagar'
        ImageIndex = 39
        OnClick = ContasaPagar1Click
      end
      object HistricodoCliente1: TMenuItem
        Caption = 'Hist'#243'rico do Cliente'
        ImageIndex = 20
        OnClick = HistricodoCliente1Click
      end
      object MenuItem153: TMenuItem
        Caption = 'Nota de Entrada'
        ImageIndex = 38
        OnClick = MenuItem153Click
      end
      object NotasFiscais1: TMenuItem
        Caption = 'Notas Fiscais'
        ImageIndex = 41
        OnClick = NotasFiscais1Click
      end
      object OutrasEntradasSadas1: TMenuItem
        Caption = 'Outras Entradas/Sa'#237'das'
        ImageIndex = 42
        OnClick = OutrasEntradasSadas1Click
      end
      object abeladeAlquotadoICMS1: TMenuItem
        Caption = 'Tabela de Al'#237'quota do ICMS'
        ImageIndex = 37
        OnClick = abeladeAlquotadoICMS1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object Produtos3: TMenuItem
        Caption = 'Relat'#243'rio de Produtos'
        ImageIndex = 4
        OnClick = Produtos3Click
      end
      object RelatriodeVendas1: TMenuItem
        Caption = 'Relat'#243'rio de Vendas'
        ImageIndex = 40
        OnClick = RelatriodeVendas1Click
      end
    end
    object MenuItem173: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Programas8: TMenuItem
        Caption = 'Programas'
        ImageIndex = 10
        OnClick = Programas1Click
      end
      object MenuItem175: TMenuItem
        Caption = 'Usuarios'
        ImageIndex = 12
        OnClick = Usuarios1Click
      end
      object MenuItem176: TMenuItem
        Caption = 'Cadastro de Empresas'
        ImageIndex = 8
        OnClick = CadastrodeEmpresas1Click
      end
      object MenuItem177: TMenuItem
        Caption = 'Par'#226'metros'
        ImageIndex = 28
        OnClick = Parmetros1Click
      end
    end
    object MenuItem178: TMenuItem
      Caption = 'Outros'
      object MenuItem179: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
        OnClick = Calculadora1Click
      end
      object MenuItem180: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object MenuItem181: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
    end
    object MenuItem182: TMenuItem
      Caption = 'Ajuda'
      object MenuItem183: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object MenuItem184: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object MenuItem185: TMenuItem
        Caption = '-'
      end
      object W38: TMenuItem
        Caption = 'Param'#234'tros da Empresa'
        ImageIndex = 0
        OnClick = W31Click
      end
      object MenuItem187: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object MenuItem188: TMenuItem
        Caption = 'Contato'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object MenuItem189: TMenuItem
      Caption = 'Sair'
      object MenuItem190: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
  object QAniver: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CLICOD, CLINOME, EXTRACT(DAY FROM CLINASCIMENTO) AS DIA,'
      'CASE Extract(month from CLINASCIMENTO)'
      '    WHEN 1 THEN '#39'Janeiro'#39
      '    WHEN 2 THEN '#39'Fevereiro'#39
      '    WHEN 3 THEN '#39'Mar'#231'o'#39
      '    WHEN 4 THEN '#39'Abril'#39
      '    WHEN 5 THEN '#39'Maio'#39
      '    WHEN 6 THEN '#39'Junho'#39
      '    WHEN 7 THEN '#39'Julho'#39
      '    WHEN 8 THEN '#39'Agosto'#39
      '    WHEN 9 THEN '#39'Setembro'#39
      '    WHEN 10 THEN '#39'Outubro'#39
      '    WHEN 11 THEN '#39'Novembro'#39
      '    WHEN 12 THEN '#39'Dezembro'#39
      '  end as MES, EXTRACT(YEAR FROM CLINASCIMENTO) AS ANO'
      'FROM TCLIENTE')
    SQLConnection = DM.SQLConnection
    Left = 136
    Top = 384
    object QAniverCLICOD: TIntegerField
      FieldName = 'CLICOD'
      Required = True
    end
    object QAniverCLINOME: TStringField
      FieldName = 'CLINOME'
      Size = 100
    end
    object QAniverDIA: TSmallintField
      FieldName = 'DIA'
    end
    object QAniverMES: TStringField
      FieldName = 'MES'
      FixedChar = True
      Size = 9
    end
    object QAniverANO: TSmallintField
      FieldName = 'ANO'
    end
  end
  object CDSAniver: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPAniver'
    Left = 200
    Top = 384
    object CDSAniverCLICOD: TIntegerField
      FieldName = 'CLICOD'
      Required = True
    end
    object CDSAniverCLINOME: TStringField
      FieldName = 'CLINOME'
      Size = 100
    end
    object CDSAniverDIA: TSmallintField
      FieldName = 'DIA'
    end
    object CDSAniverMES: TStringField
      FieldName = 'MES'
      FixedChar = True
      Size = 9
    end
    object CDSAniverANO: TSmallintField
      FieldName = 'ANO'
    end
  end
  object DSAniver: TDataSource
    DataSet = CDSAniver
    Left = 232
    Top = 384
  end
  object DSPAniver: TDataSetProvider
    DataSet = QAniver
    Left = 168
    Top = 384
  end
  object MenuGestao: TMainMenu
    Images = DM.ImageListMenu
    OwnerDraw = True
    Left = 560
    Top = 216
    object MenuItem191: TMenuItem
      Caption = 'Cadastros'
      object MenuItem192: TMenuItem
        Caption = 'Al'#237'quotas'
        ImageIndex = 30
        OnClick = Alquotas1Click
      end
      object MenuItem193: TMenuItem
        Caption = 'Banco'
        ImageIndex = 20
        OnClick = Bancos1Click
      end
      object MenuItem194: TMenuItem
        Caption = 'CFOP'
        ImageIndex = 32
        OnClick = CFOP1Click
      end
      object MenuItem195: TMenuItem
        Caption = 'Cidades'
        ImageIndex = 2
        OnClick = Cidades1Click
      end
      object MenuItem196: TMenuItem
        Caption = 'Fornecedores'
        ImageIndex = 0
        OnClick = Clientes1Click
      end
      object PessoaseEmpresasSimples1: TMenuItem
        Caption = 'Clientes'
        ImageIndex = 0
        OnClick = PessoaseEmpresasSimples1Click
      end
      object MenuItem197: TMenuItem
        Caption = 'Condi'#231#245'es de Pagamentos'
        ImageIndex = 33
        OnClick = CondiesdePagamentos1Click
      end
      object MenuItem198: TMenuItem
        Caption = 'Grupo de Pessoas e Empresas'
        ImageIndex = 3
        OnClick = Grupos1Click
      end
      object MenuItem199: TMenuItem
        Caption = 'Grupo de Produtos'
        ImageIndex = 36
        OnClick = GrupodeProdutosClick
      end
      object MenuItem200: TMenuItem
        Caption = 'Marcas'
        ImageIndex = 8
        OnClick = MenuItem89Click
      end
      object MenuItem201: TMenuItem
        Caption = 'Modelos'
        ImageIndex = 43
        OnClick = Modelos1Click
      end
      object MenuItem202: TMenuItem
        Caption = 'Margens de Lucro'
        ImageIndex = 29
        OnClick = MargensdeLucro1Click
      end
      object MenuItem203: TMenuItem
        Caption = 'Observa'#231#245'es'
        ImageIndex = 35
        OnClick = Observaes1Click
      end
      object Produtos2: TMenuItem
        Caption = 'Produtos'
        ImageIndex = 4
        OnClick = Produtos1Click
      end
      object MenuItem204: TMenuItem
        Caption = 'Profiss'#245'es'
        ImageIndex = 19
        Visible = False
        OnClick = Profisses1Click
      end
      object Servios1: TMenuItem
        Caption = 'Servi'#231'os'
        ImageIndex = 46
        OnClick = Servios1Click
      end
      object MenuItem205: TMenuItem
        Caption = 'Tipo de Cobran'#231'as'
        ImageIndex = 34
        Visible = False
        OnClick = ipodeCobranas1Click
      end
      object MenuItem206: TMenuItem
        Caption = 'Ve'#237'culos'
        ImageIndex = 44
        OnClick = Veculos1Click
      end
    end
    object MenuItem207: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object MenuItem209: TMenuItem
        Caption = 'Contas a Receber'
        ImageIndex = 40
        OnClick = ContasaReceber1Click
      end
      object MenuItem210: TMenuItem
        Caption = 'Contas a Pagar'
        ImageIndex = 39
        OnClick = ContasaPagar1Click
      end
      object MenuItem211: TMenuItem
        Caption = 'Controle de Cheques'
        ImageIndex = 45
        OnClick = ControledeCheques1Click
      end
      object MenuItem212: TMenuItem
        Caption = 'Hist'#243'rico do Cliente'
        ImageIndex = 20
        OnClick = HistricodoCliente1Click
      end
      object MenuItem213: TMenuItem
        Caption = 'Nota de Entrada'
        ImageIndex = 38
        OnClick = MenuItem153Click
      end
      object MenuItem214: TMenuItem
        Caption = 'Notas Fiscais'
        ImageIndex = 41
        OnClick = NotasFiscais1Click
      end
      object OrdensdeServio1: TMenuItem
        Caption = 'Ordens de Servi'#231'o'
        ImageIndex = 28
        OnClick = OrdensdeServio1Click
      end
      object MenuItem215: TMenuItem
        Caption = 'Outras Entradas/Sa'#237'das'
        ImageIndex = 42
        OnClick = OutrasEntradasSadas1Click
      end
      object MenuItem216: TMenuItem
        Caption = 'Tabela de Al'#237'quota do ICMS'
        ImageIndex = 37
        OnClick = abeladeAlquotadoICMS1Click
      end
    end
    object Caixa2: TMenuItem
      Caption = 'Caixa'
      object MenuItem208: TMenuItem
        Caption = 'Caixa'
        ImageIndex = 20
        OnClick = CAixa1Click
      end
    end
    object MenuItem217: TMenuItem
      Caption = 'Relat'#243'rios'
      object MenuItem218: TMenuItem
        Caption = 'Relat'#243'rio de Produtos'
        ImageIndex = 4
        OnClick = Produtos3Click
      end
      object RelatriodeVendas2: TMenuItem
        Caption = 'Relat'#243'rio de Vendas'
        ImageIndex = 40
        OnClick = RelatriodeVendas1Click
      end
      object FLuxodeCaixa1: TMenuItem
        Caption = 'Fluxo de Caixa'
        ImageIndex = 20
        OnClick = FLuxodeCaixa1Click
      end
    end
    object MenuItem219: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Programas9: TMenuItem
        Caption = 'Programas'
        ImageIndex = 10
        OnClick = Programas1Click
      end
      object MenuItem221: TMenuItem
        Caption = 'Usuarios'
        ImageIndex = 12
        OnClick = Usuarios1Click
      end
      object MenuItem222: TMenuItem
        Caption = 'Cadastro de Empresas'
        ImageIndex = 8
        OnClick = CadastrodeEmpresas1Click
      end
      object MenuItem223: TMenuItem
        Caption = 'Par'#226'metros'
        ImageIndex = 28
        OnClick = Parmetros1Click
      end
    end
    object MenuItem224: TMenuItem
      Caption = 'Outros'
      object MenuItem225: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
        OnClick = Calculadora1Click
      end
      object MenuItem226: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object MenuItem227: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
    end
    object MenuItem228: TMenuItem
      Caption = 'Ajuda'
      object MenuItem229: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object MenuItem230: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object ExecutarComando1: TMenuItem
        Caption = 'Executar Comando'
        ImageIndex = 47
        OnClick = ExecutarComando1Click
      end
      object MenuItem231: TMenuItem
        Caption = '-'
      end
      object W39: TMenuItem
        Caption = 'Param'#234'tros da Empresa'
        ImageIndex = 0
        OnClick = W31Click
      end
      object MenuItem233: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object MenuItem234: TMenuItem
        Caption = 'Contato'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object MenuItem235: TMenuItem
      Caption = 'Sair'
      object MenuItem236: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
  object MenuImobiliaria: TMainMenu
    Images = DM.ImageListMenu
    OwnerDraw = True
    Left = 592
    Top = 216
    object MenuItem10: TMenuItem
      Caption = 'Cadastros'
      object MenuItem174: TMenuItem
        Caption = 'Cidades'
        ImageIndex = 2
        OnClick = Cidades1Click
      end
      object MenuItem186: TMenuItem
        Caption = 'Locadores e Locat'#225'rios'
        ImageIndex = 0
        OnClick = Clientes1Click
      end
      object MenuItem232: TMenuItem
        Caption = 'Grupo de Locadores e Locat'#225'rios'
        ImageIndex = 3
        OnClick = Grupos1Click
      end
      object MenuItem243: TMenuItem
        Caption = 'Profiss'#245'es'
        ImageIndex = 19
        Visible = False
        OnClick = Profisses1Click
      end
      object IMveis1: TMenuItem
        Caption = 'Im'#243'veis'
        ImageIndex = 8
        OnClick = IMveis1Click
      end
    end
    object MenuItem247: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object MenuItem248: TMenuItem
        Caption = 'Caixa'
        ImageIndex = 20
        OnClick = CAixa1Click
      end
      object MenuItem249: TMenuItem
        Caption = 'Contas a Receber'
        ImageIndex = 40
        OnClick = ContasaReceber1Click
      end
      object MenuItem250: TMenuItem
        Caption = 'Contas a Pagar'
        ImageIndex = 39
        OnClick = ContasaPagar1Click
      end
      object Contratos1: TMenuItem
        Caption = 'Contratos'
        ImageIndex = 7
        OnClick = Contratos1Click
      end
      object CompraeVenda1: TMenuItem
        Caption = 'Compra e Venda'
        ImageIndex = 42
        OnClick = CompraeVenda1Click
      end
    end
    object MenuItem262: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Programas10: TMenuItem
        Caption = 'Programas'
        ImageIndex = 10
        OnClick = Programas1Click
      end
      object MenuItem264: TMenuItem
        Caption = 'Usuarios'
        ImageIndex = 12
        OnClick = Usuarios1Click
      end
      object MenuItem265: TMenuItem
        Caption = 'Cadastro de Empresas'
        ImageIndex = 8
        OnClick = CadastrodeEmpresas1Click
      end
      object MenuItem266: TMenuItem
        Caption = 'Par'#226'metros'
        ImageIndex = 28
        OnClick = Parmetros1Click
      end
    end
    object MenuItem267: TMenuItem
      Caption = 'Outros'
      object MenuItem268: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
        OnClick = Calculadora1Click
      end
      object MenuItem269: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object MenuItem270: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
    end
    object MenuItem271: TMenuItem
      Caption = 'Ajuda'
      object MenuItem272: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object MenuItem273: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object MenuItem274: TMenuItem
        Caption = 'Executar Comando'
        ImageIndex = 47
        OnClick = ExecutarComando1Click
      end
      object MenuItem275: TMenuItem
        Caption = '-'
      end
      object W310: TMenuItem
        Caption = 'Param'#234'tros da Empresa'
        ImageIndex = 0
        OnClick = W31Click
      end
      object MenuItem277: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object MenuItem278: TMenuItem
        Caption = 'Contato'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object MenuItem279: TMenuItem
      Caption = 'Sair'
      object MenuItem280: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
  object MenuUniversidade: TMainMenu
    Images = DM.ImageListMenu
    OwnerDraw = True
    Left = 624
    Top = 216
    object MenuItem11: TMenuItem
      Caption = 'Cadastros'
      object MenuItem13: TMenuItem
        Caption = 'Cidades'
        ImageIndex = 2
        OnClick = Cidades1Click
      end
      object Cursos1: TMenuItem
        Caption = 'Cursos'
        ImageIndex = 32
        OnClick = Cursos1Click
      end
      object Diretorias1: TMenuItem
        Caption = 'Diretorias'
        ImageIndex = 3
        OnClick = Diretorias1Click
      end
      object Estudantes1: TMenuItem
        Caption = 'Estudantes'
        ImageIndex = 0
        OnClick = Estudantes1Click
      end
      object Nveis1: TMenuItem
        Caption = 'N'#237'veis'
        ImageIndex = 20
        OnClick = Nveis1Click
      end
      object MenuItem237: TMenuItem
        Caption = 'Profiss'#245'es'
        ImageIndex = 19
        OnClick = Profisses1Click
      end
      object Universidades1: TMenuItem
        Caption = 'Universidades'
        ImageIndex = 8
        OnClick = Universidades1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object DiasViajados1: TMenuItem
        Caption = 'Dias Viajados'
        ImageIndex = 7
        OnClick = DiasViajados1Click
      end
    end
    object MenuItem246: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Programas11: TMenuItem
        Caption = 'Programas'
        ImageIndex = 10
        OnClick = Programas1Click
      end
      object MenuItem252: TMenuItem
        Caption = 'Usuarios'
        ImageIndex = 12
        OnClick = Usuarios1Click
      end
      object MenuItem253: TMenuItem
        Caption = 'Cadastro de Empresas'
        ImageIndex = 8
        OnClick = CadastrodeEmpresas1Click
      end
      object MenuItem254: TMenuItem
        Caption = 'Par'#226'metros'
        ImageIndex = 28
        OnClick = Parmetros1Click
      end
    end
    object MenuItem255: TMenuItem
      Caption = 'Outros'
      object MenuItem256: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
        OnClick = Calculadora1Click
      end
      object MenuItem257: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object MenuItem258: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
    end
    object MenuItem259: TMenuItem
      Caption = 'Ajuda'
      object MenuItem260: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object MenuItem261: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object MenuItem263: TMenuItem
        Caption = 'Executar Comando'
        ImageIndex = 47
        OnClick = ExecutarComando1Click
      end
      object MenuItem276: TMenuItem
        Caption = '-'
      end
      object W311: TMenuItem
        Caption = 'Param'#234'tros da Empresa'
        ImageIndex = 0
        OnClick = W31Click
      end
      object MenuItem282: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object MenuItem283: TMenuItem
        Caption = 'Contato'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object MenuItem284: TMenuItem
      Caption = 'Sair'
      object MenuItem285: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
  object MenuCenso: TMainMenu
    Images = DM.ImageListMenu
    OwnerDraw = True
    Left = 656
    Top = 216
    object MenuItem19: TMenuItem
      Caption = 'Cadastros'
      object MenuItem244: TMenuItem
        Caption = 'Fam'#237'lias'
        ImageIndex = 8
        OnClick = MenuItem244Click
      end
    end
    object MenuItem288: TMenuItem
      Caption = 'Outros'
      object MenuItem289: TMenuItem
        Caption = 'Calculadora'
        ImageIndex = 15
        OnClick = Calculadora1Click
      end
      object MenuItem290: TMenuItem
        Caption = 'Calend'#225'rio'
        ImageIndex = 7
        OnClick = Calendrio1Click
      end
      object MenuItem291: TMenuItem
        Caption = 'Impressoras'
        ImageIndex = 9
        OnClick = Impressoras1Click
      end
    end
    object MenuItem292: TMenuItem
      Caption = 'Ajuda'
      object MenuItem293: TMenuItem
        Caption = 'Ajuda'
        ImageIndex = 6
      end
      object MenuItem294: TMenuItem
        Caption = 'Sobre'
        ImageIndex = 11
        OnClick = SObre1Click
      end
      object MenuItem295: TMenuItem
        Caption = 'Executar Comando'
        ImageIndex = 47
        OnClick = ExecutarComando1Click
      end
      object MenuItem296: TMenuItem
        Caption = '-'
      end
      object W312: TMenuItem
        Caption = 'Param'#234'tros da Empresa'
        ImageIndex = 0
        OnClick = W31Click
      end
      object MenuItem298: TMenuItem
        Caption = 'P'#225'gina na web'
        ImageIndex = 14
        OnClick = Pginanaweb1Click
      end
      object MenuItem299: TMenuItem
        Caption = 'Contato'
        ImageIndex = 13
        OnClick = ContatoW31Click
      end
    end
    object MenuItem300: TMenuItem
      Caption = 'Sair'
      object MenuItem301: TMenuItem
        Caption = 'Sair'
        ImageIndex = 16
        OnClick = Sair2Click
      end
    end
  end
end
