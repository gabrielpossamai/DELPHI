inherited frmRelatRetiradaResiduo: TfrmRelatRetiradaResiduo
  Left = 263
  Top = 102
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Retirada de Res'#237'duos por Per'#237'odo'
  ClientHeight = 437
  ClientWidth = 552
  OnCreate = FormCreate
  ExplicitWidth = 560
  ExplicitHeight = 471
  PixelsPerInch = 96
  TextHeight = 13
  object stbManutencaoBD: TStatusBar
    Left = 0
    Top = 418
    Width = 552
    Height = 19
    Panels = <
      item
        Width = 150
      end>
    ExplicitTop = 422
    ExplicitWidth = 556
  end
  object pgcRelatRetiradaResiduo: TPageControl
    Left = 0
    Top = 0
    Width = 552
    Height = 418
    ActivePage = tshImprimir
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 556
    ExplicitHeight = 422
    object tshImprimir: TTabSheet
      Caption = 'Imprimir'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 548
      ExplicitHeight = 394
      object btnVisializar: TSpeedButton
        Left = 339
        Top = 365
        Width = 95
        Height = 25
        Caption = '&Visualizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnVisializarClick
      end
      object btnImprimirTodos: TSpeedButton
        Left = 445
        Top = 365
        Width = 95
        Height = 25
        Caption = '&Imprimir Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnImprimirTodosClick
      end
      object pgcEmpresas: TPageControl
        Left = 8
        Top = 3
        Width = 532
        Height = 354
        ActivePage = tshEmpresa
        TabOrder = 0
        object tshEmpresa: TTabSheet
          Caption = 'Empresa'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbgRazaoSocial: TDBGridUrb
            Left = 0
            Top = 118
            Width = 522
            Height = 202
            DataSource = dtsRazaoSocial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            ClientDataSet = cdsRazaoSocial
          end
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 521
            Height = 109
            Caption = 'Selecione os manifestos para impress'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label6: TLabel
              Left = 36
              Top = 18
              Width = 56
              Height = 13
              Caption = 'Dt. Inicial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 132
              Top = 18
              Width = 49
              Height = 13
              Caption = 'Dt. Final'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btnBuscar: TSpeedButton
              Left = 419
              Top = 28
              Width = 95
              Height = 25
              Caption = '&Buscar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnBuscarClick
            end
            object Label8: TLabel
              Left = 228
              Top = 18
              Width = 84
              Height = 13
              Caption = 'Situa'#231#227'o Atual'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 36
              Top = 59
              Width = 87
              Height = 13
              Caption = 'Dt. Inicial Prot.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label11: TLabel
              Left = 132
              Top = 59
              Width = 80
              Height = 13
              Caption = 'Dt. Final Prot.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dtpInicial: TDateTimePicker
              Left = 36
              Top = 32
              Width = 83
              Height = 21
              Date = 38319.542181527780000000
              Time = 38319.542181527780000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object dtpFinal: TDateTimePicker
              Left = 132
              Top = 32
              Width = 83
              Height = 21
              Date = 38319.542181527780000000
              Time = 38319.542181527780000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object dblBuscarSituacao: TDBLookupComboBox
              Left = 228
              Top = 32
              Width = 162
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              KeyField = 'ID_Situacao'
              ListField = 'Descricao'
              ListSource = dtsBuscarSituacao
              ParentFont = False
              TabOrder = 2
            end
            object dtpInicialProt: TDateTimePicker
              Left = 36
              Top = 73
              Width = 83
              Height = 21
              Date = 38319.542181527780000000
              Time = 38319.542181527780000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object dtpFinalProt: TDateTimePicker
              Left = 132
              Top = 73
              Width = 83
              Height = 21
              Date = 38319.542181527780000000
              Time = 38319.542181527780000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
          end
        end
        object tshProcedencia: TTabSheet
          Caption = 'Proced'#234'ncia'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dbgGerador: TDBGridUrb
            Left = 0
            Top = 0
            Width = 524
            Height = 326
            Align = alClient
            DataSource = dtsListaGerador
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            ClientDataSet = cdsListaGerador
          end
        end
      end
    end
    object tshConfigurar: TTabSheet
      Caption = 'Configurar'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label3: TLabel
        Left = 11
        Top = 7
        Width = 134
        Height = 13
        Caption = 'T'#237'tulo Relat'#243'rio Mensal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 12
        Top = 55
        Width = 118
        Height = 13
        Caption = 'T'#237'tulo Resumo Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 11
        Top = 187
        Width = 91
        Height = 13
        Caption = 'Dt. do Relat'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object chkMarcarImpressao: TCheckBox
        Left = 393
        Top = 187
        Width = 146
        Height = 13
        Alignment = taLeftJustify
        Caption = 'Marcar como Impresso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object gbxAlteraResp: TGroupBox
        Left = 12
        Top = 105
        Width = 527
        Height = 53
        TabOrder = 1
        object chkAlteraResp: TCheckBox
          Left = 8
          Top = 0
          Width = 136
          Height = 17
          Caption = 'Altera Respons'#225'vel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = chkAlteraRespClick
        end
        object dblResponsavel: TDBLookupComboBox
          Left = 8
          Top = 20
          Width = 508
          Height = 21
          Color = cl3DLight
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'ID_Responsavel'
          ListField = 'Nome'
          ListSource = dtsResponsavel
          ParentFont = False
          TabOrder = 1
        end
      end
      object dtpDataRelat: TDateTimePicker
        Left = 115
        Top = 179
        Width = 83
        Height = 21
        Date = 38319.542181527780000000
        Time = 38319.542181527780000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object dblTitRelatMensal: TDBLookupComboBox
        Left = 11
        Top = 22
        Width = 527
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'ID_TitRelat'
        ListField = 'Descricao'
        ListSource = dtsTitRelatMensal
        ParentFont = False
        TabOrder = 3
      end
      object dblTitRelatResumoGeral: TDBLookupComboBox
        Left = 12
        Top = 70
        Width = 527
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'ID_TitRelat'
        ListField = 'Descricao'
        ListSource = dtsTitRelatResumoGeral
        ParentFont = False
        TabOrder = 4
      end
      object chkMostraProcedencia: TCheckBox
        Left = 393
        Top = 211
        Width = 146
        Height = 13
        Alignment = taLeftJustify
        Caption = 'Mostra Proced'#234'ncia'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 5
      end
    end
  end
  object rdtsGerador: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsGerador
    Left = 368
    Top = 203
  end
  object cdsGerador: TClientDataSetUrb
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'sDataIni'
        ParamType = ptUnknown
        Value = #39'20041201'#39
      end
      item
        DataType = ftString
        Name = 'sDataFim'
        ParamType = ptUnknown
        Value = #39'20041231'#39
      end
      item
        DataType = ftString
        Name = 'iID_Empresa'
        ParamType = ptUnknown
        Value = 37
      end>
    ProviderName = 'dspRelMesEmpresas'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 312
    Top = 203
    object cdsGeradorGerID_Empresa: TIntegerField
      DisplayLabel = 'ID. Empresa'
      FieldName = 'GerID_Empresa'
      Required = True
      Visible = False
      DisplayFormat = '000000'
    end
    object cdsGeradorRazaoSocial: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RazaoSocial'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsGeradorEndereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'Endereco'
      Required = True
      Visible = False
      FixedChar = True
      Size = 80
    end
    object cdsGeradorMunicipio: TStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'Municipio'
      Required = True
      Visible = False
      FixedChar = True
      Size = 30
    end
    object cdsGeradorUF: TStringField
      FieldName = 'UF'
      Required = True
      Visible = False
      FixedChar = True
      Size = 2
    end
    object cdsGeradorNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object cdsGeradorValorContrato: TBCDField
      FieldName = 'ValorContrato'
      Precision = 14
      Size = 2
    end
    object cdsGeradorValorTonelada: TBCDField
      FieldName = 'ValorTonelada'
      Precision = 14
      Size = 2
    end
    object cdsGeradorDtEnvio: TSQLTimeStampField
      DisplayLabel = 'Dt. Envio'
      FieldName = 'DtEnvio'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object dtsGerador: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsGerador
    Left = 340
    Top = 203
  end
  object cdsResumoGeral: TClientDataSetUrb
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'sDataIni'
        ParamType = ptUnknown
        Value = #39'20041201'#39
      end
      item
        DataType = ftString
        Name = 'sDataFim'
        ParamType = ptUnknown
        Value = #39'20041231'#39
      end
      item
        DataType = ftString
        Name = 'iID_Empresa'
        ParamType = ptUnknown
        Value = 37
      end
      item
        DataType = ftString
        Name = 'iID_Situacao'
        ParamType = ptUnknown
        Value = 4
      end>
    ProviderName = 'dspRelMesResumoGeral'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 312
    Top = 231
    object cdsResumoGeralGerID_Empresa: TIntegerField
      FieldName = 'GerID_Empresa'
      Required = True
      Visible = False
    end
    object cdsResumoGeralID_Residuo: TIntegerField
      FieldName = 'ID_Residuo'
      Required = True
      Visible = False
    end
    object cdsResumoGeralDescricao: TStringField
      DisplayLabel = 'Res'#237'duo'
      DisplayWidth = 33
      FieldName = 'Descricao'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsResumoGeralTOTAL: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object cdsResumoGeralValorContrato: TBCDField
      FieldName = 'ValorContrato'
      Visible = False
      Precision = 14
      Size = 2
    end
    object cdsResumoGeralValorTonelada: TBCDField
      FieldName = 'ValorTonelada'
      Visible = False
      Precision = 14
      Size = 2
    end
    object cdsResumoGeralValorBruto: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'ValorBruto'
      DisplayFormat = '###,##0.00'
    end
    object cdsResumoGeralTipoResumoGeral: TIntegerField
      FieldName = 'TipoResumoGeral'
      Required = True
    end
    object cdsResumoGeralSigla: TStringField
      FieldName = 'Sigla'
      Size = 5
    end
    object cdsResumoGeralObs: TBlobField
      FieldName = 'Obs'
      Size = 1
    end
    object cdsResumoGeralDescricao_1: TStringField
      FieldName = 'Descricao_1'
      Required = True
      Size = 30
    end
  end
  object dtsResumoGeral: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsResumoGeral
    Left = 340
    Top = 231
  end
  object rdtsResumoGeral: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsResumoGeral
    Left = 368
    Top = 231
  end
  object cdsListaGerador: TClientDataSetUrb
    Aggregates = <>
    IndexFieldNames = 'ID_Fantasia'
    MasterFields = 'ID_Fantasia'
    Params = <
      item
        DataType = ftString
        Name = 'sDataIni'
        ParamType = ptUnknown
        Value = #39'20041201'#39
      end
      item
        DataType = ftString
        Name = 'sDataFim'
        ParamType = ptUnknown
        Value = #39'20041231'#39
      end
      item
        DataType = ftString
        Name = 'iID_Situacao'
        ParamType = ptUnknown
        Value = 4
      end
      item
        DataType = ftString
        Name = 'iID_Fantasia'
        ParamType = ptUnknown
        Value = 0
      end>
    ProviderName = 'dspListaGestor'
    RemoteServer = frmPrincipal.SharedConnection
    AfterScroll = cdsListaGeradorAfterScroll
    Left = 124
    Top = 249
    object cdsListaGeradorGerID_Empresa: TIntegerField
      FieldName = 'GerID_Empresa'
      Required = True
      Visible = False
    end
    object cdsListaGeradorRazaoSocial: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RazaoSocial'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsListaGeradorEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Visible = False
      FixedChar = True
      Size = 80
    end
    object cdsListaGeradorMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Visible = False
      FixedChar = True
      Size = 30
    end
    object cdsListaGeradorUF: TStringField
      FieldName = 'UF'
      Required = True
      Visible = False
      FixedChar = True
      Size = 2
    end
    object cdsListaGeradorGerResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 30
      FieldName = 'GerResponsavel'
      Size = 50
    end
    object cdsListaGeradorID_Fantasia: TIntegerField
      FieldName = 'ID_Fantasia'
      Required = True
    end
  end
  object dtsListaGerador: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsListaGerador
    Left = 152
    Top = 249
  end
  object cdsRelMesDetalhado: TClientDataSetUrb
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'sDataIni'
        ParamType = ptUnknown
        Value = #39'20060601'#39
      end
      item
        DataType = ftString
        Name = 'sDataFim'
        ParamType = ptUnknown
        Value = #39'20060630'#39
      end
      item
        DataType = ftString
        Name = 'iID_Empresa'
        ParamType = ptUnknown
        Value = 37
      end
      item
        DataType = ftString
        Name = 'iID_Situacao'
        ParamType = ptUnknown
        Value = 4
      end>
    ProviderName = 'dspRelMesDetalhado'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 312
    Top = 259
    object cdsRelMesDetalhadoNumero: TStringField
      FieldName = 'Numero'
      Required = True
    end
    object cdsRelMesDetalhadoGerDtEntrega: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'GerDtEntrega'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object cdsRelMesDetalhadoDescricao: TStringField
      DisplayLabel = 'Res'#237'duo'
      DisplayWidth = 40
      FieldName = 'Descricao'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsRelMesDetalhadoQuantidade: TFMTBCDField
      DisplayLabel = 'Peso'
      DisplayWidth = 10
      FieldName = 'Quantidade'
      DisplayFormat = '#####0.00#'
      Precision = 17
      Size = 6
    end
    object cdsRelMesDetalhadoRecepID_Empresa: TIntegerField
      FieldName = 'RecepID_Empresa'
      Required = True
      Visible = False
    end
    object cdsRelMesDetalhadoID_Residuo: TIntegerField
      FieldName = 'ID_Residuo'
      Required = True
      Visible = False
    end
    object cdsRelMesDetalhadoRazaoSocial: TStringField
      DisplayLabel = 'Receptor'
      FieldName = 'RazaoSocial'
      Required = True
      FixedChar = True
      Size = 50
    end
    object cdsRelMesDetalhadoID_Status: TIntegerField
      FieldName = 'ID_Status'
      Required = True
    end
    object cdsRelMesDetalhadoStatus: TStringField
      FieldName = 'Status'
      Required = True
      Size = 30
    end
    object cdsRelMesDetalhadoSigla: TStringField
      FieldName = 'Sigla'
      Size = 5
    end
    object cdsRelMesDetalhadoDescricao_1: TStringField
      FieldName = 'Descricao_1'
      Required = True
      Size = 30
    end
    object cdsRelMesDetalhadoID_Situacao: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
    end
    object cdsRelMesDetalhadoObs: TBlobField
      FieldName = 'Obs'
      Size = 1
    end
  end
  object dtsRelMesDetalhado: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsRelMesDetalhado
    Left = 340
    Top = 259
  end
  object rdtsRelMesDetalhado: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsRelMesDetalhado
    Left = 368
    Top = 259
  end
  object cdsListaNum: TClientDataSetUrb
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'iID_Empresa'
        ParamType = ptUnknown
        Value = 30
      end
      item
        DataType = ftString
        Name = 'iInicio'
        ParamType = ptUnknown
        Value = 529621
      end
      item
        DataType = ftString
        Name = 'iFim'
        ParamType = ptUnknown
        Value = 529750
      end>
    ProviderName = 'dspListaNum'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 228
    Top = 314
    object cdsListaNumNumero: TIntegerField
      FieldName = 'Numero'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsListaNum: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsListaNum
    Left = 256
    Top = 314
  end
  object cdsTotalNumPeriodo: TClientDataSetUrb
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'iID_Empresa'
        ParamType = ptUnknown
        Value = 30
      end>
    ProviderName = 'dspTotalNumPeriodo'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 228
    Top = 286
    object cdsTotalNumPeriodoID_Empresa: TIntegerField
      FieldName = 'ID_Empresa'
      Required = True
    end
    object cdsTotalNumPeriodoInicio: TIntegerField
      FieldName = 'Inicio'
      Required = True
    end
    object cdsTotalNumPeriodoFim: TIntegerField
      FieldName = 'Fim'
      Required = True
    end
    object cdsTotalNumPeriodoCompleto: TStringField
      FieldName = 'Completo'
    end
    object cdsTotalNumPeriodoTotalPeriodo: TFMTBCDField
      FieldName = 'TotalPeriodo'
      Required = True
      Precision = 17
      Size = 0
    end
  end
  object dtsTotalNumPeriodo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTotalNumPeriodo
    Left = 256
    Top = 286
  end
  object cdsNaoAchou: TClientDataSetUrb
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'iID_Empresa'
        ParamType = ptUnknown
        Value = 30
      end
      item
        DataType = ftString
        Name = 'iInicio'
        ParamType = ptUnknown
        Value = 529621
      end
      item
        DataType = ftString
        Name = 'iFim'
        ParamType = ptUnknown
        Value = 529750
      end>
    RemoteServer = frmPrincipal.SharedConnection
    Left = 312
    Top = 307
    object cdsNaoAchouNumeros: TMemoField
      FieldName = 'Numeros'
      BlobType = ftMemo
    end
  end
  object dtsNaoAchou: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsNaoAchou
    Left = 340
    Top = 307
  end
  object rdtsNaoAchou: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsNaoAchou
    Left = 368
    Top = 307
  end
  object cdsResponsavel: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResponsavel'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 228
    Top = 230
    object cdsResponsavelID_Responsavel: TIntegerField
      FieldName = 'ID_Responsavel'
      Required = True
    end
    object cdsResponsavelNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object cdsResponsavelID_Cargo: TIntegerField
      FieldName = 'ID_Cargo'
    end
    object cdsResponsavelID_Tratamento: TIntegerField
      FieldName = 'ID_Tratamento'
      Required = True
    end
    object cdsResponsavelDescTratSigla: TStringField
      FieldKind = fkLookup
      FieldName = 'DescTratSigla'
      LookupDataSet = cdsTratamento
      LookupKeyFields = 'ID_Tratamento'
      LookupResultField = 'Sigla'
      KeyFields = 'ID_Tratamento'
      Size = 5
      Lookup = True
    end
  end
  object dtsResponsavel: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsResponsavel
    Left = 256
    Top = 230
  end
  object cdsTratamento: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTratamento'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 228
    Top = 258
    object cdsTratamentoID_Tratamento: TIntegerField
      FieldName = 'ID_Tratamento'
      Required = True
    end
    object cdsTratamentoDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
    object cdsTratamentoSigla: TStringField
      FieldName = 'Sigla'
      Size = 5
    end
  end
  object dtsTratamento: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTratamento
    Left = 256
    Top = 258
  end
  object cdsBuscarSituacao: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSituacao'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 228
    Top = 202
    object cdsBuscarSituacaoID_Situacao: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
    end
    object cdsBuscarSituacaoDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object dtsBuscarSituacao: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsBuscarSituacao
    Left = 256
    Top = 202
  end
  object cdsTitRelatMensal: TClientDataSetUrb
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'sTipo'
        ParamType = ptUnknown
        Value = '1'
      end>
    ProviderName = 'dspTitRelat'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 461
    Top = 54
  end
  object dtsTitRelatMensal: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTitRelatMensal
    Left = 489
    Top = 54
  end
  object cdsTitRelatResumoGeral: TClientDataSetUrb
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'sTipo'
        ParamType = ptUnknown
        Value = '2'
      end>
    ProviderName = 'dspTitRelat'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 461
    Top = 88
  end
  object dtsTitRelatResumoGeral: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTitRelatResumoGeral
    Left = 489
    Top = 88
  end
  object cdsRazaoSocial: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProtocEmp'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 124
    Top = 217
    object cdsRazaoSocialID_Fantasia: TIntegerField
      FieldName = 'ID_Fantasia'
      Required = True
    end
    object cdsRazaoSocialDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
    object cdsRazaoSocialRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsRazaoSocialEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object cdsRazaoSocialMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsRazaoSocialUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsRazaoSocialResponsavel: TStringField
      FieldName = 'Responsavel'
      Size = 50
    end
  end
  object dtsRazaoSocial: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsRazaoSocial
    Left = 152
    Top = 217
  end
  object rdtsRazaoSocial: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsRazaoSocial
    Left = 181
    Top = 218
  end
  object cdsProtocManif: TClientDataSetUrb
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ProcedenciaDesc'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ANO_MES'
        DataType = ftVarBytes
        Size = 6
      end
      item
        Name = 'Numero'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_Fantasia'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'GerDtEntrega'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'MES'
        DataType = ftBCD
        Precision = 2
        Size = 4
      end
      item
        Name = 'ANO'
        DataType = ftBCD
        Precision = 4
        Size = 4
      end
      item
        Name = 'RazaoSocial'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Endereco'
        Attributes = [faRequired]
        DataType = ftString
        Size = 80
      end
      item
        Name = 'Municipio'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Responsavel'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ID_Situacao'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_Procedencia'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'GerID_Empresa'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_Fantasia_1'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'iID_Fantasia'
        ParamType = ptUnknown
        Value = 17
      end
      item
        DataType = ftString
        Name = 'sDataIni'
        ParamType = ptUnknown
        Value = #39'20060601'#39
      end
      item
        DataType = ftString
        Name = 'sDataFim'
        ParamType = ptUnknown
        Value = #39'20060630'#39
      end>
    ProviderName = 'dspProtocManif'
    RemoteServer = frmPrincipal.SharedConnection
    StoreDefs = True
    Left = 124
    Top = 287
    object cdsProtocManifNumero: TStringField
      FieldName = 'Numero'
      Required = True
    end
    object cdsProtocManifProcedenciaDesc: TStringField
      FieldName = 'ProcedenciaDesc'
      Required = True
      Size = 30
    end
    object cdsProtocManifANO_MES: TVarBytesField
      FieldName = 'ANO_MES'
      Size = 6
    end
    object cdsProtocManifID_Fantasia: TIntegerField
      FieldName = 'ID_Fantasia'
      Required = True
    end
    object cdsProtocManifDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
    object cdsProtocManifGerDtEntrega: TSQLTimeStampField
      FieldName = 'GerDtEntrega'
      Required = True
    end
    object cdsProtocManifMES: TBCDField
      FieldName = 'MES'
      Precision = 2
      Size = 0
    end
    object cdsProtocManifANO: TBCDField
      FieldName = 'ANO'
      Precision = 4
      Size = 0
    end
    object cdsProtocManifRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsProtocManifEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object cdsProtocManifMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsProtocManifUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsProtocManifResponsavel: TStringField
      FieldName = 'Responsavel'
      Size = 50
    end
    object cdsProtocManifID_Situacao: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
    end
    object cdsProtocManifID_Procedencia: TIntegerField
      FieldName = 'ID_Procedencia'
      Required = True
    end
    object cdsProtocManifGerID_Empresa: TIntegerField
      FieldName = 'GerID_Empresa'
      Required = True
    end
    object cdsProtocManifID_Fantasia_1: TIntegerField
      FieldName = 'ID_Fantasia_1'
      Required = True
    end
  end
  object dtsProtocManif: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsProtocManif
    Left = 152
    Top = 287
  end
  object rdtsProtocManif: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsProtocManif
    Left = 180
    Top = 287
  end
  object rdtsProtocEmpresa: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsProtocEmpresa
    Left = 80
    Top = 185
  end
  object dtsProtocEmpresa: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsProtocEmpresa
    Left = 52
    Top = 185
  end
  object cdsProtocEmpresa: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    RemoteServer = frmPrincipal.SharedConnection
    Left = 24
    Top = 185
    object cdsProtocEmpresaID_Fantasia: TIntegerField
      FieldName = 'ID_Fantasia'
      Required = True
    end
    object cdsProtocEmpresaDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
    object cdsProtocEmpresaRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsProtocEmpresaEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object cdsProtocEmpresaMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsProtocEmpresaUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsProtocEmpresaResponsavel: TStringField
      FieldName = 'Responsavel'
      Size = 50
    end
    object cdsProtocEmpresaTextProtoc: TBlobField
      FieldName = 'TextProtoc'
    end
  end
end
