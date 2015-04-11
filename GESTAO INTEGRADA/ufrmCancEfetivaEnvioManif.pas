unit ufrmCancEfetivaEnvioManif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, StdCtrls, ComCtrls, Grids, DBGrids,
  DBGridUrb, DB, DataSourceUrb, DBClient, ClientDataSetUrb, Buttons,
  DBClientActns, DBActns, ActnList;

type
  TfrmCancEfetivaEnvioManif = class(TfrmModeloMDIChild)
    cdsManuBD: TClientDataSetUrb;
    cdsManuBDDescGerEmpresa: TStringField;
    cdsManuBDDescResiduo: TStringField;
    cdsManuBDDescUnidade: TStringField;
    cdsManuBDDescRecepEmpresa: TStringField;
    cdsManuBDDescStatus: TStringField;
    cdsManuBDDescEstadoFisico: TStringField;
    cdsManuBDDescAcond: TStringField;
    cdsManuBDDescOrigem: TStringField;
    cdsManuBDDescProcedencia: TStringField;
    cdsManuBDDescTratDisp: TStringField;
    cdsManuBDDescGerResponsavel: TStringField;
    cdsManuBDDescTransEmpresa: TStringField;
    cdsManuBDDescTransResponsavel: TStringField;
    cdsManuBDDescRecepResponsavel: TStringField;
    cdsManuBDDescSituacao: TStringField;
    dtsManuBD: TDataSourceUrb;
    cdsResiduo: TClientDataSetUrb;
    dtsResiduo: TDataSourceUrb;
    cdsEstadoFisico: TClientDataSetUrb;
    dtsEstadoFisico: TDataSourceUrb;
    cdsAcond: TClientDataSetUrb;
    dtsAcond: TDataSourceUrb;
    cdsOrigem: TClientDataSetUrb;
    dtsOrigem: TDataSourceUrb;
    cdsProcedencia: TClientDataSetUrb;
    dspProcedencia: TDataSourceUrb;
    cdsTratDisp: TClientDataSetUrb;
    dtsTratDisp: TDataSourceUrb;
    cdsGerEmpresa: TClientDataSetUrb;
    dtsGerEmpresa: TDataSourceUrb;
    cdsGerResponsavel: TClientDataSetUrb;
    dtsGerResponsavel: TDataSourceUrb;
    cdsGerCargo: TClientDataSetUrb;
    dtsGerCargo: TDataSourceUrb;
    cdsTransEmpresa: TClientDataSetUrb;
    dtsTransEmpresa: TDataSourceUrb;
    cdsTransResponsavel: TClientDataSetUrb;
    dtsTransResponsavel: TDataSourceUrb;
    cdsTransCargo: TClientDataSetUrb;
    dtsTransCargo: TDataSourceUrb;
    cdsRecepCargo: TClientDataSetUrb;
    cdsRecepResponsavel: TClientDataSetUrb;
    cdsRecepEmpresa: TClientDataSetUrb;
    dtsRecepEmpresa: TDataSourceUrb;
    dtsRecepResponsavel: TDataSourceUrb;
    dtsRecepCargo: TDataSourceUrb;
    cdsUnidadeMedida: TClientDataSetUrb;
    dtsUnidadeMedida: TDataSourceUrb;
    cdsStatus: TClientDataSetUrb;
    dtsStatus: TDataSourceUrb;
    cdsSituacaoDesc: TClientDataSetUrb;
    dtsSituacaoDesc: TDataSourceUrb;
    dbgManutencaoBD: TDBGridUrb;
    btnCancelar: TSpeedButton;
    stbManutencaoBD: TStatusBar;
    cdsRecepResponsavelID_Responsavel: TIntegerField;
    cdsRecepResponsavelNome: TStringField;
    cdsRecepResponsavelID_Cargo: TIntegerField;
    cdsRecepResponsavelID_Tratamento: TIntegerField;
    cdsRecepResponsavelDescCargo: TStringField;
    cdsRecepEmpresaID_Empresa: TIntegerField;
    cdsRecepEmpresaRazaoSocial: TStringField;
    cdsRecepEmpresaID_Classificacao: TIntegerField;
    cdsRecepEmpresaEndereco: TStringField;
    cdsRecepEmpresaMunicipio: TStringField;
    cdsRecepEmpresaUF: TStringField;
    cdsRecepEmpresaTelefone: TStringField;
    cdsRecepEmpresaNumLicencaFEEMA: TStringField;
    cdsRecepEmpresaValorContrato: TBCDField;
    cdsRecepEmpresaValorTonelada: TBCDField;
    cdsRecepEmpresaFlagRelContaminado: TStringField;
    cdsRecepEmpresaFlagRelReciclavel: TStringField;
    cdsRecepEmpresaFlagRelSucata: TStringField;
    cdsRecepEmpresaTipoResumoGeral: TIntegerField;
    cdsTransEmpresaID_Empresa: TIntegerField;
    cdsTransEmpresaRazaoSocial: TStringField;
    cdsTransEmpresaID_Classificacao: TIntegerField;
    cdsTransEmpresaEndereco: TStringField;
    cdsTransEmpresaMunicipio: TStringField;
    cdsTransEmpresaUF: TStringField;
    cdsTransEmpresaTelefone: TStringField;
    cdsTransEmpresaNumLicencaFEEMA: TStringField;
    cdsTransEmpresaValorContrato: TBCDField;
    cdsTransEmpresaValorTonelada: TBCDField;
    cdsTransEmpresaFlagRelContaminado: TStringField;
    cdsTransEmpresaFlagRelReciclavel: TStringField;
    cdsTransEmpresaFlagRelSucata: TStringField;
    cdsTransEmpresaTipoResumoGeral: TIntegerField;
    cdsGerEmpresaID_Empresa: TIntegerField;
    cdsGerEmpresaRazaoSocial: TStringField;
    cdsGerEmpresaID_Classificacao: TIntegerField;
    cdsGerEmpresaEndereco: TStringField;
    cdsGerEmpresaMunicipio: TStringField;
    cdsGerEmpresaUF: TStringField;
    cdsGerEmpresaTelefone: TStringField;
    cdsGerEmpresaNumLicencaFEEMA: TStringField;
    cdsGerEmpresaValorContrato: TBCDField;
    cdsGerEmpresaValorTonelada: TBCDField;
    cdsGerEmpresaFlagRelContaminado: TStringField;
    cdsGerEmpresaFlagRelReciclavel: TStringField;
    cdsGerEmpresaFlagRelSucata: TStringField;
    cdsGerEmpresaTipoResumoGeral: TIntegerField;
    cdsManuBDID_Manifesto: TIntegerField;
    cdsManuBDNumero: TIntegerField;
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
    cdsGerResponsavelID_Responsavel: TIntegerField;
    cdsGerResponsavelNome: TStringField;
    cdsGerResponsavelID_Cargo: TIntegerField;
    cdsGerResponsavelID_Tratamento: TIntegerField;
    cdsGerResponsavelDescCargo: TStringField;
    cdsTransResponsavelID_Responsavel: TIntegerField;
    cdsTransResponsavelNome: TStringField;
    cdsTransResponsavelID_Cargo: TIntegerField;
    cdsTransResponsavelID_Tratamento: TIntegerField;
    cdsTransResponsavelDescCargo: TStringField;
    actManutencaoBD: TActionList;
    datasetIncluir: TDataSetInsert;
    datasetExcluir: TDataSetDelete;
    datasetAlterar: TDataSetEdit;
    datasetSalvar: TDataSetPost;
    datasetCancelar: TDataSetCancel;
    datasetAtualizar: TDataSetRefresh;
    datasetAplicar: TClientDataSetApply;
    ClientDataSetRevert1: TClientDataSetRevert;
    ClientDataSetUndo1: TClientDataSetUndo;
    Incluir: TAction;
    Alterar: TAction;
    Excluir: TAction;
    Consultar: TAction;
    Salvar: TAction;
    Cancelar: TAction;
    Atualizar: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsManuBDAfterScroll(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCancEfetivaEnvioManif: TfrmCancEfetivaEnvioManif;

implementation

{$R *.dfm}

procedure TfrmCancEfetivaEnvioManif.FormCreate(Sender: TObject);
begin
  inherited;
  cdsManuBD.Params.ParamByName('iID_Situacao').AsInteger := 3;
  cdsManuBD.Params.ParamByName('sDtChegouIni').AsString  := FormatDateTime('yyyymmdd', (Date - 365));
  cdsManuBD.Params.ParamByName('sDtChegouFim').AsString  := FormatDateTime('yyyymmdd', Date);
  cdsManuBD.Active := True;
end;

procedure TfrmCancEfetivaEnvioManif.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsManuBD.Active := False;
end;

procedure TfrmCancEfetivaEnvioManif.cdsManuBDAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  stbManutencaoBD.Panels[0].Text := 'Total de Manifestos: ' + FormatFloat('###,###', cdsManuBD.RecordCount);
end;

procedure TfrmCancEfetivaEnvioManif.btnCancelarClick(Sender: TObject);
begin
  inherited;

  cdsManuBD.First;
  while not cdsManuBD.Eof do
  begin
    datasetAlterar.Execute;

    cdsManuBDDtEnvio.Clear;
    cdsManuBDID_Situacao.AsInteger  := 2;
    cdsManuBDID_LoteEnvio.Clear;

    datasetSalvar.Execute;
    datasetAplicar.Execute;
    cdsManuBD.Next;
  end;
  cdsManuBD.Active := False;

end;

end.
