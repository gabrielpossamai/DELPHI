inherited FrmCadFornecedor: TFrmCadFornecedor
  Left = 369
  Top = 212
  HelpContext = 4
  Caption = 'Cadastro de Fornecedores'
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
      DataSource = DM.Ds_Tab_Fornecedores
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ForRazao'
          Width = 223
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ForEnd'
          Width = 161
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ForCid'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ForNumFone'
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
      Top = 16
      Width = 76
      Height = 13
      Caption = 'Raz'#227'o Social'
      FocusControl = EdtNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbEndereco: TLabel
      Left = 222
      Top = 16
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
    object lbCidade: TLabel
      Left = 454
      Top = 16
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
      Left = 121
      Top = 56
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
    object lbCep: TLabel
      Left = 8
      Top = 56
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
    object lbContato: TLabel
      Left = 360
      Top = 56
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
    object lbFone: TLabel
      Left = 156
      Top = 56
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
    object lbSite: TLabel
      Left = 8
      Top = 96
      Width = 23
      Height = 13
      Caption = 'Site'
      FocusControl = EdtSite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtNome: TDBEdit
      Left = 8
      Top = 32
      Width = 209
      Height = 21
      DataField = 'ForRazao'
      DataSource = DM.Ds_Tab_Fornecedores
      TabOrder = 0
    end
    object EdtEndereco: TDBEdit
      Left = 222
      Top = 32
      Width = 227
      Height = 21
      DataField = 'ForEnd'
      DataSource = DM.Ds_Tab_Fornecedores
      TabOrder = 1
    end
    object EdtCidade: TDBEdit
      Left = 454
      Top = 32
      Width = 155
      Height = 21
      DataField = 'ForCid'
      DataSource = DM.Ds_Tab_Fornecedores
      TabOrder = 2
    end
    object EdtUf: TDBEdit
      Left = 121
      Top = 72
      Width = 30
      Height = 21
      DataField = 'ForEst'
      DataSource = DM.Ds_Tab_Fornecedores
      TabOrder = 3
    end
    object EdtCep: TDBEdit
      Left = 8
      Top = 72
      Width = 108
      Height = 21
      DataField = 'ForCep'
      DataSource = DM.Ds_Tab_Fornecedores
      TabOrder = 4
    end
    object EdtContato: TDBEdit
      Left = 360
      Top = 72
      Width = 249
      Height = 21
      DataField = 'ForCont'
      DataSource = DM.Ds_Tab_Fornecedores
      TabOrder = 5
    end
    object EdtFone: TDBEdit
      Left = 156
      Top = 72
      Width = 199
      Height = 21
      DataField = 'ForNumFone'
      DataSource = DM.Ds_Tab_Fornecedores
      TabOrder = 6
    end
    object EdtSite: TDBEdit
      Left = 8
      Top = 112
      Width = 601
      Height = 21
      DataField = 'ForHomPag'
      DataSource = DM.Ds_Tab_Fornecedores
      TabOrder = 7
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 576
    Top = 193
  end
  object QueryFornecedores: TADOQuery
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
      
        'Select * From Fornecedores Where  ForCid = :Cidade Order By ForR' +
        'azao')
    Left = 536
    Top = 193
    object QueryFornecedoresForCodigo: TAutoIncField
      FieldName = 'ForCodigo'
      ReadOnly = True
    end
    object QueryFornecedoresForRazao: TWideStringField
      FieldName = 'ForRazao'
      Size = 40
    end
    object QueryFornecedoresForEnd: TWideStringField
      FieldName = 'ForEnd'
      Size = 40
    end
    object QueryFornecedoresForCid: TWideStringField
      FieldName = 'ForCid'
      Size = 35
    end
    object QueryFornecedoresForEst: TWideStringField
      FieldName = 'ForEst'
      Size = 2
    end
    object QueryFornecedoresForCep: TWideStringField
      FieldName = 'ForCep'
      Size = 8
    end
    object QueryFornecedoresForCont: TWideStringField
      FieldName = 'ForCont'
      Size = 35
    end
    object QueryFornecedoresForNumFone: TWideStringField
      FieldName = 'ForNumFone'
      Size = 15
    end
    object QueryFornecedoresForHomPag: TWideStringField
      FieldName = 'ForHomPag'
      Size = 50
    end
  end
  object RvDtCnFornecedor: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = QueryFornecedores
    Left = 496
    Top = 193
  end
  object RvSysFornecedor: TRvSystem
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
    OnPrint = RvSysFornecedorPrint
    OnBeforePrint = RvSysFornecedorBeforePrint
    Left = 456
    Top = 193
  end
  object RvPrjFornecedor: TRvProject
    Engine = RvSysFornecedor
    ProjectFile = 'C:\Users\Cl'#233'sio\Desktop\SISTEMA\PROGRAMAS\RelFornecedores.rav'
    Left = 416
    Top = 193
  end
end
