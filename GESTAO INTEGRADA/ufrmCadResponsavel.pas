unit ufrmCadResponsavel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, DBCtrls, StdCtrls, Mask,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadResponsavel = class(TfrmManutencaoBD)
    cdsManuBDID_Responsavel: TIntegerField;
    cdsManuBDNome: TStringField;
    cdsManuBDID_Cargo: TIntegerField;
    cdsCargo: TClientDataSetUrb;
    dtsCargo: TDataSourceUrb;
    cdsManuBDDescCargo: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    btnCadCargo: TSpeedButton;
    btnCadTratamento: TSpeedButton;
    cdsManuBDID_Tratamento: TIntegerField;
    cdsTratamento: TClientDataSetUrb;
    dtsTratamento: TDataSourceUrb;
    cdsManuBDDescTratamento: TStringField;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    sqlCargo: TSQLDataSet;
    dspCargo: TDataSetProviderUrb;
    sqlTratamento: TSQLDataSet;
    dspTratamento: TDataSetProviderUrb;
    procedure FormCreate(Sender: TObject);
    procedure btnCadTratamentoClick(Sender: TObject);
    procedure DBLookupComboBox2Enter(Sender: TObject);
    procedure btnCadCargoClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadResponsavel: TfrmCadResponsavel;

implementation

uses ufrmCadTratamento, ufrmCadCargo;

{$R *.dfm}

procedure TfrmCadResponsavel.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'responsavel';
  sCampoIDNome := 'ID_Responsavel';
  //
  cdsCargo.Active := False;
  sqlCargo.CommandText := ' select ID_Cargo, Descricao from cargo order by Descricao ';
  cdsCargo.Active := True;
  //
  cdsTratamento.Active := False;
  sqlTratamento.CommandText := ' select ID_Tratamento, Descricao, Sigla from tratamento order by Descricao ';
  cdsTratamento.Active := True;
  //
  sqlManuBD.CommandText := ' select ID_Responsavel, Nome, ID_Cargo, ID_Tratamento from responsavel order by Nome ';
  //
  inherited;
end;

procedure TfrmCadResponsavel.btnCadTratamentoClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadTratamento, frmCadTratamento);
end;

procedure TfrmCadResponsavel.DBLookupComboBox2Enter(Sender: TObject);
begin
  inherited;
  cdsTratamento.Active := False;
  cdsTratamento.Active := True;
end;

procedure TfrmCadResponsavel.btnCadCargoClick(Sender: TObject);
begin
  inherited;
    Application.CreateForm(TfrmCadCargo, frmCadCargo);
end;

procedure TfrmCadResponsavel.DBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
  cdsCargo.Active := False;
  cdsCargo.Active := True;
end;

end.
