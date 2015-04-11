unit ufrmCadOrigem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, StdCtrls, Mask, DBCtrls, DB, Menus,
  DataSourceUrb, DBClient, ClientDataSetUrb, ImgList, DBClientActns,
  DBActns, ActnList, Buttons, ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadOrigem = class(TfrmManutencaoBD)
    cdsManuBDID_Origem: TIntegerField;
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
  frmCadOrigem: TfrmCadOrigem;

implementation

{$R *.dfm}

procedure TfrmCadOrigem.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'origem';
  sCampoIDNome := 'ID_Origem';
  //
  sqlManuBD.CommandText := ' select ID_Origem, Descricao from origem order by Descricao ';
  //
  inherited;
end;

end.
