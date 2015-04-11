unit ufrmCadTratDisp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadTratDisp = class(TfrmManutencaoBD)
    cdsManuBDID_TratDisp: TIntegerField;
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
  frmCadTratDisp: TfrmCadTratDisp;

implementation

{$R *.dfm}

procedure TfrmCadTratDisp.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'tratdisp';
  sCampoIDNome := 'ID_TratDisp';
  //
  sqlManuBD.CommandText := ' select ID_TratDisp, Descricao from tratdisp order by Descricao ';
  //
  inherited;
end;

end.
