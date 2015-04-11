inherited frmCadManifestoEstado: TfrmCadManifestoEstado
  Caption = 'Cadastro de Status do Manifesto'
  ClientHeight = 258
  ClientWidth = 384
  ExplicitWidth = 392
  ExplicitHeight = 285
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 295
    Height = 231
    ExplicitWidth = 295
    ExplicitHeight = 231
    inherited pgcManutencaoBD: TPageControl
      Width = 275
      Height = 213
      inherited tbsListagem: TTabSheet
        ExplicitWidth = 507
        ExplicitHeight = 260
        inherited pnlListagem: TPanel
          Width = 267
          Height = 203
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 265
            Height = 201
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_ManifestoEstado'
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
        ExplicitHeight = 203
        inherited pnlCadastro: TPanel
          Width = 267
          Height = 203
          object lblDescricao: TLabel
            Left = 34
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
            Left = 34
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
    Width = 384
    ExplicitTop = 239
    ExplicitWidth = 384
  end
  inherited pnlBotoes: TPanel
    Left = 306
    Height = 231
    ExplicitLeft = 306
    ExplicitHeight = 231
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDID_ManifestoEstado: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Id.'
      FieldName = 'ID_ManifestoEstado'
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
      'select ID_ManifestoEstado, Descricao from manifestoestado order ' +
      'by Descricao'
  end
end
