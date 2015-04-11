unit ufrmCadEleitoresClassificacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  TfrmCadEleitoresClassificacao = class(TfrmManutencaoBD)
    cdsManuBDID_Classificacao: TIntegerField;
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
  frmCadEleitoresClassificacao: TfrmCadEleitoresClassificacao;

implementation

{$R *.dfm}

procedure TfrmCadEleitoresClassificacao.FormCreate(Sender: TObject);
begin
  inherited;
  sTabelaNome  := 'ELEITORCLASSIFICACAO';
  sCampoIDNome := 'ID_Classificacao';
end;

end.
