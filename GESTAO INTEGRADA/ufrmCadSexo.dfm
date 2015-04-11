inherited frmCadSexo: TfrmCadSexo
  Left = 260
  Top = 206
  Caption = 'Cadastro de Sexos'
  ClientHeight = 268
  ClientWidth = 427
  ExplicitWidth = 435
  ExplicitHeight = 295
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 338
    Height = 234
    ExplicitWidth = 338
    ExplicitHeight = 234
    inherited pgcManutencaoBD: TPageControl
      Width = 318
      Height = 216
      ExplicitWidth = 318
      ExplicitHeight = 216
      inherited tbsListagem: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 334
        ExplicitHeight = 260
        inherited pnlListagem: TPanel
          Width = 310
          Height = 206
          ExplicitWidth = 334
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 308
            Height = 204
          end
        end
      end
      inherited tbsCadastro: TTabSheet
        ExplicitWidth = 310
        ExplicitHeight = 206
        inherited pnlCadastro: TPanel
          Width = 310
          Height = 206
          object lblDescricao: TLabel
            Left = 55
            Top = 84
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
            Left = 55
            Top = 100
            Width = 200
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
    Top = 249
    Width = 427
    ExplicitTop = 249
    ExplicitWidth = 427
  end
  inherited pnlBotoes: TPanel
    Left = 349
    Height = 234
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDID_Sexo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Id.'
      DisplayWidth = 8
      FieldName = 'ID_Sexo'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 36
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  inherited sqlManuBD: TSQLDataSet
    SchemaName = 'andre'
    CommandText = 'select ID_Sexo, Descricao from sexo order by Descricao'
  end
end
