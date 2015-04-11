unit uAutor;

interface
  uses uPessoa;
    type Autor = class(pessoa)
      private

      protected
          
      public
        constructor Crie_Obj;
        destructor Destrua_se;

    end;

implementation

{ Autor }

constructor Autor.Crie_Obj;
begin
    inherited;
end;

destructor Autor.Destrua_se;
begin
    inherited;
end;

end.
