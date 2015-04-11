inherited frmCadNomeFantasia: TfrmCadNomeFantasia
  Left = 447
  Top = 257
  Caption = 'Cadastro de Nome Fantasia'
  ClientHeight = 258
  ClientWidth = 384
  ExplicitWidth = 392
  ExplicitHeight = 285
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 295
    Height = 232
    ExplicitWidth = 295
    ExplicitHeight = 232
    inherited pgcManutencaoBD: TPageControl
      Width = 275
      Height = 214
      ExplicitWidth = 275
      ExplicitHeight = 214
      inherited tbsListagem: TTabSheet
        ExplicitWidth = 267
        ExplicitHeight = 204
        inherited pnlListagem: TPanel
          Width = 267
          Height = 204
          ExplicitWidth = 267
          ExplicitHeight = 204
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 265
            Height = 202
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_Fantasia'
                Title.Alignment = taCenter
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descricao'
                Visible = True
              end>
          end
        end
      end
      inherited tbsCadastro: TTabSheet
        ExplicitWidth = 267
        ExplicitHeight = 204
        inherited pnlCadastro: TPanel
          Width = 267
          Height = 204
          ExplicitWidth = 267
          ExplicitHeight = 204
          object lblDescricao: TLabel
            Left = 9
            Top = 83
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
          object txtDescricao: TDBEdit
            Left = 9
            Top = 99
            Width = 250
            Height = 21
            DataField = 'Descricao'
            DataSource = dtsManuBD
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited stbManutencaoBD: TStatusBar
    Top = 239
    Width = 384
    ExplicitTop = 239
    ExplicitWidth = 384
  end
  inherited pnlBotoes: TPanel
    Left = 306
    Height = 232
    ExplicitLeft = 306
    ExplicitHeight = 232
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDID_Fantasia: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Id.'
      FieldName = 'ID_Fantasia'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  inherited sqlManuBD: TSQLDataSet
    SchemaName = 'andre'
    CommandText = 'select ID_Fantasia, Descricao from fantasia order by Descricao'
  end
end
