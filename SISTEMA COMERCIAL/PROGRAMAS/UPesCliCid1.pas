unit UPesCliCid1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPesCliCid, StdCtrls, ExtCtrls, Db;

type
  TFrmPesCliCid1 = class(TFrmPesCliCid)
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesCliCid1: TFrmPesCliCid1;

implementation

uses UMenuPrin;

{$R *.dfm}

procedure TFrmPesCliCid1.Button1Click(Sender: TObject);
begin
  With FrmMenuPrin.QueryClientes do
  Begin
     Close; // fecha a query
     Parameters[0].Value := EdtCidade.Text; //define parâmetro de pesquisa
     Open; //abre a query e executa os comandos SQL
  End;
FrmPesCliCid1.Close;
end;

end.
