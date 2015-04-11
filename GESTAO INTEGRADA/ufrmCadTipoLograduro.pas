unit ufrmCadTipoLograduro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, DB, DataSourceUrb, DBClient, ClientDataSetUrb,
  Provider, DataSetProviderUrb, DBTables, QueryUrb, ImgList, DBActns,
  ActnList, Grids, DBGrids, DBGridUrb, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, FMTBcd, SqlExpr, Menus, DBClientActns, Buttons, ExtCtrls;

type
  TfrmCadTipoLograduro = class(TfrmManutencaoBD)
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    cdsManuBDID_Logra_Tipo: TIntegerField;
    cdsManuBDDescricao: TStringField;
    cdsManuBDSigla: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTipoLograduro: TfrmCadTipoLograduro;

implementation

uses uVariaveisSQL_Gestao;

{$R *.dfm}

procedure TfrmCadTipoLograduro.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'logra_tipo';
  sCampoIDNome := 'ID_Logra_Tipo';
  //
  ////cdsManuBD.CommandText := ' select ID_Tipo, Descricao from logradourotipo order by Descricao ';
  //
  cdsManuBD.CommandText := sLogra_TipoSelect;
  //
  inherited;
end;

end.
