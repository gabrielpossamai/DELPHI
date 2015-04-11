inherited FrmMovVenda: TFrmMovVenda
  Left = 342
  Top = 168
  Caption = 'Movimento de Vendas'
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TGroupBox
    inherited sbPesquisar: TSpeedButton
      OnClick = sbPesquisarClick
    end
    inherited sbImprimir: TSpeedButton
      Left = 440
    end
    object SpeedButton4: TSpeedButton [4]
      Left = 355
      Top = 18
      Width = 73
      Height = 22
      Caption = 'Item Venda'
      OnClick = SpeedButton4Click
    end
  end
  inherited GroupBox2: TGroupBox
    inherited DBGrid1: TDBGrid
      DataSource = DM.Ds_Tab_Venda
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Cliente'
          Width = 213
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VendDt_venda'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VendValorProdutos'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VendDesconto'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VendAcrescimo'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VendFrete'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VendQtde'
          Width = 60
          Visible = True
        end>
    end
  end
  inherited GroupBox3: TGroupBox
    inherited DBNavigator1: TDBNavigator
      DataSource = DM.Ds_Tab_Venda
      Hints.Strings = ()
    end
    inherited DBNavigator2: TDBNavigator
      DataSource = DM.Ds_Tab_Venda
      Hints.Strings = ()
    end
    inherited DBNavigator3: TDBNavigator
      DataSource = DM.Ds_Tab_Venda
      Hints.Strings = ()
    end
  end
  inherited GroupBox4: TGroupBox
    object lbDataVenda: TLabel
      Left = 437
      Top = 16
      Width = 86
      Height = 13
      Caption = 'Data da Venda'
      FocusControl = EdtDataVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbValor: TLabel
      Left = 8
      Top = 56
      Width = 30
      Height = 13
      Caption = 'Valor'
      FocusControl = EdtValor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDesc: TLabel
      Left = 238
      Top = 56
      Width = 55
      Height = 13
      Caption = 'Desconto'
      FocusControl = EdtDesc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbAcres: TLabel
      Left = 444
      Top = 56
      Width = 59
      Height = 13
      Caption = 'Acr'#233'scimo'
      FocusControl = EdtAcres
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbFrete: TLabel
      Left = 8
      Top = 96
      Width = 30
      Height = 13
      Caption = 'Frete'
      FocusControl = EdtFrete
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbQnt: TLabel
      Left = 470
      Top = 96
      Width = 66
      Height = 13
      Caption = 'Quantidade'
      FocusControl = EdtQnt
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCliente: TLabel
      Left = 8
      Top = 16
      Width = 40
      Height = 13
      Caption = 'Cliente'
      FocusControl = lcCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtDataVenda: TDBEdit
      Left = 437
      Top = 32
      Width = 172
      Height = 21
      DataField = 'VendDt_venda'
      DataSource = DM.Ds_Tab_Venda
      TabOrder = 0
    end
    object EdtValor: TDBEdit
      Left = 8
      Top = 72
      Width = 225
      Height = 21
      DataField = 'VendValorProdutos'
      DataSource = DM.Ds_Tab_Venda
      TabOrder = 1
    end
    object EdtDesc: TDBEdit
      Left = 238
      Top = 72
      Width = 201
      Height = 21
      DataField = 'VendDesconto'
      DataSource = DM.Ds_Tab_Venda
      TabOrder = 2
    end
    object EdtAcres: TDBEdit
      Left = 444
      Top = 72
      Width = 165
      Height = 21
      DataField = 'VendAcrescimo'
      DataSource = DM.Ds_Tab_Venda
      TabOrder = 3
    end
    object EdtFrete: TDBEdit
      Left = 8
      Top = 112
      Width = 457
      Height = 21
      DataField = 'VendFrete'
      DataSource = DM.Ds_Tab_Venda
      TabOrder = 4
    end
    object EdtQnt: TDBEdit
      Left = 470
      Top = 112
      Width = 139
      Height = 21
      DataField = 'VendQtde'
      DataSource = DM.Ds_Tab_Venda
      TabOrder = 5
    end
    object lcCliente: TDBLookupComboBox
      Left = 8
      Top = 32
      Width = 425
      Height = 21
      DataField = 'Cliente'
      DataSource = DM.Ds_Tab_Venda
      TabOrder = 6
    end
  end
end
