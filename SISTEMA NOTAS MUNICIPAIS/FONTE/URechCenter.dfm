object FRechCenter: TFRechCenter
  Left = 141
  Top = 46
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Rech Center'
  ClientHeight = 470
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 30
    Width = 621
    Height = 416
    Align = alClient
  end
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 621
    Height = 30
    Align = alTop
    Alignment = taCenter
    Caption = 'Par'#226'metros da Empresa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -21
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 32
    Top = 48
    Width = 30
    Height = 16
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 80
    Width = 48
    Height = 16
    Caption = 'Endere'#231'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 112
    Width = 32
    Height = 16
    Caption = 'Bairro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 176
    Width = 47
    Height = 16
    Caption = 'Telefone'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 144
    Width = 34
    Height = 16
    Caption = 'Cidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 408
    Top = 176
    Width = 23
    Height = 16
    Caption = 'FAX'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 32
    Top = 240
    Width = 37
    Height = 16
    Caption = 'E-Mail'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 32
    Top = 208
    Width = 22
    Height = 16
    Caption = 'Site'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 32
    Top = 280
    Width = 24
    Height = 16
    Caption = 'Logo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object WSEdit1: TWSEdit
    Left = 90
    Top = 275
    Width = 490
    height = 92
    BevelInner = bvNone
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    TabOrder = 10
    Text = 'WSEdit1'
    ColorOnFocus = clBlack
    ColorOnNotFocus = clGray
  end
  object WSDBEdit1: TWSDBEdit
    Left = 90
    Top = 47
    Width = 482
    DataField = 'RECNOME'
    DataSource = DM.DSRechCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    TabOrder = 0
    OnKeyDown = WSDBEdit2KeyDown
    ColorOnFocus = clBlack
    ColorOnNotFocus = clGray
  end
  object WSDBEdit2: TWSDBEdit
    Left = 90
    Top = 79
    Width = 490
    DataField = 'RECENDERECO'
    DataSource = DM.DSRechCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    TabOrder = 1
    OnKeyDown = WSDBEdit2KeyDown
    ColorOnFocus = clBlack
    ColorOnNotFocus = clGray
  end
  object WSDBEdit3: TWSDBEdit
    Left = 90
    Top = 111
    Width = 490
    DataField = 'RECBAIRRO'
    DataSource = DM.DSRechCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    TabOrder = 2
    OnKeyDown = WSDBEdit2KeyDown
    ColorOnFocus = clBlack
    ColorOnNotFocus = clGray
  end
  object WSDBEdit4: TWSDBEdit
    Left = 90
    Top = 175
    Width = 127
    DataField = 'RECTELEFONE'
    DataSource = DM.DSRechCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    MaxLength = 12
    ParentFont = False
    ParentShowHint = False
    TabOrder = 4
    OnKeyDown = WSDBEdit2KeyDown
    ColorOnFocus = clBlack
    ColorOnNotFocus = clGray
  end
  object WSDBEdit5: TWSDBEdit
    Left = 90
    Top = 143
    Width = 490
    DataField = 'RECCIDADE'
    DataSource = DM.DSRechCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    TabOrder = 3
    OnKeyDown = WSDBEdit2KeyDown
    ColorOnFocus = clBlack
    ColorOnNotFocus = clGray
  end
  object WSDBEdit6: TWSDBEdit
    Left = 450
    Top = 175
    Width = 127
    DataField = 'RECFAX'
    DataSource = DM.DSRechCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    MaxLength = 12
    ParentFont = False
    ParentShowHint = False
    TabOrder = 5
    OnKeyDown = WSDBEdit2KeyDown
    ColorOnFocus = clBlack
    ColorOnNotFocus = clGray
  end
  object WSDBEdit7: TWSDBEdit
    Left = 90
    Top = 239
    Width = 490
    DataField = 'RECEMAIL'
    DataSource = DM.DSRechCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    TabOrder = 7
    OnKeyDown = WSDBEdit2KeyDown
    ColorOnFocus = clBlack
    ColorOnNotFocus = clGray
  end
  object WSDBEdit8: TWSDBEdit
    Left = 90
    Top = 207
    Width = 490
    DataField = 'RECSITE'
    DataSource = DM.DSRechCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    TabOrder = 6
    OnKeyDown = WSDBEdit2KeyDown
    ColorOnFocus = clBlack
    ColorOnNotFocus = clGray
  end
  object Panel1: TPanel
    Left = 0
    Top = 446
    Width = 621
    Height = 24
    Align = alBottom
    Caption = 'Panel1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 33023
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    object ToolBarNavegacao: TToolBar
      Left = 1
      Top = 2
      Width = 619
      Height = 21
      Align = alBottom
      AutoSize = True
      ButtonHeight = 21
      ButtonWidth = 88
      EdgeBorders = []
      Flat = True
      Images = DM.ImageListPageControl
      Indent = 225
      List = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object BtnSalvar: TToolButton
        Left = 225
        Top = 0
        Hint = 'Salvar'
        Caption = 'Entrar'
        ImageIndex = 2
        OnClick = BtnSalvarClick
      end
      object btnsair: TToolButton
        Left = 313
        Top = 0
        Hint = 'Sair - Esc'
        ImageIndex = 3
        OnClick = btnsairClick
      end
    end
  end
  object DBImage1: TDBImage
    Left = 91
    Top = 276
    Width = 488
    Height = 90
    BorderStyle = bsNone
    DataField = 'RECLOGO'
    DataSource = DM.DSRechCenter
    TabOrder = 9
    OnDblClick = DBImage1DblClick
  end
  object rgsistema: TDBRadioGroup
    Left = 91
    Top = 368
    Width = 488
    Height = 71
    Caption = 'Sistema'
    Columns = 4
    DataField = 'RECSISTEMA'
    DataSource = DM.DSRechCenter
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    Items.Strings = (
      'Hotel'
      'M'#233'dico'
      'Prefeitura'
      'Cont. Rec.'
      'Ferro Velho'
      'Rodosul'
      'Factory'
      'Apae'
      'Estoque'
      'Gestao'
      'Imobili'#225'ria'
      'Universidade'
      'Censo')
    ParentFont = False
    TabOrder = 11
    Values.Strings = (
      'H'
      'M'
      'P'
      'C'
      'F'
      'R'
      'A'
      'E'
      'S'
      'G'
      'I'
      'U'
      'N')
  end
end
