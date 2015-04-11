unit ufrmCadNomeFantasia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadNomeFantasia = class(TfrmManutencaoBD)
    cdsManuBDID_Fantasia: TIntegerField;
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
  frmCadNomeFantasia: TfrmCadNomeFantasia;

implementation

{$R *.dfm}

procedure TfrmCadNomeFantasia.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'fantasia';
  sCampoIDNome := 'ID_Fantasia';
  //
  sqlManuBD.CommandText := ' select ID_Fantasia, Descricao from fantasia order by Descricao ';
  //
  inherited;
end;

end.
