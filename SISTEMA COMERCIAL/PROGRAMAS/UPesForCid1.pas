unit UPesForCid1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPesCliCid, StdCtrls, ExtCtrls;

type
  TFrmPesForCid1 = class(TFrmPesCliCid)
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesForCid1: TFrmPesForCid1;

implementation

uses UMenuPrin;

{$R *.dfm}

procedure TFrmPesForCid1.Button1Click(Sender: TObject);
begin
With FrmMenuPrin.QueryFornecedores do
Begin
     Close; // fecha a query	
     Parameters[0].Value := EdtCidade.Text; //define parâmetro de pesquisa
     Open; //abre a query e executa os comandos SQL
End;
FrmPesForCid1.Close;
end;

end.
