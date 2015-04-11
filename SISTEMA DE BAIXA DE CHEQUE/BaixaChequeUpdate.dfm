object FmBaixaChequeUpdate: TFmBaixaChequeUpdate
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Baixa de Cheque via Update'
  ClientHeight = 86
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
  object BtnCancel: TButton
    Left = 165
    Top = 54
    Width = 75
    Height = 25
    Action = AcCancel
    TabOrder = 1
  end
  object BtnPost: TButton
    Left = 246
    Top = 54
    Width = 75
    Height = 25
    Action = AcPost
    TabOrder = 2
  end
  object EdJurosPagos: TEdit
    Left = 200
    Top = 27
    Width = 121
    Height = 21
    NumbersOnly = True
    TabOrder = 3
    OnExit = DbeJurosPagosExit
  end
  object ActionList: TActionList
    Left = 32
    Top = 40
    object AcCancel: TAction
      Caption = 'Cancelar'
      OnExecute = AcCancelExecute
    end
    object AcPost: TAction
      Caption = 'Confirmar'
      OnExecute = AcPostExecute
    end
  end
  object PopupMenu: TPopupMenu
    Left = 88
    Top = 40
    object Cancelar1: TMenuItem
      Action = AcCancel
    end
    object Confirmar1: TMenuItem
      Action = AcPost
    end
  end
end
