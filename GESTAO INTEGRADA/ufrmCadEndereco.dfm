inherited frmCadEndereco: TfrmCadEndereco
  Left = 311
  Top = 160
  Caption = 'Endere'#231'os'
  ClientHeight = 260
  ClientWidth = 652
  ExplicitWidth = 660
  ExplicitHeight = 287
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 569
    Height = 233
    ExplicitWidth = 569
    ExplicitHeight = 233
    inherited pgcManutencaoBD: TPageControl
      Width = 549
      Height = 215
      ExplicitWidth = 549
      ExplicitHeight = 215
      inherited tbsListagem: TTabSheet
        object Label1: TLabel [0]
          Left = 0
          Top = 9
          Width = 32
          Height = 13
          Caption = 'Cliente'
        end
        inherited pnlListagem: TPanel
          Width = 541
          Height = 205
          inherited dbgManutencaoBD: TDBGridUrb
            Top = 25
            Width = 542
            Height = 148
            Align = alNone
          end
        end
        object dblCliente: TDBLookupComboBox
          Left = 47
          Top = 1
          Width = 495
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          KeyField = 'ID_Cliente'
          ListField = 'ID_Cliente;Nome'
          ListFieldIndex = 1
          ListSource = dtsCliente
          TabOrder = 1
        end
      end
      inherited tbsCadastro: TTabSheet
        inherited pnlCadastro: TPanel
          Width = 541
          Height = 205
          ExplicitWidth = 541
          ExplicitHeight = 205
          object Label2: TLabel
            Left = 7
            Top = 43
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEdit1
          end
          object Label3: TLabel
            Left = 352
            Top = 43
            Width = 45
            Height = 13
            Caption = 'Tipo Log.'
            FocusControl = DBLookupComboBox1
          end
          object Label4: TLabel
            Left = 203
            Top = 43
            Width = 46
            Height = 13
            Caption = 'Tipo End.'
            FocusControl = DBLookupComboBox2
          end
          object Label5: TLabel
            Left = 7
            Top = 71
            Width = 54
            Height = 13
            Caption = 'Logradouro'
            FocusControl = DBEdit2
          end
          object Label6: TLabel
            Left = 203
            Top = 71
            Width = 12
            Height = 13
            Caption = 'N'#186
            FocusControl = DBEdit3
          end
          object Label7: TLabel
            Left = 352
            Top = 71
            Width = 30
            Height = 13
            Caption = 'Comp.'
            FocusControl = DBEdit4
          end
          object Label8: TLabel
            Left = 203
            Top = 99
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = DBEdit5
          end
          object Label9: TLabel
            Left = 7
            Top = 99
            Width = 27
            Height = 13
            Caption = 'Bairro'
            FocusControl = DBEdit6
          end
          object Label10: TLabel
            Left = 7
            Top = 127
            Width = 33
            Height = 13
            Caption = 'Cidade'
            FocusControl = DBEdit7
          end
          object Label11: TLabel
            Left = 203
            Top = 127
            Width = 14
            Height = 13
            Caption = 'UF'
            FocusControl = DBEdit8
          end
          object Label12: TLabel
            Left = 352
            Top = 127
            Width = 22
            Height = 13
            Caption = 'Pa'#237's'
            FocusControl = DBEdit9
          end
          object DBEdit1: TDBEdit
            Left = 66
            Top = 35
            Width = 65
            Height = 21
            Color = cl3DLight
            DataField = 'ID_Endereco'
            DataSource = dtsManuBD
            Enabled = False
            TabOrder = 10
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 401
            Top = 35
            Width = 132
            Height = 21
            DataField = 'TipoLog'
            DataSource = dtsManuBD
            TabOrder = 1
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 250
            Top = 35
            Width = 100
            Height = 21
            DataField = 'TipoEnd'
            DataSource = dtsManuBD
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 66
            Top = 63
            Width = 132
            Height = 21
            DataField = 'Logradouro'
            DataSource = dtsManuBD
            TabOrder = 2
          end
          object DBEdit3: TDBEdit
            Left = 250
            Top = 63
            Width = 100
            Height = 21
            DataField = 'Numero'
            DataSource = dtsManuBD
            TabOrder = 3
          end
          object DBEdit4: TDBEdit
            Left = 401
            Top = 63
            Width = 132
            Height = 21
            DataField = 'Complemento'
            DataSource = dtsManuBD
            TabOrder = 4
          end
          object DBEdit5: TDBEdit
            Left = 250
            Top = 91
            Width = 100
            Height = 21
            DataField = 'Cep'
            DataSource = dtsManuBD
            TabOrder = 6
          end
          object DBEdit6: TDBEdit
            Left = 66
            Top = 91
            Width = 132
            Height = 21
            DataField = 'Bairro'
            DataSource = dtsManuBD
            TabOrder = 5
          end
          object DBEdit7: TDBEdit
            Left = 66
            Top = 119
            Width = 129
            Height = 21
            DataField = 'Cidade'
            DataSource = dtsManuBD
            TabOrder = 7
          end
          object DBEdit8: TDBEdit
            Left = 250
            Top = 119
            Width = 30
            Height = 21
            DataField = 'UF'
            DataSource = dtsManuBD
            TabOrder = 8
          end
          object DBEdit9: TDBEdit
            Left = 401
            Top = 119
            Width = 129
            Height = 21
            DataField = 'Pais'
            DataSource = dtsManuBD
            TabOrder = 9
          end
        end
      end
    end
  end
  inherited stbManutencaoBD: TStatusBar
    Top = 241
    Width = 652
    ExplicitTop = 241
    ExplicitWidth = 652
  end
  inherited pnlBotoes: TPanel
    Left = 580
    Height = 233
    ExplicitLeft = 580
    ExplicitHeight = 233
    inherited btnAtualizar: TSpeedButton
      Caption = 'A&tualiza'
    end
  end
  inherited actManutencaoBD: TActionList
    Left = 377
    Top = 200
  end
  inherited imgManutencaoBD: TImageList
    Left = 405
    Top = 200
  end
  inherited cdsManuBD: TClientDataSetUrb
    ProviderName = 'dspCadEndereco'
    Left = 314
    Top = 202
    object cdsManuBDID_Endereco: TIntegerField
      DisplayLabel = 'ID. Endere'#231'o'
      FieldName = 'ID_Endereco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDID_Pessoa: TIntegerField
      FieldName = 'ID_Pessoa'
      Required = True
      Visible = False
    end
    object cdsManuBDID_End_Tipo: TIntegerField
      FieldName = 'ID_End_Tipo'
      Required = True
      Visible = False
    end
    object cdsManuBDID_Tipo_Logra: TIntegerField
      FieldName = 'ID_Tipo_Logra'
      Required = True
      Visible = False
    end
    object cdsManuBDLogradouro: TStringField
      FieldName = 'Logradouro'
      Required = True
      Size = 30
    end
    object cdsManuBDNumero: TIntegerField
      DisplayLabel = 'N'#186
      FieldName = 'Numero'
      Required = True
    end
    object cdsManuBDComplemento: TStringField
      FieldName = 'Complemento'
      Size = 30
    end
    object cdsManuBDCep: TStringField
      FieldName = 'Cep'
      Size = 8
    end
    object cdsManuBDBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object cdsManuBDCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object cdsManuBDUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsManuBDPais: TStringField
      FieldName = 'Pais'
      Size = 30
    end
    object cdsManuBDTipoLog: TStringField
      DisplayLabel = 'Tipo Log.'
      FieldKind = fkLookup
      FieldName = 'TipoLog'
      LookupDataSet = cdsTipoLog
      LookupKeyFields = 'ID_Logra_Tipo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Tipo_Logra'
      Size = 30
      Lookup = True
    end
    object cdsManuBDTipoEnd: TStringField
      DisplayLabel = 'Tipo End.'
      FieldKind = fkLookup
      FieldName = 'TipoEnd'
      LookupDataSet = cdsTipoEnd
      LookupKeyFields = 'ID_End_Tipo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_End_Tipo'
      Size = 30
      Lookup = True
    end
  end
  inherited dtsManuBD: TDataSourceUrb
    Left = 342
    Top = 202
  end
  object cdsTipoEnd: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadEnd_Tipo'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 306
    Top = 48
  end
  object cdsTipoLog: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadLogra_Tipo'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 458
    Top = 40
  end
  object cdsCliente: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadCliente'
    RemoteServer = frmPrincipal.SharedConnection
    Left = 250
    Top = 4
    object cdsClienteID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClienteNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
  end
  object dtsCliente: TDataSource
    DataSet = cdsCliente
    Left = 280
    Top = 4
  end
end
