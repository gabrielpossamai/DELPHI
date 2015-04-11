unit ufrmCadOrgaoEmissor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, FMTBcd, SqlExpr, Provider, DataSetProviderUrb,
  Menus, DB, DataSourceUrb, DBClient, ClientDataSetUrb, ImgList, DBClientActns,
  DBActns, ActnList, Buttons, ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls,
  StdCtrls, Mask, DBCtrls;

type
  TfrmCadOrgaoEmissor = class(TfrmManutencaoBD)
    cdsManuBDID_Orgao_Emissor: TIntegerField;
    cdsManuBDDescricao: TStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadOrgaoEmissor: TfrmCadOrgaoEmissor;

implementation

uses uVariaveisSQL_Gestao;

{$R *.dfm}

procedure TfrmCadOrgaoEmissor.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'orgao_emissor';
  sCampoIDNome := 'ID_Orgao_Emissor';
  //
  cdsManuBD.CommandText := sOrgao_EmissorSelect;
  //
  inherited;

end;

end.
