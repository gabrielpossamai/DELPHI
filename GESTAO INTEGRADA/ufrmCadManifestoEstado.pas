unit ufrmCadManifestoEstado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadManifestoEstado = class(TfrmManutencaoBD)
    cdsManuBDID_ManifestoEstado: TIntegerField;
    cdsManuBDDescricao: TStringField;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadManifestoEstado: TfrmCadManifestoEstado;

implementation

{$R *.dfm}

procedure TfrmCadManifestoEstado.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'manifestoestado';
  sCampoIDNome := 'ID_ManifestoEstado';
  //
  sqlManuBD.CommandText := ' select ID_ManifestoEstado, Descricao from manifestoestado order by Descricao ';
  //
  inherited;
end;

end.
