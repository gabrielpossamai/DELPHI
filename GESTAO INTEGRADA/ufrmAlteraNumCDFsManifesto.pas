unit ufrmAlteraNumCDFsManifesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, Buttons, StdCtrls, DB, DataSourceUrb,
  DBClient, ClientDataSetUrb, Grids, DBGrids, DBGridUrb, Provider, Mask,
  DBCtrls, ExtCtrls, FMTBcd, SqlExpr;

type
  TfrmAlteraNumCDFsManifesto = class(TfrmModeloMDIChild)
    lblNumManifesto: TLabel;
    txtNumManifesto: TEdit;
    btnVisializar: TSpeedButton;
    cdsManifesto: TClientDataSetUrb;
    cdsManifestoNumero: TStringField;
    dtsManifesto: TDataSourceUrb;
    dspManifesto: TDataSetProvider;
    cdsManifestoGerDtEntrega: TSQLTimeStampField;
    cdsManifestoQuantidade: TFMTBCDField;
    cdsManifestoCDF: TStringField;
    txtNumCDF: TDBEdit;
    lblDtEntrega: TLabel;
    txtDtEntrega: TDBEdit;
    lblQuantidade: TLabel;
    txtQuantidade: TDBEdit;
    rdgTipoCDF: TRadioGroup;
    dspNomeFantasia: TDataSetProvider;
    cdsNomeFantasia: TClientDataSetUrb;
    dtsNomeFantasia: TDataSourceUrb;
    dblLaudo: TDBLookupComboBox;
    cdsNomeFantasiaID_Fantasia: TIntegerField;
    cdsNomeFantasiaDescricao: TStringField;
    sqlManifesto: TSQLDataSet;
    sqlNomeFantasia: TSQLDataSet;
    procedure txtNumManifestoExit(Sender: TObject);
    procedure btnVisializarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rdgTipoCDFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlteraNumCDFsManifesto: TfrmAlteraNumCDFsManifesto;

implementation

uses ufrmPrincipal, Math;

{$R *.dfm}

procedure TfrmAlteraNumCDFsManifesto.txtNumManifestoExit(Sender: TObject);
begin
  inherited;
  //
  cdsManifesto.Active      := False;
  sqlManifesto.CommandText := 'select GerDtEntrega, Numero, Quantidade, CDF from manifesto where (Numero = ' + '''' + txtNumManifesto.Text + '''' + ')';
  cdsManifesto.Active      := True;
  //
  if cdsManifesto.RecordCount <= 0 then
  begin
    ShowMessage('Manifesto não encontrado ! Verificque se o nº foi digitado corretamente !');
    txtNumManifesto.SetFocus;
  end;

end;

procedure TfrmAlteraNumCDFsManifesto.btnVisializarClick(Sender: TObject);
begin
  inherited;

  if rdgTipoCDF.ItemIndex = 1 then
  begin
    cdsManifesto.Edit;
    cdsManifestoCDF.Value := 'LAUDO' + cdsNomeFantasiaID_Fantasia.AsString;
    cdsManifesto.Post;
  end;

  cdsManifesto.ApplyUpdates(-1);
  cdsManifesto.Active := False;
  ShowMessage('Atualização feita com sucessso !');
  txtNumManifesto.SetFocus;
end;

procedure TfrmAlteraNumCDFsManifesto.FormCreate(Sender: TObject);
begin
  inherited;
  cdsNomeFantasia.Active := False;
  sqlNomeFantasia.CommandText := 'SELECT f.ID_Fantasia, f.Descricao FROM fantasia f ORDER BY 2';
  cdsNomeFantasia.Active := True;
end;

procedure TfrmAlteraNumCDFsManifesto.rdgTipoCDFClick(Sender: TObject);
begin
  inherited;


  if rdgTipoCDF.ItemIndex = 0 then
  begin
    dblLaudo.Color    := cl3DLight;
    dblLaudo.Enabled  := False;

    txtNumCDF.Color   := clWindow;
    txtNumCDF.Enabled := True;
  end
  else if rdgTipoCDF.ItemIndex = 1 then
  begin
    dblLaudo.Color   := clWindow;
    dblLaudo.Enabled := True;

    txtNumCDF.Color   := cl3DLight;
    txtNumCDF.Enabled := False;
  end;


end;

end.
