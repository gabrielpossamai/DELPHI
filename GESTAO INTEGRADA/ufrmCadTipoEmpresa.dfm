inherited frmCadTipoEmpresa: TfrmCadTipoEmpresa
  Caption = 'Cadastro de Tipos de Empresas'
  ClientHeight = 258
  ClientWidth = 383
  ExplicitWidth = 391
  ExplicitHeight = 285
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 294
    Height = 232
    ExplicitWidth = 294
    ExplicitHeight = 232
    inherited pgcManutencaoBD: TPageControl
      Width = 274
      Height = 214
      inherited tbsListagem: TTabSheet
        ExplicitWidth = 507
        ExplicitHeight = 260
        inherited pnlListagem: TPanel
          Width = 266
          Height = 204
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 264
            Height = 202
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_Classificacao'
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
        ExplicitWidth = 266
        ExplicitHeight = 204
        inherited pnlCadastro: TPanel
          Width = 266
          Height = 204
          object lblDescricao: TLabel
            Left = 33
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
            Left = 33
            Top = 98
            Width = 200
            Height = 21
            Anchors = [akLeft, akTop, akRight]
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
    Width = 383
    ExplicitTop = 239
    ExplicitWidth = 383
  end
  inherited pnlBotoes: TPanel
    Left = 305
    Height = 232
    ExplicitLeft = 305
    ExplicitHeight = 232
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDID_Classificacao: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Id.'
      FieldName = 'ID_Classificacao'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
  inherited sqlManuBD: TSQLDataSet
    SchemaName = 'andre'
    CommandText = 
      'select ID_Classificacao, Descricao from classificacao order by D' +
      'escricao'
  end
end
