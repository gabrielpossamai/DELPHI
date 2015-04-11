inherited frmCadTratDisp: TfrmCadTratDisp
  Caption = 'Cadastro de Tratamento/Disposi'#231#227'o'
  ClientHeight = 267
  ClientWidth = 383
  ExplicitWidth = 391
  ExplicitHeight = 294
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 294
    Height = 233
    inherited pgcManutencaoBD: TPageControl
      Width = 274
      Height = 215
      inherited tbsListagem: TTabSheet
        ExplicitWidth = 507
        ExplicitHeight = 260
        inherited pnlListagem: TPanel
          Width = 266
          Height = 205
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 264
            Height = 203
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_TratDisp'
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
        ExplicitHeight = 205
        inherited pnlCadastro: TPanel
          Width = 266
          Height = 205
          object lblDescricao: TLabel
            Left = 33
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
            Left = 33
            Top = 99
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
    Top = 248
    Width = 383
    ExplicitTop = 248
    ExplicitWidth = 383
  end
  inherited pnlBotoes: TPanel
    Left = 305
    Height = 233
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDID_TratDisp: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Id.'
      FieldName = 'ID_TratDisp'
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
    CommandText = 'select ID_TratDisp, Descricao from tratdisp order by Descricao'
  end
end
