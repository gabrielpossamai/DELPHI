unit ufrmCadAcond;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadAcond = class(TfrmManutencaoBD)
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    cdsManuBDDescricao: TStringField;
    cdsManuBDID_Acondicionamento: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAcond: TfrmCadAcond;

implementation

{$R *.dfm}

procedure TfrmCadAcond.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'acondicionamento';
  sCampoIDNome := 'ID_Acondicionamento';
  //
  sqlManuBD.CommandText := ' select ID_Acondicionamento, Descricao from acondicionamento order by Descricao ';
  //
  inherited;
end;

end.
