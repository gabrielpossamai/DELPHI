inherited frmCadEstadoFisico: TfrmCadEstadoFisico
  Caption = 'Cadastro de Estados F'#237'sico'
  ClientHeight = 268
  ClientWidth = 383
  ExplicitWidth = 391
  ExplicitHeight = 295
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 294
    Height = 234
    inherited pgcManutencaoBD: TPageControl
      Width = 274
      Height = 216
      inherited tbsListagem: TTabSheet
        ExplicitWidth = 507
        ExplicitHeight = 260
        inherited pnlListagem: TPanel
          Width = 266
          Height = 206
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 264
            Height = 204
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_EstadoFisico'
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
        ExplicitHeight = 206
        inherited pnlCadastro: TPanel
          Width = 266
          Height = 206
          object lblDescricao: TLabel
            Left = 54
            Top = 85
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
            Left = 54
            Top = 101
            Width = 158
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
    Top = 249
    Width = 383
    ExplicitTop = 249
    ExplicitWidth = 383
  end
  inherited pnlBotoes: TPanel
    Left = 305
    Height = 234
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDID_EstadoFisico: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Id.'
      FieldName = 'ID_EstadoFisico'
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
    CommandText = 
      'select ID_EstadoFisico, Descricao from estadofisico order by Des' +
      'cricao'
  end
end
