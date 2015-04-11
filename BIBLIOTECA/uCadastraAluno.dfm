inherited CadastraAluno: TCadastraAluno
  Caption = 'Cadastrar Alunos'
  ClientHeight = 310
  ExplicitHeight = 349
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Nome: TLabel [1]
    Left = 24
    Top = 80
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lbl_Idade: TLabel [2]
    Left = 24
    Top = 144
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object lbl_Sexo: TLabel [3]
    Left = 24
    Top = 208
    Width = 24
    Height = 13
    Caption = 'Sexo'
  end
  inherited btn_Salvar: TButton
    Top = 272
    ExplicitTop = 272
  end
  inherited btn_Sair: TButton
    Top = 272
    ExplicitTop = 272
  end
  object edt_nome: TEdit
    Left = 24
    Top = 99
    Width = 249
    Height = 21
    TabOrder = 3
  end
  object edt_Idade: TEdit
    Left = 24
    Top = 163
    Width = 65
    Height = 21
    TabOrder = 4
  end
  object edt_Sexo: TEdit
    Left = 24
    Top = 227
    Width = 65
    Height = 21
    TabOrder = 5
  end
end
