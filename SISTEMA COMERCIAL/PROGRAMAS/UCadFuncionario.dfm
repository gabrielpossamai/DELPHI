inherited FrmCadFuncionario: TFrmCadFuncionario
  Left = 333
  Top = 219
  HelpContext = 7
  Caption = 'Cadastro de Funcion'#225'rios'
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
      DataSource = DM.Ds_Tab_Funcionarios
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'FunNome'
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunEnder'
          Width = 141
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunNumFone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunDatAdm'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunSalario'
          Width = 73
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
      Left = 230
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
    object lbCidade: TLabel
      Left = 452
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
    object LbUf: TLabel
      Left = 174
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
    object lbFone: TLabel
      Left = 208
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
    object lbDataAdmissao: TLabel
      Left = 8
      Top = 96
      Width = 103
      Height = 13
      Caption = 'Data de Admiss'#227'o'
      FocusControl = EdtDataAdmissao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSalario: TLabel
      Left = 318
      Top = 96
      Width = 40
      Height = 13
      Caption = 'Sal'#225'rio'
      FocusControl = EdtSalario
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
      Width = 217
      Height = 21
      DataField = 'FunNome'
      DataSource = DM.Ds_Tab_Funcionarios
      TabOrder = 0
    end
    object EdtEndereco: TDBEdit
      Left = 230
      Top = 32
      Width = 217
      Height = 21
      DataField = 'FunEnder'
      DataSource = DM.Ds_Tab_Funcionarios
      TabOrder = 1
    end
    object EdtCep: TDBEdit
      Left = 8
      Top = 72
      Width = 161
      Height = 21
      DataField = 'FunCep'
      DataSource = DM.Ds_Tab_Funcionarios
      TabOrder = 2
    end
    object EdtCidade: TDBEdit
      Left = 452
      Top = 32
      Width = 157
      Height = 21
      DataField = 'FunCid'
      DataSource = DM.Ds_Tab_Funcionarios
      TabOrder = 3
    end
    object EdtUf: TDBEdit
      Left = 174
      Top = 72
      Width = 30
      Height = 21
      DataField = 'FunEst'
      DataSource = DM.Ds_Tab_Funcionarios
      TabOrder = 4
    end
    object EdtFone: TDBEdit
      Left = 208
      Top = 72
      Width = 401
      Height = 21
      DataField = 'FunNumFone'
      DataSource = DM.Ds_Tab_Funcionarios
      TabOrder = 5
    end
    object EdtDataAdmissao: TDBEdit
      Left = 8
      Top = 112
      Width = 305
      Height = 21
      DataField = 'FunDatAdm'
      DataSource = DM.Ds_Tab_Funcionarios
      TabOrder = 6
    end
    object EdtSalario: TDBEdit
      Left = 318
      Top = 112
      Width = 291
      Height = 21
      DataField = 'FunSalario'
      DataSource = DM.Ds_Tab_Funcionarios
      TabOrder = 7
    end
  end
  object RvPrjFuncionario: TRvProject
    Engine = RvSysFuncionario
    ProjectFile = 'C:\Users\Cl'#233'sio\Desktop\SISTEMA\PROGRAMAS\RelFuncionarios.rav'
    Left = 448
    Top = 193
  end
  object RvSysFuncionario: TRvSystem
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
    OnPrint = RvSysFuncionarioPrint
    OnBeforePrint = RvSysFuncionarioBeforePrint
    Left = 488
    Top = 193
  end
  object RvDtCnFuncionario: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = QueryFuncionarios
    Left = 528
    Top = 193
  end
  object QueryFuncionarios: TADOQuery
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
      
        'Select FunNome, FunNumFone, FunDatAdm, FunSalario From Funcionar' +
        'ios'
      'Where FunSalario <= :Qtde')
    Left = 568
    Top = 193
    object QueryFuncionariosFunNome: TWideStringField
      FieldName = 'FunNome'
      Size = 50
    end
    object QueryFuncionariosFunNumFone: TWideStringField
      FieldName = 'FunNumFone'
      Size = 15
    end
    object QueryFuncionariosFunDatAdm: TDateTimeField
      FieldName = 'FunDatAdm'
    end
    object QueryFuncionariosFunSalario: TBCDField
      FieldName = 'FunSalario'
      Precision = 19
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 408
    Top = 193
  end
end
