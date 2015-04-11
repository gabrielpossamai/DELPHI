inherited frmCadTipoLograduro: TfrmCadTipoLograduro
  Left = 294
  Top = 280
  Caption = 'Cadastro de Tipos de Logradouro'
  ClientHeight = 268
  ClientWidth = 451
  ExplicitWidth = 459
  ExplicitHeight = 295
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 362
    Height = 234
    ExplicitWidth = 362
    ExplicitHeight = 234
    inherited pgcManutencaoBD: TPageControl
      Width = 342
      Height = 216
      ExplicitWidth = 342
      ExplicitHeight = 216
      inherited tbsListagem: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 507
        ExplicitHeight = 260
        inherited pnlListagem: TPanel
          Width = 334
          Height = 206
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 332
            Height = 204
          end
        end
      end
      inherited tbsCadastro: TTabSheet
        ExplicitWidth = 334
        ExplicitHeight = 206
        inherited pnlCadastro: TPanel
          Width = 334
          Height = 206
          ExplicitWidth = 334
          ExplicitHeight = 206
          object lblDescricao: TLabel
            Left = 67
            Top = 63
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = txtDescricao
          end
          object Label1: TLabel
            Left = 67
            Top = 106
            Width = 23
            Height = 13
            Caption = 'Sigla'
            FocusControl = DBEdit1
          end
          object txtDescricao: TDBEdit
            Left = 67
            Top = 79
            Width = 200
            Height = 21
            DataField = 'Descricao'
            DataSource = dtsManuBD
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 67
            Top = 122
            Width = 78
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
    Top = 249
    Width = 451
    ExplicitTop = 249
    ExplicitWidth = 451
  end
  inherited pnlBotoes: TPanel
    Left = 373
    Height = 234
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDID_Logra_Tipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Id.'
      FieldName = 'ID_Logra_Tipo'
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
      FieldName = 'Sigla'
      Required = True
      Size = 10
    end
  end
  inherited sqlManuBD: TSQLDataSet
    SchemaName = 'andre'
    CommandText = 
      'SELECT ID_Logra_Tipo, Descricao, Sigla FROM logra_tipo ORDER BY ' +
      'Descricao;'
  end
end
