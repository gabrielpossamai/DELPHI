unit uFuncoes;

interface

  uses Vcl.Forms, System.SysUtils, System.Classes, uDmDados,
       Data.DB, Data.SqlExpr, Vcl.DBGrids, Vcl.Grids, System.Types,
  System.Generics.Collections;

  procedure CriarForm(T : TComponentClass ;Form : TForm);
  function  GetId(Campo, Tabela : String) : Integer;
  function  GetLoginCadastrado(Login : String) : Boolean;
  procedure ZebrarDBGrid(DataSource : TDataSource; Sender : TDBGrid; State : TGridDrawState; Rect : TRect; Column : TColumn);
  function  StringParaFloat(s : string) : Extended;
  function  ReveterData(S: String) : String;
  function  GetInformacoesCaixa() : TList<String>;
//  procedure FecharForm(Sender: TObject; var Key: Char);

implementation

function GetInformacoesCaixa() : TList<String>;
var
  Valores : TList<String>;
begin
  Valores := TList<String>.Create;
  try
    Valores.Add('A');
    Valores.Add('B');
    Valores.Add('C');
    result := Valores;
  finally
    FreeAndNil(Valores);
  end;
end;

function ReveterData(S: String) : String;
begin
  result := copy(S,7,4)+'-'+copy(S,4,2)+'-'+copy(S,1,2);
end;

procedure CriarForm(T : TComponentClass ;Form : TForm);
begin
  Application.CreateForm(T,Form);
  try
    Form.ShowModal;
  finally
    FreeAndNil(Form);
  end;
end;

function GetId(Campo, Tabela : String) : Integer;
begin
  with TSQLQuery.Create(nil) do
  try
    SQLConnection := DmDados.SQLConnection;
    Sql.Add('SELECT '+Campo+' FROM '+Tabela+' ORDER BY '+Campo+' DESC LIMIT 1');
    Open;
    Result := Fields[0].AsInteger + 1;
  finally
    Close;
    Free;
  end;
end;

function GetLoginCadastrado(Login : String) : Boolean;
begin
  result := false;
  with TSQLQuery.Create(nil) do
  try
    SQLConnection := DmDados.SQLConnection;
    Sql.Add('SELECT ID FROM USUARIOS WHERE LOGIN = :LOGIN');
    Params[0].AsString := Login;
    Open;
    if not IsEmpty then
      result := true;
  finally
    Close;
    Free;
  end;
end;

procedure ZebrarDBGrid(DataSource : TDataSource; Sender : TDBGrid; State : TGridDrawState; Rect : TRect; Column : TColumn);
begin
  if not odd(DataSource.DataSet.RecNo) then
  begin
    if not (gdSelected in state) then
    begin
      Sender.Canvas.Brush.Color := $00FFEFDF;
      Sender.Canvas.FillRect(Rect);
      Sender.DefaultDrawDataCell(Rect,Column.Field,State);
    end;
  end;
end;

function StringParaFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  numéricas para sua representação decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134}
var
  i :Integer;
  t : string;
  SeenDecimal,SeenSgn : Boolean;
begin
   t := '';
   SeenDecimal := False;
   SeenSgn := False;
   {Percorre os caracteres da string:}
   for i := Length(s) downto 0 do
     {Filtra a string, aceitando somente números e separador decimal:}
     if (s[i] in ['0'..'9', '-','+',',']) then
     begin
        if (s[i] = ',') and (not SeenDecimal) then
        begin
           t := s[i] + t;
           SeenDecimal := True;
        end
        else if (s[i] in ['+','-']) and (not SeenSgn) and (i = 1) then
        begin
           t := s[i] + t;
           SeenSgn := True;
        end
        else if s[i] in ['0'..'9'] then
        begin
           t := s[i] + t;
        end;
     end;
   Result := StrToFloat(t);
end;

end.
