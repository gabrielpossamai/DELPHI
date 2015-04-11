inherited FrmCadItem: TFrmCadItem
  Left = 246
  Top = 97
  HelpContext = 6
  Caption = 'Cadastro de Itens'
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TGroupBox
    Height = 73
    inherited sbPesquisar: TSpeedButton
      Width = 73
      OnClick = sbPesquisarClick
    end
    inherited sbImprimir: TSpeedButton
      Left = 374
      Top = 42
      Width = 65
    end
    inherited sbFechar: TSpeedButton
      Left = 560
      Top = 28
      Width = 57
    end
    object sbProdFalta: TSpeedButton [4]
      Left = 272
      Top = 42
      Width = 73
      Height = 22
      Caption = 'P&rod em Falta'
      OnClick = sbProdFaltaClick
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
    end
    object sbGrafico: TButton
      Left = 470
      Top = 42
      Width = 65
      Height = 22
      Caption = '&Gr'#225'fico'
      TabOrder = 3
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 73
    Height = 160
    object Label2: TLabel [0]
      Left = 176
      Top = 80
      Width = 45
      Height = 13
      Caption = 'Categoria'
    end
    inherited DBGrid1: TDBGrid
      Height = 143
      DataSource = DM.Ds_Tab_Produtos
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ProdCodigo'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProdNome'
          Width = 204
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProdPrecoVenda'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProdUnidade'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Categoria'
          Width = 173
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
    object lbCod: TLabel
      Left = 10
      Top = 16
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = EdtCod
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNome: TLabel
      Left = 109
      Top = 16
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
    object lbPreco: TLabel
      Left = 8
      Top = 56
      Width = 34
      Height = 13
      Caption = 'Pre'#231'o'
      FocusControl = EdtPreco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbQnt: TLabel
      Left = 414
      Top = 56
      Width = 140
      Height = 13
      Caption = 'Quantidade em Estoque '
      FocusControl = EdtQnt
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbUni: TLabel
      Left = 188
      Top = 56
      Width = 48
      Height = 13
      Caption = 'Unidade'
      FocusControl = EdtUni
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbFornecedor: TLabel
      Left = 294
      Top = 96
      Width = 65
      Height = 13
      Caption = 'Fornecedor'
      FocusControl = EdtFornecedor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 96
      Width = 55
      Height = 13
      Caption = 'Categoria'
      FocusControl = DBLookupComboBox1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtCod: TDBEdit
      Left = 10
      Top = 32
      Width = 95
      Height = 21
      DataField = 'ProdCodigo'
      DataSource = DM.Ds_Tab_Produtos
      TabOrder = 0
    end
    object EdtNome: TDBEdit
      Left = 109
      Top = 32
      Width = 500
      Height = 21
      DataField = 'ProdNome'
      DataSource = DM.Ds_Tab_Produtos
      TabOrder = 1
    end
    object EdtPreco: TDBEdit
      Left = 8
      Top = 72
      Width = 175
      Height = 21
      DataField = 'ProdPrecoVenda'
      DataSource = DM.Ds_Tab_Produtos
      TabOrder = 2
    end
    object EdtQnt: TDBEdit
      Left = 414
      Top = 72
      Width = 193
      Height = 21
      DataField = 'ProdQtdeEst'
      DataSource = DM.Ds_Tab_Produtos
      TabOrder = 3
    end
    object EdtUni: TDBEdit
      Left = 188
      Top = 72
      Width = 221
      Height = 21
      DataField = 'ProdUnidade'
      DataSource = DM.Ds_Tab_Produtos
      TabOrder = 4
    end
    object EdtFornecedor: TDBEdit
      Left = 294
      Top = 112
      Width = 315
      Height = 21
      DataField = 'ProdFornecedor'
      DataSource = DM.Ds_Tab_Produtos
      TabOrder = 5
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 112
      Width = 281
      Height = 21
      DataField = 'Categoria'
      DataSource = DM.Ds_Tab_Produtos
      TabOrder = 6
    end
  end
  object QComprarProdutos: TADOQuery
    Connection = DM.Conexao
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Qtde'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select CatDesc, ProdNome, ProdQtdeEst From Categorias, Produtos '
      'Where CatCodigo = ProdCategoria And ProdQtdeEst <= :Qtde')
    Left = 568
    Top = 193
    object QComprarProdutosCatDesc: TWideStringField
      FieldName = 'CatDesc'
    end
    object QComprarProdutosProdNome: TWideStringField
      FieldName = 'ProdNome'
      Size = 50
    end
    object QComprarProdutosProdQtdeEst: TIntegerField
      FieldName = 'ProdQtdeEst'
    end
  end
  object RvSysProdFalta: TRvSystem
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
    OnPrint = RvSysProdFaltaPrint
    OnBeforePrint = RvSysProdFaltaBeforePrint
    Left = 480
    Top = 193
  end
  object RvDtCnProdFalta: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = QComprarProdutos
    Left = 528
    Top = 193
  end
  object RvPrjProdFalta: TRvProject
    Engine = RvSysProdFalta
    ProjectFile = 'RelProdFalta.rav'
    Left = 440
    Top = 193
  end
end
