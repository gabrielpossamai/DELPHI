program ProjectoBiblioteca;

uses
  Vcl.Forms,
  uGerente in 'uGerente.pas' {Gerente},
  uConsultaPai in 'uConsultaPai.pas' {ConsultaPai},
  uCadastraPai in 'uCadastraPai.pas' {CadastraPai},
  uConsultaLivro in 'uConsultaLivro.pas' {ConsultaLivro},
  uConsultaAutor in 'uConsultaAutor.pas' {ConsultaAutor},
  uConsultaEditora in 'uConsultaEditora.pas' {ConsultaEditora},
  uConsultaAluno in 'uConsultaAluno.pas' {ConsultaAluno},
  uCadastraAluno in 'uCadastraAluno.pas' {CadastraAluno},
  uCadastraAutor in 'uCadastraAutor.pas' {CadastraAutor},
  uCadastraEditora in 'uCadastraEditora.pas' {CadastraEditora},
  uCadastraLivro in 'uCadastraLivro.pas' {CadastraLivro},
  uAplicacao in 'uAplicacao.pas',
  uPessoa in 'uPessoa.pas';

{$R *.res}

var
  umaAplicacao : Aplicacao;

begin
  umaAplicacao := Aplicacao.CrieObj;
  umaAplicacao.Execute_se;
  umaAplicacao.Destrua_se;
end.

