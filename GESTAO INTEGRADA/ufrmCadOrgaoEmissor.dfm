inherited frmCadOrgaoEmissor: TfrmCadOrgaoEmissor
  Caption = 'frmCadOrgaoEmissor'
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
        ExplicitWidth = 507
        ExplicitHeight = 260
        inherited pnlListagem: TPanel
          Width = 310
          Height = 206
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
          ExplicitWidth = 310
          ExplicitHeight = 206
          object Label2: TLabel
            Left = 50
            Top = 85
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = DBEdit2
          end
          object DBEdit2: TDBEdit
            Left = 50
            Top = 101
            Width = 210
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
    object cdsManuBDID_Orgao_Emissor: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Id.'
      FieldName = 'ID_Orgao_Emissor'
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
    CommandText = 
      'SELECT o.ID_Orgao_Emissor, o.Descricao FROM orgao_emissor o ORDE' +
      'R BY o.Descricao'
  end
end
