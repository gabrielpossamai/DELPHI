inherited frmCadDocumentos: TfrmCadDocumentos
  Left = 353
  Top = 233
  Caption = 'Documentos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    inherited pgcManutencaoBD: TPageControl
      ActivePage = tbsCadastro
      inherited tbsListagem: TTabSheet
        object Label1: TLabel [0]
          Left = 0
          Top = 9
          Width = 32
          Height = 13
          Caption = 'Cliente'
        end
        inherited dbgManutencaoBD: TDBGridUrb
          Top = 25
          Height = 150
          Align = alNone
        end
        object dblCliente: TDBLookupComboBox
          Left = 41
          Top = 1
          Width = 327
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          KeyField = 'CLICODIGO'
          ListField = 'CLICODIGO;CLINOME'
          ListFieldIndex = 1
          ListSource = dtsClientes
          TabOrder = 1
          OnClick = dblClienteClick
        end
      end
      inherited tbsCadastro: TTabSheet
        inherited Panel1: TPanel
          object Label2: TLabel
            Left = 89
            Top = 70
            Width = 21
            Height = 13
            Caption = 'Tipo'
            FocusControl = DBLookupComboBox1
          end
          object Label3: TLabel
            Left = 89
            Top = 42
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEdit1
          end
          object Label4: TLabel
            Left = 89
            Top = 127
            Width = 39
            Height = 13
            Caption = 'Emiss'#227'o'
            FocusControl = DBEdit2
          end
          object Label5: TLabel
            Left = 89
            Top = 98
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
            FocusControl = DBEdit3
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 135
            Top = 62
            Width = 100
            Height = 21
            DataField = 'Tipo'
            DataSource = dtsManuBD
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 135
            Top = 34
            Width = 74
            Height = 21
            Color = cl3DLight
            DataField = 'DOCCODIGO'
            DataSource = dtsManuBD
            Enabled = False
            TabOrder = 3
          end
          object DBEdit2: TDBEdit
            Left = 135
            Top = 119
            Width = 93
            Height = 21
            DataField = 'DOCEMISSAO'
            DataSource = dtsManuBD
            TabOrder = 2
          end
          object DBEdit3: TDBEdit
            Left = 135
            Top = 90
            Width = 144
            Height = 21
            DataField = 'DOCNUMERO'
            DataSource = dtsManuBD
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited actManutencaoBD: TActionList
    Left = 369
    Top = 200
  end
  inherited imgManutencaoBD: TImageList
    Left = 397
    Top = 200
  end
  inherited cdsManuBD: TClientDataSetUrb
    Left = 194
    Top = 202
    object cdsManuBDTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = cdsTipos
      LookupKeyFields = 'TDOCODIGO'
      LookupResultField = 'TDODESCRICAO'
      KeyFields = 'DOCTIPO'
      Size = 30
      Lookup = True
    end
    object cdsManuBDDOCCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'DOCCODIGO'
      Required = True
    end
    object cdsManuBDDOCCLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'DOCCLIENTE'
      Required = True
    end
    object cdsManuBDDOCTIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'DOCTIPO'
      Required = True
    end
    object cdsManuBDDOCEMISSAO: TSQLTimeStampField
      FieldName = 'DOCEMISSAO'
      Required = True
      EditMask = '!99/99/9900;1;_'
    end
    object cdsManuBDDOCNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DOCNUMERO'
      Required = True
      Size = 30
    end
  end
  inherited dtsManuBD: TDataSourceUrb
    Left = 222
    Top = 202
  end
  object sqlTipos: TSQLDataSet
    CommandText = 'SELECT * FROM tipo_doc ORDER BY TDODESCRICAO'
    MaxBlobSize = -1
    Params = <>
    Left = 265
    Top = 204
  end
  object dspTipos: TDataSetProviderUrb
    DataSet = sqlTipos
    Left = 290
    Top = 204
  end
  object cdsTipos: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipos'
    Left = 318
    Top = 204
  end
  object sqlClientes: TSQLDataSet
    CommandText = 'SELECT CLICODIGO, CLINOME FROM clientes ORDER BY CLINOME'
    MaxBlobSize = -1
    Params = <>
    Left = 19
    Top = 172
  end
  object dspClientes: TDataSetProviderUrb
    DataSet = sqlClientes
    Left = 47
    Top = 172
  end
  object cdsClientes: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    Left = 75
    Top = 172
    object cdsClientesCLICODIGO: TIntegerField
      FieldName = 'CLICODIGO'
      Required = True
      DisplayFormat = '0000000'
    end
    object cdsClientesCLINOME: TStringField
      FieldName = 'CLINOME'
      Required = True
      Size = 50
    end
  end
  object dtsClientes: TDataSource
    DataSet = cdsClientes
    Left = 105
    Top = 172
  end
end
