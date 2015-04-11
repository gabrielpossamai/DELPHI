object FPesagemRel: TFPesagemRel
  Left = 1
  Top = 64
  Width = 1032
  Height = 750
  Caption = 'FPesagemRel'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport: TRLReport
    Left = 358
    Top = 27
    Width = 794
    Height = 1123
    DataSource = DM.DSPesagem
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 553
      Width = 718
      Height = 31
      BandType = btFooter
      object RLDBText1: TRLDBText
        Left = 168
        Top = 3
        Width = 57
        Height = 14
        DataField = 'RECNOME'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 474
        Top = 3
        Width = 60
        Height = 14
        DataField = 'RECEMAIL'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 115
        Top = 2
        Width = 51
        Height = 15
        Caption = 'Sistema:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 56
      BandType = btHeader
      object RLDBImage2: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 56
        Align = faLeft
        DataField = 'EMPFIGURA'
        DataSource = DM.DSParamEmp
        Stretch = True
      end
      object RLDBRichText1: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
        DataSource = DM.DSParamEmp
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 94
      Width = 718
      Height = 36
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 264
        Top = 2
        Width = 190
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Ficha da Pesagem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 130
      Width = 718
      Height = 423
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel9: TRLLabel
        Left = 27
        Top = 154
        Width = 66
        Height = 17
        Caption = 'Rodados:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 149
        Top = 105
        Width = 34
        Height = 15
        DataField = 'marca'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 149
        Top = 121
        Width = 77
        Height = 15
        DataField = 'PESMODELO'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 158
        Top = 17
        Width = 67
        Height = 19
        DataField = 'PESCOD'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 149
        Top = 153
        Width = 85
        Height = 15
        DataField = 'PESRODADOS'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 149
        Top = 137
        Width = 52
        Height = 15
        DataField = 'categoria'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 27
        Top = 18
        Width = 125
        Height = 17
        Caption = 'Pesagem N'#250'mero:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 27
        Top = 74
        Width = 72
        Height = 17
        Caption = 'Operador:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 27
        Top = 106
        Width = 51
        Height = 17
        Caption = 'Marca:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 27
        Top = 138
        Width = 73
        Height = 17
        Caption = 'Categoria:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 27
        Top = 122
        Width = 60
        Height = 17
        Caption = 'Modelo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 27
        Top = 186
        Width = 41
        Height = 17
        Caption = 'Peso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 27
        Top = 283
        Width = 43
        Height = 17
        Caption = 'Placa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 27
        Top = 219
        Width = 107
        Height = 17
        Caption = 'Toler'#226'ncia (%):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 27
        Top = 313
        Width = 71
        Height = 17
        Caption = 'Condutor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 27
        Top = 298
        Width = 88
        Height = 17
        Caption = 'Propriet'#225'rio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 150
        Top = 282
        Width = 66
        Height = 15
        DataField = 'PESPLACA'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText14: TRLDBText
        Left = 148
        Top = 220
        Width = 104
        Height = 15
        DataField = 'PESTOLERANCIA'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText18: TRLDBText
        Left = 148
        Top = 187
        Width = 54
        Height = 15
        DataField = 'PESPESO'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText21: TRLDBText
        Left = 149
        Top = 314
        Width = 93
        Height = 15
        DataField = 'PESCONDUTOR'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText22: TRLDBText
        Left = 149
        Top = 298
        Width = 113
        Height = 15
        DataField = 'PESPROPRIETARIO'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 27
        Top = 329
        Width = 43
        Height = 17
        Caption = 'CNH:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText23: TRLDBText
        Left = 150
        Top = 330
        Width = 50
        Height = 15
        DataField = 'PESCNH'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText24: TRLDBText
        Left = 115
        Top = 44
        Width = 61
        Height = 15
        DataField = 'PESDATA'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 27
        Top = 42
        Width = 76
        Height = 17
        Caption = 'Data/Hora:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText25: TRLDBText
        Left = 227
        Top = 44
        Width = 60
        Height = 15
        DataField = 'PESHORA'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 27
        Top = 203
        Width = 109
        Height = 17
        Caption = 'Peso Permitido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 147
        Top = 204
        Width = 122
        Height = 15
        DataField = 'PESPESOPERMITIDO'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 149
        Top = 73
        Width = 51
        Height = 15
        DataField = 'matricula'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 27
        Top = 235
        Width = 104
        Height = 17
        Caption = 'Peso Tolerado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 148
        Top = 236
        Width = 55
        Height = 15
        DataField = 'tolerancia'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 27
        Top = 251
        Width = 64
        Height = 17
        Caption = 'Excesso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 148
        Top = 252
        Width = 45
        Height = 15
        DataField = 'excesso'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLReport2: TRLReport
    Left = 54
    Top = 51
    Width = 794
    Height = 1123
    DataSource = DM.DSPesagem
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport2BeforePrint
    object RLBand10: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 56
      BandType = btHeader
      object RLDBImage3: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 56
        Align = faLeft
        DataField = 'EMPFIGURA'
        DataSource = DM.DSParamEmp
        Stretch = True
      end
      object RLDBRichText3: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
        DataSource = DM.DSParamEmp
      end
    end
    object RLBand11: TRLBand
      Left = 38
      Top = 94
      Width = 718
      Height = 36
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel30: TRLLabel
        Left = 193
        Top = 2
        Width = 332
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Pesagens Resumido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand12: TRLBand
      Left = 38
      Top = 156
      Width = 718
      Height = 143
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      BeforePrint = RLBand12BeforePrint
      object RLDraw1: TRLDraw
        Left = 606
        Top = 24
        Width = 110
        Height = 115
      end
      object RLDBText32: TRLDBText
        Left = 77
        Top = 25
        Width = 47
        Height = 14
        DataField = 'operador'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText34: TRLDBText
        Left = 77
        Top = 41
        Width = 33
        Height = 14
        DataField = 'marca'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText36: TRLDBText
        Left = 77
        Top = 57
        Width = 65
        Height = 14
        DataField = 'PESMODELO'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText41: TRLDBText
        Left = 77
        Top = 9
        Width = 42
        Height = 15
        AutoSize = False
        DataField = 'PESCOD'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText42: TRLDBText
        Left = 492
        Top = 41
        Width = 109
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESRODADOS'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText43: TRLDBText
        Left = 77
        Top = 73
        Width = 48
        Height = 14
        DataField = 'categoria'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel43: TRLLabel
        Left = 451
        Top = 25
        Width = 35
        Height = 13
        Caption = 'Placa:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel45: TRLLabel
        Left = 16
        Top = 105
        Width = 57
        Height = 13
        Caption = 'Condutor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel46: TRLLabel
        Left = 2
        Top = 89
        Width = 71
        Height = 13
        Caption = 'Propriet'#225'rio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText44: TRLDBText
        Left = 492
        Top = 25
        Width = 57
        Height = 14
        DataField = 'PESPLACA'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText45: TRLDBText
        Left = 492
        Top = 73
        Width = 109
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESTOLERANCIA'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText46: TRLDBText
        Left = 492
        Top = 57
        Width = 109
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESPESO'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText47: TRLDBText
        Left = 77
        Top = 105
        Width = 79
        Height = 14
        DataField = 'PESCONDUTOR'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText48: TRLDBText
        Left = 77
        Top = 89
        Width = 95
        Height = 14
        DataField = 'PESPROPRIETARIO'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel47: TRLLabel
        Left = 40
        Top = 121
        Width = 33
        Height = 13
        Caption = 'CNH:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText49: TRLDBText
        Left = 77
        Top = 121
        Width = 43
        Height = 14
        DataField = 'PESCNH'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText50: TRLDBText
        Left = 287
        Top = 9
        Width = 51
        Height = 14
        DataField = 'PESDATA'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText51: TRLDBText
        Left = 492
        Top = 9
        Width = 109
        Height = 15
        AutoSize = False
        DataField = 'PESHORA'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText52: TRLDBText
        Left = 492
        Top = 89
        Width = 109
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESPESOPERMITIDO'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText54: TRLDBText
        Left = 492
        Top = 105
        Width = 109
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'tolerancia'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText55: TRLDBText
        Left = 492
        Top = 121
        Width = 109
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'excesso'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel39: TRLLabel
        Left = 34
        Top = 41
        Width = 39
        Height = 13
        Caption = 'Marca:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel41: TRLLabel
        Left = 28
        Top = 57
        Width = 45
        Height = 13
        Caption = 'Modelo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel40: TRLLabel
        Left = 18
        Top = 73
        Width = 55
        Height = 13
        Caption = 'Categoria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel38: TRLLabel
        Left = 16
        Top = 25
        Width = 57
        Height = 13
        Caption = 'Operador:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel37: TRLLabel
        Left = 24
        Top = 9
        Width = 49
        Height = 13
        Caption = 'N'#250'mero:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel32: TRLLabel
        Left = 436
        Top = 41
        Width = 50
        Height = 13
        Caption = 'Rodados:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel42: TRLLabel
        Left = 455
        Top = 57
        Width = 31
        Height = 13
        Caption = 'Peso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel44: TRLLabel
        Left = 403
        Top = 73
        Width = 83
        Height = 13
        Caption = 'Toler'#226'ncia (%):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel49: TRLLabel
        Left = 400
        Top = 89
        Width = 86
        Height = 13
        Caption = 'Peso Permitido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel50: TRLLabel
        Left = 407
        Top = 105
        Width = 79
        Height = 13
        Caption = 'Peso Tolerado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel51: TRLLabel
        Left = 440
        Top = 121
        Width = 46
        Height = 13
        Caption = 'Excesso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel48: TRLLabel
        Left = 254
        Top = 9
        Width = 31
        Height = 13
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 453
        Top = 9
        Width = 33
        Height = 13
        Caption = 'Hora:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel57: TRLLabel
        Left = 607
        Top = 9
        Width = 36
        Height = 13
        Caption = 'Pesos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 608
        Top = 58
        Width = 105
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESPESO3'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText27: TRLDBText
        Left = 608
        Top = 74
        Width = 105
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESPESO4'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText30: TRLDBText
        Left = 608
        Top = 90
        Width = 105
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESPESO5'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText53: TRLDBText
        Left = 608
        Top = 107
        Width = 105
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESPESO6'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText66: TRLDBText
        Left = 608
        Top = 122
        Width = 105
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESPESO7'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText67: TRLDBText
        Left = 608
        Top = 42
        Width = 105
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESPESO2'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText68: TRLDBText
        Left = 608
        Top = 26
        Width = 105
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESPESO1'
        DataSource = DM.DSPesagem
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand13: TRLBand
      Left = 38
      Top = 388
      Width = 718
      Height = 57
      BandType = btSummary
      object RLDBText60: TRLDBText
        Left = 189
        Top = 3
        Width = 524
        Height = 19
        AutoSize = False
        DataField = 'RECNOME'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBImage5: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'RECLOGO'
        DataSource = DM.DSRechCenter
        Stretch = True
      end
      object RLDBText61: TRLDBText
        Left = 190
        Top = 23
        Width = 283
        Height = 15
        AutoSize = False
        DataField = 'recENDERECO'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText62: TRLDBText
        Left = 475
        Top = 23
        Width = 238
        Height = 15
        AutoSize = False
        DataField = 'RECBAIRRO'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText63: TRLDBText
        Left = 190
        Top = 39
        Width = 149
        Height = 15
        AutoSize = False
        DataField = 'RECCIDADE'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText64: TRLDBText
        Left = 340
        Top = 39
        Width = 131
        Height = 15
        AutoSize = False
        DataField = 'RECTELEFONE'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText65: TRLDBText
        Left = 474
        Top = 39
        Width = 239
        Height = 15
        AutoSize = False
        DataField = 'RECEMAIL'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand9: TRLBand
      Left = 38
      Top = 130
      Width = 718
      Height = 26
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RLBand14: TRLBand
      Left = 38
      Top = 299
      Width = 718
      Height = 89
      BandType = btSummary
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand14BeforePrint
      object RLLabel29: TRLLabel
        Left = 427
        Top = 5
        Width = 60
        Height = 13
        Caption = 'Total Peso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblpeso: TRLLabel
        Left = 492
        Top = 5
        Width = 109
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lbltolerancia: TRLLabel
        Left = 492
        Top = 20
        Width = 109
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblpesotolerado: TRLLabel
        Left = 492
        Top = 52
        Width = 109
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblpesopermitido: TRLLabel
        Left = 492
        Top = 36
        Width = 109
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object lblexcesso: TRLLabel
        Left = 492
        Top = 68
        Width = 109
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel52: TRLLabel
        Left = 404
        Top = 20
        Width = 83
        Height = 13
        Caption = 'Toler'#226'ncia (%):'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel53: TRLLabel
        Left = 401
        Top = 36
        Width = 86
        Height = 13
        Caption = 'Peso Permitido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel54: TRLLabel
        Left = 408
        Top = 54
        Width = 79
        Height = 13
        Caption = 'Peso Tolerado:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel55: TRLLabel
        Left = 441
        Top = 70
        Width = 46
        Height = 13
        Caption = 'Excesso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel56: TRLLabel
        Left = 211
        Top = 5
        Width = 173
        Height = 13
        Caption = 'Totais ............................................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object RLReport1: TRLReport
    Left = 30
    Top = 1006
    Width = 794
    Height = 1123
    DataSource = DSTMP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand6: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 56
      BandType = btHeader
      object RLDBImage1: TRLDBImage
        Left = 0
        Top = 0
        Width = 181
        Height = 56
        Align = faLeft
        DataField = 'EMPFIGURA'
        Stretch = True
      end
      object RLDBRichText2: TRLDBRichText
        Left = 181
        Top = 0
        Width = 537
        Height = 56
        Align = faClient
        DataField = 'EMPCAB'
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 94
      Width = 718
      Height = 36
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel20: TRLLabel
        Left = 252
        Top = 2
        Width = 214
        Height = 30
        Align = faCenter
        Alignment = taCenter
        Caption = 'Resumo de Pesagens'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 130
      Width = 718
      Height = 423
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      object RLDBText19: TRLDBText
        Left = 165
        Top = 89
        Width = 84
        Height = 15
        DataField = 'TMPPesoTotal'
        DataSource = DSTMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText20: TRLDBText
        Left = 165
        Top = 121
        Width = 120
        Height = 15
        DataField = 'TMPToleranciaMedia'
        DataSource = DSTMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText28: TRLDBText
        Left = 165
        Top = 137
        Width = 114
        Height = 15
        DataField = 'TMPTotaldeExcesso'
        DataSource = DSTMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 27
        Top = 74
        Width = 92
        Height = 17
        Caption = 'N'#176' Pesagens:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 27
        Top = 90
        Width = 79
        Height = 17
        Caption = 'Peso Total:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 27
        Top = 138
        Width = 129
        Height = 17
        Caption = 'Total de Excessos:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 27
        Top = 122
        Width = 124
        Height = 17
        Caption = 'Toler'#226'ncia M'#233'dia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 27
        Top = 186
        Width = 189
        Height = 17
        Caption = 'Marca de maior movimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 27
        Top = 283
        Width = 211
        Height = 17
        Caption = 'Categoria de maior movimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 27
        Top = 298
        Width = 216
        Height = 17
        Caption = 'Categoria de menor movimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText29: TRLDBText
        Left = 254
        Top = 282
        Width = 147
        Height = 15
        DataField = 'TMPCategoriaMaisPassou'
        DataSource = DSTMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText31: TRLDBText
        Left = 252
        Top = 187
        Width = 130
        Height = 15
        DataField = 'TMPMarcaMaisPassou'
        DataSource = DSTMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText33: TRLDBText
        Left = 253
        Top = 298
        Width = 158
        Height = 15
        DataField = 'TMPCategoriaMenosPassou'
        DataSource = DSTMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText35: TRLDBText
        Left = 163
        Top = 20
        Width = 69
        Height = 15
        DataField = 'TMPDataIni'
        DataSource = DSTMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel33: TRLLabel
        Left = 27
        Top = 18
        Width = 83
        Height = 17
        Caption = 'Data Inicial:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel34: TRLLabel
        Left = 27
        Top = 203
        Width = 188
        Height = 17
        Caption = 'Marca de meno movimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText37: TRLDBText
        Left = 251
        Top = 204
        Width = 141
        Height = 15
        DataField = 'TMPMarcaMenosPassou'
        DataSource = DSTMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText38: TRLDBText
        Left = 165
        Top = 73
        Width = 106
        Height = 15
        DataField = 'TMPNumPesagens'
        DataSource = DSTMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel35: TRLLabel
        Left = 27
        Top = 235
        Width = 198
        Height = 17
        Caption = 'Modelo de maior movimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText39: TRLDBText
        Left = 252
        Top = 236
        Width = 138
        Height = 15
        DataField = 'TMPModeloMaisPassou'
        DataSource = DSTMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel36: TRLLabel
        Left = 27
        Top = 251
        Width = 203
        Height = 17
        Caption = 'Modelo de menor movimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText40: TRLDBText
        Left = 252
        Top = 252
        Width = 149
        Height = 15
        DataField = 'TMPModeloMenosPassou'
        DataSource = DSTMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 27
        Top = 34
        Width = 75
        Height = 17
        Caption = 'Data Final:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText26: TRLDBText
        Left = 163
        Top = 36
        Width = 72
        Height = 15
        DataField = 'TMPDataFin'
        DataSource = DSTMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 27
        Top = 154
        Width = 106
        Height = 17
        Caption = 'Peso Excedido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText17: TRLDBText
        Left = 165
        Top = 153
        Width = 73
        Height = 15
        DataField = 'TMPExcesso'
        DataSource = DSTMP
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 553
      Width = 718
      Height = 57
      BandType = btFooter
      object RLDBText5: TRLDBText
        Left = 189
        Top = 3
        Width = 524
        Height = 19
        AutoSize = False
        DataField = 'RECNOME'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBImage4: TRLDBImage
        Left = 8
        Top = 2
        Width = 178
        Height = 52
        DataField = 'RECLOGO'
        DataSource = DM.DSRechCenter
        Stretch = True
      end
      object RLDBText16: TRLDBText
        Left = 190
        Top = 23
        Width = 283
        Height = 15
        AutoSize = False
        DataField = 'recENDERECO'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText56: TRLDBText
        Left = 475
        Top = 23
        Width = 238
        Height = 15
        AutoSize = False
        DataField = 'RECBAIRRO'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText57: TRLDBText
        Left = 190
        Top = 39
        Width = 149
        Height = 15
        AutoSize = False
        DataField = 'RECCIDADE'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText58: TRLDBText
        Left = 340
        Top = 39
        Width = 131
        Height = 15
        AutoSize = False
        DataField = 'RECTELEFONE'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText59: TRLDBText
        Left = 474
        Top = 39
        Width = 239
        Height = 15
        AutoSize = False
        DataField = 'RECEMAIL'
        DataSource = DM.DSRechCenter
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object CDSTMP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 112
    Top = 96
  end
  object DSTMP: TDataSource
    DataSet = CDSTMP
    Left = 111
    Top = 129
  end
end
