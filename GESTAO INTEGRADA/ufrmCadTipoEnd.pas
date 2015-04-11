unit ufrmCadTipoEnd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, DB, DataSourceUrb, DBClient, ClientDataSetUrb,
  Provider, DataSetProviderUrb, DBTables, QueryUrb, ImgList, DBActns,
  ActnList, Grids, DBGrids, DBGridUrb, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, FMTBcd, SqlExpr;

type
  TfrmCadTipoEnd = class(TfrmManutencaoBD)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    cdsManuBDTENCODIGO: TIntegerField;
    cdsManuBDTENDESCRICAO: TStringField;
    procedure cdsManuBDNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTipoEnd: TfrmCadTipoEnd;

implementation

{$R *.dfm}

procedure TfrmCadTipoEnd.cdsManuBDNewRecord(DataSet: TDataSet);
begin
  inherited;
 cdsManuBDTENCODIGO.Value := 0;
end;

end.
