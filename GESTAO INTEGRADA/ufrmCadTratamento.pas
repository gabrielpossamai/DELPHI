unit ufrmCadTratamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadTratamento = class(TfrmManutencaoBD)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    cdsManuBDID_Tratamento: TIntegerField;
    cdsManuBDDescricao: TStringField;
    cdsManuBDSigla: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTratamento: TfrmCadTratamento;

implementation

{$R *.dfm}

procedure TfrmCadTratamento.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'tratamento';
  sCampoIDNome := 'ID_Tratamento';
  //
  sqlManuBD.CommandText := ' select ID_Tratamento, Descricao, Sigla from tratamento order by Descricao ';
  //
  inherited;
end;

end.
