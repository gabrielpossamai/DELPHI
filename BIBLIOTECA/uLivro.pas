unit uLivro;

interface
  type Livro = class
    private

    protected
        codigo : Integer;
        titulo : string[50];
    public
        constructor CrieObj;
        destructor Destrua_se;
        procedure setCodigo(pCodigo:Integer);
        procedure setTitulo(pTitulo:string);
        function getCodigo:Integer;
        function getTitulo:string;
  end;

implementation

{ Livro }

constructor Livro.CrieObj;
begin
    codigo :=0;
    titulo := '';
end;

destructor Livro.Destrua_se;
begin

end;

function Livro.getCodigo: Integer;
begin
     result := codigo;
end;

function Livro.getTitulo: string;
begin
     result := titulo;
end;

procedure Livro.setCodigo(pCodigo: Integer);
begin
    codigo := pCodigo;
end;

procedure Livro.setTitulo(pTitulo: String);
begin
   titulo := pTitulo;
end;

end.
