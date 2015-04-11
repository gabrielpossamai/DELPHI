unit ufrmCadProcedencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadProcedencia = class(TfrmManutencaoBD)
    cdsManuBDID_Procedencia: TIntegerField;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    cdsManuBDDescricao: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProcedencia: TfrmCadProcedencia;

implementation

{$R *.dfm}

procedure TfrmCadProcedencia.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'procedencia';
  sCampoIDNome := 'ID_Procedencia';
  //
  sqlManuBD.CommandText := ' select ID_Procedencia, Descricao from procedencia order by Descricao ';
  //
  inherited;
end;

end.
