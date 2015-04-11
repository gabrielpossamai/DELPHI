unit ufrmCadTipoTel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, DB, DataSourceUrb, DBClient, ClientDataSetUrb,
  Provider, DataSetProviderUrb, DBTables, QueryUrb, ImgList, DBActns,
  ActnList, Grids, DBGrids, DBGridUrb, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, FMTBcd, SqlExpr;

type
  TfrmCadTipoTel = class(TfrmManutencaoBD)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    cdsManuBDTTECODIGO: TIntegerField;
    cdsManuBDTTEDESCRICAO: TStringField;
    procedure cdsManuBDNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTipoTel: TfrmCadTipoTel;

implementation

{$R *.dfm}

procedure TfrmCadTipoTel.cdsManuBDNewRecord(DataSet: TDataSet);
begin
  inherited;
 cdsManuBDTTECODIGO.Value := 0;
end;

end.
