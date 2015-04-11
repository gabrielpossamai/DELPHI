unit uCaixa;

interface

type
  TCaixa = class
  private
    fEntradas : Double;
    fSaidas   : Double;
    fSaldo    : Double;
  public
    procedure GetSaldoAtual(Dataini, Datafim : String);

    property Entradas: Double read fEntradas write fEntradas;
    property Saidas: Double read fSaidas write fSaidas;
    property Saldo: Double read fSaldo write fSaldo;
  end;

implementation

{ TCaixa }

uses uSQL, System.SysUtils;

procedure TCaixa.GetSaldoAtual(Dataini, Datafim: String);
var
  sDataIni, sDataFim : String;
begin
  sDataIni := Dataini;
  sDataFim := Datafim;

  if (sDataIni = '') and (sDataFim = '') then
  begin
    sDataIni := FormatDateTime('yyyy/MM/dd', now);
    sDataFim := FormatDateTime('yyyy/MM/dd', now);
  end;
  
  with TSql.Create(nil) do
  try
    //Entradas
    sql.Add('select sum(valor) from caixa where tipo = ''C''');
    sql.Add(' and dt_cadastro between :dataini and :datafim');
    Params[0].AsString := sDataIni;
    Params[1].AsString := sDataFim;
    Open;
    fEntradas := Fields[0].AsCurrency;

    Close;
    sql.Clear;
    //Saidas
    sql.Add('select sum(valor) from caixa where tipo = ''D''');
    sql.Add(' and dt_cadastro between :dataini and :datafim');
    Params[0].AsString := sDataIni;
    Params[1].AsString := sDataFim;
    Open;
    fSaidas := Fields[0].AsCurrency;

    fSaldo := fEntradas - fSaidas;
  finally
    Close;
    Free;
  end;
end;

end.
