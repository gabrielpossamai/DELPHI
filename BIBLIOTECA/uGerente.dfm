object Gerente: TGerente
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Sistema Biblioteca'
  ClientHeight = 438
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenuGerente
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenuGerente: TMainMenu
    Left = 56
    Top = 40
    object Cadastro1: TMenuItem
      Caption = '&Cadastro'
      object Aluno: TMenuItem
        Caption = 'Aluno'
        OnClick = AlunoClick
      end
      object Autor: TMenuItem
        Caption = 'Autor'
        OnClick = AutorClick
      end
      object Livro: TMenuItem
        Caption = 'Livro'
        OnClick = LivroClick
      end
      object Editora: TMenuItem
        Caption = 'Editora'
        OnClick = EditoraClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair: TMenuItem
        Caption = 'Sair'
        OnClick = SairClick
      end
    end
  end
end
