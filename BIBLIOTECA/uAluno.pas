unit uAluno;

interface
 uses uPessoa;
  type Aluno = class(pessoa)
    private

    protected

    public
        constructor Crie_Obj;
        destructor Destrua_se;
  end;

implementation

{ Aluno }

constructor Aluno.Crie_Obj;
begin
    inherited;
end;

destructor Aluno.Destrua_se;
begin
    inherited;
end;

end.
