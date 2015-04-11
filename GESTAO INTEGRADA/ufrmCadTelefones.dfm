inherited frmCadTelefones: TfrmCadTelefones
  Left = 398
  Top = 138
  Width = 461
  Height = 250
  Caption = 'Cadastro de Telefones'
  PixelsPerInch = 96
  TextHeight = 13
  inherited stbManutencaoBD: TStatusBar
    Top = 204
    Width = 453
  end
  inherited cdsManuBD: TClientDataSetUrb
    OnNewRecord = cdsManuBDNewRecord
    object cdsManuBDTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = cdsTipos
      LookupKeyFields = 'TTECODIGO'
      LookupResultField = 'TTEDESCRICAO'
      KeyFields = 'TELTIPO'
      Size = 30
      Lookup = True
    end
    object cdsManuBDTELCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TELCODIGO'
      Required = True
    end
    object cdsManuBDTELCLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'TELCLIENTE'
      Required = True
    end
    object cdsManuBDTELTIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TELTIPO'
      Required = True
    end
    object cdsManuBDTELDDD: TStringField
      DisplayLabel = 'DDD'
      FieldName = 'TELDDD'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsManuBDTELNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'TELNUMERO'
      Required = True
      Size = 8
    end
  end
  object sqlTipos: TSQLDataSet
    CommandText = 'SELECT * FROM TIPO_TEL ORDER BY TTEDESCRICAO'
    MaxBlobSize = -1
    Params = <>
    Left = 361
    Top = 28
  end
  object dspTipos: TDataSetProviderUrb
    DataSet = sqlTipos
    Left = 386
    Top = 28
  end
  object cdsTipos: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipos'
    OnNewRecord = cdsManuBDNewRecord
    Left = 414
    Top = 28
  end
end
