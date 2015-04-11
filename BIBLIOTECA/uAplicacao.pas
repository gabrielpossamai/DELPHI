unit uAplicacao;

interface
  uses uInter, uLivro, uGerente, uFuncionario, uAutor, uAluno, uEditora;
    type Aplicacao = class

    private
        umInter : interfaces;
        umLivro : livro;
        umGerente : TGerente;
        umFuncionario : funcionario;
        umAutor : autor;
        umAluno : aluno;
        umaEditora : editora;
    protected

    public
        constructor CrieObj;
        destructor Destrua_se;
        procedure Execute_se;

    end;

implementation

{ Aplicacao }

constructor Aplicacao.CrieObj;
begin
    umInter := interfaces.CrieObj;
    umLivro := livro.CrieObj;
    umGerente := TGerente.Create(nil);
    umFuncionario := funcionario.CrieObj;
    umAutor := autor.Crie_Obj;
    umAluno := aluno.Crie_Obj;
    umaEditora := editora.Crie_Obj;
end;

destructor Aplicacao.Destrua_se;
begin
    umInter.Destrua_se;
    umLivro.Destrua_se;
    umGerente.Free;
    umFuncionario.Destrua_se;
    umAutor.Destrua_se;
    umAluno.Destrua_se;
    umaEditora.Destrua_se;
end;

procedure Aplicacao.Execute_se;
begin
     umGerente.conhecaObj(umInter, umLivro, umAutor, umAluno, umaEditora);
     umGerente.ShowModal;
end;

end.
