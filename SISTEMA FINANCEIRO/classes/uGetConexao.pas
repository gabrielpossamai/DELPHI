unit uGetConexao;

interface

uses
  Data.SqlExpr;

type
  TGetConexao = class
  public
    class function Conexao : TSqlConnection;
  end;

implementation

uses uDmDados;

{ TGetConexao }

class function TGetConexao.Conexao: TSqlConnection;
begin
  result := DmDados.SQLConnection;
end;

end.
