unit ufrmCadNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, FMTBcd, SqlExpr, Provider, DataSetProviderUrb,
  Menus, DB, DataSourceUrb, DBClient, ClientDataSetUrb, ImgList,
  DBClientActns, DBActns, ActnList, Buttons, ComCtrls, Grids, DBGrids,
  DBGridUrb, ExtCtrls;

type
  TfrmCadNotaFiscal = class(TfrmManutencaoBD)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadNotaFiscal: TfrmCadNotaFiscal;

implementation

{$R *.dfm}

procedure TfrmCadNotaFiscal.FormCreate(Sender: TObject);
begin
//  inherited;
//
end;

end.
