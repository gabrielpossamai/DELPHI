unit ufrmCadEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, DBCtrls, StdCtrls, Mask,
  FMTBcd, SqlExpr, Provider, DataSetProviderUrb;

type
  TfrmCadEmpresa = class(TfrmManutencaoBD)
    cdsClassificacao: TClientDataSetUrb;
    dtsClassificacao: TDataSourceUrb;
    lblRazaoSocial: TLabel;
    txtRazaoSocial: TDBEdit;
    btnCadTipo: TSpeedButton;
    gbxRelatorios: TGroupBox;
    chkContaminado: TDBCheckBox;
    chkReciclavel: TDBCheckBox;
    chkSucata: TDBCheckBox;
    rdgResumoGeral: TDBRadioGroup;
    txtObs: TDBMemo;
    lblResponsavel: TLabel;
    txtResponsavel: TDBEdit;
    cdsFantasia: TClientDataSetUrb;
    dtsFantasia: TDataSourceUrb;
    lblNomeFantasia: TLabel;
    sqlClassificacao: TSQLDataSet;
    dspClassificacao: TDataSetProviderUrb;
    sqlFantasia: TSQLDataSet;
    dspFantasia: TDataSetProviderUrb;
    cdsManuBDID_Empresa: TIntegerField;
    cdsManuBDRazaoSocial: TStringField;
    cdsManuBDID_Classificacao: TIntegerField;
    cdsManuBDEndereco: TStringField;
    cdsManuBDUF: TStringField;
    cdsManuBDTelefone: TStringField;
    cdsManuBDNumLicencaFEEMA: TStringField;
    cdsManuBDValorContrato: TFMTBCDField;
    cdsManuBDValorTonelada: TFMTBCDField;
    cdsManuBDFlagRelContaminado: TStringField;
    cdsManuBDFlagRelReciclavel: TStringField;
    cdsManuBDFlagRelSucata: TStringField;
    cdsManuBDTipoResumoGeral: TIntegerField;
    cdsManuBDResponsavel: TStringField;
    cdsManuBDID_Fantasia: TIntegerField;
    adouro: TStringField;
    cdsManuBDCNPJ: TStringField;
    cdsManuBDInscEstado: TStringField;
    cdsManuBDObs: TBlobField;
    sqlManuBDID_Empresa: TIntegerField;
    sqlManuBDRazaoSocial: TStringField;
    sqlManuBDID_Classificacao: TIntegerField;
    sqlManuBDEndereco: TStringField;
    sqlManuBDMunicipio: TStringField;
    sqlManuBDUF: TStringField;
    sqlManuBDTelefone: TStringField;
    sqlManuBDNumLicencaFEEMA: TStringField;
    sqlManuBDValorContrato: TFMTBCDField;
    sqlManuBDValorTonelada: TFMTBCDField;
    sqlManuBDFlagRelContaminado: TStringField;
    sqlManuBDFlagRelReciclavel: TStringField;
    sqlManuBDFlagRelSucata: TStringField;
    sqlManuBDTipoResumoGeral: TIntegerField;
    sqlManuBDResponsavel: TStringField;
    sqlManuBDID_Fantasia: TIntegerField;
    sqlManuBDCEP: TStringField;
    sqlManuBDCNPJ: TStringField;
    sqlManuBDInscEstado: TStringField;
    sqlManuBDObs: TBlobField;
    sqlManuBDEmail: TStringField;
    sqlManuBDInscMunic: TStringField;
    sqlManuBDTelefoneII: TStringField;
    cdsManuBDEmail: TStringField;
    cdsManuBDInscMunic: TStringField;
    cdsManuBDTelefoneII: TStringField;
    cdsManuBDNomeFantasia: TStringField;
    dblNomeFantasia: TDBLookupComboBox;
    cdsManuBDClassificacao: TStringField;
    cdsManuBDMunicipio: TStringField;
    gbxEndereco: TGroupBox;
    lblLogradouro: TLabel;
    txtLogrdouroa: TDBEdit;
    lblCEP: TLabel;
    txtCEP: TDBEdit;
    lblEmail: TLabel;
    txtEmail: TDBEdit;
    lblMunicipio: TLabel;
    txtMunicipio: TDBEdit;
    lblUF: TLabel;
    txtUF: TDBEdit;
    lblTelefone: TLabel;
    lblTelefoneII: TLabel;
    txtTelefoneII: TDBEdit;
    txtTelefome: TDBEdit;
    gbxDadosEmpresa: TGroupBox;
    lblCNPJ: TLabel;
    txtCNPJ: TDBEdit;
    lblInscEstado: TLabel;
    txtInscEstado: TDBEdit;
    lblNumLicencaFEEMA: TLabel;
    txtNumLicencaFEEMA: TDBEdit;
    lblValorContrato: TLabel;
    txtValorContrato: TDBEdit;
    lblInscMunic: TLabel;
    txtInscMunic: TDBEdit;
    lblClassificacao: TLabel;
    dblClassificacao: TDBLookupComboBox;
    lblValorTonelada: TLabel;
    txtValorTonelada: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnCadTipoClick(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEmpresa: TfrmCadEmpresa;

implementation

uses ufrmCadTipoEmpresa;

{$R *.dfm}

procedure TfrmCadEmpresa.FormCreate(Sender: TObject);
begin
  sTabelaNome  := 'empresa';
  sCampoIDNome := 'ID_Empresa';

  // Ativa Dataset Classificação
  cdsClassificacao.Active      := False;
  sqlClassificacao.CommandText := ' select ID_Classificacao, Descricao from classificacao order by Descricao ';
  cdsClassificacao.Active      := True;

  // Ativa Dataset Fantasia
  cdsFantasia.Active      := False;
  sqlFantasia.CommandText := ' select ID_Fantasia, Descricao from fantasia order by Descricao ';
  cdsFantasia.Active      := True;

  // Ativa Dataset Empresas
  sqlManuBD.CommandText := ' select ID_Empresa, RazaoSocial, ID_Classificacao, Endereco, Municipio, UF, ' +
                                  ' Telefone, NumLicencaFEEMA, ValorContrato, ValorTonelada, FlagRelContaminado, ' +
                                  ' FlagRelReciclavel, FlagRelSucata, TipoResumoGeral, Responsavel, ID_Fantasia, ' +
                                  ' CEP, CNPJ, InscEstado, Email, TelefoneII, InscMunic, Obs ' +
                           ' from empresa order by RazaoSocial ';


  //
  inherited;
end;

procedure TfrmCadEmpresa.btnCadTipoClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadTipoEmpresa, frmCadTipoEmpresa);
end;

procedure TfrmCadEmpresa.DBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
  cdsClassificacao.Active := False;
  cdsClassificacao.Active := True;
end;

end.
