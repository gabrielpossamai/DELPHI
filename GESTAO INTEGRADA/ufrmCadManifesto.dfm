inherited frmCadManifesto: TfrmCadManifesto
  Left = 0
  Top = 125
  Anchors = [akLeft, akTop, akBottom]
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  Caption = 'Cadastro de Manifesto de Res'#237'duos'
  ClientHeight = 547
  ClientWidth = 999
  ExplicitWidth = 1015
  ExplicitHeight = 585
  DesignSize = (
    999
    547)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlManutencaoBD: TPanel
    Top = 0
    Width = 909
    Height = 513
    ExplicitTop = 0
    ExplicitWidth = 909
    ExplicitHeight = 513
    DesignSize = (
      909
      513)
    inherited pgcManutencaoBD: TPageControl
      Width = 889
      Height = 495
      ExplicitWidth = 889
      ExplicitHeight = 495
      inherited tbsListagem: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 881
        ExplicitHeight = 485
        inherited pnlListagem: TPanel
          Width = 881
          Height = 485
          Color = 13429977
          ParentBackground = False
          ExplicitWidth = 881
          ExplicitHeight = 485
          inherited dbgManutencaoBD: TDBGridUrb
            Top = 73
            Width = 872
            Height = 406
          end
        end
        object gbxPeriodo: TGroupBox
          Left = 4
          Top = 3
          Width = 872
          Height = 64
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Pesquisa'
          Color = 13429977
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          DesignSize = (
            872
            64)
          object Label39: TLabel
            Left = 11
            Top = 18
            Width = 42
            Height = 13
            Caption = 'Situa'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object btnPesquisar: TSpeedButton
            Left = 754
            Top = 18
            Width = 111
            Height = 35
            Anchors = [akTop, akRight]
            Caption = '&Pesquisar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnPesquisarClick
            ExplicitLeft = 632
          end
          object Label43: TLabel
            Left = 570
            Top = 18
            Width = 44
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Dt. Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 357
          end
          object Label44: TLabel
            Left = 665
            Top = 18
            Width = 39
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Dt. Final'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 452
          end
          object dblSituacao: TDBLookupComboBox
            Left = 11
            Top = 32
            Width = 543
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'ID_Situacao'
            ListField = 'Descricao'
            ListSource = dtsSituacao
            ParentFont = False
            TabOrder = 0
            OnClick = dblSituacaoClick
          end
          object dtpInicial: TDateTimePicker
            Left = 570
            Top = 32
            Width = 83
            Height = 21
            Anchors = [akTop, akRight]
            Date = 38319.542181527780000000
            Time = 38319.542181527780000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnChange = dtpInicialChange
          end
          object dtpFinal: TDateTimePicker
            Left = 665
            Top = 32
            Width = 83
            Height = 21
            Anchors = [akTop, akRight]
            Date = 38319.542181527780000000
            Time = 38319.542181527780000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnChange = dtpFinalChange
          end
        end
      end
      inherited tbsCadastro: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 881
        ExplicitHeight = 485
        inherited pnlCadastro: TPanel
          Width = 881
          Height = 485
          ExplicitWidth = 881
          ExplicitHeight = 485
          object pgcManifesto: TPageControl
            Left = 8
            Top = 12
            Width = 865
            Height = 461
            ActivePage = tshResiduo
            Anchors = [akLeft, akTop, akRight, akBottom]
            Style = tsButtons
            TabOrder = 0
            object tshResiduo: TTabSheet
              Caption = '&Res'#237'duo'
              DesignSize = (
                857
                430)
              object lblNumero: TLabel
                Left = 400
                Top = 102
                Width = 61
                Height = 13
                Caption = 'N'#186' Manifesto'
                FocusControl = txtNumero
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblNumCertificado: TLabel
                Left = 702
                Top = 102
                Width = 37
                Height = 13
                Anchors = [akTop, akRight]
                Caption = 'N'#186' Cert.'
                FocusControl = txtNumCertificado
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ExplicitLeft = 493
              end
              object lblQtde: TLabel
                Left = 3
                Top = 176
                Width = 26
                Height = 13
                Caption = 'Qtde.'
                FocusControl = dblQtde
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblTipo: TLabel
                Left = 3
                Top = 18
                Width = 21
                Height = 13
                Caption = 'Tipo'
                FocusControl = dblTipo
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblEstFisico: TLabel
                Left = 3
                Top = 46
                Width = 50
                Height = 13
                Caption = 'Est. F'#237'sico'
                FocusControl = dblEstadoFisico
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblAcond: TLabel
                Left = 3
                Top = 74
                Width = 34
                Height = 13
                Caption = 'Acond.'
                FocusControl = dblAcond
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblProcedencia: TLabel
                Left = 400
                Top = 18
                Width = 60
                Height = 13
                Caption = 'Proced'#234'ncia'
                FocusControl = dblProcedencia
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblTratDisp: TLabel
                Left = 400
                Top = 46
                Width = 51
                Height = 13
                Caption = 'Trat./Disp.'
                FocusControl = dblTratDisp
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblUnidade: TLabel
                Left = 249
                Top = 176
                Width = 40
                Height = 13
                Caption = 'Unidade'
                FocusControl = dblQtde
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblStatus: TLabel
                Left = 400
                Top = 74
                Width = 30
                Height = 13
                Caption = 'Status'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object btnCadTipo: TSpeedButton
                Left = 378
                Top = 10
                Width = 21
                Height = 21
                Hint = 'Cadastro de Tipo de Res'#237'duo'
                Caption = '...'
                ParentShowHint = False
                ShowHint = True
                OnClick = btnCadTipoClick
              end
              object btnCadEstadoFisico: TSpeedButton
                Left = 378
                Top = 37
                Width = 21
                Height = 21
                Hint = 'Cadastro de Estado F'#237'sico'
                Caption = '...'
                ParentShowHint = False
                ShowHint = True
                OnClick = btnCadEstadoFisicoClick
              end
              object btnCadAcond: TSpeedButton
                Left = 378
                Top = 66
                Width = 21
                Height = 21
                Hint = 'Cadastro de Acondicionamento'
                Caption = '...'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnClick = btnCadAcondClick
              end
              object btnCadProcedencia: TSpeedButton
                Left = 828
                Top = 10
                Width = 21
                Height = 21
                Hint = 'Cadastro de Proced'#234'ncia'
                Anchors = [akTop, akRight]
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = btnCadProcedenciaClick
                ExplicitLeft = 619
              end
              object btnTratDisp: TSpeedButton
                Left = 828
                Top = 38
                Width = 21
                Height = 21
                Hint = 'Cadastro de Tratamento / Disposi'#231#227'o'
                Anchors = [akTop, akRight]
                Caption = '...'
                Enabled = False
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = btnTratDispClick
                ExplicitLeft = 619
              end
              object btnCadStatus: TSpeedButton
                Left = 828
                Top = 66
                Width = 21
                Height = 21
                Hint = 'Cadastro de Status'
                Anchors = [akTop, akRight]
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = btnCadStatusClick
                ExplicitLeft = 619
              end
              object btnCadUnidade: TSpeedButton
                Left = 378
                Top = 168
                Width = 21
                Height = 21
                Hint = 'Cadastro de Unidade de Medida'
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = btnCadUnidadeClick
              end
              object lblDtChegou: TLabel
                Left = 400
                Top = 131
                Width = 54
                Height = 13
                Caption = 'Dt. Chegou'
                FocusControl = txtDtChegou
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblDtEnvio: TLabel
                Left = 702
                Top = 131
                Width = 44
                Height = 13
                Anchors = [akTop, akRight]
                Caption = 'Dt. Envio'
                FocusControl = txtDtEnvio
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ExplicitLeft = 493
              end
              object lblSituacao: TLabel
                Left = 3
                Top = 205
                Width = 42
                Height = 13
                Caption = 'Situa'#231#227'o'
                FocusControl = txtSituacao
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblLote: TLabel
                Left = 702
                Top = 160
                Width = 21
                Height = 13
                Anchors = [akTop, akRight]
                Caption = 'Lote'
                FocusControl = txtLote
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ExplicitLeft = 493
              end
              object lblObs: TLabel
                Left = 3
                Top = 401
                Width = 19
                Height = 13
                Anchors = [akLeft, akBottom]
                Caption = 'Obs'
                FocusControl = txtSituacao
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ExplicitTop = 213
              end
              object btnGerarNumManif: TSpeedButton
                Left = 533
                Top = 95
                Width = 21
                Height = 21
                Hint = 'Gerar N'#186' Negativo'
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = btnGerarNumManifClick
              end
              object lblCDF: TLabel
                Left = 400
                Top = 160
                Width = 21
                Height = 13
                Caption = 'CDF'
                FocusControl = txtCDF
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object txtNumero: TDBEdit
                Left = 466
                Top = 96
                Width = 65
                Height = 21
                CharCase = ecUpperCase
                DataField = 'Numero'
                DataSource = dtsManuBD
                TabOrder = 6
              end
              object txtNumCertificado: TDBEdit
                Left = 764
                Top = 94
                Width = 64
                Height = 21
                Anchors = [akTop, akRight]
                Color = cl3DLight
                DataField = 'NumCertificado'
                DataSource = dtsManuBD
                Enabled = False
                TabOrder = 7
              end
              object dblQtde: TDBEdit
                Left = 75
                Top = 168
                Width = 164
                Height = 21
                DataField = 'Quantidade'
                DataSource = dtsManuBD
                TabOrder = 8
              end
              object dblTipo: TDBLookupComboBox
                Left = 75
                Top = 10
                Width = 303
                Height = 21
                DataField = 'DescResiduo'
                DataSource = dtsManuBD
                TabOrder = 0
                OnEnter = dblTipoEnter
              end
              object dblEstadoFisico: TDBLookupComboBox
                Left = 75
                Top = 38
                Width = 303
                Height = 21
                DataField = 'DescEstadoFisico'
                DataSource = dtsManuBD
                TabOrder = 2
                OnEnter = dblEstadoFisicoEnter
              end
              object dblAcond: TDBLookupComboBox
                Left = 75
                Top = 66
                Width = 303
                Height = 21
                DataField = 'DescAcond'
                DataSource = dtsManuBD
                TabOrder = 4
                OnEnter = dblAcondEnter
              end
              object dblProcedencia: TDBLookupComboBox
                Left = 466
                Top = 10
                Width = 362
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'DescProcedencia'
                DataSource = dtsManuBD
                TabOrder = 1
                OnEnter = dblProcedenciaEnter
              end
              object dblTratDisp: TDBLookupComboBox
                Left = 466
                Top = 38
                Width = 362
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'DescTratDisp'
                DataSource = dtsManuBD
                TabOrder = 3
                OnEnter = dblTratDispEnter
              end
              object dblUnidade: TDBLookupComboBox
                Left = 303
                Top = 168
                Width = 75
                Height = 21
                DataField = 'DescUnidade'
                DataSource = dtsManuBD
                TabOrder = 9
                OnEnter = dblUnidadeEnter
              end
              object dblstatus: TDBLookupComboBox
                Left = 466
                Top = 66
                Width = 362
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'DescStatus'
                DataSource = dtsManuBD
                TabOrder = 5
                OnClick = dblstatusClick
                OnEnter = dblstatusEnter
              end
              object memObs: TDBMemo
                Left = 75
                Top = 224
                Width = 753
                Height = 191
                Hint = 'Observa'#231#227'o'
                Anchors = [akLeft, akTop, akRight, akBottom]
                DataField = 'Obs'
                DataSource = dtsManuBD
                ParentShowHint = False
                ShowHint = True
                TabOrder = 15
              end
              object txtDtChegou: TDBEdit
                Left = 466
                Top = 123
                Width = 65
                Height = 21
                DataField = 'DtChegou'
                DataSource = dtsManuBD
                TabOrder = 10
              end
              object txtDtEnvio: TDBEdit
                Left = 764
                Top = 123
                Width = 64
                Height = 21
                Anchors = [akTop, akRight]
                Color = cl3DLight
                DataField = 'DtEnvio'
                DataSource = dtsManuBD
                ReadOnly = True
                TabOrder = 11
              end
              object txtSituacao: TDBEdit
                Left = 75
                Top = 197
                Width = 303
                Height = 21
                Color = cl3DLight
                DataField = 'DescSituacao'
                DataSource = dtsManuBD
                ReadOnly = True
                TabOrder = 12
              end
              object txtLote: TDBEdit
                Left = 764
                Top = 152
                Width = 64
                Height = 21
                Anchors = [akTop, akRight]
                Color = cl3DLight
                DataField = 'ID_LoteEnvio'
                DataSource = dtsManuBD
                ReadOnly = True
                TabOrder = 14
              end
              object txtCDF: TDBEdit
                Left = 466
                Top = 152
                Width = 65
                Height = 21
                DataField = 'CDF'
                DataSource = dtsManuBD
                TabOrder = 13
              end
              object gbxOrigem: TGroupBox
                Left = 3
                Top = 90
                Width = 375
                Height = 68
                TabOrder = 16
                object btnCadOrigem: TSpeedButton
                  Left = 348
                  Top = 10
                  Width = 21
                  Height = 21
                  Hint = 'Cadastro de Origem'
                  Caption = '...'
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = btnCadOrigemClick
                end
                object lblOrigemSelecione: TLabel
                  Left = 14
                  Top = 18
                  Width = 33
                  Height = 13
                  Caption = 'Origem'
                  FocusControl = dblAcond
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object lblOrigemOutros: TLabel
                  Left = 14
                  Top = 47
                  Width = 31
                  Height = 13
                  Caption = 'Outros'
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object dblOrigem: TDBLookupComboBox
                  Left = 72
                  Top = 10
                  Width = 274
                  Height = 21
                  DataField = 'DescOrigem'
                  DataSource = dtsManuBD
                  TabOrder = 0
                  OnClick = dblOrigemClick
                  OnEnter = dblOrigemEnter
                end
                object txtOrigemOutros: TDBEdit
                  Left = 72
                  Top = 39
                  Width = 274
                  Height = 21
                  Color = 14935011
                  DataField = 'Origem_Outros'
                  DataSource = dtsManuBD
                  TabOrder = 1
                end
              end
            end
            object TabSheet2: TTabSheet
              Caption = '&Gerador'
              ImageIndex = 1
              DesignSize = (
                857
                430)
              object lblGerEmpresa: TLabel
                Left = 151
                Top = 18
                Width = 41
                Height = 13
                Caption = 'Empresa'
                FocusControl = dblGerEmpresa
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblGerEndereco: TLabel
                Left = 3
                Top = 46
                Width = 46
                Height = 13
                Caption = 'Endere'#231'o'
                FocusControl = txtGerEndereco
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblGerMunicipio: TLabel
                Left = 3
                Top = 74
                Width = 47
                Height = 13
                Caption = 'Munic'#237'pio'
                FocusControl = txtGerMunicipio
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblGerTelefone: TLabel
                Left = 311
                Top = 74
                Width = 42
                Height = 13
                Caption = 'Telefone'
                FocusControl = txtGerTelefone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 473
                Top = 74
                Width = 53
                Height = 13
                Caption = 'N'#186' Licen'#231'a'
                FocusControl = DBEdit8
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblGerDtEntrega: TLabel
                Left = 3
                Top = 18
                Width = 54
                Height = 13
                Caption = 'Dt. Entrega'
                FocusControl = txtGerDtEntrega
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 723
                Top = 102
                Width = 48
                Height = 13
                Anchors = [akTop, akRight]
                Caption = 'N'#186' Invent.'
                FocusControl = DBEdit10
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ExplicitLeft = 514
              end
              object Label20: TLabel
                Left = 3
                Top = 102
                Width = 28
                Height = 13
                Caption = 'Resp.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label21: TLabel
                Left = 311
                Top = 102
                Width = 28
                Height = 13
                Caption = 'Cargo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object btnCadEmpresa: TSpeedButton
                Left = 578
                Top = 10
                Width = 21
                Height = 21
                Hint = 'Cadastro de Empresas'
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = btnCadEmpresaClick
              end
              object dblGerEmpresa: TDBLookupComboBox
                Left = 208
                Top = 10
                Width = 619
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'DescGerEmpresa'
                DataSource = dtsManuBD
                TabOrder = 1
                OnEnter = dblGerEmpresaEnter
              end
              object txtGerEndereco: TDBEdit
                Left = 75
                Top = 38
                Width = 776
                Height = 21
                TabStop = False
                Anchors = [akLeft, akTop, akRight]
                Color = cl3DLight
                DataField = 'Endereco'
                DataSource = dtsGerEmpresa
                TabOrder = 3
              end
              object txtGerMunicipio: TDBEdit
                Left = 75
                Top = 66
                Width = 196
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Municipio'
                DataSource = dtsGerEmpresa
                TabOrder = 4
              end
              object txtGerUF: TDBEdit
                Left = 273
                Top = 66
                Width = 30
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'UF'
                DataSource = dtsGerEmpresa
                TabOrder = 5
              end
              object txtGerTelefone: TDBEdit
                Left = 365
                Top = 66
                Width = 102
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Telefone'
                DataSource = dtsGerEmpresa
                TabOrder = 6
              end
              object DBEdit8: TDBEdit
                Left = 542
                Top = 66
                Width = 308
                Height = 21
                TabStop = False
                Anchors = [akLeft, akTop, akRight]
                Color = cl3DLight
                DataField = 'NumLicencaFEEMA'
                DataSource = dtsGerEmpresa
                TabOrder = 7
              end
              object txtGerDtEntrega: TDBEdit
                Left = 75
                Top = 10
                Width = 67
                Height = 21
                DataField = 'GerDtEntrega'
                DataSource = dtsManuBD
                TabOrder = 0
              end
              object DBEdit10: TDBEdit
                Left = 792
                Top = 94
                Width = 58
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'GerNumInventario'
                DataSource = dtsManuBD
                TabOrder = 2
              end
              object txtCargo: TDBEdit
                Left = 365
                Top = 94
                Width = 102
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'DescCargo'
                DataSource = dtsGerResponsavel
                TabOrder = 9
              end
              object txtGerResponsavel: TDBEdit
                Left = 75
                Top = 94
                Width = 228
                Height = 21
                Color = cl3DLight
                DataField = 'Responsavel'
                DataSource = dtsGerEmpresa
                TabOrder = 8
                OnChange = txtGerResponsavelChange
              end
            end
            object TabSheet3: TTabSheet
              Caption = '&Transportador'
              ImageIndex = 2
              OnEnter = TabSheet3Enter
              DesignSize = (
                857
                430)
              object Label29: TLabel
                Left = 3
                Top = 130
                Width = 43
                Height = 13
                Caption = 'Motorista'
                Enabled = False
                FocusControl = DBEdit17
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label32: TLabel
                Left = 311
                Top = 130
                Width = 27
                Height = 13
                Anchors = [akLeft, akTop, akRight]
                Caption = 'Placa'
                Enabled = False
                FocusControl = DBEdit18
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label33: TLabel
                Left = 723
                Top = 130
                Width = 42
                Height = 13
                Anchors = [akTop, akRight]
                Caption = 'N'#186' Certif.'
                FocusControl = DBEdit19
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                ExplicitLeft = 514
              end
              object Label15: TLabel
                Left = 151
                Top = 18
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
              object Label22: TLabel
                Left = 3
                Top = 46
                Width = 46
                Height = 13
                Caption = 'Endere'#231'o'
                FocusControl = DBEdit11
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label23: TLabel
                Left = 3
                Top = 74
                Width = 47
                Height = 13
                Caption = 'Munic'#237'pio'
                FocusControl = DBEdit12
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label24: TLabel
                Left = 311
                Top = 74
                Width = 42
                Height = 13
                Caption = 'Telefone'
                FocusControl = DBEdit14
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label25: TLabel
                Left = 473
                Top = 74
                Width = 53
                Height = 13
                Caption = 'N'#186' Licen'#231'a'
                FocusControl = DBEdit15
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label26: TLabel
                Left = 3
                Top = 18
                Width = 54
                Height = 13
                Caption = 'Dt. Entrega'
                FocusControl = DBEdit16
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label28: TLabel
                Left = 3
                Top = 102
                Width = 28
                Height = 13
                Caption = 'Resp.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label30: TLabel
                Left = 311
                Top = 102
                Width = 28
                Height = 13
                Caption = 'Cargo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton1: TSpeedButton
                Left = 578
                Top = 10
                Width = 21
                Height = 21
                Hint = 'Cadastro de Empresas'
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = btnCadEmpresaClick
              end
              object DBEdit17: TDBEdit
                Left = 75
                Top = 122
                Width = 227
                Height = 21
                DataField = 'TransNomeMotorista'
                DataSource = dtsManuBD
                Enabled = False
                TabOrder = 2
              end
              object DBEdit18: TDBEdit
                Left = 365
                Top = 122
                Width = 102
                Height = 21
                DataField = 'TransPlacaVeiculo'
                DataSource = dtsManuBD
                Enabled = False
                TabOrder = 3
              end
              object DBEdit19: TDBEdit
                Left = 792
                Top = 122
                Width = 58
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'TransCertificado'
                DataSource = dtsManuBD
                TabOrder = 4
              end
              object DBLookupComboBox1: TDBLookupComboBox
                Left = 208
                Top = 10
                Width = 619
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'DescTransEmpresa'
                DataSource = dtsManuBD
                TabOrder = 1
                OnEnter = dblGerEmpresaEnter
              end
              object DBEdit11: TDBEdit
                Left = 75
                Top = 38
                Width = 776
                Height = 21
                TabStop = False
                Anchors = [akLeft, akTop, akRight]
                Color = cl3DLight
                DataField = 'Endereco'
                DataSource = dtsTransEmpresa
                TabOrder = 5
              end
              object DBEdit12: TDBEdit
                Left = 75
                Top = 66
                Width = 196
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Municipio'
                DataSource = dtsTransEmpresa
                TabOrder = 6
              end
              object DBEdit13: TDBEdit
                Left = 273
                Top = 66
                Width = 30
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'UF'
                DataSource = dtsTransEmpresa
                TabOrder = 7
              end
              object DBEdit14: TDBEdit
                Left = 365
                Top = 66
                Width = 102
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Telefone'
                DataSource = dtsTransEmpresa
                TabOrder = 8
              end
              object DBEdit15: TDBEdit
                Left = 542
                Top = 66
                Width = 308
                Height = 21
                TabStop = False
                Anchors = [akLeft, akTop, akRight]
                Color = cl3DLight
                DataField = 'NumLicencaFEEMA'
                DataSource = dtsGerEmpresa
                TabOrder = 9
              end
              object DBEdit16: TDBEdit
                Left = 75
                Top = 10
                Width = 67
                Height = 21
                DataField = 'TransDtReceb'
                DataSource = dtsManuBD
                TabOrder = 0
              end
              object DBEdit27: TDBEdit
                Left = 365
                Top = 94
                Width = 102
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'DescCargo'
                DataSource = dtsTransResponsavel
                TabOrder = 10
              end
              object txtTransResponsavel: TDBEdit
                Left = 75
                Top = 94
                Width = 227
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Responsavel'
                DataSource = dtsTransEmpresa
                TabOrder = 11
                OnChange = txtTransResponsavelChange
              end
            end
            object TabSheet4: TTabSheet
              Caption = 'Rece&ptor'
              ImageIndex = 3
              OnEnter = TabSheet4Enter
              DesignSize = (
                857
                430)
              object Label31: TLabel
                Left = 151
                Top = 18
                Width = 41
                Height = 13
                Caption = 'Empresa'
                FocusControl = DBLookupComboBox3
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label34: TLabel
                Left = 3
                Top = 46
                Width = 46
                Height = 13
                Caption = 'Endere'#231'o'
                FocusControl = DBEdit20
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label35: TLabel
                Left = 3
                Top = 74
                Width = 47
                Height = 13
                Caption = 'Munic'#237'pio'
                FocusControl = DBEdit21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label36: TLabel
                Left = 311
                Top = 74
                Width = 42
                Height = 13
                Caption = 'Telefone'
                FocusControl = DBEdit23
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label37: TLabel
                Left = 473
                Top = 74
                Width = 53
                Height = 13
                Caption = 'N'#186' Licen'#231'a'
                FocusControl = DBEdit24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label38: TLabel
                Left = 3
                Top = 18
                Width = 54
                Height = 13
                Caption = 'Dt. Entrega'
                FocusControl = DBEdit25
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label40: TLabel
                Left = 3
                Top = 102
                Width = 28
                Height = 13
                Caption = 'Resp.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object Label41: TLabel
                Left = 311
                Top = 102
                Width = 28
                Height = 13
                Caption = 'Cargo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object SpeedButton4: TSpeedButton
                Left = 578
                Top = 10
                Width = 21
                Height = 21
                Hint = 'Cadastro de Empresas'
                Caption = '...'
                Flat = True
                ParentShowHint = False
                ShowHint = True
                OnClick = btnCadEmpresaClick
              end
              object DBLookupComboBox3: TDBLookupComboBox
                Left = 208
                Top = 10
                Width = 619
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                DataField = 'DescRecepEmpresa'
                DataSource = dtsManuBD
                TabOrder = 1
                OnEnter = dblGerEmpresaEnter
              end
              object DBEdit20: TDBEdit
                Left = 75
                Top = 38
                Width = 776
                Height = 21
                TabStop = False
                Anchors = [akLeft, akTop, akRight]
                Color = cl3DLight
                DataField = 'Endereco'
                DataSource = dtsRecepEmpresa
                TabOrder = 2
              end
              object DBEdit21: TDBEdit
                Left = 75
                Top = 66
                Width = 196
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Municipio'
                DataSource = dtsRecepEmpresa
                TabOrder = 3
              end
              object DBEdit22: TDBEdit
                Left = 273
                Top = 66
                Width = 30
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'UF'
                DataSource = dtsRecepEmpresa
                TabOrder = 4
              end
              object DBEdit23: TDBEdit
                Left = 365
                Top = 66
                Width = 102
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Telefone'
                DataSource = dtsRecepEmpresa
                TabOrder = 5
              end
              object DBEdit24: TDBEdit
                Left = 542
                Top = 66
                Width = 308
                Height = 21
                TabStop = False
                Anchors = [akLeft, akTop, akRight]
                Color = cl3DLight
                DataField = 'NumLicencaFEEMA'
                DataSource = dtsRecepEmpresa
                TabOrder = 6
              end
              object DBEdit25: TDBEdit
                Left = 75
                Top = 10
                Width = 67
                Height = 21
                DataField = 'RecepDtReceb'
                DataSource = dtsManuBD
                TabOrder = 0
              end
              object DBEdit29: TDBEdit
                Left = 365
                Top = 94
                Width = 102
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'DescCargo'
                DataSource = dtsRecepResponsavel
                TabOrder = 7
              end
              object txtRecepResponsavel: TDBEdit
                Left = 75
                Top = 94
                Width = 228
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'Responsavel'
                DataSource = dtsRecepEmpresa
                TabOrder = 8
                OnChange = txtRecepResponsavelChange
              end
            end
          end
        end
      end
    end
  end
  inherited stbManutencaoBD: TStatusBar
    Top = 528
    Width = 999
    Panels = <
      item
        Width = 150
      end
      item
        Width = 50
      end>
    ExplicitTop = 528
    ExplicitWidth = 999
  end
  inherited pnlBotoes: TPanel
    Left = 918
    Top = 0
    Height = 513
    ExplicitLeft = 918
    ExplicitTop = 0
    ExplicitHeight = 513
    object SpeedButton6: TSpeedButton
      Left = 6
      Top = 230
      Width = 62
      Height = 22
      Caption = 'Totalizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton6Click
    end
  end
  inherited actManutencaoBD: TActionList
    Left = 778
  end
  inherited imgManutencaoBD: TImageList
    Left = 806
    Bitmap = {
      494C01010A000C0068001A001A00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000680000004E0000000100200000000000C07E
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094635A00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      0000000000000000000094635A00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094635A00EFD6B500F7DEB500F7D6AD00F7D6A500F7CE9C00EFCE9400EFC6
      9400EFC68C00EFC68400EFC68400EFC68400EFC68400EFC68400EFC68400EFC6
      8400EFC68400EFBD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000094635A00EFD6B500F7DEB500F7D6AD00F7D6A500F7CE
      9C00EFCE9400EFC69400EFC68C00EFC68400EFC68400EFC68400EFC68400EFC6
      8400EFC68400EFC68400EFC68400EFBD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094635A00EFD6BD00F7DEBD00F7D6B500F7D6AD00EFCEA500EFCE9C00EFC6
      9400EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000094635A00EFD6BD00F7DEBD00F7D6B500F7D6AD00A5BD
      7300E7C69400DEC68C00EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00EFBD7B00EFBD7B00E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094635A00EFD6C600F7E7C600F7DEBD00F7D6B500F7D6AD00EFCEA500EFCE
      9C00EFC69400EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000094635A00EFD6C600F7E7C600F7DEBD00F7D6B500C6C6
      8C0000840000E7C6940052A531002194100021941000529C2900B5B56300DEBD
      7300EFBD7B00EFBD7B00EFBD7B00E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094635A00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00EFCE
      A500EFCE9C00EFC69400EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000094635A00EFDEC600F7E7C600F7DEBD00F7DEB500E7D6
      A500008400000084000000840000008400000084000000840000008400007BA5
      4200DEBD7300EFBD7B00EFBD7B00E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094636300F7DECE00FFE7CE00F7E7C600F7DEBD00F7DEB500F7D6B500F7D6
      AD00EFCEA500EFCE9C00EFC69400EFC69400EFC68C00EFBD8400EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000094636300F7DECE00FFE7CE00F7E7C600F7DEBD00E7D6
      AD00008400000084000000840000008400000084000000840000008400000084
      0000ADB55A00EFBD7B00EFBD7B00E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094636300F7E7D600FFEFD600F7E7CE00F7DEC600848CD6003952E700F7D6
      B500F7D6AD00EFCEA500EFCE9C00314ADE008484B500EFC68C00EFBD8400EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000094636300F7E7D600FFEFD600F7E7CE00F7DEC600E7DE
      B50000840000008400000084000021941800B5BD7300B5BD7300529C31000084
      000021941000EFBD7B00EFBD7B00E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C6B6300F7E7DE00FFEFDE00F7E7D600F7E7CE001031F7000018FF003952
      E700F7D6B500F7D6AD00314ADE000018FF001031EF00EFC68C00EFC68C00EFBD
      8400EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      000000000000000000009C6B6300F7E7DE00FFEFDE00F7E7D600F7E7CE00E7DE
      BD0000840000008400000084000018941000E7CE9C00E7C69400DEC68C0094AD
      520000840000EFBD8400EFBD7B00E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C6B6300F7EFE700FFF7E700FFEFDE00F7E7D600BDB5D6000021F7000018
      FF003952E7003952E7000018FF000021F700B5A5AD00EFC69400EFC68C00EFC6
      8C00EFBD8400E7BD7B009C6B6300000000000000000000000000000000000000
      000000000000000000009C6B6300F7EFE700FFF7E700FFEFDE00F7E7D600E7DE
      C6000084000000840000008400000084000000840000E7CE9C00EFCE9C00EFC6
      9400EFC68C005AC66300EFBD8400E7BD7B009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5736300F7EFEF00FFF7EF00FFEFE700F7EFDE00F7E7D600BDB5D6000021
      F7000018FF000018FF000021F700B5ADBD00EFCEA500EFCE9C00EFC69400EFC6
      8C00EFC68C00E7BD84009C6B6300000000000000000000000000000000000000
      00000000000000000000A5736300F7EFEF00FFF7EF00FFEFE700F7EFDE00E7E7
      C600E7DEC600E7DEBD00E7DEB500E7D6AD00E7D6A500E7CE9C00EFCEA500EFCE
      9C00EFC694005AC66300EFC68C00E7BD84009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5736B00FFF7F700FFFFF700FFF7EF00FFEFE700FFEFDE00F7E7D600294A
      EF000018FF000018FF002942E700F7D6B500F7D6AD00EFCEA500EFCE9C00EFC6
      9400EFC68C00EFBD84009C6B6300000000000000000000000000000000000000
      00000000000000000000A5736B00FFF7F700FFFFF700FFF7EF005AC66300FFEF
      DE00F7E7D600F7E7CE00E7DEBD00E7DEB500E7D6AD00E7D6A500E7CE9C00E7CE
      9C00DEC69400EFC69400EFC68C00EFBD84009C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AD7B6B00FFF7F700FFFFFF00FFFFF700FFF7EF00FFEFE7003952EF000018
      FF000021FF000021F7000018FF003952E700F7D6B500F7D6AD00EFCEA500EFCE
      9C00EFCE9400EFC68C00A5736300000000000000000000000000000000000000
      00000000000000000000AD7B6B00FFF7F700FFFFFF00FFFFF7005AC66300FFEF
      E700FFEFDE00F7E7D600E7DEC600008400000084000000840000008400000084
      0000E7CE9C00EFCE9C00EFCE9400EFC68C00A573630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B57B6B00FFF7F700FFFFFF00FFFFFF00FFF7F700294AF7000018FF000021
      FF00BDBDDE00BDB5D6000021F7000018FF002142EF00F7D6B500F7D6AD00EFCE
      A500EFCE9C00EFC69400A5736300000000000000000000000000000000000000
      00000000000000000000B57B6B00FFF7F700FFFFFF00FFFFFF00FFF7F700008C
      00009CCE8C00EFE7CE00E7E7C600E7DEBD001894100000840000008400000084
      0000E7CE9C00EFCEA500EFCE9C00EFC69400A573630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5846B00FFF7F700FFFFFF00FFFFFF00FFFFFF001031FF000029FF00BDBD
      E700FFEFDE00F7E7D600BDB5D6000021F7001031F700F7DEB500F7D6AD00F7D6
      AD00F7CEA500EFCE9C009C736300000000000000000000000000000000000000
      00000000000000000000B5846B00FFF7F700FFFFFF00FFFFFF00FFFFFF00299C
      21000084000052B54A00BDD6A500BDD69C00219C210000840000008400000084
      0000E7D6A500F7D6AD00F7CEA500EFCE9C009C73630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD846B00FFF7F700FFFFFF00FFFFFF00FFFFFF00BDC6FF00BDC6F700FFF7
      EF00FFEFE700FFEFDE00F7E7D600BDB5D600B5ADCE00F7DEBD00F7DEB500F7D6
      AD00EFD6A500CEB594008C6B6300000000000000000000000000000000000000
      00000000000000000000BD846B00FFF7F700FFFFFF00FFFFFF00FFFFFF00BDE7
      BD00008400000084000000840000008400000084000000840000008400000084
      0000E7D6AD00F7D6AD00EFD6A500CEB594008C6B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C68C6B00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00FFEFE700FFEFDE00F7E7D600F7E7CE00F7DEC600F7DEBD00E7CE
      AD00C6B59400A5947B0084636300000000000000000000000000000000000000
      00000000000000000000C68C6B00FFF7F700FFFFFF00FFFFFF00FFFFFF00EFFF
      EF0084CE84000084000000840000008400000084000000840000008400000084
      0000E7DEB500E7CEAD00C6B59400A5947B008463630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C68C7300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7EF00FFEFE700FFEFDE00FFE7D600FFEFD600E7D6BD00BDAD
      9C00A59C8C00A5948400846B6300000000000000000000000000000000000000
      00000000000000000000C68C7300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFFFEF00C6E7C60052B55200299C2100219C210052AD4A00EFE7C6000084
      0000B5C69400BDAD9C00A59C8C00A5948400846B630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE947300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFF7EF00FFF7E700EFD6C6009C635A009C635A009463
      5A0094635A0094635A009C6B5A00000000000000000000000000000000000000
      00000000000000000000CE947300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00FFF7E700DECEB500946B
      52006B6B420094635A0094635A0094635A009C6B5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE947300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFFFEF00DEC6B5009C635A00DEA56B00DE9C
      4A00E7943900EF8C2100A56B6B00000000000000000000000000000000000000
      00000000000000000000CE947300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFFFEF00DEC6B5009C63
      5A00DEA56B00DE9C4A00E7943900EF8C2100A56B6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D69C7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD009C635A00EFB57300EFAD
      5200F7A53100A56B6B0000000000000000000000000000000000000000000000
      00000000000000000000D69C7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD009C63
      5A00EFB57300EFAD5200F7A53100A56B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D69C7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C6009C635A00EFB57300EFA5
      5200A56B6B000000000000000000000000000000000000000000000000000000
      00000000000000000000D69C7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C6009C63
      5A00EFB57300EFA55200A56B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D69C7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE009C635A00EFB57300A56B
      6B00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D69C7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE009C63
      5A00EFB57300A56B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C
      6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B009C635A00A56B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C
      6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B00CE8C6B009C63
      5A00A56B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000094635A00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A5636B00A563
      6B00A5636B00A5636B00A5636B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000000000009C5A52008C3939008431
      310084313100842929008C5A5A00A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5008C52520084292900843131008431
      3100843131008431310000000000000000000000000000000000000000000000
      000094635A00EFD6B500F7DEB500F7D6AD00F7D6A500F7CE9C00EFCE9400EFC6
      9400EFC68C00EFC68400EFC68400EFC68400EFC68400EFC68400EFC68400EFC6
      8400EFC68400EFBD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B5000000B500000000000000
      00000000000018A5D60063C6E70052C6E70039B5DE0029ADDE0018A5D60018A5
      D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00BD4A4A00A5393900844A4A009C9C9C00BDBDBD00DEDEDE00EFEFE700F7F7
      EF00F7F7EF00EFE7E700DEDED600D6D6D600A55A5A007B181800841818008421
      2100B5424200AD42420084313100000000000000000000000000000000000000
      000094635A00EFD6BD00F7DEBD00F7D6B500F7D6AD00EFCEA500EFCE9C00EFC6
      9400EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000B5000000B5000000B500000000000000
      00000000000010A5D600A5DEEF00C6FFFF0094FFFF008CF7FF007BE7F7006BD6
      EF0052CEEF0042BDE70029ADDE0018A5D60010A5D60010A5D600FF00FF00FF00
      FF0000730800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00A5393900845252008C737300A5636300C69C9400D6BDBD00F7F7
      EF00FFFFF700FFF7F700EFE7E700E7E7E700A55A5A007B101000841818008421
      2100B5424200B542420084313100000000000000000000000000000000000000
      000094635A00EFD6C600F7E7C600F7DEBD00F7D6B500F7D6AD00EFCEA500EFCE
      9C00EFC69400EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000B5000000B5000000B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B5000000B5000000B50000000000000000000000
      00000000000010A5D60063BDE700DEFFFF0094FFFF0094FFFF0094FFFF009CFF
      FF009CFFFF0094F7FF008CEFFF007BE7F7005ACEEF0042BDE70031B5DE0021AD
      D6000884180008841800428C3900FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00A5393900845252008C63630084212100A5525200BD8C8400E7E7
      DE00FFF7F700FFFFF700F7F7EF00EFEFEF00AD5A5A007B101000841818008421
      2100B5424200B542420084313100000000000000000000000000000000000000
      000094635A00EFDEC600F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00EFCE
      A500EFCE9C00EFC69400EFC68C00EFC68C00EFBD8400EFBD7B00EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000B5000000B5000000B5000000B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000B5000000B5000000B5000000B5000000000000000000000000000000
      00000000000018A5D60029ADDE00CEEFFF00A5FFFF0094FFFF0094FFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF0094F7FF008CEFFF0084E7
      FF000884180008A5180008841800217B210018A5D600FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00A53939008C5A5A00946B6B007B1818008C292900A55A5A00D6CE
      CE00EFEFE700FFF7F700FFFFF700FFFFF700AD6363007B101000841818008421
      2100B5424200B542420084313100000000000000000000000000000000000000
      000094636300F7DECE00FFE7CE00F7E7C600F7DEBD00F7DEB500F7D6B500F7D6
      AD00EFCEA500EFCE9C00EFC69400EFC69400EFC68C00EFBD8400EFBD7B00EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      0000000000000000B5000000B5000000B5000000B5000000B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      B5000000B5000000B5000000B500000000000000000000000000000000000000
      00000000000021ADD60031B5DE008CD6EF00BDFFFF008CFFFF0094FFFF0094F7
      FF0094F7FF00298C420008841800088418000884180008841800088418000884
      18000884180010B5310008A5180008A5180000730800FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00A53939008C5A5A009C6B6B00841818007B1818008C292900BDB5
      B500DEDEDE00EFEFE700FFF7F700FFFFFF00B56363007B101000841818008421
      2100B5424200B542420084313100000000000000000000000000000000000000
      000094636300F7E7D600FFEFD600F7E7CE00F7DEC600F7DEBD00F7DEBD00F7D6
      B500F7D6AD00EFCEA500EFCE9C00EFC69400EFC69400EFC68C00EFBD8400EFBD
      7B00EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      000000000000000000000000B5000000B5000000B5000000B5000000B5000000
      00000000000000000000000000000000000000000000000000000000B5000000
      B5000000B5000000B50000000000000000000000000000000000000000000000
      00000000000021A5D60063CEEF0052BDE700CEFFFF0094FFFF0094FFFF0094F7
      FF0094F7FF00298C42005AE7840042CE730042CE730042CE730031C66B0031C6
      6B0021BD4A0010B5310010B5310008A5180008A5180000730800FF00FF00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00A5393900945A5A00A57373007B1818007B1818007B1818009C94
      9400C6C6C600DEDED600F7EFEF00FFFFFF00B56B63007B101000841818008421
      2100B5424200B542420084313100000000000000000000000000000000000000
      00009C6B6300F7E7DE00FFEFDE00F7E7D600F7E7CE00F7E7C600F7DEBD00F7DE
      B500F7D6B500F7D6AD00EFCEA500EFCE9C00EFC69400EFC68C00EFC68C00EFBD
      8400EFBD7B00E7BD7B009C6B6300000000000000000000000000000000000000
      00000000000000000000000000000000F7000000B5000000B5000000B5000000
      B50000000000000000000000000000000000000000000000B5000000B5000000
      B5000000B5000000000000000000000000000000000000000000000000000000
      00000000000018A5D60084E7F70052CEE700B5E7F700A5FFFF0094FFFF0094F7
      FF0094F7FF00298C42005AE784005AE784005AE7840042CE730031C66B0042CE
      730021BD4A0021BD4A0010B5310010B5310008A5180008A5180000730800FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00A53939009C636300B5949400944A4A008C424200844A4A00848C
      8C00A5A5A500C6CEC600E7EFE700FFFFFF00B56B6300731010007B1818008421
      2100B5424200B542420084313100000000000000000000000000000000000000
      00009C6B6300F7EFE700FFF7E700FFEFDE00F7E7D600F7E7CE00F7E7C600F7DE
      BD00F7DEB500F7D6B500F7D6AD00EFCEA500EFCE9C00EFC69400EFC68C00EFC6
      8C00EFBD8400E7BD7B009C6B6300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000B5000000B5000000
      B5000000B50000000000000000000000B5000000B5000000B5000000B5000000
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000018A5D6008CE7F7006BE7F7008CCEEF00BDFFFF008CFFFF0094F7
      FF0094F7FF00298C42005AE784005AE784005AE7840042CE730042CE730031C6
      6B0042CE730021BD4A0021BD4A0010B5310010B5310008A5180000730800FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00C64A4A00AD424200A5525200C6948C00BD8C8C00AD848400A57B7B009C73
      73009C737300B58C8400CE9C9C00DEB5AD00B55A5A0094292900942929009C31
      3100B5424200B542420084313100000000000000000000000000000000000000
      0000A5736300F7EFEF00FFF7EF00FFEFE700F7EFDE00F7E7D600F7E7CE00F7DE
      C600F7DEBD00F7DEB500F7D6B500F7D6AD00EFCEA500EFCE9C00EFC69400EFC6
      8C00EFC68C00E7BD84009C6B6300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000B5000000
      B5000000B5000000B5000000B5000000B5000000B5000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018A5D60084E7F7008CFFFF005AC6E700D6FFFF0094FFFF0094F7
      FF0094F7FF00298C42004AAD4A0021A5390021A5390021A5390021A53900189C
      290021BD4A0031C66B0031C66B0021BD4A0010B531000073080018A5D600FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200BD4A4A00BD4A
      4A00BD4A4A00BD4A4A00BD4A4A00BD424200BD424200BD424200BD424200BD42
      4200BD424200BD424200BD424200BD424200BD424200BD4A4A00BD4A4A00BD4A
      4A00C64A4A00AD42420084313100000000000000000000000000000000000000
      0000A5736B00FFF7F700FFFFF700FFF7EF00FFEFE700FFEFDE00F7E7D600F7E7
      CE00F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00EFCEA500EFCE9C00EFC6
      9400EFC68C00EFBD84009C6B6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      B5000000B5000000F7000000B5000000F7000000B5000000B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5D60084E7F7009CFFFF004AC6E700BDE7F700BDFFFF008CFF
      FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7FF008CF7
      FF0021A5390031C66B0031C66B00189C2900298C42008CF7FF0029ADDE00FF00
      FF00FF00FF00000000000000000000000000A5635A00B5525200B5424200B542
      4200B54A4200BD525200BD525200BD5A5A00BD5A5A00BD5A5A00BD5A5A00BD5A
      5A00BD5A5A00BD5A5A00BD5A5A00BD5A5A00BD5A5A00BD5A5A00BD5A5A00BD52
      5200BD4A4A00AD42420084313100000000000000000000000000000000000000
      0000AD7B6B00FFF7F700FFFFFF00FFFFF700FFF7EF00FFEFE700FFEFDE00F7E7
      D600F7E7CE00F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00EFCEA500EFCE
      9C00EFCE9400EFC68C00A5736300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000B5000000B5000000B5000000F7000000B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5D60084E7F7009CFFFF00C6ADA50039B5DE00BDE7F700C6F7
      FF00C6FFFF00BDFFFF00BDFFFF00ADFFFF008CF7FF008CF7FF008CF7FF008CF7
      FF0021A5390042CE7300189C2900298C420084EFFF009CFFFF004AC6E70010A5
      D600FF00FF00000000000000000000000000A56B5A00B55252009C3131008C31
      2900A5524A00B5737300C6949400CEADAD00CEADAD00CEADAD00CEADAD00CEAD
      AD00CEADAD00CEADAD00CEADAD00CEADAD00CEADAD00CEADAD00CEB5B500C673
      7300BD424200AD42420084313100000000000000000000000000000000000000
      0000B57B6B00FFF7F700FFFFFF00FFFFFF00FFF7F700FFF7EF00FFEFE700FFEF
      DE00F7E7D600F7E7CE00F7E7C600F7DEBD00F7DEB500F7D6B500F7D6AD00EFCE
      A500EFCE9C00EFC69400A5736300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      B5000000B5000000F7000000B5000000B5000000F7000000F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5D6008CE7F7009CFFFF00CEADA500FFF7EF0042BDE7004ABD
      DE005ABDE7006BC6E70073C6E7009CDEEF00DEFFFF009CF7FF0084F7FF008CF7
      FF0021A5390008841800428C39006BD6FF0084EFFF009CFFFF0084EFFF0021AD
      D600FF00FF00000000000000000000000000A56B5A00B552520094292900C684
      8400FFF7EF00F7E7E700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00FFEFEF00EFDEDE00BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000B5846B00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7EF00FFEF
      E700FFEFDE00F7E7D600F7E7CE00F7DEC600F7DEBD00F7DEB500F7D6AD00F7D6
      AD00F7CEA500EFCE9C009C736300000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000B5000000
      B5000000F7000000B5000000F7000000F7000000F7000000B5000000F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5D6008CE7F7009CFFFF00CEB5AD00FFFFF700FFEFE700FFEF
      DE00F7E7D600F7E7CE00F7DEC60039BDE70063C6E700D6F7FF00B5FFFF0084F7
      FF000073080084EFFF0084EFFF0063D6FF0084EFFF0094F7FF0094F7FF0042BD
      E700FF00FF00000000000000000000000000A56B5A00B552520094292900C694
      8C00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7DE00BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000BD846B00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7
      EF00FFEFE700FFEFDE00F7E7D600F7E7CE00F7DEC600F7DEBD00F7DEB500F7D6
      AD00EFD6A500CEB594008C6B6300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000F7000000F7000000
      F7000000B5000000F70000000000000000000000F7000000F7000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      00000000000021A5D6008CE7F7009CFFFF00D6BDB500FFFFFF00FFF7EF00FFEF
      E700FFEFDE00F7E7D600F7E7CE00F7DEC600F7DEBD0042B5DE00A5DEEF00CEFF
      FF00B5FFFF00ADF7FF00A5F7FF007BDEFF0094EFFF009CFFFF00A5FFFF006BDE
      F70018A5D600000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00FFF7F700EFDEDE00BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000C68C6B00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFF7EF00FFEFE700FFEFDE00F7E7D600F7E7CE00F7DEC600F7DEBD00E7CE
      AD00C6B59400A5947B0084636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000F7000000F7000000B5000000
      F7000000F700000000000000000000000000000000000000F7000000F7000000
      F7000000F7000000000000000000000000000000000000000000000000000000
      00000000000021A5D6008CE7F7009CFFFF00D6BDB500FFFFFF00FFFFF700FFF7
      EF00FFEFE700FFEFDE00FFE7D600F7E7CE00F7DEC600F7DEBD0039BDE7005ABD
      E700A5DEEF00ADDEF700B5E7F700BDE7F700CEEFF700CEEFFF00D6F7FF00C6EF
      FF0029ADDE00000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00E7DEDE00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00DEDEDE00EFE7E700BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000C68C7300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7EF00FFEFE700FFEFDE00FFE7D600FFEFD600E7D6BD00BDAD
      9C00A59C8C00A5948400846B6300000000000000000000000000000000000000
      00000000000000000000000000000000F7000000F7000000F7000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      F7000000F7000000F70000000000000000000000000000000000000000000000
      00000000000021A5D6008CEFF70094FFFF00DEBDB500FFFFFF00FFFFFF00FFFF
      F700FFF7EF00FFEFE700FFEFDE00F7E7D600F7E7CE00F7DEC600F7DEBD00FFDE
      B5005AD6EF005AD6EF005ACEEF0031B5DE0021A5D60021ADD60029ADD60029AD
      D60018A5D600000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00F7EFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7DE00F7EFEF00EFE7DE00BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000CE947300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF7F700FFF7EF00FFF7E700EFD6C6009C635A009C635A009463
      5A0094635A0094635A009C6B5A00000000000000000000000000000000000000
      000000000000000000000000F7000000F7000000F7000000F7000000F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000F7000000F7000000F700000000000000000000000000000000000000
      00000000000021ADD60094EFF70094FFFF00DEC6B500FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7EF00FFEFE700FFEFDE00FFE7D600F7E7CE00F7E7C600F7DE
      B500B58484008CF7FF008CF7FF0039BDE700FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00E7E7DE00C6C6C600CEC6C600CEC6C600CEC6C600CEC6C600CEC6
      C600CEC6C600CEC6C600CEC6C600CEC6C600C6C6C600E7DEDE00EFE7E700BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000CE947300FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFFFEF00DEC6B5009C635A00DEA56B00DE9C
      4A00E7943900EF8C2100A56B6B00000000000000000000000000000000000000
      0000000000000000F7000000F7000000F7000000F7000000F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000F700000000000000000000000000000000000000
      00000000000018A5D6009CE7F700A5FFFF00E7C6B500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7EF00FFEFE700FFEFDE00FFEFDE00E7DEC600C6BD
      AD00B58484009CF7FF009CEFFF0039B5DE00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00EFE7E700DED6D600DEDED600DEDED600DEDED600DEDED600DEDE
      D600DEDED600DEDED600DEDED600DEDED600DED6D600EFE7E700EFE7DE00BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000D69C7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700DEC6BD009C635A00EFB57300EFAD
      5200F7A53100A56B6B0000000000000000000000000000000000000000000000
      00000000F7000000F7000000F7000000F7000000F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF0052BDDE00C6FFFF00E7CEBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7EF00F7E7D600B5848400B5848400B584
      8400B584840039B5DE0039B5DE0021ADD600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00EFE7E700DED6D600DEDED600DEDED600DEDED600DEDED600DEDE
      D600DEDED600DEDED600DEDED600DEDED600DED6D600EFE7E700EFE7DE00BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000D69C7300FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEC6C6009C635A00EFB57300EFA5
      5200A56B6B000000000000000000000000000000000000000000000000000000
      00000000F7000000F7000000F7000000F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF0010A5D6006BC6E700EFCEBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CECE00B5848400EFB57300EFA5
      4A00CE737B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00E7DEDE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600E7DEDE00EFE7E700BD73
      7300B5393900AD42420084313100000000000000000000000000000000000000
      0000D69C7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE009C635A00EFB57300A56B
      6B00000000000000000000000000000000000000000000000000000000000000
      00000000F7000000F7000000F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF0010A5D600EFCEBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600B5848400FFC67300D67B
      8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A56B5A00B552520094292900C68C
      8C00FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700EFE7DE00BD73
      7300B5393900B542420084313100000000000000000000000000000000000000
      0000D6947300E7C6AD00E7C6B500E7C6B500E7C6B500E7C6B500E7C6AD00DEBD
      AD00DEBDAD00DEBDAD00D6B5AD00D6B5AD00C69C94009C635A00A56B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00EFCEB500FFF7F700FFF7F700FFF7
      F700FFF7F700FFF7F700FFF7F700FFF7F700E7D6CE00B5848400D68C9400FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000A56B5A00AD52520094292900BD84
      8400EFEFEF00EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700E7D6D600BD73
      7300A5393900A542420084313100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF00FF00FF00FF00FF00DEAD8400DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400C6738C00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000000000009C5A52008C292900A56B
      6B00B5BDBD00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500C6BDBD00A56B
      6B007B2929008431310000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003900000039
      0000003100000042000000390000003900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      0000003100000031000000420000004200000031000000310000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000310000003100000042000000420000003100000031
      0000003100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000039000000390000003100000042
      0000003900000039000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000031000000420000005A00000073
      0000007B080000840800007B080000730000005A000000420000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000290000003100000042
      0000006B0000007B080000840800008408000084080000730000004A00000031
      0000003100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000029
      00000031000000420000006B0000007B08000084080000840800008408000073
      0000004A00000031000000310000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031000000420000005A000000730000007B08000084
      0800007B080000730000005A0000004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000310000004A0000007B080000A5080000A5080000A5
      080000A5080000A5080000A5080000A5080000A50800009C0800007308000042
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000004200000042000000730000009C
      080000A5080000A5080000A5080000A5080000A5080000A50800009C0800007B
      0800004A00000031000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004200000042
      000000730000009C080000A5080000A5080000A5080000A5080000A5080000A5
      0800009C0800007B0800004A0000003100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000310000004A0000007B080000A5080000A5080000A5080000A5080000A5
      080000A5080000A5080000A50800009C08000073080000420000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000310000006B000000A5080000A50800009C0800009C0800009C
      0800009C0800009C0800009C080000A5100000A5100000A5100008B5180008A5
      1800005A08000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000004A000000520000009C080000A5080000A5
      0800009C0800009C0800009C0800009C0800009C0800009C0800009C080000A5
      080000A508000063000000310000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A000000520000009C
      080000A5080000A50800009C0800009C0800009C0800009C0800009C0800009C
      0800009C080000A5080000A50800006300000031000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      0000006B000000A5080000A50800009C0800009C0800009C0800009C0800009C
      0800009C080000A5100000A5100000A5100008B5180008A51800005A08000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000310000006B000000A5080000A50800009C0800009C0800009C080010A5
      1800D6F7DE00FFFFFF00ADE7B50008AD290008A5210008A5180008A5180008AD
      210008B529000063100000000000000000000000000000000000000000000000
      0000000000000000000000520800005A080000AD180000A51000009C0800009C
      0800009C0800009C0800009C0000009C0800009C0800009C0800009C0800009C
      080000A5080000A50800006B0000003100000000000000000000000000000000
      00000000000000000000000000000000000000520800005A080000AD180000A5
      1000009C0800009C0800009C0800009C0800009C0000009C0800009C0800009C
      0800009C0800009C080000A5080000A50800006B000000310000000000000000
      000000000000000000000000000000000000000000000000000000310000006B
      000000A5080000A50800009C0800009C0800009C0800009C080073D67B00EFFF
      EF004AC6520008A5290008A5210008A5180008A5180008AD210008B529000063
      1000000000000000000000000000000000000000000000000000000000000031
      00000063000000A50800009C0800009C0800009C0800009C0800009C080018AD
      2900F7FFF700FFFFFF00D6F7DE0010AD290008AD290008A5210008A5210008AD
      290010AD310010B53900006B1000000000000000000000000000000000000000
      00000000000000390000005A080008AD210008A5180000A5100000A51000009C
      0800009C0800009C0800009C0800009C0800009C0800009C0800009C0800009C
      0800009C0800009C080000A50800006B00000031000000000000000000000000
      000000000000000000000000000000390000005A080008AD210008A5180000A5
      100000A51000009C0800009C0800009C0800009C0800009C0800009C0800009C
      0800009C0800009C0800009C0800009C080000A50800006B0000003100000000
      00000000000000000000000000000000000000000000003100000063000000A5
      0800009C0800009C0800009C0800009C0800009C080084D68C00FFFFFF00FFFF
      FF00F7FFF70042C6630008AD290008A5210008A5210008AD290010AD310010B5
      3900006B1000000000000000000000000000000000000000000000310000004A
      000000A5080000A50800009C0800009C0800009C0800009C0800009C080018AD
      2900F7FFF700FFFFFF00D6F7DE0010AD290008AD290008A5210008AD290010AD
      310010AD390021B54A0018AD4A00005A08000000000000000000000000000000
      0000000000000042000008A5290008B5290008A5210008A5180000A51000009C
      080008A5100094DE9C00EFFFEF00EFFFEF0063CE6B00009C0800009C0800009C
      0800009C0800009C080000A5080000A50800004A000000000000000000000000
      00000000000000000000000000000042000008A5290008B5290008A5210008A5
      180000A51000009C0800009C0800009C080063CE6B00EFFFEF00EFFFEF0094DE
      9C0000A51000009C0800009C0800009C080000A5080000A50800004A00000000
      00000000000000000000000000000000000000310000004A000000A5080000A5
      0800009C0800009C0800009C080000A508008CDE9400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFFFF70042C65A0008A5210008AD290010AD310010AD390021B5
      4A0018AD4A00005A08000000000000000000000000000000000000310000007B
      080000A50800009C0800009C0800009C0800009C0800009C0800009C080018AD
      2900F7FFF700FFFFFF00D6F7DE0010AD310008AD290008AD290010AD290010AD
      310018B5420029BD5A0039C66B00109431000000000000000000000000000000
      0000004A00000873180010BD390010AD310008AD290008A51800009C100008A5
      10009CDEA500FFFFFF00FFFFFF00FFFFFF006BCE7300009C0800009C0800009C
      0800009C0800009C0800009C080000A50800007B080000310000000000000000
      00000000000000000000004A00000873180010BD390010AD310008AD290008A5
      1800009C1000009C0800009C0800009C08006BCE7300FFFFFF00FFFFFF00FFFF
      FF009CDEA50000A51000009C0800009C0800009C080000A50800007B08000031
      00000000000000000000000000000000000000310000007B080000A50800009C
      0800009C0800009C080000A5100094DE9C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7F7EF0031BD520010AD290010AD310018B5420029BD
      5A0039C66B001094310000000000000000000000000000310000004A0000009C
      0800009C0800009C0800009C0800009C0800009C0800009C0800009C080018AD
      2900F7FFF700FFFFFF00D6F7DE0010AD310008AD310008AD310010AD310010AD
      390018B5420031BD63005ACE840031BD63000073080000000000000000000000
      0000004A000010A5390018B5420010AD310008A5290000A5100000A5100094DE
      9C00FFFFFF00FFFFFF00FFFFFF0094DE9C0008A51000009C0800009C0800009C
      0800009C0800009C0800009C0800009C080000A5080000420000000000000000
      00000000000000000000004A000010A5390018B5420010AD310008A5290000A5
      1000009C0800009C0800009C0800009C080008A5100094DE9C00FFFFFF00FFFF
      FF00FFFFFF0094DE9C0000A50800009C0800009C0800009C080000A508000042
      000000000000000000000000000000310000004A0000009C0800009C0800009C
      0800009C080000A510009CDEA500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7F7E70031BD520010AD390018B5420031BD
      63005ACE840031BD6300007308000000000000000000003100000073000000A5
      0800009C0800009C0800009C0800009C0800009C0800009C0800009C080018AD
      2900F7FFF700FFFFFF00D6F7DE0010AD310008AD310010AD310010AD390010AD
      390018B54A0031BD630073D69C005ACE84001094290000000000000000000052
      00000063100018BD520010B5420010AD390008A5290008A510008CDE9400FFFF
      FF00FFFFFF00FFFFFF007BD68400009C0800009C0800009C0800009C0800009C
      0800009C0800009C0800009C0800009C080000A50800005A0000003900000000
      000000000000005200000063100018BD520010B5420010AD390008A5290000A5
      1000009C0800009C0800009C0800009C0800009C0800009C08007BD68400FFFF
      FF00FFFFFF00FFFFFF008CDE9400009C0800009C0800009C080000A50800005A
      0000003900000000000000000000003100000073000000A50800009C0800009C
      0800009C080094DE9C00FFFFFF00FFFFFF00FFFFFF00A5E7AD00EFFFEF00FFFF
      FF00DEF7E700C6EFCE00FFFFFF00FFFFFF00D6F7E70029BD520018B54A0031BD
      630073D69C005ACE8400109429000000000000000000003100000084080000A5
      0800009C0800009C0800009C080063CE6B006BCE730008A51000009C080018AD
      2900F7FFF700FFFFFF00D6F7DE0010AD310010AD310052C67B00A5E7BD004AC6
      730018B54A0031BD630084DEA50073DE9C0021A5420000000000000000000052
      00000884210021BD520018B54A0010AD420018B542008CDE9C00FFFFFF00FFFF
      FF00FFFFFF00A5E7AD0021B5310021B5310018AD290018AD290018AD290018AD
      290018AD290018AD290010A51800009C080000A5080000730000003900000000
      000000000000005200000884210021BD520018B54A0010AD420029BD520029B5
      420021AD290021B5310029B5390021B5310021B5310021B5310018AD2900A5E7
      AD00FFFFFF00FFFFFF00FFFFFF0084D68C00009C0800009C080000A508000073
      0000003900000000000000000000003100000084080000A50800009C0800009C
      0800009C0800EFFFEF00FFFFFF00FFFFFF007BD6840018AD2900F7FFF700FFFF
      FF00CEF7D60029BD4A00D6F7DE00FFFFFF00FFFFFF00BDEFCE0018B54A0031BD
      630084DEA50073DE9C0021A542000000000000000000004200000084080000A5
      0800009C0800009C0800009C0800EFFFEF00FFFFFF0094DE9C00009C080021B5
      3100FFFFFF00FFFFFF00DEF7E70010AD390042C66B00EFFFF700FFFFFF00E7F7
      EF0021B5520031BD63008CDEAD008CDEAD0029AD42000000000000000000005A
      00001094290029BD630018B5520021B552008CDEAD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7FFF700F7FFF700FFFFFF00F7FFF700F7FFF700F7FFF700F7FF
      F700F7FFF700F7FFF700D6F7DE00009C080000A50800007B0800003100000000
      000000000000005A00001094290029BD630018B5520021B55200DEF7E700FFFF
      FF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00F7FFFF00FFFFFF00F7FFF700EFFF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0073D67B00009C080000A50800007B
      0800003100000000000000000000004200000084080000A50800009C0800009C
      0800009C0800EFFFEF00FFFFFF0094DE9C00009C080021B53100FFFFFF00FFFF
      FF00DEF7E70010AD390042C66B00EFFFF700FFFFFF00E7F7EF0021B5520031BD
      63008CDEAD008CDEAD0029AD42000000000000000000004200000084080000A5
      0800009C0800009C0000009C0800EFFFEF00FFFFFF00FFFFFF007BD6840021B5
      3100F7FFF700FFFFFF00D6F7E70039BD6300D6F7E700FFFFFF00FFFFFF00BDEF
      CE0029BD5A0039BD6B009CE7B50094E7B50021AD420000000000000000000063
      0000189C390042C6730021B5520021B55200F7FFF700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00009C080000A5080000840800004200000000
      00000000000000630000189C390042C6730021B5520021B55200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFFFEF00009C080000A508000084
      0800004200000000000000000000004200000084080000A50800009C0800009C
      0000009C080063CE6B006BCE730008A51000009C080021B53100F7FFFF00FFFF
      FF00DEF7E70021B54A0018B552005ACE8400A5E7BD004AC67B0029BD5A0039BD
      6B009CE7B50094E7B50021AD4200000000000000000000310000007B080000A5
      0800009C0800009C0800009C080094DE9C00FFFFFF00FFFFFF00FFFFFF00A5E7
      AD00F7FFF700FFFFFF00E7F7EF00CEEFD600FFFFFF00FFFFFF00DEF7E70039C6
      6B0018B54A0052C67B00B5EFCE0094E7B50021AD42000000000000000000006B
      0800189C39005AD68C0039BD6B0021B5520063CE8C00F7FFFF00FFFFFF00FFFF
      FF00FFFFFF00E7F7EF00D6F7E700DEF7E700D6F7DE00D6F7DE00D6F7DE00D6F7
      DE00D6F7DE00D6F7DE00ADE7B500009C080000A50800007B0800003900000000
      000000000000006B0800189C39005AD68C0039BD6B0021B55200BDEFCE00DEF7
      E700DEF7E700DEF7E700DEF7E700DEF7E700DEF7E700DEF7E700CEF7D600DEF7
      E700FFFFFF00FFFFFF00FFFFFF00F7FFF7004AC65200009C080000A50800007B
      080000390000000000000000000000310000007B080000A50800009C0800009C
      0800009C0800009C0800009C0800009C0800009C080021B53100F7FFFF00FFFF
      FF00DEF7E70029B55A0021B5520021B5520021B5520021B5520018B54A0052C6
      7B00B5EFCE0094E7B50021AD4200000000000000000000310000006B000000A5
      0800009C0800009C0800009C080008A510009CDEA500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7F7EF0042C66B0018B5
      520018B552006BD69400C6EFD60084DEA50018A5290000000000000000000073
      0800189431006BD694005ACE840021B5520021B552005ACE8400F7FFF700FFFF
      FF00FFFFFF00CEEFD60039BD630010AD390010AD310010AD310010AD310010AD
      310010AD290010AD290008AD290000A5100000A5080000730000003900000000
      00000000000000730800189431006BD694005ACE840021B5520021B5520029B5
      5A0029B55A0029B55A0029B55A0029B55A0021B54A0010AD390029BD4A00C6EF
      CE00FFFFFF00FFFFFF00EFFFF70042C6630008A5290000A5100000A508000073
      000000390000000000000000000000310000006B000000A50800009C0800009C
      0800009C0800009C0800009C0800009C0800009C080029B53900F7FFFF00FFFF
      FF00DEF7E70029B55A0021B5520021B5520021B5520018B5520018B552006BD6
      9400C6EFD60084DEA50018A5290000000000000000000031000000420000009C
      080000A50800009C0800009C0800009C080008A5100094DE9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFFFEF004AC6730018B5520010AD
      4A0039C66B00A5E7BD00BDEFD60052C67B00189C290000000000000000000000
      0000088C18006BD694008CDEA50039C66B0010AD4A0021B5520052C67B00EFFF
      EF00FFFFFF00FFFFFF00D6F7E70042C66B0010AD310008AD310008AD310008AD
      290008AD290008AD290008A5210000A5100000A50800005A0000000000000000
      00000000000000000000088C18006BD694008CDEA50039C66B0010AD4A0021B5
      520021B5520021B5520021B5520021B5520018B5520042C66B00D6F7DE00FFFF
      FF00FFFFFF00E7F7EF0042C65A0008AD290008A5210000A5100000A50800005A
      00000000000000000000000000000031000000420000009C080000A50800009C
      0800009C0800009C0800009C0800009C0800009C080021B53100F7FFFF00FFFF
      FF00DEF7E70029B55A0021B5520021B5520018B5520010AD4A0039C66B00A5E7
      BD00BDEFD60052C67B00189C2900000000000000000000000000003100000073
      000000A50800009C080000A5100000A51000009C100000A510008CDE9400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7FFF70052C67B0018B5520010AD420029BD
      5A0073D69C00D6F7DE009CE7BD0018A531000000000000000000000000000000
      0000089418004AC66B00A5E7C60073D69C0029BD5A0010B54A0018B552004AC6
      7300E7F7EF00FFFFFF00FFFFFF00EFFFF70052C67B0010AD310008AD310008AD
      290008A5210008A5210008A5180000A51000009C080000420000000000000000
      00000000000000000000089418004AC66B00A5E7C60073D69C0029BD5A0010B5
      4A0018B5520021B5520021B5520021B552005ACE8400EFFFF700FFFFFF00FFFF
      FF00E7F7E70031BD520008A5210008A5210008A5180000A51000009C08000042
      000000000000000000000000000000000000003100000073000000A50800009C
      080000A5100000A51000009C1000009C0800009C080021AD2900F7FFFF00FFFF
      FF00DEF7E70029B55A0021B5520018B5520010AD420029BD5A0073D69C00D6F7
      DE009CE7BD0018A5310000000000000000000000000000000000002900000042
      0000009C080000A5100000A5100008A5180008A5180000A5100008A510008CDE
      9C00FFFFFF00FFFFFF00F7FFFF005ACE840021B5520010B54A0021B552005ACE
      8400BDEFD600C6EFD6004AC67300189C29000000000000000000000000000000
      00000000000018A531009CE7BD00B5EFC6005ACE840021B5520010AD420018B5
      520042C66B00DEF7E700FFFFFF00FFFFFF00A5E7BD0010AD390010AD310010AD
      290008AD290008A5210008A5180008B518000073080000000000000000000000
      000000000000000000000000000018A531009CE7BD00B5EFC6005ACE840021B5
      520010AD420018B5520021B5520021B55200A5E7BD00FFFFFF00FFFFFF00D6F7
      E70031BD520010AD290008AD290008A5210008A5180008B51800007308000000
      0000000000000000000000000000000000000029000000420000009C080000A5
      100000A5100008A5180008A5180000A5100000A5100029B54200FFFFFF00FFFF
      FF00DEF7E70029B55A0021B5520010B54A0021B552005ACE8400BDEFD600C6EF
      D6004AC67300189C290000000000000000000000000000000000000000000042
      00000052000000AD180008A5180008A5210008AD290008A5290008A5290018B5
      42008CDEAD00F7FFF70063CE8C0021B5520010AD4A0029BD5A005ACE8400B5EF
      C600C6EFD6006BD69400189C2900000000000000000000000000000000000000
      00000000000029A531004AC66B00B5EFCE00B5EFC6005ACE840029BD5A0010AD
      4A0018B5520039C66B00BDEFCE00E7F7EF004AC6730010AD390010AD390010AD
      310010AD310008AD290008AD210008A518000042000000000000000000000000
      000000000000000000000000000029A531004AC66B00B5EFCE00B5EFC6005ACE
      840029BD5A0010AD4A0018B5520021B552004AC67B00E7F7EF00BDEFCE0029BD
      520010AD390010AD310010AD310008AD290008AD210008A51800004200000000
      00000000000000000000000000000000000000000000004200000052000000AD
      180008A5180008A5210008AD290008A5290008A5290029BD5200DEF7E700FFFF
      FF00BDEFCE0021B5520010AD4A0029BD5A005ACE8400B5EFC600C6EFD6006BD6
      9400189C29000000000000000000000000000000000000000000000000000000
      0000004A0000005A080008AD210008B5290010AD310010AD310010AD390010AD
      420021B5520021B5520021B5520021B5520039C66B0073D69C00B5EFC600B5EF
      CE006BD68C001094210000000000000000000000000000000000000000000000
      00000000000000000000109C21006BD68C00C6EFD600BDEFD60073D69C0039C6
      6B0018B5520018B54A0029BD5A0021B5520018B54A0018B54A0018B5420018B5
      420010AD390010AD310008B52900005A08000000000000000000000000000000
      000000000000000000000000000000000000109C21006BD68C00C6EFD600BDEF
      D60073D69C0039C66B0018B5520018B54A0029BD5A0021B5520018B54A0018B5
      4A0018B5420018B5420010AD390010AD310008B52900005A0800000000000000
      0000000000000000000000000000000000000000000000000000004A0000005A
      080008AD210008B5290010AD310010AD310010AD390010AD420021B5520021B5
      520021B5520021B5520039C66B0073D69C00B5EFC600B5EFCE006BD68C001094
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000520800005A080008A5290010BD390018B5420010B5420018B5
      4A0018B5520021B5520039BD6B005ACE84008CDEA500A5E7C6009CE7BD004AC6
      6B00109C21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000109421006BD69400C6EFD600D6F7DE00A5E7
      BD006BD6940052C67B0039BD6B0031BD630031BD630031BD630031BD630029BD
      5A0021B54A0010B5390000631000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000109421006BD69400C6EF
      D600D6F7DE00A5E7BD006BD6940052C67B0039BD6B0031BD630031BD630031BD
      630031BD630029BD5A0021B54A0010B539000063100000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000052
      0800005A080008A5290010BD390018B5420010B5420018B54A0018B5520021B5
      520039BD6B005ACE84008CDEA500A5E7C6009CE7BD004AC66B00109C21000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000390000004200000873180010A5390018BD520021BD
      520029BD630042C673005AD68C006BD694006BD694004AC66B0018A5310029A5
      3100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000189C29004AC673009CE7BD00BDEF
      D600C6EFD600B5EFCE009CE7B5008CDEAD0084DEA50073D69C005ACE840039C6
      6B0018AD4A00006B100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000189C29004AC6
      73009CE7BD00BDEFD600C6EFD600B5EFCE009CE7B5008CDEAD0084DEA50073D6
      9C005ACE840039C66B0018AD4A00006B10000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000390000004200000873180010A5390018BD520021BD520029BD630042C6
      73005AD68C006BD694006BD694004AC66B0018A5310029A53100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000004A0000004A0000006310000884
      210010942900189C3900189C390018943100088C180008941800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000189C290018A5310052C6
      7B0084DEA50094E7B50094E7B5008CDEAD0073DE9C005ACE840031BD63001094
      3100005A08000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000189C
      290018A5310052C67B0084DEA50094E7B50094E7B5008CDEAD0073DE9C005ACE
      840031BD630010943100005A0800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000004A0000004A0000006310000884210010942900189C
      3900189C390018943100088C1800089418000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000005200000052
      0000005A000000630000006B0800007308000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000189C
      290018A5290021AD420021AD420029AD420021A5420010942900007308000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000189C290018A5290021AD420021AD420029AD420021A542001094
      2900007308000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000052000000520000005A00000063
      0000006B08000073080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000680000004E0000000100010000000000E00400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFF0000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00001FC000070000000000000000000
      F00001FC000070000000000000000000F00003FC0000F0000000000000000000
      F00007FC0001F0000000000000000000F0000FFC0003F0000000000000000000
      F0001FFC0007F0000000000000000000FFFFFFFFFFFFF0000000000000000000
      FFFFFFFFFFFFF0000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      F00001FFFFFFFF000007800003000000F00001FFFFFF38000007000001000000
      F00001FFFFFE38000007000001000000F00001F8FFFC78000007000001000000
      F00001F87FF0F8000007000001000000F00001F83FE1F8000007000001000000
      F00001FC1FC3F8000007000001000000F00001FE0F87F8000007000001000000
      F00001FF860FF8000007000001000000F00001FFC01FF8000007000001000000
      F00001FFE03FF8000007000001000000F00001FFF07FF8000007000001000000
      F00001FFE03FF8000007000001000000F00001FFC01FF8000007000001000000
      F00001FF830FF8000007000001000000F00001FF0787F8000007000001000000
      F00001FE0FE3F8000007000001000000F00001FC1FF1F8000007000001000000
      F00001F83FFDF8000007000001000000F00003F07FFFF8000007000001000000
      F00007F0FFFFF8000007000001000000F0000FF1FFFFF8000007000001000000
      F0001FFFFFFFF8000007000001000000FFFFFFFFFFFFF8000007800003000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF000000
      FFC0FFFFE01FFFF807FFFF03FF000000FF003FFF8007FFE001FFFC00FF000000
      FC000FFF0003FFC000FFF0003F000000F80007FE0001FF80007FE0001F000000
      F00003FC0000FF00003FC0000F000000E00001F800007E00001F800007000000
      C00000F800007E00001F000003000000C00000F000003C00000F000003000000
      8000007000003C00000E00000100000080000060000018000006000001000000
      8000006000001800000600000100000080000060000018000006000001000000
      8000006000001800000600000100000080000060000018000006000001000000
      800000600000180000060000010000008000007000003C00000E000001000000
      C00000F000003C00000F000003000000C00000F800007E00001F000003000000
      E00001F800007E00001F800007000000F00003FC0000FF00003FC0000F000000
      F80007FE0001FF80007FE0001F000000FC000FFF0003FFC000FFF0003F000000
      FF003FFF8007FFE001FFFC00FF000000FFC0FFFFE01FFFF807FFFF03FF000000
      FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
      000000000000}
  end
  inherited cdsManuBD: TClientDataSetUrb
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'iID_Situacao'
        ParamType = ptUnknown
        Value = 2
      end
      item
        DataType = ftString
        Name = 'sDtChegouIni'
        ParamType = ptUnknown
        Value = '20121201'
      end
      item
        DataType = ftString
        Name = 'sDtChegouFim'
        ParamType = ptUnknown
        Value = '20121213'
      end>
    BeforePost = cdsManuBDBeforePost
    Left = 98
    Top = 338
    object cdsManuBDNumero: TStringField
      DisplayLabel = 'N'#186
      DisplayWidth = 24
      FieldName = 'Numero'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsManuBDGerDtEntrega: TSQLTimeStampField
      DisplayLabel = 'Dt. Entrega'
      DisplayWidth = 16
      FieldName = 'GerDtEntrega'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsManuBDDescGerEmpresa: TStringField
      DisplayLabel = 'Gerador'
      DisplayWidth = 52
      FieldKind = fkLookup
      FieldName = 'DescGerEmpresa'
      LookupDataSet = cdsGerEmpresa
      LookupKeyFields = 'ID_Empresa'
      LookupResultField = 'RazaoSocial'
      KeyFields = 'GerID_Empresa'
      Size = 50
      Lookup = True
    end
    object cdsManuBDDescProcedencia: TStringField
      DisplayLabel = 'Proced'#234'cia'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'DescProcedencia'
      LookupDataSet = cdsProcedencia
      LookupKeyFields = 'ID_Procedencia'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Procedencia'
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescResiduo: TStringField
      DisplayLabel = 'Tipo de Res'#237'duo'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'DescResiduo'
      LookupDataSet = cdsResiduo
      LookupKeyFields = 'ID_Residuo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Residuo'
      Size = 50
      Lookup = True
    end
    object cdsManuBDQuantidade: TFMTBCDField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 15
      FieldName = 'Quantidade'
      DisplayFormat = '#####0.00#'
      Precision = 17
      Size = 6
    end
    object cdsManuBDDescUnidade: TStringField
      DisplayLabel = 'Un'
      DisplayWidth = 7
      FieldKind = fkLookup
      FieldName = 'DescUnidade'
      LookupDataSet = cdsUnidadeMedida
      LookupKeyFields = 'ID_UnidadeMedida'
      LookupResultField = 'Sigla'
      KeyFields = 'ID_Unidade'
      Size = 5
      Lookup = True
    end
    object cdsManuBDDescRecepEmpresa: TStringField
      DisplayLabel = 'Receptor'
      DisplayWidth = 52
      FieldKind = fkLookup
      FieldName = 'DescRecepEmpresa'
      LookupDataSet = cdsRecepEmpresa
      LookupKeyFields = 'ID_Empresa'
      LookupResultField = 'RazaoSocial'
      KeyFields = 'RecepID_Empresa'
      Size = 50
      Lookup = True
    end
    object cdsManuBDRecepDtReceb: TSQLTimeStampField
      DisplayLabel = 'Dt. Receb.'
      DisplayWidth = 16
      FieldName = 'RecepDtReceb'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsManuBDDescStatus: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 35
      FieldKind = fkLookup
      FieldName = 'DescStatus'
      LookupDataSet = cdsStatus
      LookupKeyFields = 'ID_ManifestoEstado'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Status'
      Size = 30
      Lookup = True
    end
    object cdsManuBDDtChegou: TSQLTimeStampField
      DisplayLabel = 'Dt. Chegou'
      DisplayWidth = 16
      FieldName = 'DtChegou'
      Required = True
    end
    object cdsManuBDDtEnvio: TSQLTimeStampField
      DisplayLabel = 'Dt. Envio'
      DisplayWidth = 15
      FieldName = 'DtEnvio'
    end
    object cdsManuBDID_LoteEnvio: TIntegerField
      DisplayLabel = 'N'#186' Lote'
      DisplayWidth = 23
      FieldName = 'ID_LoteEnvio'
    end
    object cdsManuBDRecepID_Empresa: TIntegerField
      DisplayWidth = 21
      FieldName = 'RecepID_Empresa'
      Required = True
      Visible = False
    end
    object cdsManuBDDescEstadoFisico: TStringField
      DisplayLabel = 'Estado F'#237'sico'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescEstadoFisico'
      LookupDataSet = cdsEstadoFisico
      LookupKeyFields = 'ID_EstadoFisico'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_EstadoFisico'
      Visible = False
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescAcond: TStringField
      DisplayLabel = 'Acond.'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescAcond'
      LookupDataSet = cdsAcond
      LookupKeyFields = 'ID_Acondicionamento'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Acond'
      Visible = False
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescOrigem: TStringField
      DisplayLabel = 'Origem'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescOrigem'
      LookupDataSet = cdsOrigem
      LookupKeyFields = 'ID_Origem'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Origem'
      Visible = False
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescTratDisp: TStringField
      DisplayLabel = 'Trat./Disp.'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescTratDisp'
      LookupDataSet = cdsTratDisp
      LookupKeyFields = 'ID_TratDisp'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_TratDisp'
      Visible = False
      Size = 30
      Lookup = True
    end
    object cdsManuBDDescGerResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldKind = fkLookup
      FieldName = 'DescGerResponsavel'
      LookupDataSet = cdsGerResponsavel
      LookupKeyFields = 'ID_Responsavel'
      LookupResultField = 'Nome'
      KeyFields = 'GerID_Responsavel'
      Visible = False
      Size = 50
      Lookup = True
    end
    object cdsManuBDDescTransEmpresa: TStringField
      DisplayLabel = 'Gerador'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'DescTransEmpresa'
      LookupDataSet = cdsTransEmpresa
      LookupKeyFields = 'ID_Empresa'
      LookupResultField = 'RazaoSocial'
      KeyFields = 'TransID_Empresa'
      Visible = False
      Size = 50
      Lookup = True
    end
    object cdsManuBDDescTransResponsavel: TStringField
      FieldKind = fkLookup
      FieldName = 'DescTransResponsavel'
      LookupDataSet = cdsTransResponsavel
      LookupKeyFields = 'ID_Responsavel'
      LookupResultField = 'Nome'
      KeyFields = 'TransID_Responsavel'
      Visible = False
      Size = 50
      Lookup = True
    end
    object cdsManuBDDescRecepResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldKind = fkLookup
      FieldName = 'DescRecepResponsavel'
      LookupDataSet = cdsRecepResponsavel
      LookupKeyFields = 'ID_Responsavel'
      LookupResultField = 'Nome'
      KeyFields = 'RecepID_Responsavel'
      Visible = False
      Size = 50
      Lookup = True
    end
    object cdsManuBDDescSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'DescSituacao'
      LookupDataSet = cdsSituacaoDesc
      LookupKeyFields = 'ID_Situacao'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Situacao'
      Visible = False
      Size = 30
      Lookup = True
    end
    object cdsManuBDNumCertificado: TIntegerField
      DisplayWidth = 17
      FieldName = 'NumCertificado'
      Visible = False
    end
    object cdsManuBDID_Unidade: TIntegerField
      DisplayWidth = 14
      FieldName = 'ID_Unidade'
      Required = True
      Visible = False
    end
    object cdsManuBDID_Residuo: TIntegerField
      DisplayWidth = 13
      FieldName = 'ID_Residuo'
      Required = True
      Visible = False
    end
    object cdsManuBDID_EstadoFisico: TIntegerField
      DisplayWidth = 19
      FieldName = 'ID_EstadoFisico'
    end
    object cdsManuBDID_Acond: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_Acond'
      Visible = False
    end
    object cdsManuBDID_Origem: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_Origem'
      Visible = False
    end
    object cdsManuBDID_Procedencia: TIntegerField
      DisplayWidth = 18
      FieldName = 'ID_Procedencia'
      Required = True
      Visible = False
    end
    object cdsManuBDID_TratDisp: TIntegerField
      DisplayWidth = 14
      FieldName = 'ID_TratDisp'
      Visible = False
    end
    object cdsManuBDID_Status: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_Status'
      Required = True
      Visible = False
    end
    object cdsManuBDGerID_Empresa: TIntegerField
      DisplayWidth = 18
      FieldName = 'GerID_Empresa'
      Required = True
      Visible = False
    end
    object cdsManuBDGerNumInventario: TStringField
      DisplayWidth = 36
      FieldName = 'GerNumInventario'
      Visible = False
      Size = 30
    end
    object cdsManuBDGerID_Responsavel: TIntegerField
      DisplayWidth = 23
      FieldName = 'GerID_Responsavel'
      Visible = False
    end
    object cdsManuBDTransDtReceb: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'TransDtReceb'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsManuBDTransID_Empresa: TIntegerField
      DisplayWidth = 20
      FieldName = 'TransID_Empresa'
      Required = True
      Visible = False
    end
    object cdsManuBDTransID_Responsavel: TIntegerField
      DisplayWidth = 25
      FieldName = 'TransID_Responsavel'
      Visible = False
    end
    object cdsManuBDTransNomeMotorista: TStringField
      DisplayWidth = 36
      FieldName = 'TransNomeMotorista'
      Visible = False
      Size = 30
    end
    object cdsManuBDTransPlacaVeiculo: TStringField
      DisplayWidth = 36
      FieldName = 'TransPlacaVeiculo'
      Visible = False
      Size = 30
    end
    object cdsManuBDTransCertificado: TStringField
      DisplayWidth = 36
      FieldName = 'TransCertificado'
      Visible = False
      Size = 30
    end
    object cdsManuBDRecepNumInventario: TStringField
      DisplayWidth = 36
      FieldName = 'RecepNumInventario'
      Visible = False
      Size = 30
    end
    object cdsManuBDRecepID_Responsavel: TIntegerField
      DisplayWidth = 26
      FieldName = 'RecepID_Responsavel'
      Visible = False
    end
    object cdsManuBDID_Situacao: TIntegerField
      DisplayWidth = 14
      FieldName = 'ID_Situacao'
      Required = True
      Visible = False
    end
    object cdsManuBDObs: TBlobField
      DisplayWidth = 12
      FieldName = 'Obs'
      Visible = False
      Size = 1
    end
    object cdsManuBDGerResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 30
      FieldName = 'GerResponsavel'
      Visible = False
      Size = 50
    end
    object cdsManuBDTransResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 30
      FieldName = 'TransResponsavel'
      Visible = False
      Size = 50
    end
    object cdsManuBDRecepResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 30
      FieldName = 'RecepResponsavel'
      Visible = False
      Size = 50
    end
    object cdsManuBDCDF: TStringField
      DisplayWidth = 54
      FieldName = 'CDF'
      Size = 45
    end
    object cdsManuBDCod_Residuo: TStringField
      FieldName = 'Cod_Residuo'
      Required = True
      Size = 4
    end
    object cdsManuBDOrigem_Outros: TStringField
      FieldName = 'Origem_Outros'
      Size = 45
    end
    object cdsManuBDAcond_Outros: TStringField
      FieldName = 'Acond_Outros'
      Size = 45
    end
    object cdsManuBDProcedencia_Outros: TStringField
      FieldName = 'Procedencia_Outros'
      Size = 45
    end
    object cdsManuBDTratDisp_Outros: TStringField
      FieldName = 'TratDisp_Outros'
      Size = 45
    end
  end
  inherited dtsManuBD: TDataSourceUrb
    Left = 126
    Top = 338
  end
  inherited ppmVisualizar: TPopupMenu
    Left = 840
    Top = 4
    inherited N1: TMenuItem
      Caption = '&Manifesto sem Assinaturas'
      OnClick = N1Click
    end
    object DocumentosOriginais1: TMenuItem
      Caption = '&Docs Originais Digitalizados'
      object Manifesto1: TMenuItem
        Caption = '&Manifesto'
        object N1ViaAssinada1: TMenuItem
          Caption = 'Assinada pelo &Gerador'
        end
        object N2ViaAssinada1: TMenuItem
          Caption = 'Assinada pelo &Transportador'
        end
        object AssinadapeloReceptor1: TMenuItem
          Caption = 'Assinada pelo &Receptor'
        end
      end
      object Certificado1: TMenuItem
        Caption = '&Certificado'
      end
      object NotaFiscal1: TMenuItem
        Caption = '&Nota Fiscal'
      end
      object DocumentoinicialFCDS1: TMenuItem
        Caption = '&Documento inicial (FCDS ou xxxx)'
      end
    end
  end
  inherited dspManuBD: TDataSetProviderUrb
    Options = [poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 70
    Top = 338
  end
  inherited sqlManuBD: TSQLDataSet
    SchemaName = 'andre'
    CommandText = 
      'select '#13#10#9#9'm.Numero, '#13#10#9#9'm.NumCertificado, '#13#10#9#9'm.Quantidade, '#13#10#9 +
      #9'm.ID_Unidade, '#13#10#9#9'm.ID_Residuo, '#13#10'                             ' +
      '   m.Cod_Residuo,'#13#10#9#9'm.ID_EstadoFisico, '#13#10#9#9'm.ID_Acond,         ' +
      #13#10#9#9'm.ID_Origem, '#13#10#9#9'm.ID_Procedencia, '#13#10#9#9'm.ID_TratDisp, '#13#10#9#9'm.' +
      'ID_Status, '#13#10#9#9'm.GerDtEntrega, '#13#10#9#9'm.GerID_Empresa,         '#13#10#9#9 +
      'm.GerNumInventario, '#13#10#9#9'm.GerID_Responsavel, '#13#10#9#9'm.TransDtReceb,' +
      ' '#13#10#9#9'm.TransID_Empresa, '#13#10#9#9'm.TransID_Responsavel,         '#13#10#9#9'm' +
      '.TransNomeMotorista, '#13#10#9#9'm.TransPlacaVeiculo, '#13#10#9#9'm.TransCertifi' +
      'cado, '#13#10#9#9'm.RecepDtReceb, '#13#10#9#9'm.RecepID_Empresa,         '#13#10#9#9'm.R' +
      'ecepNumInventario, '#13#10#9#9'm.RecepID_Responsavel, '#13#10#9#9'm.DtChegou, '#13#10 +
      #9#9'm.DtEnvio, '#13#10#9#9'm.ID_Situacao, '#13#10#9#9'm.ID_LoteEnvio,         '#13#10#9#9 +
      'm.GerResponsavel, '#13#10#9#9'm.TransResponsavel, '#13#10#9#9'm.RecepResponsavel' +
      ', '#13#10#9#9'm.CDF, '#13#10'                                m.Obs,'#13#10'         ' +
      '                       m.Origem_Outros,'#13#10'                       ' +
      '         m.Acond_Outros,'#13#10'                                m.Proc' +
      'edencia_Outros,'#13#10'                                m.TratDisp_Outr' +
      'os'#13#10'from    manifesto m'#13#10'where   (m.ID_Situacao   = :iID_Situaca' +
      'o) and '#13#10'        (m.GerDtEntrega >= :sDtChegouIni) and '#13#10'       ' +
      ' (m.GerDtEntrega <= :sDtChegouFim)'
    MaxBlobSize = 1
    ParamCheck = False
    Params = <
      item
        DataType = ftInteger
        Name = 'iID_Situacao'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftString
        Name = 'sDtChegouIni'
        ParamType = ptInput
        Size = 9
        Value = '20121201'
      end
      item
        DataType = ftString
        Name = 'sDtChegouFim'
        ParamType = ptInput
        Size = 9
        Value = '20121213'
      end>
    Left = 42
    Top = 338
    object sqlManuBDNumero: TStringField
      DisplayLabel = 'N'#186
      FieldName = 'Numero'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlManuBDGerDtEntrega: TSQLTimeStampField
      DisplayLabel = 'Dt. Entrega'
      DisplayWidth = 13
      FieldName = 'GerDtEntrega'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object sqlManuBDDescGerEmpresa: TStringField
      DisplayLabel = 'Gerador'
      DisplayWidth = 43
      FieldKind = fkLookup
      FieldName = 'DescGerEmpresa'
      LookupDataSet = cdsGerEmpresa
      LookupKeyFields = 'ID_Empresa'
      LookupResultField = 'RazaoSocial'
      KeyFields = 'GerID_Empresa'
      Size = 50
      Lookup = True
    end
    object sqlManuBDDescResiduo: TStringField
      DisplayLabel = 'Tipo de Res'#237'duo'
      DisplayWidth = 23
      FieldKind = fkLookup
      FieldName = 'DescResiduo'
      LookupDataSet = cdsResiduo
      LookupKeyFields = 'ID_Residuo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Residuo'
      Size = 30
      Lookup = True
    end
    object sqlManuBDQuantidade: TFMTBCDField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 12
      FieldName = 'Quantidade'
      DisplayFormat = '#####0.00#'
      Precision = 17
      Size = 6
    end
    object sqlManuBDDescUnidade: TStringField
      DisplayLabel = 'Un'
      DisplayWidth = 6
      FieldKind = fkLookup
      FieldName = 'DescUnidade'
      LookupDataSet = cdsUnidadeMedida
      LookupKeyFields = 'ID_UnidadeMedida'
      LookupResultField = 'Sigla'
      KeyFields = 'ID_Unidade'
      Size = 5
      Lookup = True
    end
    object sqlManuBDDescProcedencia: TStringField
      DisplayLabel = 'Proced'#234'cia'
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'DescProcedencia'
      LookupDataSet = cdsProcedencia
      LookupKeyFields = 'ID_Procedencia'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Procedencia'
      Size = 30
      Lookup = True
    end
    object sqlManuBDDescRecepEmpresa: TStringField
      DisplayLabel = 'Receptor'
      DisplayWidth = 43
      FieldKind = fkLookup
      FieldName = 'DescRecepEmpresa'
      LookupDataSet = cdsRecepEmpresa
      LookupKeyFields = 'ID_Empresa'
      LookupResultField = 'RazaoSocial'
      KeyFields = 'RecepID_Empresa'
      Size = 50
      Lookup = True
    end
    object sqlManuBDRecepDtReceb: TSQLTimeStampField
      DisplayLabel = 'Dt. Receb.'
      DisplayWidth = 13
      FieldName = 'RecepDtReceb'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object sqlManuBDDescStatus: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 29
      FieldKind = fkLookup
      FieldName = 'DescStatus'
      LookupDataSet = cdsStatus
      LookupKeyFields = 'ID_ManifestoEstado'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Status'
      Size = 30
      Lookup = True
    end
    object sqlManuBDDtChegou: TSQLTimeStampField
      DisplayLabel = 'Dt. Chegou'
      DisplayWidth = 13
      FieldName = 'DtChegou'
      Required = True
    end
    object sqlManuBDDtEnvio: TSQLTimeStampField
      DisplayLabel = 'Dt. Envio'
      DisplayWidth = 12
      FieldName = 'DtEnvio'
    end
    object sqlManuBDID_LoteEnvio: TIntegerField
      DisplayLabel = 'N'#186' Lote'
      DisplayWidth = 19
      FieldName = 'ID_LoteEnvio'
    end
    object sqlManuBDRecepID_Empresa: TIntegerField
      DisplayWidth = 21
      FieldName = 'RecepID_Empresa'
      Required = True
      Visible = False
    end
    object sqlManuBDDescEstadoFisico: TStringField
      DisplayLabel = 'Estado F'#237'sico'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescEstadoFisico'
      LookupDataSet = cdsEstadoFisico
      LookupKeyFields = 'ID_EstadoFisico'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_EstadoFisico'
      Visible = False
      Size = 30
      Lookup = True
    end
    object sqlManuBDDescAcond: TStringField
      DisplayLabel = 'Acond.'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescAcond'
      LookupDataSet = cdsAcond
      LookupKeyFields = 'ID_Acondicionamento'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Acond'
      Visible = False
      Size = 30
      Lookup = True
    end
    object sqlManuBDDescOrigem: TStringField
      DisplayLabel = 'Origem'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescOrigem'
      LookupDataSet = cdsOrigem
      LookupKeyFields = 'ID_Origem'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Origem'
      Visible = False
      Size = 30
      Lookup = True
    end
    object sqlManuBDDescTratDisp: TStringField
      DisplayLabel = 'Trat./Disp.'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'DescTratDisp'
      LookupDataSet = cdsTratDisp
      LookupKeyFields = 'ID_TratDisp'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_TratDisp'
      Visible = False
      Size = 30
      Lookup = True
    end
    object sqlManuBDDescGerResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldKind = fkLookup
      FieldName = 'DescGerResponsavel'
      LookupDataSet = cdsGerResponsavel
      LookupKeyFields = 'ID_Responsavel'
      LookupResultField = 'Nome'
      KeyFields = 'GerID_Responsavel'
      Visible = False
      Size = 50
      Lookup = True
    end
    object sqlManuBDDescTransEmpresa: TStringField
      DisplayLabel = 'Gerador'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'DescTransEmpresa'
      LookupDataSet = cdsTransEmpresa
      LookupKeyFields = 'ID_Empresa'
      LookupResultField = 'RazaoSocial'
      KeyFields = 'TransID_Empresa'
      Visible = False
      Size = 50
      Lookup = True
    end
    object sqlManuBDDescTransResponsavel: TStringField
      FieldKind = fkLookup
      FieldName = 'DescTransResponsavel'
      LookupDataSet = cdsTransResponsavel
      LookupKeyFields = 'ID_Responsavel'
      LookupResultField = 'Nome'
      KeyFields = 'TransID_Responsavel'
      Visible = False
      Size = 50
      Lookup = True
    end
    object sqlManuBDDescRecepResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldKind = fkLookup
      FieldName = 'DescRecepResponsavel'
      LookupDataSet = cdsRecepResponsavel
      LookupKeyFields = 'ID_Responsavel'
      LookupResultField = 'Nome'
      KeyFields = 'RecepID_Responsavel'
      Visible = False
      Size = 50
      Lookup = True
    end
    object sqlManuBDDescSituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'DescSituacao'
      LookupDataSet = cdsSituacaoDesc
      LookupKeyFields = 'ID_Situacao'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Situacao'
      Visible = False
      Size = 30
      Lookup = True
    end
    object sqlManuBDNumCertificado: TIntegerField
      DisplayWidth = 17
      FieldName = 'NumCertificado'
      Visible = False
    end
    object sqlManuBDID_Unidade: TIntegerField
      DisplayWidth = 14
      FieldName = 'ID_Unidade'
      Required = True
      Visible = False
    end
    object sqlManuBDID_Residuo: TIntegerField
      DisplayWidth = 13
      FieldName = 'ID_Residuo'
      Required = True
      Visible = False
    end
    object sqlManuBDID_EstadoFisico: TIntegerField
      DisplayWidth = 19
      FieldName = 'ID_EstadoFisico'
    end
    object sqlManuBDID_Acond: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_Acond'
      Visible = False
    end
    object sqlManuBDID_Origem: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_Origem'
      Visible = False
    end
    object sqlManuBDID_Procedencia: TIntegerField
      DisplayWidth = 18
      FieldName = 'ID_Procedencia'
      Required = True
      Visible = False
    end
    object sqlManuBDID_TratDisp: TIntegerField
      DisplayWidth = 14
      FieldName = 'ID_TratDisp'
      Visible = False
    end
    object sqlManuBDID_Status: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID_Status'
      Required = True
      Visible = False
    end
    object sqlManuBDGerID_Empresa: TIntegerField
      DisplayWidth = 18
      FieldName = 'GerID_Empresa'
      Required = True
      Visible = False
    end
    object sqlManuBDGerNumInventario: TStringField
      DisplayWidth = 36
      FieldName = 'GerNumInventario'
      Visible = False
      Size = 30
    end
    object sqlManuBDGerID_Responsavel: TIntegerField
      DisplayWidth = 23
      FieldName = 'GerID_Responsavel'
      Visible = False
    end
    object sqlManuBDTransDtReceb: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'TransDtReceb'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object sqlManuBDTransID_Empresa: TIntegerField
      DisplayWidth = 20
      FieldName = 'TransID_Empresa'
      Required = True
      Visible = False
    end
    object sqlManuBDTransID_Responsavel: TIntegerField
      DisplayWidth = 25
      FieldName = 'TransID_Responsavel'
      Visible = False
    end
    object sqlManuBDTransNomeMotorista: TStringField
      DisplayWidth = 36
      FieldName = 'TransNomeMotorista'
      Visible = False
      Size = 30
    end
    object sqlManuBDTransPlacaVeiculo: TStringField
      DisplayWidth = 36
      FieldName = 'TransPlacaVeiculo'
      Visible = False
      Size = 30
    end
    object sqlManuBDTransCertificado: TStringField
      DisplayWidth = 36
      FieldName = 'TransCertificado'
      Visible = False
      Size = 30
    end
    object sqlManuBDRecepNumInventario: TStringField
      DisplayWidth = 36
      FieldName = 'RecepNumInventario'
      Visible = False
      Size = 30
    end
    object sqlManuBDRecepID_Responsavel: TIntegerField
      DisplayWidth = 26
      FieldName = 'RecepID_Responsavel'
      Visible = False
    end
    object sqlManuBDID_Situacao: TIntegerField
      DisplayWidth = 14
      FieldName = 'ID_Situacao'
      Required = True
      Visible = False
    end
    object sqlManuBDObs: TBlobField
      DisplayWidth = 12
      FieldName = 'Obs'
      Visible = False
      Size = 1
    end
    object sqlManuBDGerResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 30
      FieldName = 'GerResponsavel'
      Visible = False
      Size = 50
    end
    object sqlManuBDTransResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 30
      FieldName = 'TransResponsavel'
      Visible = False
      Size = 50
    end
    object sqlManuBDRecepResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 30
      FieldName = 'RecepResponsavel'
      Visible = False
      Size = 50
    end
    object sqlManuBDCDF: TStringField
      FieldName = 'CDF'
      Size = 45
    end
    object sqlManuBDCod_Residuo: TStringField
      FieldName = 'Cod_Residuo'
      Required = True
      Size = 4
    end
    object sqlManuBDOrigem_Outros: TStringField
      FieldName = 'Origem_Outros'
      Size = 45
    end
    object sqlManuBDAcond_Outros: TStringField
      FieldName = 'Acond_Outros'
      Size = 45
    end
    object sqlManuBDProcedencia_Outros: TStringField
      FieldName = 'Procedencia_Outros'
      Size = 45
    end
    object sqlManuBDTratDisp_Outros: TStringField
      FieldName = 'TratDisp_Outros'
      Size = 45
    end
  end
  object cdsResiduo: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResiduo'
    Left = 818
    Top = 89
    object cdsResiduoID_Residuo: TIntegerField
      FieldName = 'ID_Residuo'
      Required = True
    end
    object cdsResiduoDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
    object cdsResiduoFlagContaminado: TStringField
      FieldName = 'FlagContaminado'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsResiduoValorMercado: TFMTBCDField
      FieldName = 'ValorMercado'
      Precision = 14
      Size = 2
    end
    object cdsResiduoCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      Size = 4
    end
  end
  object dtsResiduo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsResiduo
    Left = 846
    Top = 89
  end
  object cdsEstadoFisico: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstadoFisico'
    Left = 818
    Top = 134
  end
  object dtsEstadoFisico: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsEstadoFisico
    Left = 846
    Top = 134
  end
  object cdsAcond: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAcond'
    Left = 818
    Top = 178
  end
  object dtsAcond: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsAcond
    Left = 846
    Top = 178
  end
  object cdsOrigem: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrigem'
    Left = 818
    Top = 222
  end
  object dtsOrigem: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsOrigem
    Left = 846
    Top = 222
  end
  object cdsProcedencia: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProcedencia'
    Left = 818
    Top = 267
  end
  object dtsProcedencia: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsProcedencia
    Left = 846
    Top = 267
  end
  object cdsTratDisp: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTratDisp'
    Left = 818
    Top = 310
  end
  object dtsTratDisp: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTratDisp
    Left = 846
    Top = 310
  end
  object cdsUnidadeMedida: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidadeMedida'
    Left = 652
    Top = 313
  end
  object dtsUnidadeMedida: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsUnidadeMedida
    Left = 680
    Top = 313
  end
  object cdsStatus: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStatus'
    Left = 651
    Top = 356
  end
  object dtsStatus: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsStatus
    Left = 679
    Top = 356
  end
  object cdsGerEmpresa: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGerEmpresa'
    Left = 819
    Top = 439
    object cdsGerEmpresaID_Empresa: TIntegerField
      FieldName = 'ID_Empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGerEmpresaRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsGerEmpresaID_Classificacao: TIntegerField
      FieldName = 'ID_Classificacao'
      Required = True
    end
    object cdsGerEmpresaEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object cdsGerEmpresaMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsGerEmpresaUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsGerEmpresaTelefone1: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object cdsGerEmpresaNumLicencaFEEMA: TStringField
      FieldName = 'NumLicencaFEEMA'
      Size = 30
    end
    object cdsGerEmpresaFlagRelContaminado: TStringField
      FieldName = 'FlagRelContaminado'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsGerEmpresaFlagRelReciclavel: TStringField
      FieldName = 'FlagRelReciclavel'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsGerEmpresaFlagRelSucata: TStringField
      FieldName = 'FlagRelSucata'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsGerEmpresaTipoResumoGeral: TIntegerField
      FieldName = 'TipoResumoGeral'
      Required = True
    end
    object cdsGerEmpresaResponsavel: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'Responsavel'
      Size = 50
    end
    object cdsGerEmpresaValorContrato: TFMTBCDField
      FieldName = 'ValorContrato'
      Precision = 14
      Size = 2
    end
    object cdsGerEmpresaValorTonelada: TFMTBCDField
      FieldName = 'ValorTonelada'
      Precision = 14
      Size = 2
    end
  end
  object dtsGerEmpresa: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsGerEmpresa
    Left = 847
    Top = 439
  end
  object cdsTransEmpresa: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransEmpresa'
    Left = 652
    Top = 134
    object cdsTransEmpresaID_Empresa: TIntegerField
      FieldName = 'ID_Empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTransEmpresaRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsTransEmpresaID_Classificacao: TIntegerField
      FieldName = 'ID_Classificacao'
      Required = True
    end
    object cdsTransEmpresaEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object cdsTransEmpresaMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsTransEmpresaUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsTransEmpresaTelefone1: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object cdsTransEmpresaNumLicencaFEEMA: TStringField
      FieldName = 'NumLicencaFEEMA'
      Size = 30
    end
    object cdsTransEmpresaFlagRelContaminado: TStringField
      FieldName = 'FlagRelContaminado'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransEmpresaFlagRelReciclavel: TStringField
      FieldName = 'FlagRelReciclavel'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransEmpresaFlagRelSucata: TStringField
      FieldName = 'FlagRelSucata'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsTransEmpresaTipoResumoGeral: TIntegerField
      FieldName = 'TipoResumoGeral'
      Required = True
    end
    object cdsTransEmpresaResponsavel: TStringField
      FieldName = 'Responsavel'
      Size = 50
    end
    object cdsTransEmpresaValorContrato: TFMTBCDField
      FieldName = 'ValorContrato'
      Precision = 14
      Size = 2
    end
    object cdsTransEmpresaValorTonelada: TFMTBCDField
      FieldName = 'ValorTonelada'
      Precision = 14
      Size = 2
    end
  end
  object dtsTransEmpresa: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTransEmpresa
    Left = 680
    Top = 134
  end
  object cdsGerResponsavel: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGerResponsavel'
    Left = 824
    Top = 396
    object cdsGerResponsavelID_Responsavel: TIntegerField
      FieldName = 'ID_Responsavel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGerResponsavelNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object cdsGerResponsavelID_Cargo: TIntegerField
      FieldName = 'ID_Cargo'
    end
    object cdsGerResponsavelID_Tratamento: TIntegerField
      FieldName = 'ID_Tratamento'
      Required = True
    end
    object cdsGerResponsavelDescCargo: TStringField
      FieldKind = fkLookup
      FieldName = 'DescCargo'
      LookupDataSet = cdsGerCargo
      LookupKeyFields = 'ID_Cargo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Cargo'
      Size = 30
      Lookup = True
    end
  end
  object dtsGerResponsavel: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsGerResponsavel
    Left = 852
    Top = 396
  end
  object cdsGerCargo: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGerCargo'
    Left = 821
    Top = 353
  end
  object dtsGerCargo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsGerCargo
    Left = 849
    Top = 353
  end
  object cdsTransResponsavel: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransResponsavel'
    Left = 651
    Top = 89
    object cdsTransResponsavelID_Responsavel: TIntegerField
      FieldName = 'ID_Responsavel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTransResponsavelNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object cdsTransResponsavelID_Cargo: TIntegerField
      FieldName = 'ID_Cargo'
    end
    object cdsTransResponsavelID_Tratamento: TIntegerField
      FieldName = 'ID_Tratamento'
      Required = True
    end
    object cdsTransResponsavelDescCargo: TStringField
      FieldKind = fkLookup
      FieldName = 'DescCargo'
      LookupDataSet = cdsTransCargo
      LookupKeyFields = 'ID_Cargo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Cargo'
      Size = 30
      Lookup = True
    end
  end
  object cdsTransCargo: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransCargo'
    Left = 819
    Top = 482
  end
  object dtsTransCargo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTransCargo
    Left = 847
    Top = 482
  end
  object dtsTransResponsavel: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsTransResponsavel
    Left = 679
    Top = 89
  end
  object cdsRecepEmpresa: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecepEmpresa'
    Left = 651
    Top = 268
    object cdsRecepEmpresaID_Empresa: TIntegerField
      FieldName = 'ID_Empresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRecepEmpresaRazaoSocial: TStringField
      FieldName = 'RazaoSocial'
      Required = True
      Size = 50
    end
    object cdsRecepEmpresaID_Classificacao: TIntegerField
      FieldName = 'ID_Classificacao'
      Required = True
    end
    object cdsRecepEmpresaEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 80
    end
    object cdsRecepEmpresaMunicipio: TStringField
      FieldName = 'Municipio'
      Required = True
      Size = 30
    end
    object cdsRecepEmpresaUF: TStringField
      FieldName = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsRecepEmpresaTelefone1: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object cdsRecepEmpresaNumLicencaFEEMA: TStringField
      FieldName = 'NumLicencaFEEMA'
      Size = 30
    end
    object cdsRecepEmpresaFlagRelContaminado: TStringField
      FieldName = 'FlagRelContaminado'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsRecepEmpresaFlagRelReciclavel: TStringField
      FieldName = 'FlagRelReciclavel'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsRecepEmpresaFlagRelSucata: TStringField
      FieldName = 'FlagRelSucata'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsRecepEmpresaTipoResumoGeral: TIntegerField
      FieldName = 'TipoResumoGeral'
      Required = True
    end
    object cdsRecepEmpresaResponsavel: TStringField
      FieldName = 'Responsavel'
      Size = 50
    end
    object cdsRecepEmpresaValorContrato: TFMTBCDField
      FieldName = 'ValorContrato'
      Precision = 14
      Size = 2
    end
    object cdsRecepEmpresaValorTonelada: TFMTBCDField
      FieldName = 'ValorTonelada'
      Precision = 14
      Size = 2
    end
  end
  object dtsRecepEmpresa: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsRecepEmpresa
    Left = 679
    Top = 268
  end
  object cdsRecepResponsavel: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecepResponsavel'
    Left = 651
    Top = 224
    object cdsRecepResponsavelID_Responsavel: TIntegerField
      FieldName = 'ID_Responsavel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRecepResponsavelNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object cdsRecepResponsavelID_Cargo: TIntegerField
      FieldName = 'ID_Cargo'
    end
    object cdsRecepResponsavelID_Tratamento: TIntegerField
      FieldName = 'ID_Tratamento'
      Required = True
    end
    object cdsRecepResponsavelDescCargo: TStringField
      FieldKind = fkLookup
      FieldName = 'DescCargo'
      LookupDataSet = cdsRecepCargo
      LookupKeyFields = 'ID_Cargo'
      LookupResultField = 'Descricao'
      KeyFields = 'ID_Cargo'
      Size = 30
      Lookup = True
    end
  end
  object dtsRecepResponsavel: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsRecepResponsavel
    Left = 679
    Top = 224
  end
  object cdsRecepCargo: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRecepCargo'
    Left = 652
    Top = 178
  end
  object dtsRecepCargo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsRecepCargo
    Left = 680
    Top = 178
  end
  object cdsSituacao: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSituacao'
    Left = 100
    Top = 435
  end
  object dtsSituacao: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsSituacao
    Left = 128
    Top = 435
  end
  object cdsSituacaoDesc: TClientDataSetUrb
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSituacaoDesc'
    Left = 651
    Top = 400
  end
  object dtsSituacaoDesc: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsSituacaoDesc
    Left = 679
    Top = 400
  end
  object cdsGerarNumNegativo: TClientDataSetUrb
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGerarNumNegativo'
    Left = 97
    Top = 386
    object cdsGerarNumNegativovalor: TIntegerField
      FieldName = 'valor'
      DisplayFormat = '000000;XXXXXX'
    end
  end
  object dtsGerarNumNegativo: TDataSourceUrb
    AutoEdit = False
    DataSet = cdsGerarNumNegativo
    Left = 125
    Top = 386
  end
  object sqlSituacao: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 44
    Top = 435
  end
  object dspSituacao: TDataSetProviderUrb
    DataSet = sqlSituacao
    Options = [poAllowCommandText]
    Left = 72
    Top = 435
  end
  object sqlResiduo: TSQLDataSet
    SchemaName = 'andre'
    GetMetadata = False
    CommandText = 
      'select ID_Residuo, Descricao, FlagContaminado, ValorMercado, Cod' +
      'igo from residuo order by Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 762
    Top = 89
  end
  object dspResiduo: TDataSetProviderUrb
    DataSet = sqlResiduo
    Options = [poAllowCommandText]
    Left = 790
    Top = 89
  end
  object sqlEstadoFisico: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_EstadoFisico, Descricao from estadofisico order by Des' +
      'cricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 762
    Top = 134
  end
  object dspEstadoFisico: TDataSetProviderUrb
    DataSet = sqlEstadoFisico
    Options = [poAllowCommandText]
    Left = 790
    Top = 134
  end
  object sqlAcond: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_Acondicionamento, Descricao from acondicionamento orde' +
      'r by Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 762
    Top = 178
  end
  object dspAcond: TDataSetProviderUrb
    DataSet = sqlAcond
    Options = [poAllowCommandText]
    Left = 790
    Top = 178
  end
  object sqlOrigem: TSQLDataSet
    GetMetadata = False
    CommandText = 'select ID_Origem, Descricao from origem order by Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 762
    Top = 222
  end
  object dspOrigem: TDataSetProviderUrb
    DataSet = sqlOrigem
    Options = [poAllowCommandText]
    Left = 790
    Top = 222
  end
  object sqlProcedencia: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_Procedencia, Descricao from procedencia order by Descr' +
      'icao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 762
    Top = 267
  end
  object dspProcedencia: TDataSetProviderUrb
    DataSet = sqlProcedencia
    Options = [poAllowCommandText]
    Left = 790
    Top = 267
  end
  object sqlTratDisp: TSQLDataSet
    GetMetadata = False
    CommandText = 'select ID_TratDisp, Descricao from tratdisp order by Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 762
    Top = 310
  end
  object dspTratDisp: TDataSetProviderUrb
    DataSet = sqlTratDisp
    Options = [poAllowCommandText]
    Left = 790
    Top = 310
  end
  object sqlGerEmpresa: TSQLDataSet
    SchemaName = 'andre'
    GetMetadata = False
    CommandText = 
      'select ID_Empresa, RazaoSocial, ID_Classificacao, Endereco, Muni' +
      'cipio, UF, Telefone,'#13#10'NumLicencaFEEMA, ValorContrato, ValorTonel' +
      'ada, FlagRelContaminado, FlagRelReciclavel,'#13#10'FlagRelSucata, Tipo' +
      'ResumoGeral, Responsavel, ID_Fantasia, CEP, CNPJ, InscEstado, Ob' +
      's'#13#10'from empresa order by RazaoSocial'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 765
    Top = 439
  end
  object dspGerEmpresa: TDataSetProviderUrb
    DataSet = sqlGerEmpresa
    Options = [poAllowCommandText]
    Left = 791
    Top = 439
  end
  object sqlGerResponsavel: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_Responsavel, Nome, ID_Cargo, ID_Tratamento from respon' +
      'savel order by Nome'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 768
    Top = 396
  end
  object dspGerResponsavel: TDataSetProviderUrb
    DataSet = sqlGerResponsavel
    Options = [poAllowCommandText]
    Left = 798
    Top = 396
  end
  object sqlGerCargo: TSQLDataSet
    GetMetadata = False
    CommandText = 'select ID_Cargo, Descricao from cargo order by Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 765
    Top = 353
  end
  object dspGerCargo: TDataSetProviderUrb
    DataSet = sqlGerCargo
    Options = [poAllowCommandText]
    Left = 793
    Top = 353
  end
  object sqlTransEmpresa: TSQLDataSet
    SchemaName = 'andre'
    GetMetadata = False
    CommandText = 
      'select ID_Empresa, RazaoSocial, ID_Classificacao, Endereco, Muni' +
      'cipio, UF, Telefone,'#13#10'NumLicencaFEEMA, ValorContrato, ValorTonel' +
      'ada, FlagRelContaminado, FlagRelReciclavel,'#13#10'FlagRelSucata, Tipo' +
      'ResumoGeral, Responsavel, ID_Fantasia, CEP, CNPJ, InscEstado, Ob' +
      's'#13#10'from empresa order by RazaoSocial'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 596
    Top = 134
  end
  object dspTransEmpresa: TDataSetProviderUrb
    DataSet = sqlTransEmpresa
    Options = [poAllowCommandText]
    Left = 624
    Top = 134
  end
  object sqlTransResponsavel: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_Responsavel, Nome, ID_Cargo, ID_Tratamento from respon' +
      'savel order by Nome'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 595
    Top = 89
  end
  object dspTransResponsavel: TDataSetProviderUrb
    DataSet = sqlTransResponsavel
    Options = [poAllowCommandText]
    Left = 623
    Top = 89
  end
  object sqlTransCargo: TSQLDataSet
    GetMetadata = False
    CommandText = 'select ID_Cargo, Descricao from cargo order by Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 763
    Top = 482
  end
  object dspTransCargo: TDataSetProviderUrb
    DataSet = sqlTransCargo
    Options = [poAllowCommandText]
    Left = 791
    Top = 482
  end
  object sqlGerarNumNegativo: TSQLDataSet
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 41
    Top = 386
  end
  object dspGerarNumNegativo: TDataSetProviderUrb
    DataSet = sqlGerarNumNegativo
    Options = [poAllowCommandText]
    Left = 69
    Top = 386
  end
  object sqlRecepEmpresa: TSQLDataSet
    SchemaName = 'andre'
    GetMetadata = False
    CommandText = 
      'select ID_Empresa, RazaoSocial, ID_Classificacao, Endereco, Muni' +
      'cipio, UF, Telefone,'#13#10'NumLicencaFEEMA, ValorContrato, ValorTonel' +
      'ada, FlagRelContaminado, FlagRelReciclavel,'#13#10'FlagRelSucata, Tipo' +
      'ResumoGeral, Responsavel, ID_Fantasia, CEP, CNPJ, InscEstado, Ob' +
      's'#13#10'from empresa order by RazaoSocial'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 595
    Top = 268
  end
  object dspRecepEmpresa: TDataSetProviderUrb
    DataSet = sqlRecepEmpresa
    Options = [poAllowCommandText]
    Left = 623
    Top = 268
  end
  object dspRecepResponsavel: TDataSetProviderUrb
    DataSet = sqlRecepResponsavel
    Options = [poAllowCommandText]
    Left = 623
    Top = 224
  end
  object sqlRecepResponsavel: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_Responsavel, Nome, ID_Cargo, ID_Tratamento from respon' +
      'savel order by Nome'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 595
    Top = 224
  end
  object dspRecepCargo: TDataSetProviderUrb
    DataSet = sqlRecepCargo
    Options = [poAllowCommandText]
    Left = 624
    Top = 178
  end
  object sqlRecepCargo: TSQLDataSet
    GetMetadata = False
    CommandText = 'select ID_Cargo, Descricao from cargo order by Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 596
    Top = 178
  end
  object dspUnidadeMedida: TDataSetProviderUrb
    DataSet = sqlUnidadeMedida
    Options = [poAllowCommandText]
    Left = 624
    Top = 313
  end
  object sqlUnidadeMedida: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_UnidadeMedida, Descricao, Sigla from unidademedida ord' +
      'er by Sigla'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 596
    Top = 313
  end
  object dspStatus: TDataSetProviderUrb
    DataSet = sqlStatus
    Options = [poAllowCommandText]
    Left = 623
    Top = 356
  end
  object sqlStatus: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select ID_ManifestoEstado, Descricao from manifestoestado order ' +
      'by Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 595
    Top = 356
  end
  object dspSituacaoDesc: TDataSetProviderUrb
    DataSet = sqlSituacaoDesc
    Options = [poAllowCommandText]
    Left = 623
    Top = 400
  end
  object sqlSituacaoDesc: TSQLDataSet
    GetMetadata = False
    CommandText = 'select ID_Situacao, Descricao from situacao order by Descricao'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.ConexaoBD
    Left = 595
    Top = 400
  end
  object rdtsCadManifesto: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsManuBD
    Left = 155
    Top = 338
  end
end
