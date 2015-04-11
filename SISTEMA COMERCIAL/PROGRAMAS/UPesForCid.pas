unit UPesForCid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPesCliCid, StdCtrls, ExtCtrls;

type
  TFrmPesForCid = class(TFrmPesCliCid)
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesForCid: TFrmPesForCid;

implementation

uses UCadFornecedor;

{$R *.dfm}

procedure TFrmPesForCid.Button1Click(Sender: TObject);
begin
With FrmCadFornecedor.QueryFornecedores do
Begin
     Close; // fecha a query	
     Parameters[0].Value := EdtCidade.Text; //define parâmetro de pesquisa
     Open; //abre a query e executa os comandos SQL
End;
FrmPesForCid.Close;

end;

end.
