unit ufrmCadUnidadeMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadUnidadeMedida = class(TfrmManutencaoBD)
    cdsManuBDID_UnidadeMedida: TIntegerField;
    cdsManuBDSigla: TStringField;
    cdsManuBDDescricao: TStringField;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    lblSigla: TLabel;
    txtSigla: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUnidadeMedida: TfrmCadUnidadeMedida;

implementation

{$R *.dfm}

procedure TfrmCadUnidadeMedida.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'unidademedida';
  sCampoIDNome := 'ID_UnidadeMedida';
  //
  sqlManuBD.CommandText := ' select ID_UnidadeMedida, Descricao, Sigla from unidademedida order by Sigla ';
  //
  inherited;
end;

end.
