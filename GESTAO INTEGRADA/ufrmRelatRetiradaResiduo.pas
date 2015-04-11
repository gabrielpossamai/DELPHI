unit ufrmRelatRetiradaResiduo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, ComCtrls, StdCtrls, Buttons, DB,
  DataSourceUrb, DBClient, ClientDataSetUrb, Grids, DBGrids, DBGridUrb,
  RpDefine, RpCon, RpConDS, DateUtils, DBCtrls, IniFiles,
  uVariaveisGlobais;

type
  TfrmRelatRetiradaResiduo = class(TfrmModeloMDIChild)
    stbManutencaoBD: TStatusBar;
    pgcRelatRetiradaResiduo: TPageControl;
    tshImprimir: TTabSheet;
    tshConfigurar: TTabSheet;
    btnVisializar: TSpeedButton;
    btnImprimirTodos: TSpeedButton;
    rdtsGerador: TRvDataSetConnection;
    cdsGerador: TClientDataSetUrb;
    cdsGeradorGerID_Empresa: TIntegerField;
    cdsGeradorRazaoSocial: TStringField;
    cdsGeradorEndereco: TStringField;
    cdsGeradorMunicipio: TStringField;
    cdsGeradorUF: TStringField;
    cdsGeradorNome: TStringField;
    cdsGeradorValorContrato: TBCDField;
    cdsGeradorValorTonelada: TBCDField;
    cdsGeradorDtEnvio: TSQLTimeStampField;
    dtsGerador: TDataSourceUrb;
    cdsResumoGeral: TClientDataSetUrb;
    cdsResumoGeralGerID_Empresa: TIntegerField;
    cdsResumoGeralID_Residuo: TIntegerField;
    cdsResumoGeralDescricao: TStringField;
    cdsResumoGeralTOTAL: TFloatField;
    cdsResumoGeralValorContrato: TBCDField;
    cdsResumoGeralValorTonelada: TBCDField;
    cdsResumoGeralValorBruto: TFloatField;
    cdsResumoGeralTipoResumoGeral: TIntegerField;
    cdsResumoGeralSigla: TStringField;
    cdsResumoGeralObs: TBlobField;
    cdsResumoGeralDescricao_1: TStringField;
    dtsResumoGeral: TDataSourceUrb;
    rdtsResumoGeral: TRvDataSetConnection;
    cdsListaGerador: TClientDataSetUrb;
    cdsListaGeradorGerID_Empresa: TIntegerField;
    cdsListaGeradorRazaoSocial: TStringField;
    cdsListaGeradorEndereco: TStringField;
    cdsListaGeradorMunicipio: TStringField;
    cdsListaGeradorUF: TStringField;
    cdsListaGeradorGerResponsavel: TStringField;
    dtsListaGerador: TDataSourceUrb;
    cdsRelMesDetalhado: TClientDataSetUrb;
    cdsRelMesDetalhadoGerDtEntrega: TSQLTimeStampField;
    cdsRelMesDetalhadoDescricao: TStringField;
    cdsRelMesDetalhadoQuantidade: TFMTBCDField;
    cdsRelMesDetalhadoRecepID_Empresa: TIntegerField;
    cdsRelMesDetalhadoID_Residuo: TIntegerField;
    cdsRelMesDetalhadoRazaoSocial: TStringField;
    cdsRelMesDetalhadoID_Status: TIntegerField;
    cdsRelMesDetalhadoStatus: TStringField;
    cdsRelMesDetalhadoSigla: TStringField;
    cdsRelMesDetalhadoDescricao_1: TStringField;
    dtsRelMesDetalhado: TDataSourceUrb;
    rdtsRelMesDetalhado: TRvDataSetConnection;
    cdsListaNum: TClientDataSetUrb;
    cdsListaNumNumero: TIntegerField;
    dtsListaNum: TDataSourceUrb;
    cdsTotalNumPeriodo: TClientDataSetUrb;
    cdsTotalNumPeriodoID_Empresa: TIntegerField;
    cdsTotalNumPeriodoInicio: TIntegerField;
    cdsTotalNumPeriodoFim: TIntegerField;
    cdsTotalNumPeriodoCompleto: TStringField;
    cdsTotalNumPeriodoTotalPeriodo: TFMTBCDField;
    dtsTotalNumPeriodo: TDataSourceUrb;
    cdsNaoAchou: TClientDataSetUrb;
    cdsNaoAchouNumeros: TMemoField;
    dtsNaoAchou: TDataSourceUrb;
    rdtsNaoAchou: TRvDataSetConnection;
    cdsResponsavel: TClientDataSetUrb;
    cdsResponsavelID_Responsavel: TIntegerField;
    cdsResponsavelNome: TStringField;
    cdsResponsavelID_Cargo: TIntegerField;
    cdsResponsavelID_Tratamento: TIntegerField;
    cdsResponsavelDescTratSigla: TStringField;
    dtsResponsavel: TDataSourceUrb;
    cdsTratamento: TClientDataSetUrb;
    cdsTratamentoID_Tratamento: TIntegerField;
    cdsTratamentoDescricao: TStringField;
    cdsTratamentoSigla: TStringField;
    dtsTratamento: TDataSourceUrb;
    cdsBuscarSituacao: TClientDataSetUrb;
    cdsBuscarSituacaoID_Situacao: TIntegerField;
    cdsBuscarSituacaoDescricao: TStringField;
    dtsBuscarSituacao: TDataSourceUrb;
    Label3: TLabel;
    chkMarcarImpressao: TCheckBox;
    Label4: TLabel;
    gbxAlteraResp: TGroupBox;
    chkAlteraResp: TCheckBox;
    dblResponsavel: TDBLookupComboBox;
    Label1: TLabel;
    dtpDataRelat: TDateTimePicker;
    cdsTitRelatMensal: TClientDataSetUrb;
    dtsTitRelatMensal: TDataSourceUrb;
    dblTitRelatMensal: TDBLookupComboBox;
    dblTitRelatResumoGeral: TDBLookupComboBox;
    cdsTitRelatResumoGeral: TClientDataSetUrb;
    dtsTitRelatResumoGeral: TDataSourceUrb;
    chkMostraProcedencia: TCheckBox;
    pgcEmpresas: TPageControl;
    tshEmpresa: TTabSheet;
    tshProcedencia: TTabSheet;
    dbgGerador: TDBGridUrb;
    dbgRazaoSocial: TDBGridUrb;
    cdsRazaoSocial: TClientDataSetUrb;
    dtsRazaoSocial: TDataSourceUrb;
    cdsListaGeradorID_Fantasia: TIntegerField;
    cdsRazaoSocialID_Fantasia: TIntegerField;
    cdsRazaoSocialDescricao: TStringField;
    cdsRazaoSocialRazaoSocial: TStringField;
    cdsRazaoSocialEndereco: TStringField;
    cdsRazaoSocialMunicipio: TStringField;
    cdsRazaoSocialUF: TStringField;
    cdsRazaoSocialResponsavel: TStringField;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    btnBuscar: TSpeedButton;
    Label8: TLabel;
    dtpInicial: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    dblBuscarSituacao: TDBLookupComboBox;
    rdtsRazaoSocial: TRvDataSetConnection;
    cdsProtocManif: TClientDataSetUrb;
    dtsProtocManif: TDataSourceUrb;
    rdtsProtocManif: TRvDataSetConnection;
    rdtsProtocEmpresa: TRvDataSetConnection;
    dtsProtocEmpresa: TDataSourceUrb;
    cdsProtocEmpresa: TClientDataSetUrb;
    cdsProtocEmpresaID_Fantasia: TIntegerField;
    cdsProtocEmpresaDescricao: TStringField;
    cdsProtocEmpresaRazaoSocial: TStringField;
    cdsProtocEmpresaEndereco: TStringField;
    cdsProtocEmpresaMunicipio: TStringField;
    cdsProtocEmpresaUF: TStringField;
    cdsProtocEmpresaResponsavel: TStringField;
    cdsProtocEmpresaTextProtoc: TBlobField;
    cdsProtocManifProcedenciaDesc: TStringField;
    cdsProtocManifANO_MES: TVarBytesField;
    cdsProtocManifID_Fantasia: TIntegerField;
    cdsProtocManifDescricao: TStringField;
    cdsProtocManifGerDtEntrega: TSQLTimeStampField;
    cdsProtocManifMES: TBCDField;
    cdsProtocManifANO: TBCDField;
    cdsProtocManifRazaoSocial: TStringField;
    cdsProtocManifEndereco: TStringField;
    cdsProtocManifMunicipio: TStringField;
    cdsProtocManifUF: TStringField;
    cdsProtocManifResponsavel: TStringField;
    cdsProtocManifID_Situacao: TIntegerField;
    cdsProtocManifID_Procedencia: TIntegerField;
    cdsProtocManifGerID_Empresa: TIntegerField;
    cdsProtocManifID_Fantasia_1: TIntegerField;
    Label10: TLabel;
    dtpInicialProt: TDateTimePicker;
    dtpFinalProt: TDateTimePicker;
    Label11: TLabel;
    cdsRelMesDetalhadoNumero: TStringField;
    cdsRelMesDetalhadoID_Situacao: TIntegerField;
    cdsProtocManifNumero: TStringField;
    cdsRelMesDetalhadoObs: TBlobField;
    procedure FormCreate(Sender: TObject);
    procedure tshResumoGeralShow(Sender: TObject);
    procedure cdsListaGeradorAfterScroll(DataSet: TDataSet);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnVisializarClick(Sender: TObject);
    procedure btnImprimirTodosClick(Sender: TObject);
    procedure chkAlteraRespClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GeraProtocolo(Sender: TObject);
    { Public declarations }
  end;

var
  frmRelatRetiradaResiduo: TfrmRelatRetiradaResiduo;

  iAssinaturaResponsavel:  Integer;
  sNomeCompleto:           String;
  iAssinaturaDigitalizada: Integer;
  sCaminhoArqAssDig:       String;

implementation

uses ufrmPrincipal;

{$R *.dfm}

procedure TfrmRelatRetiradaResiduo.FormCreate(Sender: TObject);
begin
  inherited;

  pgcRelatRetiradaResiduo.ActivePage := tshImprimir;

  dtpInicial.Date := ((Date - DayOf(Date)) + 1);
  dtpFinal.Date   := Date;

  dtpInicialProt.Date := ((Date - DayOf(Date)) + 1);
  dtpFinalProt.Date   := Date;

  dtpDataRelat.Date := Date;

  cdsBuscarSituacao.Active   := True;
  cdsBuscarSituacao.Locate('ID_Situacao', VarArrayOf(['3']), []);
  dblBuscarSituacao.KeyValue := cdsBuscarSituacao.FieldByName('ID_Situacao').AsInteger;

  cdsRazaoSocial.Active := True;

  cdsListaGerador.Active := False;
  cdsListaGerador.Params.ParamByName('sDataIni').AsString      := FormatDateTime('yyyymmdd', dtpInicial.Date);
  cdsListaGerador.Params.ParamByName('sDataFim').AsString      := FormatDateTime('yyyymmdd', dtpFinal.Date);
  cdsListaGerador.Params.ParamByName('iID_Situacao').AsInteger := dblBuscarSituacao.KeyValue;
  cdsListaGerador.Params.ParamByName('iID_Fantasia').AsInteger := cdsRazaoSocialID_Fantasia.AsInteger;

  cdsListaGerador.Active := True;

  cdsResponsavel.Active           := True;
  dblResponsavel.KeyValue         := 1;

  cdsTitRelatMensal.Active        := True;
//  dblTitRelatMensal.KeyValue      := 1;

  cdsTitRelatResumoGeral.Active   := True;
//  dblTitRelatResumoGeral.KeyValue := 1;

// andre apagar
//  sSistemaNomArqIni       := 'ced_server.ini';
//  sSistemaPath            := ExtractFilePath(ParamStr(0));
//  iniSistemaArquivoIni    := TIniFile.Create(sSistemaPath + sSistemaNomArqIni);

end;

procedure TfrmRelatRetiradaResiduo.tshResumoGeralShow(Sender: TObject);
begin
  inherited;
  cdsResumoGeral.Active := False;
  cdsResumoGeral.Params.ParamByName('sDataIni').AsString     := FormatDateTime('yyyymmdd', dtpInicial.Date);
  cdsResumoGeral.Params.ParamByName('sDataFim').AsString     := FormatDateTime('yyyymmdd', dtpFinal.Date);
  cdsResumoGeral.Params.ParamByName('iID_Empresa').AsInteger := cdsListaGeradorGerID_Empresa.AsInteger;
  cdsResumoGeral.Active := True;
end;

procedure TfrmRelatRetiradaResiduo.cdsListaGeradorAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  stbManutencaoBD.Panels[0].Text := ' Total de Relatórios: ' + FormatFloat('###,###', cdsListaGerador.RecordCount);
end;

procedure TfrmRelatRetiradaResiduo.TabSheet2Show(Sender: TObject);
begin
  inherited;
///  txtTituloRelatMensal.Text := 'RELATÓRIO MENSAL DE RETIRADA DE RESÍDUOS NO PERÍODO DE ' + DateToStr( dtpInicial.Date ) + ' À ' + DateToStr( dtpFinal.Date ) + '.';
end;

procedure TfrmRelatRetiradaResiduo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsResponsavel.Active := False;
  cdsRazaoSocial.Active := False;
end;

procedure TfrmRelatRetiradaResiduo.btnBuscarClick(Sender: TObject);
begin
  inherited;

  cdsListaGerador.Active := False;
  cdsListaGerador.Params.ParamByName('sDataIni').AsString      := FormatDateTime('yyyymmdd', dtpInicial.Date);
  cdsListaGerador.Params.ParamByName('sDataFim').AsString      := FormatDateTime('yyyymmdd', dtpFinal.Date);
  cdsListaGerador.Params.ParamByName('iID_Situacao').AsInteger := dblBuscarSituacao.KeyValue;
  cdsListaGerador.Params.ParamByName('iID_Fantasia').AsInteger := cdsRazaoSocialID_Fantasia.AsInteger;
  cdsListaGerador.Active := True;

  {
  cdsRazaoSocial.Active := False;
  cdsRazaoSocial.Active := True;
}
{
  cdsListaGerador.Active := False;
  cdsListaGerador.Params.ParamByName('sDataIni').AsString      := FormatDateTime('yyyymmdd', dtpInicial.Date);
  cdsListaGerador.Params.ParamByName('sDataFim').AsString      := FormatDateTime('yyyymmdd', dtpFinal.Date);
  cdsListaGerador.Params.ParamByName('iID_Situacao').AsInteger := dblBuscarSituacao.KeyValue;
  cdsListaGerador.Params.ParamByName('iID_Fantasia').AsInteger := cdsRazaoSocialID_Fantasia.AsInteger;
  cdsListaGerador.Active := True;
}
end;

procedure TfrmRelatRetiradaResiduo.btnVisializarClick(Sender: TObject);
var
 I:            integer;
 sNumeros:     WideString;
 sArq_Origem:  string;
 sArq_Destino: string;
 sArq_Imp_Ass: string;
begin
  inherited;
  cdsGerador.Active := False;
  cdsGerador.Params.ParamByName('sDataIni').AsString     := FormatDateTime('yyyymmdd', dtpInicial.Date);
  cdsGerador.Params.ParamByName('sDataFim').AsString     := FormatDateTime('yyyymmdd', dtpFinal.Date);
  cdsGerador.Params.ParamByName('iID_Empresa').AsInteger := cdsListaGeradorGerID_Empresa.AsInteger;
  cdsGerador.Active := True;

  cdsResumoGeral.Active := False;
  cdsResumoGeral.Params.ParamByName('sDataIni').AsString      := FormatDateTime('yyyymmdd', dtpInicial.Date);
  cdsResumoGeral.Params.ParamByName('sDataFim').AsString      := FormatDateTime('yyyymmdd', dtpFinal.Date);
  cdsResumoGeral.Params.ParamByName('iID_Empresa').AsInteger  := cdsListaGeradorGerID_Empresa.AsInteger;
  cdsResumoGeral.Params.ParamByName('iID_Situacao').AsInteger := cdsBuscarSituacaoID_Situacao.AsInteger;
  cdsResumoGeral.Active := True;

  cdsRelMesDetalhado.Active := False;
  cdsRelMesDetalhado.Params.ParamByName('sDataIni').AsString      := FormatDateTime('yyyymmdd', dtpInicial.Date);
  cdsRelMesDetalhado.Params.ParamByName('sDataFim').AsString      := FormatDateTime('yyyymmdd', dtpFinal.Date);
  cdsRelMesDetalhado.Params.ParamByName('iID_Empresa').AsInteger  := cdsListaGeradorGerID_Empresa.AsInteger;
  cdsRelMesDetalhado.Params.ParamByName('iID_Situacao').AsInteger := cdsBuscarSituacaoID_Situacao.AsInteger;
  cdsRelMesDetalhado.Active := True;

  cdsTotalNumPeriodo.Active := False;
  cdsTotalNumPeriodo.Params.ParamByName('iID_Empresa').AsInteger := cdsGeradorGerID_Empresa.AsInteger;
  cdsTotalNumPeriodo.Active := True;

  cdsTotalNumPeriodo.First;
  while not cdsTotalNumPeriodo.Eof do
  begin

    cdsListaNum.Active := False;
    cdsListaNum.Params.ParamByName('iID_Empresa').AsInteger := cdsGeradorGerID_Empresa.AsInteger;
    cdsListaNum.Params.ParamByName('iInicio').AsInteger     := cdsTotalNumPeriodoInicio.AsInteger;
    cdsListaNum.Params.ParamByName('iFim').AsInteger        := cdsTotalNumPeriodoFim.AsInteger;
    cdsListaNum.Open;
    cdsListaNum.Active := True;

    for I := cdsTotalNumPeriodoInicio.AsInteger to cdsTotalNumPeriodoFim.AsInteger do
    begin

      if not cdsListaNum.Locate('Numero', VarArrayOf([IntToStr(I)]), []) then
      begin
        sNumeros := sNumeros + IntToStr(I) + ', ';
      end;

    end;

    cdsTotalNumPeriodo.Next;

  end;

  //Delete(sNumeros, Length(sNumeros) - 1, 2);
  //sNumeros := sNumeros + '.';

  if sNumeros = '' then
  begin

  end
  else
  begin
    Delete(sNumeros, Length(sNumeros) - 1, 2);
    sNumeros := sNumeros + '.';
    sNumeros := 'SEGUIRÃO POSTERIORMENTE OS MANIFESTOS ABAIXO:' + #13 + sNumeros;
  end;

  cdsNaoAchou.Active := False;
  cdsNaoAchou.CreateDataSet;

  cdsNaoAchou.Edit;
  cdsNaoAchouNumeros.AsString := sNumeros;
  cdsNaoAchou.Post;

  frmPrincipal.rvpGestao_Empresarial.SetParam('TituloResumoGeral', dblTitRelatMensal.Text );

  frmPrincipal.rvpGestao_Empresarial.SetParam('TituloDetalhado', dblTitRelatResumoGeral.Text );

  frmPrincipal.rvpGestao_Empresarial.SetParam('DataRelat', FormatDateTime('"Rio de Janeiro," dd "de" mmmm "de" yyyy', dtpDataRelat.Date) );

  if chkAlteraResp.Checked then
  begin
    frmPrincipal.rvpGestao_Empresarial.SetParam('Responsavel', Trim(cdsResponsavelDescTratSigla.AsString) + ' ' + cdsResponsavelNome.AsString );
  end
  else
  begin
    //frmPrincipal.rvpFerpan.SetParam('Responsavel', Trim(cdsListaGeradorTrat.AsString) + ' ' + cdsListaGeradorNome.AsString );
    frmPrincipal.rvpGestao_Empresarial.SetParam('Responsavel', cdsListaGeradorGerResponsavel.AsString );
  end;

  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //  MOSTRA PROCEDÊNCIA                                                      //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  if chkMostraProcedencia.Checked then
  begin
    frmPrincipal.rvpGestao_Empresarial.SetParam('MostraProcedencia', 'True' );
  end
  else
  begin
    frmPrincipal.rvpGestao_Empresarial.SetParam('MostraProcedencia', 'False' );
  end;

  cdsRazaoSocial.Filter   := 'ID_Fantasia = ' + cdsRazaoSocialID_Fantasia.AsString;
  cdsRazaoSocial.Filtered := True;

  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //  GERA PROTOCOLO                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  GeraProtocolo(Self);
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //  GERA PROTOCOLO CDF                                                      //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  //GeraProtocoloCDF(Self);

  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //  MOSTRA ASSINATURA DO RESPONSAVEL                                        //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  iAssinaturaResponsavel  := StrToInt( iniSistemaArquivoIni.ReadString('RELATORIO', 'AssinaturaResponsavel', '' ) );
  sNomeCompleto           := iniSistemaArquivoIni.ReadString('RELATORIO', 'NomeCompleto',           '' );
  iAssinaturaDigitalizada := StrToInt( iniSistemaArquivoIni.ReadString('RELATORIO', 'AssinaturaDigitalizada', '' ) );
  sCaminhoArqAssDig       := iniSistemaArquivoIni.ReadString('RELATORIO', 'CaminhoArqAssDig',       '' );

  if iAssinaturaResponsavel = 0 then
   begin
     frmPrincipal.rvpGestao_Empresarial.SetParam('txtLinha', '__________________________________________' );
     frmPrincipal.rvpGestao_Empresarial.SetParam('lblAssinaturaResp', 'Responsável:' );
     frmPrincipal.rvpGestao_Empresarial.SetParam('txtAssinaturaResp', sNomeCompleto );
     frmPrincipal.rvpGestao_Empresarial.SetParam('sCaminhoArqAssDig', sCaminhoArqAssDig );

     if iAssinaturaDigitalizada = 0 then
      begin
        //sArq_Origem  := sSistemaPath + 'arq_assinatura.bmp';
        //sArq_Destino := sSistemaPath + 'arq_impressao.bmp';
        sCaminhoArqAssDig := sSistemaPath + 'arq_assinatura.bmp';
      end
     else if iAssinaturaDigitalizada = 1 then
      begin
        //sArq_Origem  := sSistemaPath + 'arq_em_branco.bmp';
        //sArq_Destino := sSistemaPath + 'arq_impressao.bmp';
        sCaminhoArqAssDig := sSistemaPath + 'arq_em_branco.bmp'
      end;
      //CopyFile(PChar(sArq_Origem), PChar(sArq_Destino), False);

   end
  else if iAssinaturaResponsavel = 1 then
   begin
     frmPrincipal.rvpGestao_Empresarial.SetParam('txtLinha', '' );
     frmPrincipal.rvpGestao_Empresarial.SetParam('lblAssinaturaResp', '' );
     frmPrincipal.rvpGestao_Empresarial.SetParam('txtAssinaturaResp', '' );

     //sArq_Origem  := sSistemaPath + 'arq_em_branco.bmp';
     //sArq_Destino := sSistemaPath + 'arq_impressao.bmp';
     //CopyFile(PChar(sArq_Origem), PChar(sArq_Destino), False);

     sCaminhoArqAssDig := sSistemaPath + 'arq_em_branco.bmp';
     frmPrincipal.rvpGestao_Empresarial.SetParam('sCaminhoArqAssDig', sCaminhoArqAssDig );
   end;

// Código para colocar no OnBeforePrint
// bmpAssinatura.FileLink := rvpFerpan.GetParam('sCaminhoArqAssDig');

  frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptMensal');
  cdsRazaoSocial.Filtered := False;

end;

procedure TfrmRelatRetiradaResiduo.btnImprimirTodosClick(Sender: TObject);
var
 I: integer;
 sNumeros: WideString;
begin
  inherited;

  cdsListaGerador.First;
  while not cdsListaGerador.Eof do
  begin

    cdsGerador.Active := False;
    cdsGerador.Params.ParamByName('sDataIni').AsString     := FormatDateTime('yyyymmdd', dtpInicial.Date);
    cdsGerador.Params.ParamByName('sDataFim').AsString     := FormatDateTime('yyyymmdd', dtpFinal.Date);
    cdsGerador.Params.ParamByName('iID_Empresa').AsInteger := cdsListaGeradorGerID_Empresa.AsInteger;
    cdsGerador.Active := True;

    cdsResumoGeral.Active := False;
    cdsResumoGeral.Params.ParamByName('sDataIni').AsString     := FormatDateTime('yyyymmdd', dtpInicial.Date);
    cdsResumoGeral.Params.ParamByName('sDataFim').AsString     := FormatDateTime('yyyymmdd', dtpFinal.Date);
    cdsResumoGeral.Params.ParamByName('iID_Empresa').AsInteger := cdsListaGeradorGerID_Empresa.AsInteger;
    cdsResumoGeral.Active := True;

    cdsTotalNumPeriodo.Active := False;
    cdsTotalNumPeriodo.Params.ParamByName('iID_Empresa').AsInteger := cdsGeradorGerID_Empresa.AsInteger;
    cdsTotalNumPeriodo.Active := True;

    cdsTotalNumPeriodo.First;
    while not cdsTotalNumPeriodo.Eof do
    begin

      cdsListaNum.Active := False;
      cdsListaNum.Params.ParamByName('iID_Empresa').AsInteger := cdsGeradorGerID_Empresa.AsInteger;
      cdsListaNum.Params.ParamByName('iInicio').AsInteger     := cdsTotalNumPeriodoInicio.AsInteger;
      cdsListaNum.Params.ParamByName('iFim').AsInteger        := cdsTotalNumPeriodoFim.AsInteger;
      cdsListaNum.Open;
      cdsListaNum.Active := True;

      for I := cdsTotalNumPeriodoInicio.AsInteger to cdsTotalNumPeriodoFim.AsInteger do
      begin

        if not cdsListaNum.Locate('Numero', VarArrayOf([IntToStr(I)]), []) then
        begin
          sNumeros := sNumeros + IntToStr(I) + ', ';
        end;

      end;

      cdsTotalNumPeriodo.Next;

    end;

    Delete(sNumeros, Length(sNumeros) - 1, 2);
    sNumeros := sNumeros + '.';

    cdsNaoAchou.Active := False;
    cdsNaoAchou.CreateDataSet;

    cdsNaoAchou.Edit;
    cdsNaoAchouNumeros.AsString := sNumeros;
    cdsNaoAchou.Post;

    frmPrincipal.rvpGestao_Empresarial.SetParam('TituloResumoGeral', dblTitRelatMensal.Text );
    frmPrincipal.rvpGestao_Empresarial.SetParam('TituloDetalhado', dblTitRelatResumoGeral.Text );
    frmPrincipal.rvpGestao_Empresarial.SetParam('Responsavel', Trim(cdsResponsavelDescTratSigla.AsString) + cdsResponsavelNome.AsString );

    frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptMensal');

    cdsListaGerador.Next;
  end;

end;

procedure TfrmRelatRetiradaResiduo.chkAlteraRespClick(Sender: TObject);
begin
  inherited;

  if chkAlteraResp.Checked then
  begin
    dblResponsavel.Color   := clWindow;
    dblResponsavel.Enabled := True;
  end
  else
  begin
    dblResponsavel.Color   := cl3DLight;
    dblResponsavel.Enabled := False;
  end;

end;


procedure TfrmRelatRetiradaResiduo.GeraProtocolo(Sender: TObject);
var
  iEmpresaAtu:   integer;
  iEmpresaAnt:   integer;
  sNumManifesto: String;

  sMesAnoAnt:    String;
  sMesAnoAtu:    String;
  sProcedenciaAtu:String;
  sProcedenciaAnt:String;

  LongMonthNames: array[1..12] of string;

begin
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // Preenche array com meses por extenso                                     //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  LongMonthNames[ 1] := 'Janeiro';
  LongMonthNames[ 2] := 'Fevereiro';
  LongMonthNames[ 3] := 'Março';
  LongMonthNames[ 4] := 'Abril';
  LongMonthNames[ 5] := 'Maio';
  LongMonthNames[ 6] := 'Junho';
  LongMonthNames[ 7] := 'Julho';
  LongMonthNames[ 8] := 'Agosto';
  LongMonthNames[ 9] := 'Setembro';
  LongMonthNames[ 10] := 'Outubro';
  LongMonthNames[ 11] := 'Novembro';
  LongMonthNames[ 12] := 'Dezembro';
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // Cria o dataset para ser preenchido.                                      //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
//  cdsProtocEmpresa.ClearFields;

  cdsProtocEmpresa.Active := False;
  cdsProtocEmpresa.FieldDefs.Clear;
  cdsProtocEmpresa.FieldDefs.Add('ID_Fantasia', ftInteger);
  cdsProtocEmpresa.FieldDefs.Add('Descricao', ftString, 50, False);
  cdsProtocEmpresa.FieldDefs.Add('RazaoSocial', ftString, 50, False);
  cdsProtocEmpresa.FieldDefs.Add('Endereco', ftString, 80, False);
  cdsProtocEmpresa.FieldDefs.Add('Municipio', ftString, 30, False);
  cdsProtocEmpresa.FieldDefs.Add('UF', ftString, 2, False);
  cdsProtocEmpresa.FieldDefs.Add('Responsavel', ftString, 50, False);
  cdsProtocEmpresa.FieldDefs.Add('TextProtoc', ftBlob);
  cdsProtocEmpresa.CreateDataSet;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // Ativa os datasets.                                                       //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  cdsProtocEmpresa.Active := True;
  cdsRazaoSocial.Active   := True;

  cdsProtocManif.Active   := False;;
  cdsProtocManif.Params.ParamByName('sDataIni').AsString  := FormatDateTime('yyyymmdd', dtpInicialProt.Date);
  cdsProtocManif.Params.ParamByName('sDataFim').AsString  := FormatDateTime('yyyymmdd', dtpFinalProt.Date);
  cdsProtocManif.Params.ParamByName('iID_Fantasia').AsInteger := cdsRazaoSocialID_Fantasia.AsInteger;
//  cdsProtocManif.Params.ParamByName('iID_Situacao').AsInteger := dblBuscarSituacao.KeyValue;
  cdsProtocManif.Active   := True;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // Início do loop.                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  cdsProtocEmpresa.Insert;

  cdsProtocEmpresa.FieldByName('ID_Fantasia').AsInteger := cdsRazaoSocial.FieldByName('ID_Fantasia').AsInteger;
  cdsProtocEmpresa.FieldByName('Descricao').AsString    := cdsRazaoSocial.FieldByName('Descricao').AsString;
  cdsProtocEmpresa.FieldByName('RazaoSocial').AsString  := cdsRazaoSocial.FieldByName('RazaoSocial').AsString;
  cdsProtocEmpresa.FieldByName('Endereco').AsString     := cdsRazaoSocial.FieldByName('Endereco').AsString;
  cdsProtocEmpresa.FieldByName('Municipio').AsString    := cdsRazaoSocial.FieldByName('Municipio').AsString;
  cdsProtocEmpresa.FieldByName('UF').AsString           := cdsRazaoSocial.FieldByName('UF').AsString;
  cdsProtocEmpresa.FieldByName('Responsavel').AsString  := cdsRazaoSocial.FieldByName('Responsavel').AsString;

  sNumManifesto := '';

  sMesAnoAnt      := LongMonthNames[cdsProtocManifMES.AsInteger] + '/' + cdsProtocManifANO.AsString;
  sMesAnoAtu      := LongMonthNames[cdsProtocManifMES.AsInteger] + '/' + cdsProtocManifANO.AsString;
  sProcedenciaAtu := cdsProtocManifProcedenciaDesc.AsString;
  sProcedenciaAnt := cdsProtocManifProcedenciaDesc.AsString;

  sNumManifesto := sProcedenciaAtu + #13#10;
  sNumManifesto := sNumManifesto + 'Referente ao mês ' + sMesAnoAtu + #13#10;

  cdsProtocManif.First;
  while (not cdsProtocManif.Eof) do
  begin
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // Quebra por procedencia.                                                //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    if (sProcedenciaAnt <> sProcedenciaAtu) then
    begin
      Delete(sNumManifesto, Length(sNumManifesto)-1, 2);
      sNumManifesto := sNumManifesto + '.' + #13#10 +  #13#10 + sProcedenciaAtu + #13#10;

      if (sMesAnoAnt = sMesAnoAtu) then
      begin
        sNumManifesto := sNumManifesto + 'Referente ao mês ' + sMesAnoAtu + #13#10;
      end;
    end;
    ////////////////////////////////////////////////////////////////////////////
    //                                                                        //
    // Quebra por data.                                                       //
    //                                                                        //
    ////////////////////////////////////////////////////////////////////////////
    if (sMesAnoAnt <> sMesAnoAtu) then
    begin

      if (sProcedenciaAnt = sProcedenciaAtu) then
      begin
        Delete(sNumManifesto, Length(sNumManifesto)-1, 2);
        sNumManifesto := sNumManifesto + #13#10 + #13#10 + 'Referente ao mês ' + sMesAnoAtu + #13#10;
      end
      else
      begin
        Delete(sNumManifesto, Length(sNumManifesto)-1, 2);
        sNumManifesto := sNumManifesto + #13#10 + 'Referente ao mês ' + sMesAnoAtu + #13#10;
      end;


    end;

    sNumManifesto := sNumManifesto + cdsProtocManif.FieldByName('Numero').AsString + ', ';
    cdsProtocManif.Next;

    sMesAnoAnt      := sMesAnoAtu;
    sMesAnoAtu      := LongMonthNames[cdsProtocManif.FieldByName('MES').AsInteger] + '/' + cdsProtocManif.FieldByName('ANO').AsString;
    sProcedenciaAnt := sProcedenciaAtu;
    sProcedenciaAtu := cdsProtocManifProcedenciaDesc.AsString;
  end;
  Delete(sNumManifesto, Length(sNumManifesto)-1, 2);
  sNumManifesto := sNumManifesto + '.';

  cdsProtocEmpresa.FieldByName('TextProtoc').AsString := sNumManifesto;
  cdsProtocEmpresa.Post;
end;

end.

