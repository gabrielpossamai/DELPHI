unit ufrmCadCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, DB, DataSourceUrb, DBClient, ClientDataSetUrb,
  Provider, DataSetProviderUrb, DBTables, QueryUrb, ImgList, DBActns,
  ActnList, Grids, DBGrids, DBGridUrb, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, Buttons, FMTBcd, SqlExpr, ExtCtrls, DBClientActns, Menus;

type
  TfrmCadCliente = class(TfrmManutencaoBD)
    cdsSexo: TClientDataSetUrb;
    dtsSexo: TDataSourceUrb;
    cdsManuBDDescSexo: TStringField;
    lblNome: TLabel;
    txtNome: TDBEdit;
    lblObs: TLabel;
    lblSexo: TLabel;
    dblSexo: TDBLookupComboBox;
    lblDataNasc: TLabel;
    txtDataNasc: TDBEdit;
    memObs: TDBMemo;
    cdsManuBDID_Cliente: TIntegerField;
    cdsManuBDID_Pessoa: TIntegerField;
    cdsManuBDNome: TStringField;
    cdsManuBDDataNasc: TSQLTimeStampField;
    cdsManuBDID_Sexo: TIntegerField;
    cdsManuBDObs: TBlobField;
    cdsSexoID_Sexo: TIntegerField;
    cdsSexoDescricao: TStringField;
    sqlSexo: TSQLDataSet;
    dspSexo: TDataSetProviderUrb;
    procedure FormCreate(Sender: TObject);
    procedure cdsManuBDBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

procedure TfrmCadCliente.FormCreate(Sender: TObject);
begin
  sCampoIDNome := 'ID_Cliente';
  sTabelaNome  := 'cliente';
  //
  cdsSexo.Active := False;
  sqlSexo.CommandText := ' select ID_Sexo, Descricao from sexo order by Descricao ';
  cdsSexo.Active := True;
  //
  sqlManuBD.CommandText := ' select ID_Cliente, ID_Pessoa, Nome, DataNasc, ID_Sexo, Obs from cliente ';
  //
  inherited;
end;

procedure TfrmCadCliente.cdsManuBDBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsManuBDID_Pessoa.Value := cdsManuBDID_Cliente.Value;
end;

end.
