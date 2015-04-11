object frmRelExtrato: TfrmRelExtrato
  Left = 242
  Top = 156
  Caption = 'Extrato de conta '
  ClientHeight = 139
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 450
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 444
      end>
    object ToolBar1: TToolBar
      Left = 12
      Top = 0
      Width = 430
      Height = 40
      ButtonHeight = 36
      ButtonWidth = 51
      Caption = 'ToolBar'
      Color = clBtnFace
      EdgeBorders = [ebTop, ebRight, ebBottom]
      EdgeInner = esNone
      EdgeOuter = esNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Images = FrmPrincipal.ImageList1
      ParentColor = False
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      Transparent = True
      Wrapable = False
      object btnImprimir: TToolButton
        Left = 0
        Top = 0
        Hint = 'Bot'#227'o Incluir'
        Caption = '&Imprimir'
        ImageIndex = 6
        ParentShowHint = False
        ShowHint = True
        OnClick = btnImprimirClick
      end
      object ToolButton11: TToolButton
        Left = 51
        Top = 0
        Width = 309
        Caption = 'ToolButton11'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object BotaoFechar: TToolButton
        Left = 360
        Top = 0
        Caption = '&Fechar'
        ImageIndex = 7
        OnClick = BotaoFecharClick
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 120
    Width = 450
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 44
    Width = 450
    Height = 76
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Label18: TLabel
      Left = 9
      Top = 56
      Width = 104
      Height = 13
      Alignment = taRightJustify
      Caption = 'Intervalo de datas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 208
      Top = 56
      Width = 15
      Height = 13
      Alignment = taRightJustify
      Caption = 'at'#233
    end
    object Label1: TLabel
      Left = 26
      Top = 25
      Width = 86
      Height = 13
      Caption = 'Conta Corrente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtpData_VenctoFim: TDateTimePicker
      Left = 227
      Top = 48
      Width = 85
      Height = 21
      Date = 37204.772809398150000000
      Time = 37204.772809398150000000
      TabOrder = 3
      TabStop = False
      OnCloseUp = dtpData_VenctoFimCloseUp
    end
    object dtpData_VenctoIni: TDateTimePicker
      Left = 119
      Top = 48
      Width = 85
      Height = 21
      Date = 37204.772809398150000000
      Time = 37204.772809398150000000
      TabOrder = 1
      TabStop = False
      OnCloseUp = dtpData_VenctoIniCloseUp
    end
    object edtData_VenctoIni: TEditN
      Left = 119
      Top = 48
      Width = 69
      Height = 21
      Color = clWhite
      TabOrder = 0
      Text = '07/10/2003'
      TextHint = True
      OnExit = edtData_VenctoIniExit
      ColorOnFocus = clWhite
      ColorOnNotFocus = clWhite
      FontColorOnFocus = clRed
      FontColorOnNotFocus = clBlack
      FontColorOnOverWrite = clBlue
      EditType = etDate
      EditKeyByTab = #9
      EditAlign = etAlignNone
      EditLengthAlign = 0
      EditPrecision = 0
      ValueFloat = 7102003.000000000000000000
      ValueInteger = 0
      ValueDate = 37901.000000000000000000
      ValueTime = 0.752723553240740700
      TimeSeconds = False
      FirstCharUpper = False
      FirstCharUpList = ' ('
      WidthOnFocus = 0
    end
    object edtData_VenctoFim: TEditN
      Left = 227
      Top = 48
      Width = 67
      Height = 21
      Color = clWhite
      TabOrder = 2
      Text = '07/10/2003'
      TextHint = True
      OnExit = edtData_VenctoFimExit
      ColorOnFocus = clWhite
      ColorOnNotFocus = clWhite
      FontColorOnFocus = clRed
      FontColorOnNotFocus = clBlack
      FontColorOnOverWrite = clBlue
      EditType = etDate
      EditKeyByTab = #9
      EditAlign = etAlignNone
      EditLengthAlign = 0
      EditPrecision = 0
      ValueFloat = 7102003.000000000000000000
      ValueInteger = 0
      ValueDate = 37901.000000000000000000
      ValueTime = 0.752723553240740700
      TimeSeconds = False
      FirstCharUpper = False
      FirstCharUpList = ' ('
      WidthOnFocus = 0
    end
    object cmbVencto: TComboBox
      Left = 319
      Top = 48
      Width = 124
      Height = 21
      Style = csDropDownList
      DropDownCount = 30
      ItemIndex = 14
      TabOrder = 4
      TabStop = False
      Text = 'Este M'#234's'
      OnChange = cmbVenctoChange
      Items.Strings = (
        'Nenhum'
        'Ontem'
        'Hoje'
        'Amanh'#227
        'Semana Anterior'
        'Esta Semana'
        'Pr'#243'xima Semana'
        'Quinzena Anterior'
        'Esta Quinzena'
        'Pr'#243'xima Quinzena '
        'Nos '#218'ltimos 15 dias'
        'Nos Pr'#243'ximos 15 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 15 dias'
        'M'#234's Anterior'
        'Este M'#234's'
        'Pr'#243'ximo M'#234's'
        'Nos '#218'ltimos 30 dias'
        'Nos Pr'#243'ximos 30 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 30 dias'
        'Nos '#218'ltimos 45 dias'
        'Nos Pr'#243'ximos 45 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 45 dias'
        'Nos '#218'ltimos 60 dias'
        'Nos Pr'#243'ximos 60 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 60 dias'
        'Trimestre Anterior'
        'Neste Trimestre'
        'Pr'#243'ximo Trimestre'
        'Nos '#218'ltimos 90 dias'
        'Nos Pr'#243'ximos 90 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 90 dias'
        'Semestre Passado'
        'Neste Semestre'
        'Pr'#243'ximo Semestre'
        'Nos '#218'ltimos 120 dias'
        'Nos Pr'#243'ximos 120 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 120 dias'
        'Ano Passado'
        'Neste Ano'
        'Pr'#243'ximo Ano')
    end
    object cmbCod_contaCorrente: TDBLookupComboBox
      Left = 119
      Top = 17
      Width = 85
      Height = 21
      KeyField = 'codigo'
      ListField = 'codigo;Descricao'
      ListSource = srcCadCodtasCorrente
      TabOrder = 5
      OnClick = cmbCod_contaCorrenteClick
    end
    object cmbNome_ContaCorrente: TDBLookupComboBox
      Left = 204
      Top = 17
      Width = 238
      Height = 21
      KeyField = 'codigo'
      ListField = 'descricao;codigo'
      ListSource = srcCadCodtasCorrente
      TabOrder = 6
      OnClick = cmbNome_ContaCorrenteClick
    end
  end
  object QryCadContasCorrente: TADOQuery
    Parameters = <>
    Left = 244
    Top = 32
  end
  object srcCadCodtasCorrente: TDataSource
    DataSet = QryCadContasCorrente
    Left = 244
    Top = 60
  end
  object qryRelatorio: TADOQuery
    Parameters = <>
    Left = 272
    Top = 32
  end
end
