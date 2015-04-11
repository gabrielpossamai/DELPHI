unit ufrmCadTitRelat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, DBCtrls, Mask,
  Provider, DataSetProviderUrb, FMTBcd, SqlExpr;

type
  TfrmCadTitRelat = class(TfrmManutencaoBD)
    cdsManuBDID_TitRelat: TIntegerField;
    cdsManuBDDescricao: TStringField;
    cdsManuBDTipo: TIntegerField;
    lblDescricao: TLabel;
    txtDescricao: TDBEdit;
    rdgTipo: TDBRadioGroup;
    cdsManuBDTipoDescricao: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsManuBDCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTitRelat: TfrmCadTitRelat;

implementation

{$R *.dfm}

procedure TfrmCadTitRelat.cdsManuBDCalcFields(DataSet: TDataSet);
begin
  inherited;

  if cdsManuBDTipo.AsInteger = 1 then
  begin
    cdsManuBDTipoDescricao.AsString := 'Mensal';
  end
  else
  begin
    cdsManuBDTipoDescricao.AsString := 'Geral';
  end;

end;

procedure TfrmCadTitRelat.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'titrelat';
  sCampoIDNome := 'ID_TitRelat';
  //
  sqlManuBD.CommandText := ' SELECT ID_TitRelat, '     +
                           '        Descricao, '       +
                           '        Tipo '             +
                           ' FROM   titrelat '         +
                           ' WHERE  Tipo LIKE :sTipo ' +
                           ' ORDER BY Descricao ';
  //
  cdsManuBD.Params.ParamByName('sTipo').AsString := '%';
  //
  inherited;
end;

end.
