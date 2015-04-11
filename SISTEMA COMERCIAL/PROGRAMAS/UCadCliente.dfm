inherited FrmCadCliente: TFrmCadCliente
  Left = 299
  Top = 132
  HelpContext = 3
  Caption = 'Cadastro de Clientes'
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TGroupBox
    Height = 73
    inherited sbPesquisar: TSpeedButton
      OnClick = sbPesquisarClick
    end
    inherited sbImprimir: TSpeedButton
      Left = 374
      Top = 42
      Width = 65
      OnClick = sbImprimirClick
    end
    inherited sbFechar: TSpeedButton
      Left = 560
      Top = 28
      Width = 57
    end
    inherited ValorCampo: TEdit
      OnChange = ValorCampoChange
    end
    object FiltraCliente: TButton
      Left = 374
      Top = 18
      Width = 65
      Height = 22
      Caption = '&Filtrar'
      TabOrder = 1
      OnClick = FiltraClienteClick
    end
    object sbPlanilha: TButton
      Left = 470
      Top = 18
      Width = 65
      Height = 22
      Caption = '&Exportar'
      TabOrder = 2
      OnClick = sbPlanilhaClick
    end
    object sbGrafico: TButton
      Left = 470
      Top = 42
      Width = 65
      Height = 22
      Caption = '&Gr'#225'fico'
      TabOrder = 3
      OnClick = sbGraficoClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 73
    Height = 160
    inherited DBGrid1: TDBGrid
      Height = 143
      DataSource = DM.Ds_Tab_Clientes
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CliNome'
          Width = 247
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CliEnd'
          Width = 152
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CliCid'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CliNumFone'
          Width = 77
          Visible = True
        end>
    end
  end
  inherited GroupBox3: TGroupBox
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    inherited DBNavigator2: TDBNavigator
      Hints.Strings = ()
    end
    inherited DBNavigator3: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited GroupBox4: TGroupBox
    object lbNome: TLabel
      Left = 8
      Top = 14
      Width = 33
      Height = 13
      Caption = 'Nome'
      FocusControl = EdtNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbEndereco: TLabel
      Left = 254
      Top = 14
      Width = 55
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = EdtEndereco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCep: TLabel
      Left = 8
      Top = 54
      Width = 23
      Height = 13
      Caption = 'Cep'
      FocusControl = EdtCep
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCidade: TLabel
      Left = 460
      Top = 14
      Width = 40
      Height = 13
      Caption = 'Cidade'
      FocusControl = EdtCidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbUf: TLabel
      Left = 134
      Top = 54
      Width = 17
      Height = 13
      Caption = 'UF'
      FocusControl = EdtUf
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbFone: TLabel
      Left = 170
      Top = 54
      Width = 29
      Height = 13
      Caption = 'Fone'
      FocusControl = EdtFone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbEmail: TLabel
      Left = 374
      Top = 54
      Width = 35
      Height = 13
      Caption = 'E-mail'
      FocusControl = EdtEmail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCpf: TLabel
      Left = 8
      Top = 94
      Width = 24
      Height = 13
      Caption = 'CPF'
      FocusControl = EdtCpf
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbRg: TLabel
      Left = 212
      Top = 94
      Width = 19
      Height = 13
      Caption = 'RG'
      FocusControl = EdtRg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbContato: TLabel
      Left = 416
      Top = 94
      Width = 45
      Height = 13
      Caption = 'Contato'
      FocusControl = EdtContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtNome: TDBEdit
      Left = 8
      Top = 30
      Width = 241
      Height = 21
      DataField = 'CliNome'
      DataSource = DM.Ds_Tab_Clientes
      TabOrder = 0
    end
    object EdtEndereco: TDBEdit
      Left = 254
      Top = 30
      Width = 201
      Height = 21
      DataField = 'CliEnd'
      DataSource = DM.Ds_Tab_Clientes
      TabOrder = 1
    end
    object EdtCep: TDBEdit
      Left = 8
      Top = 70
      Width = 121
      Height = 21
      DataField = 'CliCep'
      DataSource = DM.Ds_Tab_Clientes
      TabOrder = 2
    end
    object EdtCidade: TDBEdit
      Left = 460
      Top = 30
      Width = 149
      Height = 21
      DataField = 'CliCid'
      DataSource = DM.Ds_Tab_Clientes
      TabOrder = 3
    end
    object EdtUf: TDBEdit
      Left = 134
      Top = 70
      Width = 30
      Height = 21
      DataField = 'CliEst'
      DataSource = DM.Ds_Tab_Clientes
      TabOrder = 4
    end
    object EdtFone: TDBEdit
      Left = 170
      Top = 70
      Width = 199
      Height = 21
      DataField = 'CliNumFone'
      DataSource = DM.Ds_Tab_Clientes
      TabOrder = 5
    end
    object EdtEmail: TDBEdit
      Left = 374
      Top = 70
      Width = 235
      Height = 21
      DataField = 'CliEmail'
      DataSource = DM.Ds_Tab_Clientes
      TabOrder = 6
    end
    object EdtCpf: TDBEdit
      Left = 8
      Top = 110
      Width = 199
      Height = 21
      DataField = 'CliDoc1'
      DataSource = DM.Ds_Tab_Clientes
      TabOrder = 7
    end
    object EdtRg: TDBEdit
      Left = 212
      Top = 110
      Width = 199
      Height = 21
      DataField = 'CliDoc2'
      DataSource = DM.Ds_Tab_Clientes
      TabOrder = 8
    end
    object EdtContato: TDBEdit
      Left = 416
      Top = 110
      Width = 193
      Height = 21
      DataField = 'CliContato'
      DataSource = DM.Ds_Tab_Clientes
      TabOrder = 9
    end
  end
  object QueryClientes: TADOQuery
    Connection = DM.Conexao
    Parameters = <
      item
        Name = 'Cidade'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select * From Clientes Where  CliCid = :Cidade Order By CliNome')
    Left = 576
    Top = 185
    object QueryClientesCliCodigo: TAutoIncField
      FieldName = 'CliCodigo'
      ReadOnly = True
    end
    object QueryClientesCliNome: TWideStringField
      FieldName = 'CliNome'
      Size = 50
    end
    object QueryClientesCliEnd: TWideStringField
      FieldName = 'CliEnd'
      Size = 40
    end
    object QueryClientesCliCep: TWideStringField
      FieldName = 'CliCep'
      Size = 9
    end
    object QueryClientesCliCid: TWideStringField
      FieldName = 'CliCid'
      Size = 35
    end
    object QueryClientesCliEst: TWideStringField
      FieldName = 'CliEst'
      Size = 2
    end
    object QueryClientesCliNumFone: TWideStringField
      FieldName = 'CliNumFone'
      Size = 15
    end
    object QueryClientesCliEmail: TWideStringField
      FieldName = 'CliEmail'
      Size = 50
    end
    object QueryClientesCliDoc1: TWideStringField
      FieldName = 'CliDoc1'
      Size = 15
    end
    object QueryClientesCliDoc2: TWideStringField
      FieldName = 'CliDoc2'
      Size = 15
    end
    object QueryClientesCliContato: TWideStringField
      FieldName = 'CliContato'
      Size = 50
    end
  end
  object RvDtCnCliente: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = QueryClientes
    Left = 528
    Top = 185
  end
  object RvSysCliente: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    OnPrint = RvSysClientePrint
    OnBeforePrint = RvSysClienteBeforePrint
    Left = 480
    Top = 185
  end
  object RvPrjCliente: TRvProject
    Engine = RvSysCliente
    ProjectFile = 'RelClientes.rav'
    Left = 432
    Top = 185
  end
  object SaveDialog1: TSaveDialog
    Left = 384
    Top = 185
  end
end
