inherited frmCadPeriodoNumero: TfrmCadPeriodoNumero
  Left = 535
  Top = 219
  Caption = 'Cadastro d Per'#237'odos dos N'#250'meros de Manifesto'
  ClientWidth = 489
  ExplicitWidth = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Width = 400
    inherited pgcManutencaoBD: TPageControl
      Width = 380
      inherited tbsListagem: TTabSheet
        ExplicitWidth = 507
        ExplicitHeight = 260
        inherited pnlListagem: TPanel
          Width = 372
          inherited dbgManutencaoBD: TDBGridUrb
            Width = 370
            Columns = <
              item
                Expanded = False
                FieldName = 'Inicio'
                Title.Alignment = taCenter
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Fim'
                Title.Alignment = taCenter
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DescEmpresa'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PeriodoNumero'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ID_Empresa'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Completo'
                Visible = False
              end>
          end
        end
      end
      inherited tbsCadastro: TTabSheet
        ExplicitWidth = 372
        inherited pnlCadastro: TPanel
          Width = 372
          ExplicitWidth = 372
          object Label1: TLabel
            Left = 30
            Top = 90
            Width = 41
            Height = 13
            Caption = 'Empresa'
            FocusControl = DBLookupComboBox1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 30
            Top = 132
            Width = 27
            Height = 13
            Caption = 'In'#237'cio'
            FocusControl = DBEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 91
            Top = 132
            Width = 16
            Height = 13
            Caption = 'Fim'
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 30
            Top = 105
            Width = 313
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'DescEmpresa'
            DataSource = dtsManuBD
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 30
            Top = 148
            Width = 55
            Height = 21
            DataField = 'Inicio'
            DataSource = dtsManuBD
            TabOrder = 1
          end
          object DBEdit2: TDBEdit
            Left = 91
            Top = 148
            Width = 55
            Height = 21
            DataField = 'Fim'
            DataSource = dtsManuBD
            TabOrder = 2
          end
        end
      end
    end
  end
  inherited stbManutencaoBD: TStatusBar
    Width = 489
    ExplicitWidth = 489
  end
  inherited pnlBotoes: TPanel
    Left = 411
  end
  inherited cdsManuBD: TClientDataSetUrb
    object cdsManuBDInicio: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'In'#237'cio'
      FieldName = 'Inicio'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDFim: TIntegerField
      Alignment = taCenter
      FieldName = 'Fim'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsManuBDDescEmpresa: TStringField
      DisplayLabel = 'Empresa'
      FieldKind = fkLookup
      FieldName = 'DescEmpresa'
      LookupDataSet = cdsEmpresa
      LookupKeyFields = 'ID_Empresa'
      LookupResultField = 'RazaoSocial'
      KeyFields = 'ID_Empresa'
      Size = 40
      Lookup = True
    end
    object cdsManuBDID_PeriodoNumero: TIntegerField
      DisplayLabel = 'ID. Per. N'#186
      FieldName = 'ID_PeriodoNumero'
      Required = True
      Visible = False
    end
    object cdsManuBDID_Empresa: TIntegerField
      DisplayLabel = 'ID. Empresa'
      FieldName = 'ID_Empresa'
      Required = True
      Visible = False
    end
    object cdsManuBDCompleto: TStringField
      FieldName = 'Completo'
      Visible = False
    end
  end
  inherited sqlManuBD: TSQLDataSet
    SchemaName = 'andre'
    CommandText = 
      'select ID_PeriodoNumero, ID_Empresa, Inicio, Fim, Completo from ' +
      'periodonumero'
  end
  object cdsEmpresa: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 250
    Top = 30
  end
  object sqlEmpresa: TSQLDataSet
    SchemaName = 'andre'
    GetMetadata = False
    CommandText = 
      'select ID_Empresa, RazaoSocial, ID_Classificacao, Endereco, Muni' +
      'cipio, UF, Telefone,'#13#10'NumLicencaFEEMA, ValorContrato, ValorTonel' +
      'ada, FlagRelContaminado, FlagRelReciclavel,'#13#10'FlagRelSucata, Tipo' +
      'ResumoGeral, Responsavel, ID_Fantasia, CEP, CNPJ, InscEstado, Ob' +
      's'#13#10'from empresa order by RazaoSocial'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 194
    Top = 31
  end
  object dspEmpresa: TDataSetProviderUrb
    DataSet = sqlEmpresa
    Options = [poAllowCommandText]
    Left = 222
    Top = 31
  end
end
