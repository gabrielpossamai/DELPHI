unit ufrmEfetivaEnvioManifesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, StdCtrls, ComCtrls, Grids, DBGrids,
  DBGridUrb, DB, DataSourceUrb, DBClient, ClientDataSetUrb, Buttons,
  DBCtrls, FMTBcd, Provider, DataSetProviderUrb, SqlExpr;

type
  TfrmEfetivaEnvioManifesto = class(TfrmModeloMDIChild)
    cdsManuBD: TClientDataSetUrb;
    cdsManuBDDescGerEmpresa: TStringField;
    cdsManuBDDescResiduo: TStringField;
    cdsManuBDQuantidade: TFMTBCDField;
    cdsManuBDDescUnidade: TStringField;
    cdsManuBDID_Unidade: TIntegerField;
    cdsManuBDDescRecepEmpresa: TStringField;
    cdsManuBDGerDtEntrega: TSQLTimeStampField;
    cdsManuBDDescStatus: TStringField;
    cdsManuBDDtChegou: TSQLTimeStampField;
    cdsManuBDDtEnvio: TSQLTimeStampField;
    cdsManuBDID_LoteEnvio: TIntegerField;
    cdsManuBDID_Residuo: TIntegerField;
    cdsManuBDID_EstadoFisico: TIntegerField;
    cdsManuBDID_Acond: TIntegerField;
    cdsManuBDID_Origem: TIntegerField;
    cdsManuBDID_Procedencia: TIntegerField;
    cdsManuBDID_TratDisp: TIntegerField;
    cdsManuBDDescEstadoFisico: TStringField;
    cdsManuBDDescAcond: TStringField;
    cdsManuBDDescOrigem: TStringField;
    cdsManuBDDescProcedencia: TStringField;
    cdsManuBDDescTratDisp: TStringField;
    cdsManuBDNumCertificado: TIntegerField;
    cdsManuBDID_Status: TIntegerField;
    cdsManuBDGerID_Empresa: TIntegerField;
    cdsManuBDGerNumInventario: TStringField;
    cdsManuBDGerID_Responsavel: TIntegerField;
    cdsManuBDDescGerResponsavel: TStringField;
    cdsManuBDTransDtReceb: TSQLTimeStampField;
    cdsManuBDTransID_Empresa: TIntegerField;
    cdsManuBDTransID_Responsavel: TIntegerField;
    cdsManuBDDescTransEmpresa: TStringField;
    cdsManuBDDescTransResponsavel: TStringField;
    cdsManuBDTransNomeMotorista: TStringField;
    cdsManuBDTransPlacaVeiculo: TStringField;
    cdsManuBDTransCertificado: TStringField;
    cdsManuBDRecepDtReceb: TSQLTimeStampField;
    cdsManuBDRecepID_Empresa: TIntegerField;
    cdsManuBDRecepNumInventario: TStringField;
    cdsManuBDRecepID_Responsavel: TIntegerField;
    cdsManuBDDescRecepResponsavel: TStringField;
    cdsManuBDObs: TBlobField;
    cdsManuBDID_Situacao: TIntegerField;
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
    dtsProcedencia: TDataSourceUrb;
    cdsTratDisp: TClientDataSetUrb;
    dtsTratDisp: TDataSourceUrb;
    cdsGerEmpresa: TClientDataSetUrb;
    cdsGerEmpresaID_Empresa: TIntegerField;
    cdsGerEmpresaRazaoSocial: TStringField;
    cdsGerEmpresaID_Classificacao: TIntegerField;
    cdsGerEmpresaEndereco: TStringField;
    cdsGerEmpresaMunicipio: TStringField;
    cdsGerEmpresaUF: TStringField;
    cdsGerEmpresaTelefone: TStringField;
    cdsGerEmpresaNumLicencaFEEMA: TStringField;
    dtsGerEmpresa: TDataSourceUrb;
    cdsGerResponsavel: TClientDataSetUrb;
    cdsGerResponsavelID_Responsavel: TIntegerField;
    cdsGerResponsavelNome: TStringField;
    cdsGerResponsavelID_Cargo: TIntegerField;
    cdsGerResponsavelDescCargo: TStringField;
    dtsGerResponsavel: TDataSourceUrb;
    cdsGerCargo: TClientDataSetUrb;
    dtsGerCargo: TDataSourceUrb;
    cdsTransEmpresa: TClientDataSetUrb;
    cdsTransEmpresaID_Empresa: TIntegerField;
    cdsTransEmpresaRazaoSocial: TStringField;
    cdsTransEmpresaID_Classificacao: TIntegerField;
    cdsTransEmpresaEndereco: TStringField;
    cdsTransEmpresaMunicipio: TStringField;
    cdsTransEmpresaUF: TStringField;
    cdsTransEmpresaTelefone: TStringField;
    cdsTransEmpresaNumLicencaFEEMA: TStringField;
    dtsTransEmpresa: TDataSourceUrb;
    cdsTransResponsavel: TClientDataSetUrb;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    dtsTransResponsavel: TDataSourceUrb;
    cdsTransCargo: TClientDataSetUrb;
    dtsTransCargo: TDataSourceUrb;
    cdsRecepCargo: TClientDataSetUrb;
    cdsRecepResponsavel: TClientDataSetUrb;
    IntegerField5: TIntegerField;
    StringField9: TStringField;
    IntegerField6: TIntegerField;
    StringField10: TStringField;
    cdsRecepEmpresa: TClientDataSetUrb;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
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
    stbManutencaoBD: TStatusBar;
    cdsEfetivarSituacao: TClientDataSetUrb;
    dtsEfetivarSituacao: TDataSourceUrb;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label43: TLabel;
    dtpEfetivar: TDateTimePicker;
    Label1: TLabel;
    dblEfetivarSituacao: TDBLookupComboBox;
    Label48: TLabel;
    txtLote: TEdit;
    btnEfetivar: TSpeedButton;
    Label2: TLabel;
    dtpBuscarIni: TDateTimePicker;
    Label3: TLabel;
    dtpBuscarFim: TDateTimePicker;
    btnBuscar: TSpeedButton;
    Label4: TLabel;
    dblBuscarSituacao: TDBLookupComboBox;
    cdsBuscarSituacao: TClientDataSetUrb;
    dtsBuscarSituacao: TDataSourceUrb;
    cdsManuBDNumero: TStringField;
    sqlManuBD: TSQLDataSet;
    dspManuBD: TDataSetProviderUrb;
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
    sqlUnidadeMedida: TSQLDataSet;
    dspUnidadeMedida: TDataSetProviderUrb;
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
    sqlRecepEmpresa: TSQLDataSet;
    dspRecepEmpresa: TDataSetProviderUrb;
    sqlRecepResponsavel: TSQLDataSet;
    dspRecepResponsavel: TDataSetProviderUrb;
    sqlRecepCargo: TSQLDataSet;
    dspRecepCargo: TDataSetProviderUrb;
    sqlStatus: TSQLDataSet;
    dspStatus: TDataSetProviderUrb;
    sqlSituacaoDesc: TSQLDataSet;
    dspSituacaoDesc: TDataSetProviderUrb;
    sqlEfetivarSituacao: TSQLDataSet;
    dspEfetivarSituacao: TDataSetProviderUrb;
    sqlBuscarSituacao: TSQLDataSet;
    dspBuscarSituacao: TDataSetProviderUrb;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtpEfetivarChange(Sender: TObject);
    procedure cdsManuBDAfterScroll(DataSet: TDataSet);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnEfetivarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEfetivaEnvioManifesto: TfrmEfetivaEnvioManifesto;

implementation

uses DateUtils, ufrmPrincipal;

{$R *.dfm}

procedure TfrmEfetivaEnvioManifesto.FormCreate(Sender: TObject);
const
  //
  sSQL_Empresa     = ' select ID_Empresa, RazaoSocial, ID_Classificacao, Endereco, Municipio, UF, Telefone, '         +
                      '        NumLicencaFEEMA, ValorContrato, ValorTonelada, FlagRelContaminado, FlagRelReciclavel, ' +
                      '        FlagRelSucata, TipoResumoGeral, Responsavel, ID_Fantasia, CEP, CNPJ, InscEstado, Obs '  +
                      ' from   empresa '                                                                               +
                      ' order by RazaoSocial ';
  //
  sSQL_Responsavel = ' select ID_Responsavel, Nome, ID_Cargo, ID_Tratamento from responsavel order by Nome ';
  //
  sSQL_Cargo       = ' select ID_Cargo, Descricao from cargo order by Descricao ';
begin
  inherited;
  //
  sqlGerEmpresa.CommandText       := sSQL_Empresa;
  sqlGerResponsavel.CommandText   := sSQL_Responsavel;
  sqlGerCargo.CommandText         := sSQL_Cargo;
  //
  sqlTransEmpresa.CommandText     := sSQL_Empresa;
  sqlTransResponsavel.CommandText := sSQL_Responsavel;
  sqlTransCargo.CommandText       := sSQL_Cargo;
  //
  sqlRecepEmpresa.CommandText     := sSQL_Empresa;
  sqlRecepResponsavel.CommandText := sSQL_Responsavel;
  sqlRecepCargo.CommandText       := sSQL_Cargo;
  //
  cdsManuBD.Active      := False;
  sqlManuBD.CommandText := ' select Numero, NumCertificado, Quantidade, ID_Unidade, ID_Residuo, ID_EstadoFisico, ID_Acond, '   +
                           '        ID_Origem, ID_Procedencia, ID_TratDisp, ID_Status, GerDtEntrega, GerID_Empresa, '          +
                           '        GerNumInventario, GerID_Responsavel, TransDtReceb, TransID_Empresa, TransID_Responsavel, ' +
                           '        TransNomeMotorista, TransPlacaVeiculo, TransCertificado, RecepDtReceb, RecepID_Empresa, '  +
                           '        RecepNumInventario, RecepID_Responsavel, DtChegou, DtEnvio, ID_Situacao, ID_LoteEnvio, '   +
                           '        GerResponsavel, TransResponsavel, RecepResponsavel, CDF, Obs '                             +
                           'from manifesto '                                                                                   +
                           ' where  (ID_Situacao = :iID_Situacao) and '                                                        +
                           '        (GerDtEntrega >= :sDtChegouIni) and '                                                      +
                           '        (GerDtEntrega <= :sDtChegouFim) ';
  cdsManuBD.Active      := True;

  cdsBuscarSituacao.Active   := True;
  dblBuscarSituacao.KeyValue := cdsBuscarSituacao.FieldByName('ID_Situacao').AsInteger;

  cdsEfetivarSituacao.Active := True;
  dblEfetivarSituacao.KeyValue := cdsEfetivarSituacao.FieldByName('ID_Situacao').AsInteger;

  dtpBuscarIni.Date := ((Date - DayOf(Date)) + 1);
  dtpBuscarFim.Date := Date;
  dtpEfetivar.Date := Date;
end;

procedure TfrmEfetivaEnvioManifesto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsManuBD.Active           := False;
  cdsBuscarSituacao.Active   := False;
  cdsEfetivarSituacao.Active := False;
end;

procedure TfrmEfetivaEnvioManifesto.dtpEfetivarChange(Sender: TObject);
begin
  inherited;
  txtLote.Text := FormatDateTime('yyyymmddhh:mm:ss', dtpEfetivar.DateTime);
end;

procedure TfrmEfetivaEnvioManifesto.cdsManuBDAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  stbManutencaoBD.Panels[0].Text := 'Total de Manifestos: ' + FormatFloat('###,###', cdsManuBD.RecordCount);
end;

procedure TfrmEfetivaEnvioManifesto.btnBuscarClick(Sender: TObject);
begin
  inherited;
  cdsManuBD.Active := False;
  cdsManuBD.Params.ParamByName('iID_Situacao').AsInteger := dblBuscarSituacao.KeyValue;
  cdsManuBD.Params.ParamByName('sDtChegouIni').AsString  := FormatDateTime('yyyymmdd', dtpBuscarIni.Date);
  cdsManuBD.Params.ParamByName('sDtChegouFim').AsString  := FormatDateTime('yyyymmdd', dtpBuscarFim.Date);
  cdsManuBD.Active := True;
end;

procedure TfrmEfetivaEnvioManifesto.btnEfetivarClick(Sender: TObject);
begin
  inherited;

  if MESSAGEBOX(Application.Handle, 'Tem certeza que você deseja confirmar a alteração da situação do(s) manifesto(s)? Lembre-se de efetuar os filtros necessários antes de continuar.', 'Confirmação', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = ID_YES then
   begin
    dtpEfetivar.Date := Date;
    txtLote.Text     := FormatDateTime('yyyymmdd', dtpEfetivar.Date);

    cdsManuBD.First;
    while not cdsManuBD.Eof do
    begin
      cdsManuBD.Edit;
      cdsManuBDDtEnvio.AsDateTime     := dtpEfetivar.Date;
      cdsManuBDID_Situacao.AsInteger  := dblEfetivarSituacao.KeyValue;
      cdsManuBDID_LoteEnvio.AsString  := txtLote.Text;
      cdsManuBD.Post;
      cdsManuBD.ApplyUpdates(0);
      cdsManuBD.Next;
    end;
    cdsManuBD.Active := False;
    frmPrincipal.TotalizaManifestos;
   end;

{
   else
   begin
      Exit;
   end;
}

end;

end.
