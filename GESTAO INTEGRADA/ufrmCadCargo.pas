unit ufrmCadCargo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadCargo = class(TfrmManutencaoBD)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    cdsManuBDID_Cargo: TIntegerField;
    cdsManuBDDescricao: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCargo: TfrmCadCargo;

implementation

{$R *.dfm}

procedure TfrmCadCargo.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'cargo';
  sCampoIDNome := 'ID_Cargo';
  //
  sqlManuBD.CommandText := ' select ID_Cargo, Descricao from cargo order by Descricao ';
  //
  inherited;
end;

end.
