unit ufrmCadEstadoFisico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadEstadoFisico = class(TfrmManutencaoBD)
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    cdsManuBDID_EstadoFisico: TIntegerField;
    cdsManuBDDescricao: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEstadoFisico: TfrmCadEstadoFisico;

implementation

{$R *.dfm}

procedure TfrmCadEstadoFisico.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'estadofisico';
  sCampoIDNome := 'ID_EstadoFisico';
  //
  sqlManuBD.CommandText := ' select ID_EstadoFisico, Descricao from estadofisico order by Descricao ';
  //
  inherited;
end;

end.
