unit uPessoa;

interface
    type Pessoa = class
      private
      protected
          codigo : Integer;
          nome : string[150];
          idade : Integer;
          sexo : char;
      public
          constructor Crie_Obj;
          destructor Destrua_se;
          procedure setCodigo(pCodigo:Integer);
          procedure setNome(pNome:string);
          procedure setIdade(pIdade:Integer);
          procedure setSexo(pSexo:char);
          function getCodigo:Integer;
          function getNome:string;
          function getIdade:Integer;
          function getSexo:char;
    end;

implementation

{ Pessoa }

constructor Pessoa.Crie_Obj;
begin
    codigo := 0;
    nome := '';
    idade := 0;
    sexo := ' ';

end;

destructor Pessoa.Destrua_se;
begin

end;

function Pessoa.getCodigo: Integer;
begin
    result := codigo;
end;

function Pessoa.getIdade: Integer;
begin
    result := idade;
end;

function Pessoa.getNome: string;
begin
    result := nome;
end;

function Pessoa.getSexo: char;
begin
    result := sexo;
end;

procedure Pessoa.setCodigo(pCodigo: Integer);
begin
    codigo := pCodigo;
end;

procedure Pessoa.setIdade(pIdade: Integer);
begin
     idade := pIdade;
end;

procedure Pessoa.setNome(pNome: string);
begin
    nome := pNome;
end;

procedure Pessoa.setSexo(pSexo: char);
begin
    sexo := pSexo;
end;

end.
