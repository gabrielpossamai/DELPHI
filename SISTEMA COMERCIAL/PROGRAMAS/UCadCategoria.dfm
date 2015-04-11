inherited FrmCadCategoria: TFrmCadCategoria
  Left = 308
  Top = 161
  HelpContext = 5
  Caption = 'Cadastro de Categorias'
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TGroupBox
    inherited sbPesquisar: TSpeedButton
      Left = 270
      Width = 64
      OnClick = sbPesquisarClick
    end
    inherited sbImprimir: TSpeedButton
      Left = 410
      Width = 64
    end
    inherited sbFechar: TSpeedButton
      Left = 550
      Width = 64
    end
    object FiltraCliente: TButton
      Left = 340
      Top = 18
      Width = 64
      Height = 22
      Caption = '&Filtrar'
      TabOrder = 1
      OnClick = FiltraClienteClick
    end
    object sbPlanilha: TButton
      Left = 480
      Top = 18
      Width = 64
      Height = 22
      Caption = '&Exportar'
      TabOrder = 2
      OnClick = sbPlanilhaClick
    end
  end
  inherited GroupBox2: TGroupBox
    inherited DBGrid1: TDBGrid
      DataSource = DM.Ds_Tab_Categorias
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CatCodigo'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CatDesc'
          Width = 493
          Visible = True
        end>
    end
  end
  inherited GroupBox3: TGroupBox
    inherited DBNavigator1: TDBNavigator
      DataSource = DM.Ds_Tab_Categorias
      Hints.Strings = ()
    end
    inherited DBNavigator2: TDBNavigator
      DataSource = DM.Ds_Tab_Categorias
      Hints.Strings = ()
    end
    inherited DBNavigator3: TDBNavigator
      DataSource = DM.Ds_Tab_Categorias
      Hints.Strings = ()
    end
  end
  inherited GroupBox4: TGroupBox
    object lbCod: TLabel
      Left = 8
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
    object lbDesc: TLabel
      Left = 147
      Top = 16
      Width = 58
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = EdtDesc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtCod: TDBEdit
      Left = 8
      Top = 32
      Width = 134
      Height = 21
      DataField = 'CatCodigo'
      DataSource = DM.Ds_Tab_Categorias
      TabOrder = 0
    end
    object EdtDesc: TDBEdit
      Left = 147
      Top = 32
      Width = 462
      Height = 21
      DataField = 'CatDesc'
      DataSource = DM.Ds_Tab_Categorias
      TabOrder = 1
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 568
    Top = 193
  end
end
