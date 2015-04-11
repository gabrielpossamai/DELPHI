inherited frmCadManifestoAlteraSituacao: TfrmCadManifestoAlteraSituacao
  Left = 400
  Top = 195
  Width = 300
  Height = 127
  Caption = 'Altera a Situa'#231#227'o do Manifesto'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 6
    Top = 15
    Width = 156
    Height = 13
    Caption = 'Selecione a Nova Situa'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 206
    Top = 58
    Width = 75
    Height = 25
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 6
    Top = 30
    Width = 275
    Height = 21
    DataField = 'DescSituacao'
    DataSource = frmCadManifesto.dtsManuBD
    TabOrder = 1
  end
  object dspSituacaoOrigem: TDataSetProvider
    DataSet = frmPrincipal.sqlComandos
    Left = 137
  end
  object cdsSituacaoOrigem: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSituacaoOrigem'
    Left = 165
    object cdsSituacaoOrigemID_Situacao: TIntegerField
      FieldName = 'ID_Situacao'
      Required = True
    end
    object cdsSituacaoOrigemDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object dtsSituacaoOrigem: TDataSourceUrb
    DataSet = cdsSituacaoOrigem
    Left = 193
  end
end
