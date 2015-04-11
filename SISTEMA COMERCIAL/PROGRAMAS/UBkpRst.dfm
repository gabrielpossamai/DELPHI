object FrmBkpRst: TFrmBkpRst
  Left = 355
  Top = 148
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'FrmBkpRst'
  ClientHeight = 412
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object sbFechar: TSpeedButton
    Left = 328
    Top = 368
    Width = 89
    Height = 33
    Caption = '&Sair'
    OnClick = sbFecharClick
  end
  object sbConfirma: TSpeedButton
    Left = 208
    Top = 368
    Width = 113
    Height = 33
    Caption = '&Confirma'
    OnClick = sbConfirmaClick
  end
  object RadioGroup2: TRadioGroup
    Left = 16
    Top = 112
    Width = 402
    Height = 246
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DriveComboBox1: TDriveComboBox
    Left = 24
    Top = 136
    Width = 385
    Height = 22
    DirList = DirectoryListBox1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Animate1: TAnimate
    Left = 24
    Top = 160
    Width = 385
    Height = 193
    CommonAVI = aviCopyFile
    StopFrame = 1
    Visible = False
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 24
    Top = 160
    Width = 385
    Height = 193
    ItemHeight = 16
    TabOrder = 3
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 16
    Width = 402
    Height = 89
    Caption = 'Selecione a op'#231#227'o desejada:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'C'#243'pia'
      'Restaura'#231#227'o')
    ParentFont = False
    TabOrder = 0
  end
end
