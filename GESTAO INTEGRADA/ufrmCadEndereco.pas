unit ufrmCadEndereco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, DB, DataSourceUrb, DBClient, ClientDataSetUrb,
  Provider, DataSetProviderUrb, DBTables, QueryUrb, ImgList, DBActns,
  ActnList, Grids, DBGrids, DBGridUrb, ComCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, FMTBcd, SqlExpr, ExtCtrls, DBClientActns, Buttons, Menus;

type
  TfrmCadEndereco = class(TfrmManutencaoBD)
    cdsManuBDTipoEnd: TStringField;
    cdsTipoEnd: TClientDataSetUrb;
    cdsTipoLog: TClientDataSetUrb;
    cdsManuBDTipoLog: TStringField;
    cdsCliente: TClientDataSetUrb;
    dblCliente: TDBLookupComboBox;
    Label1: TLabel;
    dtsCliente: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    cdsClienteID_Cliente: TIntegerField;
    cdsClienteNome: TStringField;
    cdsManuBDID_Endereco: TIntegerField;
    cdsManuBDID_Pessoa: TIntegerField;
    cdsManuBDID_End_Tipo: TIntegerField;
    cdsManuBDID_Tipo_Logra: TIntegerField;
    cdsManuBDLogradouro: TStringField;
    cdsManuBDNumero: TIntegerField;
    cdsManuBDComplemento: TStringField;
    cdsManuBDCep: TStringField;
    cdsManuBDBairro: TStringField;
    cdsManuBDCidade: TStringField;
    cdsManuBDUF: TStringField;
    cdsManuBDPais: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEndereco: TfrmCadEndereco;

implementation

uses ufrmCadCliente, ufrmPrincipal;

{$R *.dfm}

procedure TfrmCadEndereco.FormCreate(Sender: TObject);
begin
  inherited;
  sTabelaNome  := 'endereco';
  sCampoIDNome := 'ID_Endereco';

  cdsCliente.Active := True;
end;

procedure TfrmCadEndereco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsCliente.Active := False;
end;

end.
