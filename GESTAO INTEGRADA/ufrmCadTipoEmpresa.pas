unit ufrmCadTipoEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadTipoEmpresa = class(TfrmManutencaoBD)
    cdsManuBDID_Classificacao: TIntegerField;
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
  frmCadTipoEmpresa: TfrmCadTipoEmpresa;

implementation

{$R *.dfm}

procedure TfrmCadTipoEmpresa.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'classificacao';
  sCampoIDNome := 'ID_Classificacao';
  //
  sqlManuBD.CommandText := ' select ID_Classificacao, Descricao from classificacao order by Descricao ';
  //
  inherited;
end;

end.
