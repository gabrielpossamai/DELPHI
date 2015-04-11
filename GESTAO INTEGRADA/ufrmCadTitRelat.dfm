inherited frmCadTitRelat: TfrmCadTitRelat
  Left = 282
  Top = 297
  Caption = 'Cadastro de T'#237'tulos dos Relat'#243'rios'
  ClientWidth = 709
  ExplicitWidth = 717
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 620
    ExplicitWidth = 620
    inherited pgcManutencaoBD: TPageControl
      Width = 600
      ExplicitWidth = 600
      inherited tbsListagem: TTabSheet
        ExplicitWidth = 483
        ExplicitHeight = 260
        inherited pnlListagem: TPanel
          Width = 592
          ExplicitWidth = 483
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 590
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_TitRelat'
                Title.Alignment = taCenter
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descricao'
                Width = 469
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tipo'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'TipoDescricao'
                Title.Alignment = taCenter
                Visible = True
              end>
          end
        end
      end
      inherited tbsCadastro: TTabSheet
        ExplicitWidth = 592
        inherited pnlCadastro: TPanel
          Width = 592
          ExplicitWidth = 592
          object lblDescricao: TLabel
            Left = 16
            Top = 67
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = txtDescricao
          end
          object txtDescricao: TDBEdit
            Left = 16
            Top = 83
            Width = 561
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'Descricao'
            DataSource = dtsManuBD
            TabOrder = 0
          end
          object rdgTipo: TDBRadioGroup
            Left = 16
            Top = 126
            Width = 561
            Height = 67
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Tipo'
            DataField = 'Tipo'
            DataSource = dtsManuBD
            Items.Strings = (
              'Relat'#243'rio Mensal'
              'Resumo Geral')
            ParentBackground = True
            TabOrder = 1
            Values.Strings = (
              '1'
              '2')
          end
        end
      end
    end
  end
  inherited stbManutencaoBD: TStatusBar
    Width = 709
    ExplicitWidth = 709
  end
  inherited pnlBotoes: TPanel
    Left = 631
    ExplicitLeft = 631
  end
  inherited cdsManuBD: TClientDataSetUrb
    Params = <
      item
        DataType = ftString
        Name = 'sTipo'
        ParamType = ptUnknown
        Value = '1'
      end>
    OnCalcFields = cdsManuBDCalcFields
    object cdsManuBDID_TitRelat: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Id.'
      FieldName = 'ID_TitRelat'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 100
    end
    object cdsManuBDTipo: TIntegerField
      FieldName = 'Tipo'
      Required = True
      Visible = False
    end
    object cdsManuBDTipoDescricao: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'TipoDescricao'
      Size = 6
      Calculated = True
    end
  end
  inherited ppmRelatorios: TPopupMenu
    Left = 376
    Top = 20
  end
  inherited sqlManuBD: TSQLDataSet
    SchemaName = 'andre'
    CommandText = 
      'SELECT  ID_TitRelat,'#13#10'        Descricao,'#13#10'        Tipo'#13#10'FROM    ' +
      'titrelat'#13#10'WHERE   Tipo LIKE :sTipo'#13#10'ORDER BY Descricao;'
    Params = <
      item
        DataType = ftString
        Name = 'sTipo'
        ParamType = ptInput
        Size = 2
        Value = '1'
      end>
  end
end
