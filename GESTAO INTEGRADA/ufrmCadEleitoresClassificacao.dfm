inherited frmCadEleitoresClassificacao: TfrmCadEleitoresClassificacao
  Caption = 'Cadastro de Classifica'#231#245'es dos Eleitores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    inherited pgcManutencaoBD: TPageControl
      ActivePage = tbsCadastro
      inherited tbsCadastro: TTabSheet
        inherited Panel1: TPanel
          object lblDescricao: TLabel
            Left = 64
            Top = 83
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = txtDescricao
          end
          object txtDescricao: TDBEdit
            Left = 64
            Top = 99
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
  inherited cdsManuBD: TClientDataSetUrb
    ProviderName = 'dspEleitorClassificacao'
    object cdsManuBDID_Classificacao: TIntegerField
      DisplayLabel = 'Id. Classifica'#231#227'o'
      FieldName = 'ID_Classificacao'
      Required = True
    end
    object cdsManuBDDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Required = True
      FixedChar = True
      Size = 30
    end
  end
end
