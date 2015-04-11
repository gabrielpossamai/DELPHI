unit ufrmCadTelefones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, DB, DataSourceUrb, DBClient, ClientDataSetUrb,
  Provider, DataSetProviderUrb, DBTables, QueryUrb, ImgList, DBActns,
  ActnList, Grids, DBGrids, DBGridUrb, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, FMTBcd, SqlExpr, ExtCtrls, Menus, DBClientActns, Buttons;

type
  TfrmCadTelefones = class(TfrmManutencaoBD)
    cdsManuBDTipo: TStringField;
    sqlTipos: TSQLDataSet;
    dspTipos: TDataSetProviderUrb;
    cdsTipos: TClientDataSetUrb;
    cdsManuBDTELCODIGO: TIntegerField;
    cdsManuBDTELCLIENTE: TIntegerField;
    cdsManuBDTELTIPO: TIntegerField;
    cdsManuBDTELDDD: TStringField;
    cdsManuBDTELNUMERO: TStringField;
    procedure cdsManuBDNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTelefones: TfrmCadTelefones;

implementation

uses ufrmCadCliente;

{$R *.dfm}

procedure TfrmCadTelefones.cdsManuBDNewRecord(DataSet: TDataSet);
begin
  inherited;
//  cdsManuBDTELCLIENTE.Value := frmCadCliente.cdsManuBDCLICODIGO.Value;
end;

procedure TfrmCadTelefones.FormCreate(Sender: TObject);
begin
  //inherited;
{
  sqlManuBD.Active := False;
  sqlManuBD.ParamByName('iCodCliente').AsInteger := frmCadClientes.cdsManuBDCLICODIGO.AsInteger;
  cdsManuBD.Active := True;

  sCampoIDNome := 'TELCODIGO';
  sTabelaNome  := 'TELEFONES';
}

end;

end.
