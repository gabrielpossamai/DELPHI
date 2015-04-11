object FmBaixaCheque: TFmBaixaCheque
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Baixa de Cheque'
  ClientHeight = 94
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 95
    Height = 13
    Caption = 'Data de Pagamento'
  end
  object Label2: TLabel
    Left = 200
    Top = 8
    Width = 58
    Height = 13
    Caption = 'Juros Pagos'
  end
  object DbeJurosPagos: TDBEdit
    Left = 200
    Top = 27
    Width = 121
    Height = 21
    DataField = 'JUROSPAGOS'
    DataSource = DmWinBank.DsCheques
    TabOrder = 1
    OnExit = DbeJurosPagosExit
  end
  object BtnCancel: TButton
    Left = 165
    Top = 54
    Width = 75
    Height = 25
    Action = AcCancel
    TabOrder = 2
  end
  object BtnPost: TButton
    Left = 246
    Top = 54
    Width = 75
    Height = 25
    Action = AcPost
    TabOrder = 3
  end
  object DtpDataPag: TDateTimePicker
    Left = 8
    Top = 27
    Width = 186
    Height = 21
    Date = 41947.897222129630000000
    Time = 41947.897222129630000000
    TabOrder = 0
    OnExit = DtpDataPagExit
  end
  object ImageList: TImageList
    Left = 16
    Top = 48
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 64
    Top = 48
    object AcCancel: TAction
      Caption = 'Cancelar'
      OnExecute = AcCancelExecute
    end
    object AcPost: TAction
      Caption = 'Confirmar'
      OnExecute = AcPostExecute
    end
    object AcExit: TAction
      Caption = 'Sair'
    end
  end
  object PopupMenu: TPopupMenu
    Left = 112
    Top = 48
    object Confirmar1: TMenuItem
      Action = AcPost
    end
    object Cancelar1: TMenuItem
      Action = AcCancel
    end
    object Sair1: TMenuItem
      Action = AcExit
    end
  end
end
