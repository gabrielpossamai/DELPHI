unit uInter;

interface
  uses uConsultaLivro, uCadastraLivro, uLivro, uCadastraFuncionario,
        uConsultaFuncionario, uFuncionario, uAutor, uConsultaAutor, uCadastraAutor,
         uConsultaAluno, uCadastraAluno, uAluno, uConsultaEditora, uCadastraEditora,
          uEditora;
    type interfaces = class

    private

    protected
        umConsultaLivros : TConsultaLivro;
        umCadastraLivros :  TCadastraLivro;

        umConsultaAutor : TConsultaAutor;
        umCadastraAutor : TCadastraAutor;

        umConsultaAluno : TConsultaAluno;
        umCadastraAluno : TCadastraAluno;

        umConsultaEditora : TConsultaEditora;
        umCadastraEditora : TCadastraEditora;

    public
        constructor CrieObj;
        destructor Destrua_se;
        procedure MostraConsultaLivros(pLivro : livro);
        procedure MostraConsultaAutor(pAutor : autor);
        procedure MostraConsultaAluno(pAluno : aluno);
        procedure MostraConsultaEditora(pEditora : editora);
    end;

implementation

{ interfaces }

constructor interfaces.CrieObj;
begin

    { Consulta e Cadastra Livro }
    umConsultaLivros := TConsultaLivro.create(nil);
    umCadastraLivros := TCadastraLivro.Create(nil);
    umConsultaLivros.setCadastro(umCadastraLivros);

    { Consulta e Cadastra Autor }
    umConsultaAutor := TConsultaAutor.Create(nil);
    umCadastraAutor := TCadastraAutor.Create(nil);
    umConsultaAutor.setCadastro(umCadastraAutor);

    { Consulta e Cadastra Aluno }
    umConsultaAluno := TConsultaAluno.Create(nil);
    umCadastraAluno := TCadastraAluno.Create(nil);
    umConsultaAluno.setCadastro(umCadastraAluno);

    { Consulta e Cadastra Editora }
    umConsultaEditora := TConsultaEditora.Create(nil);
    umCadastraEditora := TCadastraEditora.Create(nil);
    umConsultaEditora.setCadastro(umCadastraEditora);
end;

destructor interfaces.Destrua_se;
begin
    { Cadastra e Consulta Livro}
    umCadastraLivros.Free;
    umConsultaLivros.Free;

    { Cadastra e Consulta Autor }
    umCadastraAutor.Free;
    umConsultaAutor.Free;

    { Cadastra e Consulta Aluno }
    umCadastraAluno.Free;
    umConsultaAluno.Free;

    { Cadastra e Consulta Aluno }
    umCadastraEditora.Free;
    umConsultaEditora.Free;
end;

procedure interfaces.MostraConsultaLivros(pLivro : livro);
begin
    umConsultaLivros.ShowModal;
end;

procedure interfaces.MostraConsultaAluno(pAluno: aluno);
begin
    umConsultaAluno.ShowModal;
end;

procedure interfaces.MostraConsultaAutor(pAutor: autor);
begin
    umConsultaAutor.ShowModal;
end;

procedure interfaces.MostraConsultaEditora(pEditora: editora);
begin
    umConsultaEditora.ShowModal;
end;

end.
