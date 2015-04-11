unit ufrmCadPessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, DBCtrls, Mask,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadPessoa = class(TfrmManutencaoBD)
    cdsManuBDID_Pessoa: TIntegerField;
    cdsManuBDID_Tipo: TIntegerField;
    cdsManuBDID_Classificacao: TIntegerField;
    cdsPessoaFisica: TClientDataSetUrb;
    cdsPessoaJuridica: TClientDataSetUrb;
    cdsPessoaJuridicaID_PessoaJuridica: TIntegerField;
    cdsPessoaJuridicaID_Pessoa: TIntegerField;
    cdsPessoaJuridicaRazaoSocial: TStringField;
    pgcPessoas: TPageControl;
    tshDados: TTabSheet;
    tshEndereco: TTabSheet;
    dbgTipo: TDBRadioGroup;
    cdsClassificacao: TClientDataSetUrb;
    cdsManuBDDescCalssificacao: TStringField;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    cdsPessoaFisicaID_PessoaFisica: TIntegerField;
    cdsPessoaFisicaID_Pessoa: TIntegerField;
    cdsPessoaFisicaID_Sexo: TIntegerField;
    cdsPessoaFisicaNomePrimeiro: TStringField;
    cdsPessoaFisicaNomeRestante: TStringField;
    cdsPessoaFisicaApelido: TStringField;
    cdsPessoaFisicaDataNasc: TSQLTimeStampField;
    cdsPessoaFisicaID_Cargo: TIntegerField;
    pnlFisica: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    dtsPessoaFisica: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    cdsCargo: TClientDataSetUrb;
    cdsPessoaFisicaDescCargo: TStringField;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    pnlJuridica: TPanel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    dtsPessoaJuridica: TDataSource;
    cdsManuBDEndereco: TStringField;
    cdsManuBDMunicipio: TStringField;
    cdsManuBDUF: TStringField;
    cdsManuBDTelefone: TStringField;
    cdsManuBDNumLicencaFEEMA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure dbgTipoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsPessoaJuridicaBeforePost(DataSet: TDataSet);
    procedure SalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPessoa: TfrmCadPessoa;

implementation

uses Math, ufrmPrincipal;

{$R *.dfm}

procedure TfrmCadPessoa.FormCreate(Sender: TObject);
begin
  inherited;
  sTabelaNome  := 'pessoa';
  sCampoIDNome := 'ID_Pessoa';

  cdsPessoaFisica.Active   := True;
  cdsPessoaJuridica.Active := True;
end;

procedure TfrmCadPessoa.dbgTipoClick(Sender: TObject);
begin
  inherited;

  if dbgTipo.ItemIndex = 0 then
  begin
    pnlFisica.Visible   := True;
    pnlJuridica.Visible := False;

    cdsPessoaJuridica.Cancel;
    if cdsManuBD.State = dsInsert then
    begin
      cdsPessoaFisica.Insert;
    end
    else if cdsManuBD.State = dsEdit then
    begin
      cdsPessoaFisica.Edit;
    end;

  end
  else if dbgTipo.ItemIndex = 1 then
  begin
    pnlFisica.Visible   := False;
    pnlJuridica.Visible := True;

    cdsPessoaFisica.Cancel;
    if cdsManuBD.State = dsInsert then
    begin
      cdsPessoaJuridica.Insert;
    end
    else if cdsManuBD.State = dsEdit then
    begin
      cdsPessoaJuridica.Edit;
    end;


  end;

end;

procedure TfrmCadPessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsPessoaFisica.Active   := False;
  cdsPessoaJuridica.Active := False;
end;

procedure TfrmCadPessoa.cdsPessoaJuridicaBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsPessoaJuridicaID_Pessoa.AsInteger := cdsManuBDID_Pessoa.AsInteger;

  if DataSet.State = dsInsert then
  begin
    cdsPessoaJuridicaID_PessoaJuridica.AsInteger  := frmPrincipal.SharedConnection.AppServer.RetornaProxReg('PESSOAJURIDICA', 'ID_PessoaJuridica');
  end;

end;

procedure TfrmCadPessoa.SalvarExecute(Sender: TObject);
begin
  inherited;
  cdsPessoaJuridica.ApplyUpdates(0);
end;

end.
