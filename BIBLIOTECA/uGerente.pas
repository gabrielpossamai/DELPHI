unit uGerente;

interface

uses
{Dados Velhos
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
    uInter, uLivro, uFuncionario, uAutor, uAluno, uEditora;
}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
    uInter, uLivro, uFuncionario, uAutor, uAluno, uEditora,
  Menus, Classes;



type
  TGerente = class(TForm)
    MainMenuGerente: TMainMenu;
    Cadastro1: TMenuItem;
    Autor: TMenuItem;
    Livro: TMenuItem;
    Editora: TMenuItem;
    N1: TMenuItem;
    Sair: TMenuItem;
    Aluno: TMenuItem;
    procedure SairClick(Sender: TObject);
    procedure LivroClick(Sender: TObject);
    procedure AutorClick(Sender: TObject);
    procedure EditoraClick(Sender: TObject);
    procedure AlunoClick(Sender: TObject);
  private
    { Private declarations }
  protected
      umInter : interfaces;
      umLivro : livro;
      umAutor : autor;
      umAluno : aluno;
      umaEditora : editora;
  public
    { Public declarations }
    procedure conhecaObj(pInter : interfaces; pLivro : livro; pAutor : autor; pAluno : aluno; pEditora : editora);
  end;

var
  Gerente: TGerente;

implementation

{$R *.dfm}

procedure TGerente.conhecaObj(pInter: interfaces; pLivro: livro; pAutor:autor; pAluno:aluno; pEditora:editora);
begin
    umInter := pInter;
    umLivro := pLivro;
    umAutor := pAutor;
    umAluno := pAluno;
    umaEditora := pEditora;
end;

procedure TGerente.EditoraClick(Sender: TObject);
begin
    umInter.MostraConsultaEditora(umaEditora);
end;

procedure TGerente.LivroClick(Sender: TObject);
begin
    umInter.MostraConsultaLivros(umLivro);
end;

procedure TGerente.AlunoClick(Sender: TObject);
begin
    umInter.MostraConsultaAluno(umAluno);
end;

procedure TGerente.AutorClick(Sender: TObject);
begin
    umInter.MostraConsultaAutor(umAutor);
end;

procedure TGerente.SairClick(Sender: TObject);
begin
    close;
end;

end.
