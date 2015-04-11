unit ufrmCadSexo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, DB, DataSourceUrb, DBClient, ClientDataSetUrb,
  Provider, DataSetProviderUrb, DBTables, QueryUrb, ImgList, DBActns,
  ActnList, Grids, DBGrids, DBGridUrb, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, FMTBcd, SqlExpr, Menus, DBClientActns, Buttons, ExtCtrls;

type
  TfrmCadSexo = class(TfrmManutencaoBD)
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    cdsManuBDID_Sexo: TIntegerField;
    cdsManuBDDescricao: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadSexo: TfrmCadSexo;

implementation

{$R *.dfm}

procedure TfrmCadSexo.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'sexo';
  sCampoIDNome := 'ID_Sexo';
  //
  cdsManuBD.CommandText := ' select ID_Sexo, Descricao from sexo order by Descricao ';
  //
  inherited;
end;

end.
