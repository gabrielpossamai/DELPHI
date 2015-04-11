inherited frmCadTratamento: TfrmCadTratamento
  Caption = 'Cadastro de Tratamentos'
  ClientHeight = 268
  ClientWidth = 468
  ExplicitWidth = 476
  ExplicitHeight = 295
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 379
    Height = 234
    ExplicitWidth = 379
    ExplicitHeight = 234
    inherited pgcManutencaoBD: TPageControl
      Width = 359
      Height = 216
      ExplicitWidth = 359
      ExplicitHeight = 216
      inherited tbsListagem: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 507
        ExplicitHeight = 260
        inherited pnlListagem: TPanel
          Width = 351
          Height = 206
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 349
            Height = 204
          end
        end
      end
      inherited tbsCadastro: TTabSheet
        ExplicitWidth = 351
        ExplicitHeight = 206
        inherited pnlCadastro: TPanel
          Width = 351
          Height = 206
          ExplicitWidth = 351
          object Label1: TLabel
            Left = 76
            Top = 65
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 76
            Top = 105
            Width = 23
            Height = 13
            Caption = 'Sigla'
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            Left = 76
            Top = 81
            Width = 200
            Height = 21
            DataField = 'Descricao'
            DataSource = dtsManuBD
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 76
            Top = 121
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
    Top = 249
    Width = 468
    ExplicitTop = 249
    ExplicitWidth = 468
  end
  inherited pnlBotoes: TPanel
    Left = 390
    Height = 234
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDID_Tratamento: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Id.'
      DisplayWidth = 8
      FieldName = 'ID_Tratamento'
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
    object cdsManuBDSigla: TStringField
      DisplayWidth = 6
      FieldName = 'Sigla'
      Size = 5
    end
  end
end
