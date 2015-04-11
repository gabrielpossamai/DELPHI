unit ufrmCadTipoDocumentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, DB, DataSourceUrb, DBClient, ClientDataSetUrb,
  Provider, DataSetProviderUrb, DBTables, QueryUrb, ImgList, DBActns,
  ActnList, Grids, DBGrids, DBGridUrb, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, FMTBcd, SqlExpr, ExtCtrls, DBClientActns, Buttons;

type
  TfrmCadTipoDocumentos = class(TfrmManutencaoBD)
    cdsManuBDTDOCODIGO: TIntegerField;
    cdsManuBDTDODESCRICAO: TStringField;
    cdsListagemTDOCODIGO: TIntegerField;
    cdsListagemTDODESCRICAO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTipoDocumentos: TfrmCadTipoDocumentos;

implementation

{$R *.dfm}

procedure TfrmCadTipoDocumentos.FormCreate(Sender: TObject);
begin
  inherited;
  sCampoIDNome := 'TDOCODIGO';
  sTabelaNome  := 'TIPO_DOC';
end;

end.
