unit ufrmRelatListaCDFPendentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, DBCtrls, Buttons, StdCtrls, Mask, DB,
  DataSourceUrb, DBClient, ClientDataSetUrb, Provider, Grids, DBGrids,
  RpDefine, RpCon, RpConDS, ExtCtrls, FMTBcd, SqlExpr;

type
  TfrmRelatListaCDFPendentes = class(TfrmModeloMDIChild)
    gbxPeriodo: TGroupBox;
    lblDataInicial: TLabel;
    lblDataFinal: TLabel;
    txtDataInicial: TMaskEdit;
    txtDataFinal: TMaskEdit;
    dblEmpresaReceptora: TDBLookupComboBox;
    dspNomeFantasia: TDataSetProvider;
    cdsNomeFantasia: TClientDataSetUrb;
    dtsNomeFantasia: TDataSourceUrb;
    dspListaCDFPendentes: TDataSetProvider;
    cdsListaCDFPendentes: TClientDataSetUrb;
    dtsListaCDFPendentes: TDataSourceUrb;
    rdtsListaCDFPendentes: TRvDataSetConnection;
    cdsNomeFantasiaID_Empresa: TIntegerField;
    cdsNomeFantasiaRazaoSocial: TStringField;
    cdsListaCDFPendentesGerDtEntrega: TSQLTimeStampField;
    cdsListaCDFPendentesGerID_Empresa: TIntegerField;
    cdsListaCDFPendentesRazaoSocial: TStringField;
    cdsListaCDFPendentesNumero: TStringField;
    cdsListaCDFPendentesQuantidade: TFMTBCDField;
    cdsListaCDFPendentesCDF: TStringField;
    cdsListaCDFPendentesRecepID_Empresa: TIntegerField;
    cdsListaCDFPendentesID_Residuo: TIntegerField;
    cdsListaCDFPendentesResiduo: TStringField;
    cdsListaCDFPendentesID_Fantasia: TIntegerField;
    cdsListaCDFPendentesNomeFantasia: TStringField;
    cdsListaCDFPendentesID_Situacao: TIntegerField;
    cdsListaCDFPendentesSituacao: TStringField;
    lblEmpresaReceptora: TLabel;
    dspSituacaoOrigem: TDataSetProvider;
    cdsSituacaoOrigem: TClientDataSetUrb;
    dtsSituacaoOrigem: TDataSourceUrb;
    cdsSituacaoOrigemID_Situacao: TIntegerField;
    cdsSituacaoOrigemDescricao: TStringField;
    lblTituloRelat: TLabel;
    txtTituloRelat: TEdit;
    dspEmpresaGeradoraOrigem: TDataSetProvider;
    cdsEmpresaGeradoraOrigem: TClientDataSetUrb;
    dtsEmpresaGeradoraOrigem: TDataSourceUrb;
    cdsEmpresaGeradoraOrigemID_Fantasia: TIntegerField;
    cdsEmpresaGeradoraOrigemDescricao: TStringField;
    btnVisualizarImpressao: TBitBtn;
    gbxEmpresaGeradora: TGroupBox;
    btnGeradoraIncluir: TSpeedButton;
    btnGeradoraIncluirTodos: TSpeedButton;
    btnGeradoraExcluir: TSpeedButton;
    btnGeradoraExcluirTodos: TSpeedButton;
    gbxSituacaoManifesto: TGroupBox;
    lstEmpresaGeradoraOrigem: TDBLookupListBox;
    lstEmpresaGeradoraDestino: TDBLookupListBox;
    cdsEmpresaGeradoraDestino: TClientDataSetUrb;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dtsEmpresaGeradoraDestino: TDataSourceUrb;
    lstSituacaoOrigem: TDBLookupListBox;
    btnSituacaoIncluir: TSpeedButton;
    btnSituacaoIncluirTodos: TSpeedButton;
    btnSituacaoExcluir: TSpeedButton;
    btnSituacaoExcluirTodos: TSpeedButton;
    lstSituacaoDestino: TDBLookupListBox;
    gbxResiduo: TGroupBox;
    btnResiduoIncluir: TSpeedButton;
    btnResiduoIncluirTodos: TSpeedButton;
    btnResiduoExcluir: TSpeedButton;
    btnResiduoExcluirTodos: TSpeedButton;
    DBLookupListBox4: TDBLookupListBox;
    DBLookupListBox5: TDBLookupListBox;
    rdgTipoManifesto: TRadioGroup;
    dspResiduoOrigem: TDataSetProvider;
    cdsResiduoOrigem: TClientDataSetUrb;
    dtsResiduoOrigem: TDataSourceUrb;
    cdsResiduoOrigemID_Residuo: TIntegerField;
    cdsResiduoOrigemDescricao: TStringField;
    cdsSituacaoDestino: TClientDataSetUrb;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    dtsSituacaoDestino: TDataSourceUrb;
    cdsResiduoDestino: TClientDataSetUrb;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    dtsResiduoDestino: TDataSourceUrb;
    btnSalvarTitulo: TSpeedButton;
    sqlListaCDFPendentes: TSQLDataSet;
    sqlListaCDFPendentesNumero: TStringField;
    sqlListaCDFPendentesGerDtEntrega: TSQLTimeStampField;
    sqlListaCDFPendentesDescGerEmpresa: TStringField;
    sqlListaCDFPendentesDescResiduo: TStringField;
    sqlListaCDFPendentesQuantidade: TFMTBCDField;
    sqlListaCDFPendentesDescUnidade: TStringField;
    sqlListaCDFPendentesDescProcedencia: TStringField;
    sqlListaCDFPendentesDescRecepEmpresa: TStringField;
    sqlListaCDFPendentesRecepDtReceb: TSQLTimeStampField;
    sqlListaCDFPendentesDescStatus: TStringField;
    sqlListaCDFPendentesDtChegou: TSQLTimeStampField;
    sqlListaCDFPendentesDtEnvio: TSQLTimeStampField;
    sqlListaCDFPendentesID_LoteEnvio: TIntegerField;
    sqlListaCDFPendentesRecepID_Empresa: TIntegerField;
    sqlListaCDFPendentesDescEstadoFisico: TStringField;
    sqlListaCDFPendentesDescAcond: TStringField;
    sqlListaCDFPendentesDescOrigem: TStringField;
    sqlListaCDFPendentesDescTratDisp: TStringField;
    sqlListaCDFPendentesDescGerResponsavel: TStringField;
    sqlListaCDFPendentesDescTransEmpresa: TStringField;
    sqlListaCDFPendentesDescTransResponsavel: TStringField;
    sqlListaCDFPendentesDescRecepResponsavel: TStringField;
    sqlListaCDFPendentesDescSituacao: TStringField;
    sqlListaCDFPendentesNumCertificado: TIntegerField;
    sqlListaCDFPendentesID_Unidade: TIntegerField;
    sqlListaCDFPendentesID_Residuo: TIntegerField;
    sqlListaCDFPendentesID_EstadoFisico: TIntegerField;
    sqlListaCDFPendentesID_Acond: TIntegerField;
    sqlListaCDFPendentesID_Origem: TIntegerField;
    sqlListaCDFPendentesID_Procedencia: TIntegerField;
    sqlListaCDFPendentesID_TratDisp: TIntegerField;
    sqlListaCDFPendentesID_Status: TIntegerField;
    sqlListaCDFPendentesGerID_Empresa: TIntegerField;
    sqlListaCDFPendentesGerNumInventario: TStringField;
    sqlListaCDFPendentesGerID_Responsavel: TIntegerField;
    sqlListaCDFPendentesTransDtReceb: TSQLTimeStampField;
    sqlListaCDFPendentesTransID_Empresa: TIntegerField;
    sqlListaCDFPendentesTransID_Responsavel: TIntegerField;
    sqlListaCDFPendentesTransNomeMotorista: TStringField;
    sqlListaCDFPendentesTransPlacaVeiculo: TStringField;
    sqlListaCDFPendentesTransCertificado: TStringField;
    sqlListaCDFPendentesRecepNumInventario: TStringField;
    sqlListaCDFPendentesRecepID_Responsavel: TIntegerField;
    sqlListaCDFPendentesID_Situacao: TIntegerField;
    sqlListaCDFPendentesObs: TBlobField;
    sqlListaCDFPendentesGerResponsavel: TStringField;
    sqlListaCDFPendentesTransResponsavel: TStringField;
    sqlListaCDFPendentesRecepResponsavel: TStringField;
    sqlListaCDFPendentesCDF: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVisualizarImpressaoClick(Sender: TObject);
    procedure btnGeradoraIncluirClick(Sender: TObject);
    procedure btnGeradoraIncluirTodosClick(Sender: TObject);
    procedure btnGeradoraExcluirClick(Sender: TObject);
    procedure btnGeradoraExcluirTodosClick(Sender: TObject);
    procedure btnSituacaoIncluirClick(Sender: TObject);
    procedure btnSituacaoIncluirTodosClick(Sender: TObject);
    procedure btnSituacaoExcluirTodosClick(Sender: TObject);
    procedure btnSituacaoExcluirClick(Sender: TObject);
    procedure btnResiduoIncluirClick(Sender: TObject);
    procedure btnResiduoExcluirTodosClick(Sender: TObject);
    procedure btnResiduoIncluirTodosClick(Sender: TObject);
    procedure btnResiduoExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MoveSelected(List: TCustomListBox; Items: TStrings);
    procedure SetItem(List: TListBox; Index: Integer);
//    function GetFirstSelection(List: TCustomListBox): Integer;
    function GetFirstSelection(List: TClientDataSetUrb): Integer;
    procedure SetButtonsEmpresaGeradora;
    procedure SetButtonsSituacao;
    procedure SetButtonsResiduo;
  end;

var
  frmRelatListaCDFPendentes: TfrmRelatListaCDFPendentes;

implementation

uses ufrmPrincipal;

{$R *.dfm}

procedure TfrmRelatListaCDFPendentes.FormCreate(Sender: TObject);
begin
  inherited;

  txtDataInicial.Text := '01/01' + Copy(DateToStr(Date),6,5);
  txtDataFinal.Text   := DateToStr(Date);


  dblEmpresaReceptora.KeyValue := 48;


  frmPrincipal.sqlDataSet.CommandText := 'SELECT e.ID_Empresa, e.RazaoSocial FROM empresa e order by 2';
  cdsNomeFantasia.Active := True;

  frmPrincipal.sqlDataSet.CommandText := 'SELECT f.ID_Fantasia, f.Descricao FROM fantasia f order by 2';
  cdsEmpresaGeradoraOrigem.Active := True;
  cdsEmpresaGeradoraDestino.CreateDataSet;

  frmPrincipal.sqlDataSet.CommandText := 'SELECT s.ID_Situacao, s.Descricao FROM situacao s  WHERE ( s.ID_Situacao > 1 ) order by 2';
  cdsSituacaoOrigem.Active  := True;
  cdsSituacaoDestino.CreateDataSet;

  frmPrincipal.sqlDataSet.CommandText := 'SELECT r.ID_Residuo, r.Descricao FROM residuo r ORDER BY r.Descricao';
  cdsResiduoOrigem.Active := True;
  cdsResiduoDestino.CreateDataSet;
end;


procedure TfrmRelatListaCDFPendentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsNomeFantasia.Active          := False;
  cdsEmpresaGeradoraOrigem.Active := False;
  cdsEmpresaGeradoraDestino.Free;

  cdsSituacaoOrigem.Active        := False;
  cdsResiduoOrigem.Active         := False;
end;

procedure TfrmRelatListaCDFPendentes.btnVisualizarImpressaoClick(
  Sender: TObject);
var
 sReceptor:        string;
 sGerID_Empresa:   string;
 sDtInicial:       string;
 sDtFinal:         string;
 sTituloPeriodo:   string;
 sTituloPrincipal: string;
 sTipoManifesto:   string;
 sSituacao:        string;
 sEmpresaGeradora: string;
 sResiduo:         string;
begin
  inherited;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // CRITICA OS VALORES DIGITADOS PELO USUÁRIO.                               //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  if cdsSituacaoDestino.RecordCount = 0 then
   begin
    ShowMessage('Você deve selecionar ao menos uma "Situação do Manifesto".');
    Exit;
   end;

  if cdsEmpresaGeradoraDestino.RecordCount = 0 then
   begin
    ShowMessage('Você deve selecionar ao menos uma "Empresa Geradora".');
    Exit;
   end;

  if cdsResiduoDestino.RecordCount = 0 then
   begin
    ShowMessage('Você deve selecionar ao menos um "Resíduo".');
    Exit;
   end;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // ATRIBUIÇÃO DE VARIÁVEIS.                                                 //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  sReceptor        := cdsNomeFantasiaID_Empresa.AsString;
  sGerID_Empresa   := cdsEmpresaGeradoraOrigemID_Fantasia .AsString;
  sTipoManifesto   := '';
  sSituacao        := '';
  sEmpresaGeradora := '';
  sResiduo         := '';
  sDtInicial       := FormatDateTime('yyyymmdd', StrToDate(txtDataInicial.Text));
  sDtFinal         := FormatDateTime('yyyymmdd', StrToDate(txtDataFinal.Text));
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // VERIFICA SE OS MANIF. SELECIONADOS SÃO "SEM CDF", "COM CDF" OU "AMBOS".  //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  if rdgTipoManifesto.ItemIndex = 0 then
   begin
     sTipoManifesto := '          ( m.CDF IS NULL or m.CDF = ''''            ) and ';
   end
  else if rdgTipoManifesto.ItemIndex = 1 then
   begin
     sTipoManifesto := '          ( m.CDF IS NOT NULL or m.CDF <> ''''            ) and ';
   end
  else if rdgTipoManifesto.ItemIndex = 2 then
   begin
     sTipoManifesto := ''
   end;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // VERIFICA/PROCESSA AS SITUAÇÕES SELECIONADAS.                             //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  cdsSituacaoDestino.First;
  while not cdsSituacaoDestino.Eof do
   begin
     sSituacao := sSituacao + cdsSituacaoDestino.FieldByName('ID_Situacao').AsString + ',';
     cdsSituacaoDestino.Next;
   end;
  sSituacao := Copy(sSituacao, 1, Length(sSituacao) -1);
  sSituacao := '( m.ID_Situacao IN (' + sSituacao + ') ) and' ;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // VERIFICA/PROCESSA AS EMPRESAS GERADORAS SELECIONADAS.                    //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  cdsEmpresaGeradoraDestino.First;
  while not cdsEmpresaGeradoraDestino.Eof do
   begin
     sEmpresaGeradora := sEmpresaGeradora + cdsEmpresaGeradoraDestino.FieldByName('ID_Fantasia').AsString + ',';
     cdsEmpresaGeradoraDestino.Next;
   end;
  sEmpresaGeradora := Copy(sEmpresaGeradora, 1, Length(sEmpresaGeradora) -1);
  sEmpresaGeradora := '( e.ID_Fantasia IN (' + sEmpresaGeradora + ') ) and' ;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // VERIFICA/PROCESSA OS RESÍDUOS SELECIONADAS.                              //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  cdsResiduoDestino.First;
  while not cdsResiduoDestino.Eof do
   begin
     sResiduo := sResiduo + cdsResiduoDestino.FieldByName('ID_Residuo').AsString + ',';
     cdsResiduoDestino.Next;
   end;
  sResiduo := Copy(sResiduo, 1, Length(sResiduo) -1);
  sResiduo := '( m.ID_Residuo IN (' + sResiduo + ') ) and' ;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // MONTA A INSTRUÇÃO SQL.                                                   //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  frmPrincipal.sqlDataSet.CommandText := ' SELECT '                                                  +
                                          '          m.GerDtEntrega, '                                +
                                          '          m.GerID_Empresa, '                               +
                                          '          e.RazaoSocial, '                                 +
                                          '          m.Numero, '                                      +
                                          '          m.Quantidade, '                                  +
                                          '          m.CDF, '                                         +
                                          '          m.RecepID_Empresa, '                             +
                                          '          m.ID_Residuo, '                                  +
                                          '          r.Descricao AS Residuo, '                        +
                                          '          m.ID_Situacao, '                                 +
                                          '          s.Descricao AS Situacao, '                       +
                                          '          e.ID_Fantasia, '                                 +
                                          '          f.Descricao AS NomeFantasia '                    +
                                          ' FROM '                                                    +
                                          '          manifesto m, '                                   +
                                          '          residuo r, '                                     +
                                          '          empresa e, '                                     +
                                          '          fantasia f, '                                    +
                                          '          situacao s '                                     +
                                          ' WHERE '                                                   +
                                          sTipoManifesto                                              +
                                          sSituacao                                                   +
                                          sEmpresaGeradora                                            +
                                          sResiduo                                                    +
                                          '          ( m.RecepID_Empresa =  ' + sReceptor  + ' ) and ' +
                                          '          ( m.GerDtEntrega         >= ' + sDtInicial + ' ) and ' +
                                          '          ( m.GerDtEntrega         <= ' + sDtFinal   + ' ) and ' +
                                          '          ( m.ID_Residuo           = r.ID_Residuo  ) and ' +
                                          '          ( m.GerID_Empresa        = e.ID_Empresa  ) and ' +
                                          '          ( e.ID_Fantasia          = f.ID_Fantasia ) and ' +
                                          '          ( m.ID_Situacao          = s.ID_Situacao ) '     +
                                          ' ORDER BY 13, 1 ';

  cdsListaCDFPendentes.Active := False;
  cdsListaCDFPendentes.Active := True;

  sTituloPeriodo   := 'Período de ' + txtDataInicial.Text + ' até ' + txtDataFinal.Text;
  sTituloPrincipal := txtTituloRelat.Text;

  frmPrincipal.rvpGestao_Empresarial.SetParam('TituloListaCDFPendentes', cdsNomeFantasiaRazaoSocial.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('TituloPeriodo', sTituloPeriodo );
  frmPrincipal.rvpGestao_Empresarial.SetParam('TituloPrincipal', sTituloPrincipal );

  frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptListaCDFPendentes');

end;

procedure TfrmRelatListaCDFPendentes.btnGeradoraIncluirClick(Sender: TObject);
var
  Index: Integer;
begin
  inherited;
//  Index := GetFirstSelection(SrcList);
//  MoveSelected(SrcList, DstList.Items);
//  SetItem(SrcList, Index);

  cdsEmpresaGeradoraDestino.Insert;
  cdsEmpresaGeradoraDestino.FieldByName('ID_Fantasia').AsInteger := cdsEmpresaGeradoraOrigemID_Fantasia.AsInteger;
  cdsEmpresaGeradoraDestino.FieldByName('Descricao').AsString  := cdsEmpresaGeradoraOrigemDescricao.AsString;
  cdsEmpresaGeradoraDestino.Post;

  cdsEmpresaGeradoraOrigem.Delete;

  SetButtonsEmpresaGeradora;
end;

procedure TfrmRelatListaCDFPendentes.btnGeradoraIncluirTodosClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
{
  for I := 0 to SrcList.Items.Count - 1 do
    DstList.Items.AddObject(SrcList.Items[I],
      SrcList.Items.Objects[I]);
  SrcList.Items.Clear;
  SetItem(SrcList, 0);
}


  cdsEmpresaGeradoraOrigem.First;
  while not cdsEmpresaGeradoraOrigem.Eof do
   begin
     cdsEmpresaGeradoraDestino.Insert;
     cdsEmpresaGeradoraDestino.FieldByName('ID_Fantasia').AsInteger := cdsEmpresaGeradoraOrigemID_Fantasia.AsInteger;
     cdsEmpresaGeradoraDestino.FieldByName('Descricao').AsString  := cdsEmpresaGeradoraOrigemDescricao.AsString;
     cdsEmpresaGeradoraDestino.Post;

     cdsEmpresaGeradoraOrigem.Delete;
   end;

  SetButtonsEmpresaGeradora;
end;

procedure TfrmRelatListaCDFPendentes.btnGeradoraExcluirClick(Sender: TObject);
var
  Index: Integer;
begin
  inherited;
{
  Index := GetFirstSelection(DstList);
  MoveSelected(DstList, SrcList.Items);
  SetItem(DstList, Index);
}

  cdsEmpresaGeradoraOrigem.Insert;
  cdsEmpresaGeradoraOrigem.FieldByName('ID_Fantasia').AsInteger := cdsEmpresaGeradoraDestino.FieldByName('ID_Fantasia').AsInteger;
  cdsEmpresaGeradoraOrigem.FieldByName('Descricao').AsString    := cdsEmpresaGeradoraDestino.FieldByName('Descricao').AsString;
  cdsEmpresaGeradoraOrigem.Post;

  cdsEmpresaGeradoraDestino.Delete;

  SetButtonsEmpresaGeradora;
end;

procedure TfrmRelatListaCDFPendentes.btnGeradoraExcluirTodosClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
{
  for I := 0 to DstList.Items.Count - 1 do
    SrcList.Items.AddObject(DstList.Items[I], DstList.Items.Objects[I]);
  DstList.Items.Clear;
  SetItem(DstList, 0);
}

  cdsEmpresaGeradoraDestino.First;
  while not cdsEmpresaGeradoraDestino.Eof do
   begin
     cdsEmpresaGeradoraOrigem.Insert;
     cdsEmpresaGeradoraOrigem.FieldByName('ID_Fantasia').AsInteger := cdsEmpresaGeradoraDestino.FieldByName('ID_Fantasia').AsInteger;
     cdsEmpresaGeradoraOrigem.FieldByName('Descricao').AsString    := cdsEmpresaGeradoraDestino.FieldByName('Descricao').AsString;
     cdsEmpresaGeradoraOrigem.Post;

     cdsEmpresaGeradoraDestino.Delete;
   end;

  SetButtonsEmpresaGeradora;

end;

procedure TfrmRelatListaCDFPendentes.SetItem(List: TListBox; Index: Integer);
var
  MaxIndex: Integer;
begin
  with List do
  begin
    SetFocus;
    MaxIndex := List.Items.Count - 1;
    if Index = LB_ERR then Index := 0
    else if Index > MaxIndex then Index := MaxIndex;
    Selected[Index] := True;
  end;
  SetButtonsEmpresaGeradora;
end;

procedure TfrmRelatListaCDFPendentes.MoveSelected(List: TCustomListBox; Items: TStrings);
var
  I: Integer;
begin
  for I := List.Items.Count - 1 downto 0 do
    if List.Selected[I] then
    begin
      Items.AddObject(List.Items[I], List.Items.Objects[I]);
      List.Items.Delete(I);
    end;
end;

procedure TfrmRelatListaCDFPendentes.SetButtonsEmpresaGeradora;
var
  OrigemVazio:  Boolean;
  DestinoVazio: Boolean;
begin
  OrigemVazio  := cdsEmpresaGeradoraOrigem.RecordCount  = 0;
  DestinoVazio := cdsEmpresaGeradoraDestino.RecordCount = 0;

  btnGeradoraIncluir.Enabled      := not OrigemVazio;
  btnGeradoraIncluirTodos.Enabled := not OrigemVazio;
  btnGeradoraExcluir.Enabled      := not DestinoVazio;
  btnGeradoraExcluirTodos.Enabled := not DestinoVazio;
end;

procedure TfrmRelatListaCDFPendentes.SetButtonsSituacao;
var
  OrigemVazio:  Boolean;
  DestinoVazio: Boolean;
begin
  OrigemVazio  := cdsSituacaoOrigem.RecordCount  = 0;
  DestinoVazio := cdsSituacaoDestino.RecordCount = 0;

  btnSituacaoIncluir.Enabled      := not OrigemVazio;
  btnSituacaoIncluirTodos.Enabled := not OrigemVazio;
  btnSituacaoExcluir.Enabled      := not DestinoVazio;
  btnSituacaoExcluirTodos.Enabled := not DestinoVazio;
end;

procedure TfrmRelatListaCDFPendentes.SetButtonsResiduo;
var
  OrigemVazio:  Boolean;
  DestinoVazio: Boolean;
begin
  OrigemVazio  := cdsResiduoOrigem.RecordCount  = 0;
  DestinoVazio := cdsResiduoDestino.RecordCount = 0;

  btnResiduoIncluir.Enabled      := not OrigemVazio;
  btnResiduoIncluirTodos.Enabled := not OrigemVazio;
  btnResiduoExcluir.Enabled      := not DestinoVazio;
  btnResiduoExcluirTodos.Enabled := not DestinoVazio;
end;


{
function TfrmRelatListaCDFPendentes.GetFirstSelection(List: TCustomListBox): Integer;
begin
  for Result := 0 to List.Items.Count - 1 do
    if List.Selected[Result] then Exit;
  Result := LB_ERR;
end;
}

function TfrmRelatListaCDFPendentes.GetFirstSelection(List: TClientDataSetUrb): Integer;
begin
//  for Result := 0 to List.RecordCount - 1 do
//    if List.Selected[Result] then Exit;
  Result := LB_ERR;
end;





procedure TfrmRelatListaCDFPendentes.btnSituacaoIncluirClick(
  Sender: TObject);
begin
  inherited;
  cdsSituacaoDestino.Insert;
  cdsSituacaoDestino.FieldByName('ID_Situacao').AsInteger := cdsSituacaoOrigemID_Situacao.AsInteger;
  cdsSituacaoDestino.FieldByName('Descricao').AsString    := cdsSituacaoOrigemDescricao.AsString;
  cdsSituacaoDestino.Post;

  cdsSituacaoOrigem.Delete;

  SetButtonsSituacao;

end;

procedure TfrmRelatListaCDFPendentes.btnSituacaoIncluirTodosClick(
  Sender: TObject);
begin
  inherited;

  cdsSituacaoOrigem.First;
  while not cdsSituacaoOrigem.Eof do
   begin
     cdsSituacaoDestino.Insert;
     cdsSituacaoDestino.FieldByName('ID_Situacao').AsInteger := cdsSituacaoOrigemID_Situacao.AsInteger;
     cdsSituacaoDestino.FieldByName('Descricao').AsString  := cdsSituacaoOrigemDescricao.AsString;
     cdsSituacaoDestino.Post;

     cdsSituacaoOrigem.Delete;
   end;

  SetButtonsSituacao;

end;

procedure TfrmRelatListaCDFPendentes.btnSituacaoExcluirTodosClick(
  Sender: TObject);
begin
  inherited;

  cdsSituacaoDestino.First;
  while not cdsSituacaoDestino.Eof do
   begin
     cdsSituacaoOrigem.Insert;
     cdsSituacaoOrigem.FieldByName('ID_Situacao').AsInteger := cdsSituacaoDestino.FieldByName('ID_Situacao').AsInteger;
     cdsSituacaoOrigem.FieldByName('Descricao').AsString    := cdsSituacaoDestino.FieldByName('Descricao').AsString;
     cdsSituacaoOrigem.Post;

     cdsSituacaoDestino.Delete;
   end;

  SetButtonsSituacao;

end;

procedure TfrmRelatListaCDFPendentes.btnSituacaoExcluirClick(
  Sender: TObject);
begin
  inherited;
  cdsSituacaoOrigem.Insert;
  cdsSituacaoOrigem.FieldByName('ID_Situacao').AsInteger := cdsSituacaoDestino.FieldByName('ID_Situacao').AsInteger;
  cdsSituacaoOrigem.FieldByName('Descricao').AsString    := cdsSituacaoDestino.FieldByName('Descricao').AsString;
  cdsSituacaoOrigem.Post;

  cdsSituacaoDestino.Delete;

  SetButtonsSituacao;

end;

procedure TfrmRelatListaCDFPendentes.btnResiduoIncluirClick(
  Sender: TObject);
begin
  inherited;
  cdsResiduoDestino.Insert;
  cdsResiduoDestino.FieldByName('ID_Residuo').AsInteger := cdsResiduoOrigemID_Residuo.AsInteger;
  cdsResiduoDestino.FieldByName('Descricao').AsString    := cdsResiduoOrigemDescricao.AsString;
  cdsResiduoDestino.Post;

  cdsResiduoOrigem.Delete;

  SetButtonsResiduo;
end;

procedure TfrmRelatListaCDFPendentes.btnResiduoExcluirTodosClick(
  Sender: TObject);
begin
  inherited;
  cdsResiduoDestino.First;
  while not cdsResiduoDestino.Eof do
   begin
     cdsResiduoOrigem.Insert;
     cdsResiduoOrigem.FieldByName('ID_Residuo').AsInteger := cdsResiduoDestino.FieldByName('ID_Residuo').AsInteger;
     cdsResiduoOrigem.FieldByName('Descricao').AsString    := cdsResiduoDestino.FieldByName('Descricao').AsString;
     cdsResiduoOrigem.Post;

     cdsResiduoDestino.Delete;
   end;

  SetButtonsResiduo;

end;

procedure TfrmRelatListaCDFPendentes.btnResiduoIncluirTodosClick(
  Sender: TObject);
begin
  inherited;
  cdsResiduoOrigem.First;
  while not cdsResiduoOrigem.Eof do
   begin
     cdsResiduoDestino.Insert;
     cdsResiduoDestino.FieldByName('ID_Residuo').AsInteger := cdsResiduoOrigemID_Residuo.AsInteger;
     cdsResiduoDestino.FieldByName('Descricao').AsString  := cdsResiduoOrigemDescricao.AsString;
     cdsResiduoDestino.Post;

     cdsResiduoOrigem.Delete;
   end;

  SetButtonsResiduo;

end;

procedure TfrmRelatListaCDFPendentes.btnResiduoExcluirClick(
  Sender: TObject);
begin
  inherited;
  cdsResiduoOrigem.Insert;
  cdsResiduoOrigem.FieldByName('ID_Residuo').AsInteger := cdsResiduoDestino.FieldByName('ID_Residuo').AsInteger;
  cdsResiduoOrigem.FieldByName('Descricao').AsString   := cdsResiduoDestino.FieldByName('Descricao').AsString;
  cdsResiduoOrigem.Post;

  cdsResiduoDestino.Delete;

  SetButtonsResiduo;
end;

end.


SELECT
         m.GerDtEntrega,
         m.GerID_Empresa,
         e.RazaoSocial,
         m.Numero,
         m.Quantidade,
         m.CDF,
         m.RecepID_Empresa,
         m.ID_Residuo,
         r.Descricao AS Residuo,
         m.ID_Situacao,
         s.Descricao AS Situacao,
         e.ID_Fantasia,
         f.Descricao AS NomeFantasia
FROM
         manifesto m,
         residuo r,
         empresa e,
         fantasia f,
         situacao s
WHERE
         ( m.CDF IS NULL or m.CDF = ''            ) and
         ( m.RecepID_Empresa      =  48           ) and
         ( m.GerDtEntrega         >= 20070101     ) and
         ( m.GerDtEntrega         <= 20070920     ) and
         ( m.ID_Residuo           = r.ID_Residuo  ) and
         ( m.GerID_Empresa        = e.ID_Empresa  ) and
         ( e.ID_Fantasia          = f.ID_Fantasia ) and
         ( m.ID_Situacao          = s.ID_Situacao ) and
         ( m.ID_Situacao         IN (5,2) )
ORDER BY 13, 1
