inherited frmCadTipoDocumentos: TfrmCadTipoDocumentos
  Left = 323
  Top = 205
  Caption = 'Cadastro de Tipos de Documentos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    inherited pgcManutencaoBD: TPageControl
      ActivePage = tbsCadastro
      inherited tbsCadastro: TTabSheet
        inherited Panel1: TPanel
          object Label1: TLabel
            Left = 34
            Top = 69
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            FocusControl = DBEdit1
          end
          object DBEdit1: TDBEdit
            Left = 34
            Top = 85
            Width = 300
            Height = 21
            DataField = 'TDODESCRICAO'
            DataSource = dtsManuBD
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDTDOCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TDOCODIGO'
      Required = True
    end
    object cdsManuBDTDODESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TDODESCRICAO'
      Required = True
      Size = 30
    end
  end
  inherited sqlManuBD: TSQLDataSet
    CommandText = 'SELECT * FROM TIPO_DOC ORDER BY TDODESCRICAO'
  end
  inherited cdsListagem: TClientDataSetUrb
    object cdsListagemTDOCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TDOCODIGO'
      Required = True
      Visible = False
    end
    object cdsListagemTDODESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 55
      FieldName = 'TDODESCRICAO'
      Required = True
      Size = 30
    end
  end
  inherited sqlListagem: TSQLDataSet
    CommandText = 'SELECT * FROM TIPO_DOC ORDER BY TDODESCRICAO'
  end
end
