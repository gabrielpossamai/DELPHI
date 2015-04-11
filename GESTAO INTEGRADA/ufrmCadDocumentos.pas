unit ufrmCadDocumentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, DB, DataSourceUrb, DBClient, ClientDataSetUrb,
  Provider, DataSetProviderUrb, DBTables, QueryUrb, ImgList, DBActns,
  ActnList, Grids, DBGrids, DBGridUrb, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, FMTBcd, SqlExpr, ExtCtrls, DBClientActns, Buttons, Menus;

type
  TfrmCadDocumentos = class(TfrmManutencaoBD)
    cdsManuBDTipo: TStringField;
    sqlTipos: TSQLDataSet;
    dspTipos: TDataSetProviderUrb;
    cdsTipos: TClientDataSetUrb;
    cdsManuBDDOCCODIGO: TIntegerField;
    cdsManuBDDOCCLIENTE: TIntegerField;
    cdsManuBDDOCTIPO: TIntegerField;
    cdsManuBDDOCNUMERO: TStringField;
    Label1: TLabel;
    dblCliente: TDBLookupComboBox;
    sqlClientes: TSQLDataSet;
    dspClientes: TDataSetProviderUrb;
    cdsClientes: TClientDataSetUrb;
    cdsClientesCLICODIGO: TIntegerField;
    cdsClientesCLINOME: TStringField;
    dtsClientes: TDataSource;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    cdsManuBDDOCEMISSAO: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure dblClienteClick(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadDocumentos: TfrmCadDocumentos;

implementation

uses ufrmCadCliente, ufrmPrincipal;

{$R *.dfm}

procedure TfrmCadDocumentos.FormCreate(Sender: TObject);
begin
{
  sqlClientes.SQLConnection := frmPrincipal.ConexaoBD;
  cdsClientes.Active        := True;
  dblCliente.KeyValue       := cdsClientesCLICODIGO.AsInteger;
  inherited;
  sCampoIDNome := 'DOCCODIGO';
  sTabelaNome  := 'DOCUMENTOS';
}
end;

procedure TfrmCadDocumentos.dblClienteClick(Sender: TObject);
begin
  inherited;
//  cdsListagem.Refresh;
end;

procedure TfrmCadDocumentos.SalvarExecute(Sender: TObject);
begin
  cdsManuBDDOCCLIENTE.Value := cdsClientesCLICODIGO.AsInteger;
  inherited;
end;

end.
