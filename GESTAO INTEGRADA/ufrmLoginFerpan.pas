unit ufrmLoginFerpan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmLogin, FMTBcd, Provider, DataSetProviderUrb, SqlExpr, DB,
  DBClient, ClientDataSetUrb, ExtCtrls, uVariaveisGlobais, StdCtrls,
  ComCtrls;

type
  TfrmLoginFerpan = class(TfrmLogin)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoginFerpan: TfrmLoginFerpan;

implementation

uses ufrmPrincipal;

{$R *.dfm}

end.
