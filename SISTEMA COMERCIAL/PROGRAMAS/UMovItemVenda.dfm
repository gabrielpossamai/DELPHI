inherited FrmMovItemVenda: TFrmMovItemVenda
  Left = 368
  Top = 133
  Caption = 'Itens da Venda '
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TGroupBox
    inherited sbPesquisar: TSpeedButton
      OnClick = sbPesquisarClick
    end
  end
  inherited GroupBox2: TGroupBox
    inherited DBGrid1: TDBGrid
      DataSource = DM.Ds_Tab_ItemVenda
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ItVeVenda'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Produto'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ItVeValorUnitario'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ItVeDescontoItem'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ItVeQtde'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Width = 72
          Visible = True
        end>
    end
  end
  inherited GroupBox3: TGroupBox
    inherited DBNavigator1: TDBNavigator
      DataSource = DM.Ds_Tab_ItemVenda
      Hints.Strings = ()
    end
    inherited DBNavigator2: TDBNavigator
      DataSource = DM.Ds_Tab_ItemVenda
      Hints.Strings = ()
    end
    inherited DBNavigator3: TDBNavigator
      DataSource = DM.Ds_Tab_ItemVenda
      Hints.Strings = ()
    end
  end
  inherited GroupBox4: TGroupBox
    object lbItens: TLabel
      Left = 8
      Top = 16
      Width = 29
      Height = 13
      Caption = 'Itens'
      FocusControl = EdtItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbValUnit: TLabel
      Left = 8
      Top = 56
      Width = 78
      Height = 13
      Caption = 'Valor Unit'#225'rio'
      FocusControl = EdtValUnit
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDesc: TLabel
      Left = 310
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
    object lbQnt: TLabel
      Left = 8
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
    object lbTotal: TLabel
      Left = 306
      Top = 96
      Width = 30
      Height = 13
      Caption = 'Total'
      FocusControl = EdtTotal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbProd: TLabel
      Left = 170
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Produto'
      FocusControl = lcProduto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtItens: TDBEdit
      Left = 8
      Top = 32
      Width = 157
      Height = 21
      DataField = 'ItVeVenda'
      DataSource = DM.Ds_Tab_ItemVenda
      TabOrder = 0
    end
    object EdtValUnit: TDBEdit
      Left = 8
      Top = 72
      Width = 297
      Height = 21
      DataField = 'ItVeValorUnitario'
      DataSource = DM.Ds_Tab_ItemVenda
      TabOrder = 1
    end
    object EdtDesc: TDBEdit
      Left = 310
      Top = 72
      Width = 299
      Height = 21
      DataField = 'ItVeDescontoItem'
      DataSource = DM.Ds_Tab_ItemVenda
      TabOrder = 2
    end
    object EdtQnt: TDBEdit
      Left = 8
      Top = 112
      Width = 293
      Height = 21
      DataField = 'ItVeQtde'
      DataSource = DM.Ds_Tab_ItemVenda
      TabOrder = 3
    end
    object EdtTotal: TDBEdit
      Left = 306
      Top = 112
      Width = 303
      Height = 21
      DataField = 'Total'
      DataSource = DM.Ds_Tab_ItemVenda
      TabOrder = 4
    end
    object lcProduto: TDBLookupComboBox
      Left = 170
      Top = 32
      Width = 439
      Height = 21
      DataField = 'Produto'
      DataSource = DM.Ds_Tab_ItemVenda
      TabOrder = 5
    end
  end
end
