inherited frmCadUnidadeMedida: TfrmCadUnidadeMedida
  Caption = 'Cadastro de Unidades de Medida'
  ClientHeight = 258
  ClientWidth = 419
  ExplicitWidth = 427
  ExplicitHeight = 285
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 330
    Height = 232
    ExplicitWidth = 330
    ExplicitHeight = 232
    inherited pgcManutencaoBD: TPageControl
      Width = 310
      Height = 214
      inherited tbsListagem: TTabSheet
        ExplicitWidth = 507
        ExplicitHeight = 260
        inherited pnlListagem: TPanel
          Width = 302
          Height = 204
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 300
            Height = 202
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_UnidadeMedida'
                Title.Alignment = taCenter
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descricao'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sigla'
                Title.Alignment = taCenter
                Visible = True
              end>
          end
        end
      end
      inherited tbsCadastro: TTabSheet
        ExplicitWidth = 302
        ExplicitHeight = 204
        inherited pnlCadastro: TPanel
          Width = 302
          Height = 204
          object lblDescricao: TLabel
            Left = 64
            Top = 63
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = txtDescricao
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblSigla: TLabel
            Left = 64
            Top = 103
            Width = 23
            Height = 13
            Caption = 'Sigla'
            FocusControl = txtSigla
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object txtDescricao: TDBEdit
            Left = 64
            Top = 79
            Width = 200
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'Descricao'
            DataSource = dtsManuBD
            TabOrder = 0
          end
          object txtSigla: TDBEdit
            Left = 64
            Top = 119
            Width = 69
            Height = 21
            DataField = 'Sigla'
            DataSource = dtsManuBD
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited stbManutencaoBD: TStatusBar
    Top = 239
    Width = 419
    ExplicitTop = 239
    ExplicitWidth = 419
  end
  inherited pnlBotoes: TPanel
    Left = 341
    Height = 232
    ExplicitLeft = 341
    ExplicitHeight = 232
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDID_UnidadeMedida: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Id.'
      FieldName = 'ID_UnidadeMedida'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
    object cdsManuBDSigla: TStringField
      Alignment = taCenter
      FieldName = 'Sigla'
      Size = 5
    end
  end
  inherited sqlManuBD: TSQLDataSet
    SchemaName = 'andre'
    CommandText = 
      'select ID_UnidadeMedida, Descricao, Sigla from unidademedida ord' +
      'er by Sigla'
  end
end
