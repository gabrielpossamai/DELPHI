unit uEditora;

interface
  type Editora = class
    private
    protected
        codigo : Integer;
        nome : string[150];
    public
        constructor Crie_Obj;
        destructor Destrua_se;
        procedure setCodigo(pCodigo:Integer);
        procedure setNome(pNome:string);
        function getCodigo:Integer;
        function getNome:string;
  end;

implementation

{ Editora }

constructor Editora.Crie_Obj;
begin
   codigo := 0;
   nome := '';
end;

destructor Editora.Destrua_se;
begin

end;

function Editora.getCodigo: Integer;
begin
   result := codigo;
end;

function Editora.getNome: string;
begin
   result := nome;
end;

procedure Editora.setCodigo(pCodigo: Integer);
begin
   codigo := pCodigo;
end;

procedure Editora.setNome(pNome: string);
begin
    nome := pNome;
end;

end.
