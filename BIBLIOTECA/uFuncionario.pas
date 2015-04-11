unit uFuncionario;

interface
  type Funcionario = class

    private
    protected
        codigo : Integer;
        nome : string[150];
    public
        constructor CrieObj;
        destructor Destrua_se;
        procedure setCodigo(pCodigo : integer);
        procedure setNome(pNome : string);
        function getCodigo:integer;
        function getNome:string;

  end;

implementation

{ Funcionario }

constructor Funcionario.CrieObj;
begin
   codigo := 0;
   nome := '';
end;

destructor Funcionario.Destrua_se;
begin

end;

function Funcionario.getCodigo: integer;
begin
    result := codigo;
end;

function Funcionario.getNome: string;
begin
    result := nome;
end;

procedure Funcionario.setCodigo(pCodigo: integer);
begin
    codigo := pCodigo;
end;

procedure Funcionario.setNome(pNome: string);
begin
    nome := pNome;
end;

end.
