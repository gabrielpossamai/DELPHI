inherited frmCadResponsavel: TfrmCadResponsavel
  Left = 369
  Top = 165
  Caption = 'Cadastro de Respons'#225'veis'
  ClientWidth = 680
  ExplicitWidth = 688
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Top = 9
    Width = 591
    Height = 286
    ExplicitTop = 9
    ExplicitWidth = 591
    ExplicitHeight = 286
    inherited pgcManutencaoBD: TPageControl
      Width = 571
      Height = 268
      ExplicitWidth = 571
      ExplicitHeight = 268
      inherited tbsListagem: TTabSheet
        ExplicitWidth = 563
        ExplicitHeight = 258
        inherited pnlListagem: TPanel
          Width = 563
          Height = 258
          ExplicitWidth = 563
          ExplicitHeight = 258
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 561
            Height = 256
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_Responsavel'
                Title.Alignment = taCenter
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DescTratamento'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_Cargo'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'DescCargo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_Tratamento'
                Visible = False
              end>
          end
        end
      end
      inherited tbsCadastro: TTabSheet
        ExplicitWidth = 563
        ExplicitHeight = 258
        inherited pnlCadastro: TPanel
          Width = 563
          Height = 258
          ExplicitWidth = 563
          ExplicitHeight = 258
          object Label1: TLabel
            Left = 144
            Top = 89
            Width = 28
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 60
            Top = 132
            Width = 28
            Height = 13
            Caption = 'Cargo'
            FocusControl = DBLookupComboBox1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object btnCadCargo: TSpeedButton
            Left = 483
            Top = 148
            Width = 21
            Height = 21
            Hint = 'Cadastro de Cargo'
            Anchors = [akTop, akRight]
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = btnCadCargoClick
          end
          object btnCadTratamento: TSpeedButton
            Left = 118
            Top = 105
            Width = 21
            Height = 21
            Hint = 'Cadastro de Tratamento'
            Caption = '...'
            Flat = True
            ParentShowHint = False
            ShowHint = True
            OnClick = btnCadTratamentoClick
          end
          object Label3: TLabel
            Left = 60
            Top = 89
            Width = 54
            Height = 13
            Caption = 'Tratamento'
            FocusControl = DBLookupComboBox2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            Left = 144
            Top = 105
            Width = 360
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'Nome'
            DataSource = dtsManuBD
            TabOrder = 0
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 60
            Top = 148
            Width = 422
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'DescCargo'
            DataSource = dtsManuBD
            TabOrder = 1
            OnEnter = DBLookupComboBox1Enter
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 60
            Top = 105
            Width = 57
            Height = 21
            DataField = 'DescTratamento'
            DataSource = dtsManuBD
            TabOrder = 2
            OnEnter = DBLookupComboBox2Enter
          end
        end
      end
    end
  end
  inherited stbManutencaoBD: TStatusBar
    Width = 680
    ExplicitWidth = 680
  end
  inherited pnlBotoes: TPanel
    Left = 602
    Top = 9
    Height = 286
    ExplicitLeft = 602
    ExplicitTop = 9
    ExplicitHeight = 286
  end
  inherited actManutencaoBD: TActionList
    Left = 322
  end
  inherited imgManutencaoBD: TImageList
    Left = 350
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDID_Responsavel: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Id.'
      DisplayWidth = 12
      FieldName = 'ID_Responsavel'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDDescTratamento: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tratamento'
      DisplayWidth = 6
      FieldKind = fkLookup
      FieldName = 'DescTratamento'
      LookupDataSet = cdsTratamento
      LookupKeyFields = 'ID_Tratamento'
      LookupResultField = 'Sigla'
      KeyFields = 'ID_Tratamento'
      Size = 30
      Lookup = True
    end
    object cdsManuBDNome: TStringField
      DisplayWidth = 32
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object cdsManuBDID_Cargo: TIntegerField
      FieldName = 'ID_Cargo'
      Visible = False
    end
    object cdsManuBDDescCargo: TStringField
      DisplayLabel = 'Cargo'
      DisplayWidth = 35
      FieldKind = fkLookup
      FieldName = 'DescCargo'
      LookupDataSet = cdsCargo
      LookupKeyFields = 'ID_Cargo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Cargo'
      Size = 30
      Lookup = True
    end
    object cdsManuBDID_Tratamento: TIntegerField
      DisplayLabel = 'ID. Tratamento'
      FieldName = 'ID_Tratamento'
      Required = True
      Visible = False
      DisplayFormat = '000000'
    end
  end
  inherited dtsManuBD: TDataSourceUrb
    Left = 294
  end
  inherited ppmRelatorios: TPopupMenu
    Left = 352
  end
  inherited sqlManuBD: TSQLDataSet
    SchemaName = 'andre'
    CommandText = 
      'select ID_Responsavel, Nome, ID_Cargo, ID_Tratamento from respon' +
      'savel order by Nome'
  end
  object cdsCargo: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCargo'
    Left = 250
    Top = 30
  end
  object dtsCargo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsCargo
    Left = 294
    Top = 30
  end
  object cdsTratamento: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTratamento'
    Left = 250
    Top = 58
  end
  object dtsTratamento: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTratamento
    Left = 294
    Top = 58
  end
  object sqlCargo: TSQLDataSet
    SchemaName = 'andre'
    GetMetadata = False
    CommandText = 'select ID_Cargo, Descricao from cargo order by Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 194
    Top = 30
  end
  object dspCargo: TDataSetProviderUrb
    DataSet = sqlCargo
    Options = [poAllowCommandText]
    Left = 222
    Top = 30
  end
  object sqlTratamento: TSQLDataSet
    SchemaName = 'andre'
    GetMetadata = False
    CommandText = 
      'select ID_Tratamento, Descricao, Sigla from tratamento order by ' +
      'Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 194
    Top = 58
  end
  object dspTratamento: TDataSetProviderUrb
    DataSet = sqlTratamento
    Options = [poAllowCommandText]
    Left = 222
    Top = 58
  end
end
