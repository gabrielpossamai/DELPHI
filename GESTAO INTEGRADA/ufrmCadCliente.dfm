inherited frmCadCliente: TfrmCadCliente
  Left = 344
  Top = 196
  Caption = 'Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    inherited pgcManutencaoBD: TPageControl
      inherited tbsCadastro: TTabSheet
        inherited pnlCadastro: TPanel
          object lblNome: TLabel
            Left = 9
            Top = 34
            Width = 28
            Height = 13
            Caption = 'Nome'
            FocusControl = txtNome
          end
          object lblObs: TLabel
            Left = 9
            Top = 164
            Width = 19
            Height = 13
            Caption = 'Obs'
          end
          object lblSexo: TLabel
            Left = 186
            Top = 60
            Width = 24
            Height = 13
            Caption = 'Sexo'
            FocusControl = dblSexo
          end
          object lblDataNasc: TLabel
            Left = 9
            Top = 61
            Width = 45
            Height = 13
            Caption = 'Dt. Nasc.'
            FocusControl = txtDataNasc
          end
          object txtNome: TDBEdit
            Left = 59
            Top = 26
            Width = 259
            Height = 21
            DataField = 'Nome'
            DataSource = dtsManuBD
            TabOrder = 0
          end
          object dblSexo: TDBLookupComboBox
            Left = 218
            Top = 52
            Width = 100
            Height = 21
            DataField = 'DescSexo'
            DataSource = dtsManuBD
            TabOrder = 2
          end
          object txtDataNasc: TDBEdit
            Left = 59
            Top = 53
            Width = 70
            Height = 21
            DataField = 'DataNasc'
            DataSource = dtsManuBD
            TabOrder = 1
          end
          object memObs: TDBMemo
            Left = 59
            Top = 81
            Width = 259
            Height = 96
            DataField = 'Obs'
            DataSource = dtsManuBD
            TabOrder = 3
          end
        end
      end
    end
  end
  inherited pnlBotoes: TPanel
    inherited btnAtualizar: TSpeedButton
      Caption = 'A&tualiza'
    end
  end
  inherited actManutencaoBD: TActionList
    Top = 0
  end
  inherited imgManutencaoBD: TImageList
    Top = 0
  end
  inherited cdsManuBD: TClientDataSetUrb
    BeforePost = cdsManuBDBeforePost
    object cdsManuBDID_Cliente: TIntegerField
      DisplayLabel = 'ID. Cliente'
      FieldName = 'ID_Cliente'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDID_Pessoa: TIntegerField
      FieldName = 'ID_Pessoa'
      Required = True
      Visible = False
    end
    object cdsManuBDNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object cdsManuBDDataNasc: TSQLTimeStampField
      FieldName = 'DataNasc'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsManuBDID_Sexo: TIntegerField
      FieldName = 'ID_Sexo'
      Required = True
      Visible = False
    end
    object cdsManuBDDescSexo: TStringField
      DisplayLabel = 'Sexo'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescSexo'
      LookupDataSet = cdsSexo
      LookupKeyFields = 'ID_Sexo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Sexo'
      Size = 30
      Lookup = True
    end
    object cdsManuBDObs: TBlobField
      FieldName = 'Obs'
      Visible = False
      Size = 1
    end
  end
  inherited ppmRelatorios: TPopupMenu
    Left = 296
    Top = 156
  end
  inherited sqlManuBD: TSQLDataSet
    CommandText = 
      'select ID_Cliente, ID_Pessoa, Nome, DataNasc, ID_Sexo, Obs from ' +
      'cliente'
  end
  object cdsSexo: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSexo'
    Left = 310
    Top = 68
    object cdsSexoID_Sexo: TIntegerField
      FieldName = 'ID_Sexo'
      Required = True
    end
    object cdsSexoDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 30
    end
  end
  object dtsSexo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsSexo
    Left = 338
    Top = 68
  end
  object sqlSexo: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 254
    Top = 69
  end
  object dspSexo: TDataSetProviderUrb
    DataSet = sqlSexo
    Options = [poAllowCommandText]
    Left = 282
    Top = 69
  end
end
