unit ufrmCadManifesto;

interface                         

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFRMMANUTENCAOBD, Menus, DB, DataSourceUrb, DBClient,
  ClientDataSetUrb, ImgList, DBClientActns, DBActns, ActnList, Buttons,
  ComCtrls, Grids, DBGrids, DBGridUrb, ExtCtrls, StdCtrls, Mask, DBCtrls,
  Provider, DataSetProviderUrb, FMTBcd, SqlExpr, RpDefine, RpCon, RpConDS;

type
  TfrmCadManifesto = class(TfrmManutencaoBD)
    pgcManifesto: TPageControl;
    tshResiduo: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    lblNumero: TLabel;
    txtNumero: TDBEdit;
    lblNumCertificado: TLabel;
    txtNumCertificado: TDBEdit;
    lblQtde: TLabel;
    dblQtde: TDBEdit;
    cdsResiduo: TClientDataSetUrb;
    dtsResiduo: TDataSourceUrb;
    cdsEstadoFisico: TClientDataSetUrb;
    dtsEstadoFisico: TDataSourceUrb;
    cdsAcond: TClientDataSetUrb;
    dtsAcond: TDataSourceUrb;
    cdsOrigem: TClientDataSetUrb;
    dtsOrigem: TDataSourceUrb;
    cdsProcedencia: TClientDataSetUrb;
    dtsProcedencia: TDataSourceUrb;
    cdsTratDisp: TClientDataSetUrb;
    dtsTratDisp: TDataSourceUrb;
    cdsUnidadeMedida: TClientDataSetUrb;
    dtsUnidadeMedida: TDataSourceUrb;
    cdsManuBDDescResiduo: TStringField;
    cdsManuBDDescEstadoFisico: TStringField;
    cdsManuBDDescAcond: TStringField;
    cdsManuBDDescOrigem: TStringField;
    cdsManuBDDescProcedencia: TStringField;
    cdsManuBDDescTratDisp: TStringField;
    lblTipo: TLabel;
    dblTipo: TDBLookupComboBox;
    lblEstFisico: TLabel;
    dblEstadoFisico: TDBLookupComboBox;
    lblAcond: TLabel;
    dblAcond: TDBLookupComboBox;
    lblProcedencia: TLabel;
    dblProcedencia: TDBLookupComboBox;
    lblTratDisp: TLabel;
    dblTratDisp: TDBLookupComboBox;
    cdsManuBDDescUnidade: TStringField;
    dblUnidade: TDBLookupComboBox;
    lblUnidade: TLabel;
    lblStatus: TLabel;
    cdsStatus: TClientDataSetUrb;
    dtsStatus: TDataSourceUrb;
    cdsManuBDDescStatus: TStringField;
    dblstatus: TDBLookupComboBox;
    cdsGerEmpresa: TClientDataSetUrb;
    dtsGerEmpresa: TDataSourceUrb;
    cdsTransEmpresa: TClientDataSetUrb;
    dtsTransEmpresa: TDataSourceUrb;
    cdsManuBDDescGerEmpresa: TStringField;
    lblGerEmpresa: TLabel;
    dblGerEmpresa: TDBLookupComboBox;
    lblGerEndereco: TLabel;
    txtGerEndereco: TDBEdit;
    lblGerMunicipio: TLabel;
    txtGerMunicipio: TDBEdit;
    txtGerUF: TDBEdit;
    lblGerTelefone: TLabel;
    txtGerTelefone: TDBEdit;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    lblGerDtEntrega: TLabel;
    txtGerDtEntrega: TDBEdit;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    cdsGerResponsavel: TClientDataSetUrb;
    dtsGerResponsavel: TDataSourceUrb;
    cdsManuBDDescGerResponsavel: TStringField;
    Label20: TLabel;
    cdsGerCargo: TClientDataSetUrb;
    dtsGerCargo: TDataSourceUrb;
    Label21: TLabel;
    cdsManuBDDescTransEmpresa: TStringField;
    cdsTransResponsavel: TClientDataSetUrb;
    cdsTransCargo: TClientDataSetUrb;
    dtsTransCargo: TDataSourceUrb;
    dtsTransResponsavel: TDataSourceUrb;
    cdsManuBDDescTransResponsavel: TStringField;
    Label29: TLabel;
    DBEdit17: TDBEdit;
    Label32: TLabel;
    DBEdit18: TDBEdit;
    Label33: TLabel;
    DBEdit19: TDBEdit;
    cdsRecepEmpresa: TClientDataSetUrb;
    dtsRecepEmpresa: TDataSourceUrb;
    cdsRecepResponsavel: TClientDataSetUrb;
    dtsRecepResponsavel: TDataSourceUrb;
    cdsRecepCargo: TClientDataSetUrb;
    dtsRecepCargo: TDataSourceUrb;
    cdsManuBDDescRecepEmpresa: TStringField;
    cdsManuBDDescRecepResponsavel: TStringField;
    btnCadTipo: TSpeedButton;
    btnCadEstadoFisico: TSpeedButton;
    btnCadAcond: TSpeedButton;
    btnCadProcedencia: TSpeedButton;
    btnTratDisp: TSpeedButton;
    btnCadStatus: TSpeedButton;
    memObs: TDBMemo;
    btnCadUnidade: TSpeedButton;
    btnCadEmpresa: TSpeedButton;
    txtCargo: TDBEdit;
    Label15: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit27: TDBEdit;
    Label31: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    SpeedButton4: TSpeedButton;
    DBEdit29: TDBEdit;
    gbxPeriodo: TGroupBox;
    Label39: TLabel;
    dblSituacao: TDBLookupComboBox;
    dtpInicial: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    btnPesquisar: TSpeedButton;
    Label43: TLabel;
    Label44: TLabel;
    txtDtChegou: TDBEdit;
    lblDtChegou: TLabel;
    lblDtEnvio: TLabel;
    txtDtEnvio: TDBEdit;
    txtSituacao: TDBEdit;
    lblSituacao: TLabel;
    lblLote: TLabel;
    txtLote: TDBEdit;
    lblObs: TLabel;
    cdsSituacao: TClientDataSetUrb;
    dtsSituacao: TDataSourceUrb;
    cdsSituacaoDesc: TClientDataSetUrb;
    dtsSituacaoDesc: TDataSourceUrb;
    cdsManuBDDescSituacao: TStringField;
    cdsRecepEmpresaID_Empresa: TIntegerField;
    cdsRecepEmpresaRazaoSocial: TStringField;
    cdsRecepEmpresaID_Classificacao: TIntegerField;
    cdsRecepEmpresaEndereco: TStringField;
    cdsRecepEmpresaMunicipio: TStringField;
    cdsRecepEmpresaUF: TStringField;
    cdsRecepEmpresaTelefone1: TStringField;
    cdsRecepEmpresaNumLicencaFEEMA: TStringField;
    cdsRecepEmpresaFlagRelContaminado: TStringField;
    cdsRecepEmpresaFlagRelReciclavel: TStringField;
    cdsRecepEmpresaFlagRelSucata: TStringField;
    cdsRecepEmpresaTipoResumoGeral: TIntegerField;
    cdsRecepResponsavelID_Responsavel: TIntegerField;
    cdsRecepResponsavelNome: TStringField;
    cdsRecepResponsavelID_Cargo: TIntegerField;
    cdsRecepResponsavelID_Tratamento: TIntegerField;
    cdsTransEmpresaID_Empresa: TIntegerField;
    cdsTransEmpresaRazaoSocial: TStringField;
    cdsTransEmpresaID_Classificacao: TIntegerField;
    cdsTransEmpresaEndereco: TStringField;
    cdsTransEmpresaMunicipio: TStringField;
    cdsTransEmpresaUF: TStringField;
    cdsTransEmpresaTelefone1: TStringField;
    cdsTransEmpresaNumLicencaFEEMA: TStringField;
    cdsTransEmpresaFlagRelContaminado: TStringField;
    cdsTransEmpresaFlagRelReciclavel: TStringField;
    cdsTransEmpresaFlagRelSucata: TStringField;
    cdsTransEmpresaTipoResumoGeral: TIntegerField;
    cdsGerResponsavelID_Responsavel: TIntegerField;
    cdsGerResponsavelNome: TStringField;
    cdsGerResponsavelID_Cargo: TIntegerField;
    cdsGerResponsavelID_Tratamento: TIntegerField;
    cdsGerEmpresaID_Empresa: TIntegerField;
    cdsGerEmpresaRazaoSocial: TStringField;
    cdsGerEmpresaID_Classificacao: TIntegerField;
    cdsGerEmpresaEndereco: TStringField;
    cdsGerEmpresaMunicipio: TStringField;
    cdsGerEmpresaUF: TStringField;
    cdsGerEmpresaTelefone1: TStringField;
    cdsGerEmpresaNumLicencaFEEMA: TStringField;
    cdsGerEmpresaFlagRelContaminado: TStringField;
    cdsGerEmpresaFlagRelReciclavel: TStringField;
    cdsGerEmpresaFlagRelSucata: TStringField;
    cdsGerEmpresaTipoResumoGeral: TIntegerField;
    cdsRecepResponsavelDescCargo: TStringField;
    cdsTransResponsavelID_Responsavel: TIntegerField;
    cdsTransResponsavelNome: TStringField;
    cdsTransResponsavelID_Cargo: TIntegerField;
    cdsTransResponsavelID_Tratamento: TIntegerField;
    cdsTransResponsavelDescCargo: TStringField;
    cdsGerResponsavelDescCargo: TStringField;
    cdsManuBDNumCertificado: TIntegerField;
    cdsManuBDQuantidade: TFMTBCDField;
    cdsManuBDID_Unidade: TIntegerField;
    cdsManuBDID_Residuo: TIntegerField;
    cdsManuBDID_EstadoFisico: TIntegerField;
    cdsManuBDID_Acond: TIntegerField;
    cdsManuBDID_Origem: TIntegerField;
    cdsManuBDID_Procedencia: TIntegerField;
    cdsManuBDID_TratDisp: TIntegerField;
    cdsManuBDID_Status: TIntegerField;
    cdsManuBDGerDtEntrega: TSQLTimeStampField;
    cdsManuBDGerID_Empresa: TIntegerField;
    cdsManuBDGerNumInventario: TStringField;
    cdsManuBDGerID_Responsavel: TIntegerField;
    cdsManuBDTransDtReceb: TSQLTimeStampField;
    cdsManuBDTransID_Empresa: TIntegerField;
    cdsManuBDTransID_Responsavel: TIntegerField;
    cdsManuBDTransNomeMotorista: TStringField;
    cdsManuBDTransPlacaVeiculo: TStringField;
    cdsManuBDTransCertificado: TStringField;
    cdsManuBDRecepDtReceb: TSQLTimeStampField;
    cdsManuBDRecepID_Empresa: TIntegerField;
    cdsManuBDRecepNumInventario: TStringField;
    cdsManuBDRecepID_Responsavel: TIntegerField;
    cdsManuBDDtChegou: TSQLTimeStampField;
    cdsManuBDDtEnvio: TSQLTimeStampField;
    cdsManuBDID_Situacao: TIntegerField;
    cdsManuBDID_LoteEnvio: TIntegerField;
    cdsManuBDObs: TBlobField;
    SpeedButton6: TSpeedButton;
    cdsGerEmpresaResponsavel: TStringField;
    txtGerResponsavel: TDBEdit;
    cdsManuBDGerResponsavel: TStringField;
    cdsManuBDTransResponsavel: TStringField;
    cdsManuBDRecepResponsavel: TStringField;
    txtTransResponsavel: TDBEdit;
    cdsTransEmpresaResponsavel: TStringField;
    cdsRecepEmpresaResponsavel: TStringField;
    txtRecepResponsavel: TDBEdit;
    btnGerarNumManif: TSpeedButton;
    cdsGerarNumNegativo: TClientDataSetUrb;
    dtsGerarNumNegativo: TDataSourceUrb;
    cdsManuBDCDF: TStringField;
    lblCDF: TLabel;
    txtCDF: TDBEdit;
    cdsManuBDNumero: TStringField;
    cdsGerarNumNegativovalor: TIntegerField;
    sqlSituacao: TSQLDataSet;
    dspSituacao: TDataSetProviderUrb;
    sqlResiduo: TSQLDataSet;
    dspResiduo: TDataSetProviderUrb;
    sqlEstadoFisico: TSQLDataSet;
    dspEstadoFisico: TDataSetProviderUrb;
    sqlAcond: TSQLDataSet;
    dspAcond: TDataSetProviderUrb;
    sqlOrigem: TSQLDataSet;
    dspOrigem: TDataSetProviderUrb;
    sqlProcedencia: TSQLDataSet;
    dspProcedencia: TDataSetProviderUrb;
    sqlTratDisp: TSQLDataSet;
    dspTratDisp: TDataSetProviderUrb;
    sqlGerEmpresa: TSQLDataSet;
    dspGerEmpresa: TDataSetProviderUrb;
    sqlGerResponsavel: TSQLDataSet;
    dspGerResponsavel: TDataSetProviderUrb;
    sqlGerCargo: TSQLDataSet;
    dspGerCargo: TDataSetProviderUrb;
    sqlTransEmpresa: TSQLDataSet;
    dspTransEmpresa: TDataSetProviderUrb;
    sqlTransResponsavel: TSQLDataSet;
    dspTransResponsavel: TDataSetProviderUrb;
    sqlTransCargo: TSQLDataSet;
    dspTransCargo: TDataSetProviderUrb;
    sqlGerarNumNegativo: TSQLDataSet;
    dspGerarNumNegativo: TDataSetProviderUrb;
    sqlRecepEmpresa: TSQLDataSet;
    dspRecepEmpresa: TDataSetProviderUrb;
    dspRecepResponsavel: TDataSetProviderUrb;
    sqlRecepResponsavel: TSQLDataSet;
    dspRecepCargo: TDataSetProviderUrb;
    sqlRecepCargo: TSQLDataSet;
    dspUnidadeMedida: TDataSetProviderUrb;
    sqlUnidadeMedida: TSQLDataSet;
    dspStatus: TDataSetProviderUrb;
    sqlStatus: TSQLDataSet;
    dspSituacaoDesc: TDataSetProviderUrb;
    sqlSituacaoDesc: TSQLDataSet;
    sqlManuBDNumero: TStringField;
    sqlManuBDGerDtEntrega: TSQLTimeStampField;
    sqlManuBDDescGerEmpresa: TStringField;
    sqlManuBDDescResiduo: TStringField;
    sqlManuBDQuantidade: TFMTBCDField;
    sqlManuBDDescUnidade: TStringField;
    sqlManuBDDescProcedencia: TStringField;
    sqlManuBDDescRecepEmpresa: TStringField;
    sqlManuBDRecepDtReceb: TSQLTimeStampField;
    sqlManuBDDescStatus: TStringField;
    sqlManuBDDtChegou: TSQLTimeStampField;
    sqlManuBDDtEnvio: TSQLTimeStampField;
    sqlManuBDID_LoteEnvio: TIntegerField;
    sqlManuBDRecepID_Empresa: TIntegerField;
    sqlManuBDDescEstadoFisico: TStringField;
    sqlManuBDDescAcond: TStringField;
    sqlManuBDDescOrigem: TStringField;
    sqlManuBDDescTratDisp: TStringField;
    sqlManuBDDescGerResponsavel: TStringField;
    sqlManuBDDescTransEmpresa: TStringField;
    sqlManuBDDescTransResponsavel: TStringField;
    sqlManuBDDescRecepResponsavel: TStringField;
    sqlManuBDDescSituacao: TStringField;
    sqlManuBDNumCertificado: TIntegerField;
    sqlManuBDID_Unidade: TIntegerField;
    sqlManuBDID_Residuo: TIntegerField;
    sqlManuBDID_EstadoFisico: TIntegerField;
    sqlManuBDID_Acond: TIntegerField;
    sqlManuBDID_Origem: TIntegerField;
    sqlManuBDID_Procedencia: TIntegerField;
    sqlManuBDID_TratDisp: TIntegerField;
    sqlManuBDID_Status: TIntegerField;
    sqlManuBDGerID_Empresa: TIntegerField;
    sqlManuBDGerNumInventario: TStringField;
    sqlManuBDGerID_Responsavel: TIntegerField;
    sqlManuBDTransDtReceb: TSQLTimeStampField;
    sqlManuBDTransID_Empresa: TIntegerField;
    sqlManuBDTransID_Responsavel: TIntegerField;
    sqlManuBDTransNomeMotorista: TStringField;
    sqlManuBDTransPlacaVeiculo: TStringField;
    sqlManuBDTransCertificado: TStringField;
    sqlManuBDRecepNumInventario: TStringField;
    sqlManuBDRecepID_Responsavel: TIntegerField;
    sqlManuBDID_Situacao: TIntegerField;
    sqlManuBDObs: TBlobField;
    sqlManuBDGerResponsavel: TStringField;
    sqlManuBDTransResponsavel: TStringField;
    sqlManuBDRecepResponsavel: TStringField;
    sqlManuBDCDF: TStringField;
    cdsGerEmpresaValorContrato: TFMTBCDField;
    cdsGerEmpresaValorTonelada: TFMTBCDField;
    cdsTransEmpresaValorContrato: TFMTBCDField;
    cdsTransEmpresaValorTonelada: TFMTBCDField;
    cdsRecepEmpresaValorContrato: TFMTBCDField;
    cdsRecepEmpresaValorTonelada: TFMTBCDField;
    rdtsCadManifesto: TRvDataSetConnection;
    DocumentosOriginais1: TMenuItem;
    Manifesto1: TMenuItem;
    Certificado1: TMenuItem;
    NotaFiscal1: TMenuItem;
    N1ViaAssinada1: TMenuItem;
    N2ViaAssinada1: TMenuItem;
    AssinadapeloReceptor1: TMenuItem;
    DocumentoinicialFCDS1: TMenuItem;
    sqlManuBDCod_Residuo: TStringField;
    cdsManuBDCod_Residuo: TStringField;
    cdsResiduoID_Residuo: TIntegerField;
    cdsResiduoDescricao: TStringField;
    cdsResiduoFlagContaminado: TStringField;
    cdsResiduoValorMercado: TFMTBCDField;
    cdsResiduoCodigo: TStringField;
    gbxOrigem: TGroupBox;
    dblOrigem: TDBLookupComboBox;
    btnCadOrigem: TSpeedButton;
    lblOrigemSelecione: TLabel;
    lblOrigemOutros: TLabel;
    txtOrigemOutros: TDBEdit;
    sqlManuBDOrigem_Outros: TStringField;
    sqlManuBDAcond_Outros: TStringField;
    sqlManuBDProcedencia_Outros: TStringField;
    sqlManuBDTratDisp_Outros: TStringField;
    cdsManuBDOrigem_Outros: TStringField;
    cdsManuBDAcond_Outros: TStringField;
    cdsManuBDProcedencia_Outros: TStringField;
    cdsManuBDTratDisp_Outros: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnCadTipoClick(Sender: TObject);
    procedure dblTipoEnter(Sender: TObject);
    procedure btnCadEstadoFisicoClick(Sender: TObject);
    procedure dblEstadoFisicoEnter(Sender: TObject);
    procedure btnCadAcondClick(Sender: TObject);
    procedure dblAcondEnter(Sender: TObject);
    procedure btnCadOrigemClick(Sender: TObject);
    procedure dblOrigemEnter(Sender: TObject);
    procedure btnCadProcedenciaClick(Sender: TObject);
    procedure dblProcedenciaEnter(Sender: TObject);
    procedure btnTratDispClick(Sender: TObject);
    procedure dblTratDispEnter(Sender: TObject);
    procedure btnCadStatusClick(Sender: TObject);
    procedure dblstatusEnter(Sender: TObject);
    procedure btnCadUnidadeClick(Sender: TObject);
    procedure dblUnidadeEnter(Sender: TObject);
    procedure btnCadEmpresaClick(Sender: TObject);
    procedure btnCadRespClick(Sender: TObject);
    procedure dblGerEmpresaEnter(Sender: TObject);
    procedure DBLookupComboBox10Enter(Sender: TObject);
    procedure Contrato1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarClick(Sender: TObject);
    procedure IncluirExecute(Sender: TObject);
    procedure TabSheet3Enter(Sender: TObject);
    procedure TabSheet4Enter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure dblSituacaoClick(Sender: TObject);
    procedure dtpInicialChange(Sender: TObject);
    procedure dtpFinalChange(Sender: TObject);
    procedure txtGerResponsavelChange(Sender: TObject);
    procedure txtTransResponsavelChange(Sender: TObject);
    procedure txtRecepResponsavelChange(Sender: TObject);
    procedure btnGerarNumManifClick(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure dblstatusClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cdsManuBDBeforePost(DataSet: TDataSet);
    procedure dblOrigemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadManifesto: TfrmCadManifesto;

const
{
  sSQL_Empresa     = ' select ID_Empresa, RazaoSocial, ID_Classificacao, Endereco, Municipio, UF, Telefone1, Telefone2, ' +
                      '        NumLicencaFEEMA, ValorContrato, ValorTonelada, FlagRelContaminado, FlagRelReciclavel, '    +
                      '        FlagRelSucata, TipoResumoGeral, Responsavel, ID_Fantasia, CEP, CNPJ, InscEstado, Obs '     +
                      ' from   empresa '                                                                                  +
                      ' order by RazaoSocial ';
}
  sSQL_Empresa     = ' select ID_Empresa, RazaoSocial, ID_Classificacao, Endereco, Municipio, UF, Telefone, ' +
                      '        NumLicencaFEEMA, ValorContrato, ValorTonelada, FlagRelContaminado, FlagRelReciclavel, '    +
                      '        FlagRelSucata, TipoResumoGeral, Responsavel, ID_Fantasia, CEP, CNPJ, InscEstado, Obs '     +
                      ' from   empresa '                                                                                  +
                      ' order by RazaoSocial ';



  //
  sSQL_Responsavel = ' select ID_Responsavel, Nome, ID_Cargo, ID_Tratamento from responsavel order by Nome ';
  //
  sSQL_Cargo       = ' select ID_Cargo, Descricao from cargo order by Descricao ';




implementation

uses ufrmCadResiduo,
     ufrmCadEstadoFisico,
     ufrmCadAcond,
     ufrmCadOrigem,
     ufrmCadProcedencia,
     ufrmCadTratDisp,
     ufrmCadManifestoEstado,
     ufrmCadUnidadeMedida,
     ufrmCadEmpresa,
     ufrmCadResponsavel,
     ufrmRelatMensal,
     DateUtils,
     ufrmPrincipal,
     ufrmCadManifestoAlteraSituacao;

{$R *.dfm}

procedure TfrmCadManifesto.FormCreate(Sender: TObject);
begin
  // Ativa Dataset cdsSituacao
  cdsSituacao.Active := False;
  sqlSituacao.CommandText := ' select ID_Situacao, Descricao from situacao order by Descricao ';
  //
  cdsSituacao.Active := True;
  if cdsSituacao.Locate('ID_Situacao',VarArrayOf(['2']),[]) then
  begin
    dblSituacao.KeyValue := cdsSituacao.FieldByName('ID_Situacao').AsInteger;
  end;

  //
  cdsResiduo.Active               := False;
  sqlResiduo.CommandText          := ' select ID_Residuo, Descricao, FlagContaminado, ValorMercado, Codigo from residuo order by Descricao ';
  cdsResiduo.Active               := True;
  //
  cdsEstadoFisico.Active          := False;
  sqlEstadoFisico.CommandText     := ' select ID_EstadoFisico, Descricao from estadofisico order by Descricao ';
  cdsEstadoFisico.Active          := True;
  //
  cdsAcond.Active                 := False;
  sqlAcond.CommandText            := ' select ID_Acondicionamento, Descricao from acondicionamento order by Descricao ';
  cdsAcond.Active                 := True;
  //
  cdsOrigem.Active                := False;
  sqlOrigem.CommandText           := ' select ID_Origem, Descricao from origem order by Descricao ';
  cdsOrigem.Active                := True;
  //
  cdsProcedencia.Active           := False;
  sqlProcedencia.CommandText      := ' select ID_Procedencia, Descricao from procedencia order by Descricao ';
  cdsProcedencia.Active           := True;
  //
  cdsTratDisp.Active              := False;
  sqlTratDisp.CommandText         := ' select ID_TratDisp, Descricao from tratdisp order by Descricao ';
  cdsTratDisp.Active              := True;
  //
  //
  cdsGerCargo.Active              := False;
  sqlGerCargo.CommandText         := sSQL_Cargo;
  cdsGerCargo.Active              := True;
  //
  cdsGerResponsavel.Active        := False;
  sqlGerResponsavel.CommandText   := sSQL_Responsavel;
  cdsGerResponsavel.Active        := True;
  //
  cdsGerEmpresa.Active            := False;
  sqlGerEmpresa.CommandText       := sSQL_Empresa;
  cdsGerEmpresa.Active            := True;
  //
  cdsTransCargo.Active            := False;
  sqlTransCargo.CommandText       := sSQL_Cargo;
  cdsTransCargo.Active            := True;
  //
  cdsTransResponsavel.Active      := False;
  sqlTransResponsavel.CommandText := sSQL_Responsavel;
  cdsTransResponsavel.Active      := True;
  //
  cdsTransEmpresa.Active          := False;
  sqlTransEmpresa.CommandText     := sSQL_Empresa;
  cdsTransEmpresa.Active          := True;
  //
  cdsRecepCargo.Active            := False;
  sqlRecepCargo.CommandText       := sSQL_Cargo;
  cdsRecepCargo.Active            := True;
  //
  cdsRecepResponsavel.Active      := False;
  sqlRecepResponsavel.CommandText := sSQL_Responsavel;
  cdsRecepResponsavel.Active      := True;
  //
  cdsRecepEmpresa.Active          := False;
  sqlRecepEmpresa.CommandText     := sSQL_Empresa;
  cdsRecepEmpresa.Active          := True;
  //
  cdsUnidadeMedida.Active         := False;
  sqlUnidadeMedida.CommandText    := ' select ID_UnidadeMedida, Descricao, Sigla from unidademedida order by Sigla ';
  cdsUnidadeMedida.Active         := True;
  //
  cdsStatus.Active                := False;
  sqlStatus.CommandText           := ' select ID_ManifestoEstado, Descricao from manifestoestado order by Descricao ';
  cdsStatus.Active                := True;
  //
  cdsSituacaoDesc.Active          := False;
  sqlSituacaoDesc.CommandText     := ' select ID_Situacao, Descricao from situacao order by Descricao ';
  cdsSituacaoDesc.Active          := True;


  //
////  sqlGerarNumNegativo.CommandText := ' SELECT MIN( CAST(numero AS SIGNED)) AS valor FROM ferpan.manifesto m WHERE m.numero < 0 ';



////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////  inherited;
////  Self.dbgManutencaoBD.Top  := Self.gbxPeriodo.Height  + 10;
////  Self.dbgManutencaoBD.Height := Self.dbgManutencaoBD.Height - Self.gbxPeriodo.Height - 7;

  //
  dtpInicial.Date := ((Date - DayOf(Date)) + 1);
  dtpFinal.Date   := Date;

  //
  sTabelaNome     := 'manifesto';
  sCampoIDNome    := 'ID_Manifesto';


  sqlManuBD.CommandText :=
                           ' select '                       +
                           '        Numero, '               +
                           '        NumCertificado, '       +
                           '        Quantidade, '           +
                           '        ID_Unidade,'            +
                           '        ID_Residuo, '           +
                           '        Cod_Residuo, '          +
                           '        ID_EstadoFisico, '      +
                           '        ID_Acond, '             +
                           '        ID_Origem, '            +
                           '        ID_Procedencia, '       +
                           '        ID_TratDisp, '          +
                           '        ID_Status, '            +
                           '        GerDtEntrega, '         +
                           '        GerID_Empresa, '        +
                           '        GerNumInventario, '     +
                           '        GerID_Responsavel, '    +
                           '        TransDtReceb, '         +
                           '        TransID_Empresa, '      +
                           '        TransID_Responsavel, '  +
                           '        TransNomeMotorista, '   +
                           '        TransPlacaVeiculo, '    +
                           '        TransCertificado, '     +
                           '        RecepDtReceb, '         +
                           '        RecepID_Empresa, '      +
                           '        RecepNumInventario, '   +
                           '        RecepID_Responsavel,'   +
                           '        DtChegou, '             +
                           '        DtEnvio, '              +
                           '        ID_Situacao, '          +
                           '        ID_LoteEnvio, '         +
                           '        GerResponsavel, '       +
                           '        TransResponsavel, '     +
                           '        RecepResponsavel, '     +
                           '        CDF, '                  +
                           '        Obs, '                  +
                           '        Origem_Outros, '        +
                           '        Acond_Outros, '         +
                           '        Procedencia_Outros, '   +
                           '        TratDisp_Outros '       +
                           ' from   manifesto '             +
                           ' where  (ID_Situacao   = :iID_Situacao) and ' +
                           '        (GerDtEntrega >= :sDtChegouIni) and ' +
                           '        (GerDtEntrega <= :sDtChegouFim) ';



  //
  cdsManuBD.Params.ParamByName('iID_Situacao').AsInteger := cdsSituacao.FieldByName('ID_Situacao').AsInteger;
  cdsManuBD.Params.ParamByName('sDtChegouIni').AsString  := FormatDateTime('yyyymmdd', dtpInicial.Date);
  cdsManuBD.Params.ParamByName('sDtChegouFim').AsString  := FormatDateTime('yyyymmdd', dtpFinal.Date);
  //
  cdsManuBD.Active := True;

  //
  pgcManutencaoBD.ActivePage  := tbsListagem;

  //
  pgcManutencaoBD.ActivePage := tbsListagem;
  pgcManifesto.ActivePage    := tshResiduo;

  stbManutencaoBD.Panels[0].Text := 'Total de Manifestos: ' + FormatFloat('###,###', cdsManuBD.RecordCount);
end;

procedure TfrmCadManifesto.btnCadTipoClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadResiduo, frmCadResiduo);
end;

procedure TfrmCadManifesto.dblTipoEnter(Sender: TObject);
begin
  inherited;
  cdsResiduo.Active := False;
  cdsResiduo.Active := True;
end;

procedure TfrmCadManifesto.btnCadEstadoFisicoClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadEstadoFisico, frmCadEstadoFisico);
end;

procedure TfrmCadManifesto.dblEstadoFisicoEnter(Sender: TObject);
begin
  inherited;
  cdsEstadoFisico.Active := False;
  cdsEstadoFisico.Active := True;
end;

procedure TfrmCadManifesto.btnCadAcondClick(Sender: TObject);
begin
  inherited;
   Application.CreateForm(TfrmCadAcond, frmCadAcond);
end;

procedure TfrmCadManifesto.dblAcondEnter(Sender: TObject);
begin
  inherited;
  cdsAcond.Active := False;
  cdsAcond.Active := True;
end;

procedure TfrmCadManifesto.btnCadOrigemClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadOrigem, frmCadOrigem);
end;

procedure TfrmCadManifesto.dblOrigemClick(Sender: TObject);
begin
  inherited;
 if cdsManuBDID_Origem.AsInteger = 1 then
 begin
   lblOrigemOutros.Enabled := True;
   txtOrigemOutros.Enabled := True;
   txtOrigemOutros.Color   := clWindow;
 end
 else
 begin
   lblOrigemOutros.Enabled := False;
   txtOrigemOutros.Enabled := False;
   txtOrigemOutros.Color   := $00E3E3E3;
   cdsManuBDOrigem_Outros.Value := '';
 end;
end;

procedure TfrmCadManifesto.dblOrigemEnter(Sender: TObject);
begin
  inherited;
  cdsOrigem.Active := False;
  cdsOrigem.Active := True;
end;

procedure TfrmCadManifesto.btnCadProcedenciaClick(Sender: TObject);
begin
  inherited;
   Application.CreateForm(TfrmCadProcedencia, frmCadProcedencia);
end;

procedure TfrmCadManifesto.dblProcedenciaEnter(Sender: TObject);
begin
  inherited;
  cdsProcedencia.Active := False;
  cdsProcedencia.Active := True;
end;

procedure TfrmCadManifesto.btnTratDispClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadTratDisp, frmCadTratDisp);
end;

procedure TfrmCadManifesto.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  //
////  frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptManifesto');
//  frmPrincipal.rvpGestao_Empresarial.ExecuteReport('Report1');
//  ppmVisualizar.Popup(Mouse.CursorPos.x, Mouse.Cursorpos.y);


end;

procedure TfrmCadManifesto.cdsManuBDBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsManuBDCod_Residuo.AsString := cdsResiduo.FieldByName('Codigo').AsString;
end;

procedure TfrmCadManifesto.dblTratDispEnter(Sender: TObject);
begin
  inherited;
  cdsTratDisp.Active := False;
  cdsTratDisp.Active := True;
end;

procedure TfrmCadManifesto.btnCadStatusClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadManifestoEstado, frmCadManifestoEstado);
end;

procedure TfrmCadManifesto.dblstatusEnter(Sender: TObject);
begin
  inherited;
  cdsStatus.Active := False;
  cdsStatus.Active := True;
end;

procedure TfrmCadManifesto.btnCadUnidadeClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadUnidadeMedida, frmCadUnidadeMedida);
end;

procedure TfrmCadManifesto.dblUnidadeEnter(Sender: TObject);
begin
  inherited;
  cdsUnidadeMedida.Active := False;
  cdsUnidadeMedida.Active := True;
end;

procedure TfrmCadManifesto.btnCadEmpresaClick(Sender: TObject);
begin
  inherited;
   Application.CreateForm(TfrmCadEmpresa, frmCadEmpresa);
end;

procedure TfrmCadManifesto.dblGerEmpresaEnter(Sender: TObject);
begin
  inherited;
  cdsGerEmpresa.Active := False;
  cdsGerEmpresa.Active := True;
end;

procedure TfrmCadManifesto.btnCadRespClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCadResponsavel, frmCadResponsavel);
end;

procedure TfrmCadManifesto.DBLookupComboBox10Enter(Sender: TObject);
begin
  inherited;
  cdsGerResponsavel.Active := False;
  cdsGerResponsavel.Active := True;
end;

procedure TfrmCadManifesto.Contrato1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmRelatMensal, frmRelatMensal);
end;

procedure TfrmCadManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsSituacao.Active := False;
end;

procedure TfrmCadManifesto.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  //
  Screen.Cursor := crSQLWait;
  //
  cdsResiduo.Active               := False;
  sqlResiduo.CommandText          := ' select ID_Residuo, Descricao, FlagContaminado, ValorMercado, Codigo from residuo order by Descricao ';
  cdsResiduo.Active               := True;
  //
  cdsEstadoFisico.Active          := False;
  sqlEstadoFisico.CommandText     := ' select ID_EstadoFisico, Descricao from estadofisico order by Descricao ';
  cdsEstadoFisico.Active          := True;
  //
  cdsAcond.Active                 := False;
  sqlAcond.CommandText            := ' select ID_Acondicionamento, Descricao from acondicionamento order by Descricao ';
  cdsAcond.Active                 := True;
  //
  cdsOrigem.Active                := False;
  sqlOrigem.CommandText           := ' select ID_Origem, Descricao from origem order by Descricao ';
  cdsOrigem.Active                := True;
  //
  cdsProcedencia.Active           := False;
  sqlProcedencia.CommandText      := ' select ID_Procedencia, Descricao from procedencia order by Descricao ';
  cdsProcedencia.Active           := True;
  //
  cdsTratDisp.Active              := False;
  sqlTratDisp.CommandText         := ' select ID_TratDisp, Descricao from tratdisp order by Descricao ';
  cdsTratDisp.Active              := True;
  //
  //
  cdsGerCargo.Active              := False;
  sqlGerCargo.CommandText         := sSQL_Cargo;
  cdsGerCargo.Active              := True;
  //
  cdsGerResponsavel.Active        := False;
  sqlGerResponsavel.CommandText   := sSQL_Responsavel;
  cdsGerResponsavel.Active        := True;
  //
  cdsGerEmpresa.Active            := False;
  sqlGerEmpresa.CommandText       := sSQL_Empresa;
  cdsGerEmpresa.Active            := True;
  //
  cdsTransCargo.Active            := False;
  sqlTransCargo.CommandText       := sSQL_Cargo;
  cdsTransCargo.Active            := True;
  //
  cdsTransResponsavel.Active      := False;
  sqlTransResponsavel.CommandText := sSQL_Responsavel;
  cdsTransResponsavel.Active      := True;
  //
  cdsTransEmpresa.Active          := False;
  sqlTransEmpresa.CommandText     := sSQL_Empresa;
  cdsTransEmpresa.Active          := True;
  //
  cdsRecepCargo.Active            := False;
  sqlRecepCargo.CommandText       := sSQL_Cargo;
  cdsRecepCargo.Active            := True;
  //
  cdsRecepResponsavel.Active      := False;
  sqlRecepResponsavel.CommandText := sSQL_Responsavel;
  cdsRecepResponsavel.Active      := True;
  //
  cdsRecepEmpresa.Active          := False;
  sqlRecepEmpresa.CommandText     := sSQL_Empresa;
  cdsRecepEmpresa.Active          := True;
  //
  cdsUnidadeMedida.Active         := False;
  sqlUnidadeMedida.CommandText    := ' select ID_UnidadeMedida, Descricao, Sigla from unidademedida order by Sigla ';
  cdsUnidadeMedida.Active         := True;
  //
  cdsStatus.Active                := False;
  sqlStatus.CommandText           := ' select ID_ManifestoEstado, Descricao from manifestoestado order by Descricao ';
  cdsStatus.Active                := True;
  //
  cdsSituacaoDesc.Active          := False;
  sqlSituacaoDesc.CommandText     := ' select ID_Situacao, Descricao from situacao order by Descricao ';
  cdsSituacaoDesc.Active          := True;

  //
  cdsManuBD.Params.ParamByName('iID_Situacao').AsInteger := cdsSituacao.FieldByName('ID_Situacao').AsInteger;
  cdsManuBD.Params.ParamByName('sDtChegouIni').AsString  := FormatDateTime('yyyymmdd', dtpInicial.Date);
  cdsManuBD.Params.ParamByName('sDtChegouFim').AsString  := FormatDateTime('yyyymmdd', dtpFinal.Date);
  cdsManuBD.Active := False;
  cdsManuBD.Active := True;

  //
  stbManutencaoBD.Panels[0].Text := 'Total de Manifestos: ' + FormatFloat('###,###', cdsManuBD.RecordCount);

  //
  Screen.Cursor := crDefault;

end;

procedure TfrmCadManifesto.IncluirExecute(Sender: TObject);
begin
  inherited;
  cdsManuBDID_Situacao.AsInteger   := 2;
  cdsManuBDDtChegou.AsDateTime     := Date;
  cdsManuBDGerDtEntrega.AsDateTime := Date;
  dblTipo.SetFocus;
end;

procedure TfrmCadManifesto.N1Click(Sender: TObject);
begin
  inherited;
  frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptManifesto');
end;

procedure TfrmCadManifesto.TabSheet3Enter(Sender: TObject);
begin
  inherited;
  if (cdsManuBD.State = dsInsert) then
  begin
    cdsManuBDTransDtReceb.AsDateTime := cdsManuBDGerDtEntrega.AsDateTime;
  end;
end;

procedure TfrmCadManifesto.TabSheet4Enter(Sender: TObject);
begin
  inherited;
  if (cdsManuBD.State = dsInsert) then
  begin
    cdsManuBDRecepDtReceb.AsDateTime := cdsManuBDGerDtEntrega.AsDateTime;
  end;
end;

procedure TfrmCadManifesto.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  stbManutencaoBD.Panels[0].Text := 'Total de Manifestos: ' + FormatFloat('###,###', cdsManuBD.RecordCount);
end;

procedure TfrmCadManifesto.SalvarExecute(Sender: TObject);
begin
  //inherited;
  Self.Acao(5, False); // SALVAR
  frmPrincipal.TotalizaManifestos;
end;

procedure TfrmCadManifesto.dblSituacaoClick(Sender: TObject);
begin
  inherited;
  cdsManuBD.Active := False;
end;

procedure TfrmCadManifesto.dtpInicialChange(Sender: TObject);
begin
  inherited;
  cdsManuBD.Active := False;
end;

procedure TfrmCadManifesto.dtpFinalChange(Sender: TObject);
begin
  inherited;
  cdsManuBD.Active := False;
end;

procedure TfrmCadManifesto.txtGerResponsavelChange(Sender: TObject);
begin
  inherited;

  if (cdsManuBD.State = dsInsert) or (cdsManuBD.State = dsEdit) then
  begin
    cdsManuBDGerResponsavel.AsString := txtGerResponsavel.Text;
  end;

end;

procedure TfrmCadManifesto.txtTransResponsavelChange(Sender: TObject);
begin
  inherited;

  if (cdsManuBD.State = dsInsert) or (cdsManuBD.State = dsEdit) then
  begin
    cdsManuBDTransResponsavel.AsString := txtTransResponsavel.Text;
  end;

end;

procedure TfrmCadManifesto.txtRecepResponsavelChange(Sender: TObject);
begin
  inherited;

  if (cdsManuBD.State = dsInsert) or (cdsManuBD.State = dsEdit) then
  begin
    cdsManuBDRecepResponsavel.AsString := txtRecepResponsavel.Text;
  end;

end;

procedure TfrmCadManifesto.btnGerarNumManifClick(Sender: TObject);
 var
   iNumNegativo: integer;

begin
  inherited;
  cdsGerarNumNegativo.Active := True;
  iNumNegativo := cdsGerarNumNegativovalor.AsInteger + -1;
  cdsGerarNumNegativo.Active := False;
  cdsManuBDNumero.AsInteger := iNumNegativo;
end;

procedure TfrmCadManifesto.ExcluirExecute(Sender: TObject);
begin
  inherited;
  frmPrincipal.TotalizaManifestos;
end;

procedure TfrmCadManifesto.dblstatusClick(Sender: TObject);
begin
  inherited;
  if MESSAGEBOX(Application.Handle, 'Você também deseja alterar a situação do Manifesto ?', 'Confirmação', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_YES then
   begin
     Application.CreateForm(TfrmCadManifestoAlteraSituacao, frmCadManifestoAlteraSituacao);
   end;

end;

end.

h = 394
w = 887



 select Numero, NumCertificado, Quantidade, ID_Unidade, ID_Residuo, ID_EstadoFisico, ID_Acond,
        ID_Origem, ID_Procedencia, ID_TratDisp, ID_Status, GerDtEntrega, GerID_Empresa,
        GerNumInventario, GerID_Responsavel, TransDtReceb, TransID_Empresa, TransID_Responsavel,
        TransNomeMotorista, TransPlacaVeiculo, TransCertificado, RecepDtReceb, RecepID_Empresa,
        RecepNumInventario, RecepID_Responsavel, DtChegou, DtEnvio, ID_Situacao, ID_LoteEnvio,
        GerResponsavel, TransResponsavel, RecepResponsavel, CDF, Obs
 from   manifesto
 where  (ID_Situacao = :iID_Situacao) and
        (GerDtEntrega >= :sDtChegouIni) and
        (GerDtEntrega <= :sDtChegouFim)

 select Numero, NumCertificado, Quantidade, ID_Unidade, ID_Residuo, ID_EstadoFisico, ID_Acond,
        ID_Origem, ID_Procedencia, ID_TratDisp, ID_Status, GerDtEntrega, GerID_Empresa,
        GerNumInventario, GerID_Responsavel, TransDtReceb, TransID_Empresa, TransID_Responsavel,
        TransNomeMotorista, TransPlacaVeiculo, TransCertificado, RecepDtReceb, RecepID_Empresa,
        RecepNumInventario, RecepID_Responsavel, DtChegou, DtEnvio, ID_Situacao, ID_LoteEnvio,
        GerResponsavel, TransResponsavel, RecepResponsavel, CDF, Obs
 from   manifesto
 where  (ID_Situacao = 0) and
        (GerDtEntrega >= '01/01/2012') and
        (GerDtEntrega <= '12/03/2012')



