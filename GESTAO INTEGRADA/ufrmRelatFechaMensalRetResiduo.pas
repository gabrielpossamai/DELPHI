unit ufrmRelatFechaMensalRetResiduo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloRelatWizard, RpDefine, RpCon, RpConDS, DB,
  DataSourceUrb, DBClient, ClientDataSetUrb, Provider, DBCtrls, ExtCtrls,
  Mask, StdCtrls, ComCtrls, Buttons, uVariaveisGlobais, DataSetProviderUrb,
  FMTBcd, SqlExpr;

type
  TfrmRelatFechaMensalRetResiduo = class(TfrmModeloRelatWizard)
    procedure btnFinalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatFechaMensalRetResiduo: TfrmRelatFechaMensalRetResiduo;

implementation

uses ufrmPrincipal;

{$R *.dfm}

procedure TfrmRelatFechaMensalRetResiduo.btnFinalizarClick(
  Sender: TObject);
var
 sReceptor:          string;
 sGerID_Empresa:     string;
 sDtInicial:         string;
 sDtFinal:           string;
 sTituloPeriodo:     string;
 sTituloPrincipal:   string;
 sTipoManifesto:     string;
 sEmpresaGeradora:   string;
 sEmpresaReceptora:  string;
 sSituacao:          string;
 sResiduo:           string;
 sCampoValorReceber: string;
 sOrderBy:           string;

 iAssinaturaResponsavel:  Integer;
 sNomeCompleto:           string;
 iAssinaturaDigitalizada: Integer;
 sCaminhoArqAssDig:       string;


begin
//  inherited;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // CRITICA OS VALORES DIGITADOS PELO USUÁRIO.                               //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  if cdsEmpresaGeradoraDestino.RecordCount = 0 then
   begin
    ShowMessage('Você deve selecionar ao menos uma "Empresa Geradora".');
    Exit;
   end;

  if cdsEmpresaReceptoraDestino.RecordCount = 0 then
   begin
    ShowMessage('Você deve selecionar ao menos uma "Empresa Receptora".');
    Exit;
   end;

  if cdsSituacaoDestino.RecordCount = 0 then
   begin
    ShowMessage('Você deve selecionar ao menos uma "Situação do Manifesto".');
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

  // verificar como vai ficar o sReceptor
  //sReceptor         := cdsNomeFantasiaID_Empresa.AsString;
  sGerID_Empresa    := cdsEmpresaGeradoraOrigemID_Fantasia .AsString;
  sTipoManifesto    := '';
  sSituacao         := '';
  sEmpresaGeradora  := '';
  sEmpresaReceptora := '';
  sResiduo          := '';
  sDtInicial        := FormatDateTime('yyyymmdd', StrToDate(txtDataInicial.Text));
  sDtFinal          := FormatDateTime('yyyymmdd', StrToDate(txtDataFinal.Text));
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
  // VERIFICA/PROCESSA AS EMPRESAS RECEPTORAS SELECIONADAS.                   //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  cdsEmpresaReceptoraDestino.First;
  while not cdsEmpresaReceptoraDestino.Eof do
   begin
     sEmpresaReceptora := sEmpresaReceptora + cdsEmpresaReceptoraDestino.FieldByName('ID_Empresa').AsString + ',';
     cdsEmpresaReceptoraDestino.Next;
   end;
  sEmpresaReceptora := Copy(sEmpresaReceptora, 1, Length(sEmpresaReceptora) -1);
  sEmpresaReceptora := '( m.RecepID_Empresa IN (' + sEmpresaReceptora + ') ) and' ;
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
  // VERIFICA/PROCESSA  INFORMAÇÕES REFERENTES AO RELATORIO SELECIONADO.       //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  if cbxRelatorios.ItemIndex = 0 then
   begin
     ///////////////////////////////////////////////////////////////////////////
     // Não Multiplica por mil caso o relatório selecionado seja listagem     //
     ///////////////////////////////////////////////////////////////////////////
     sCampoValorReceber := '          m.Quantidade * IF(m.GerID_Empresa=27, 200.00, r.ValorMercado) AS ValorReceber, ';
     sOrderBy := ' ORDER BY 3, 1, 2 ';
     ///////////////////////////////////////////////////////////////////////////
     // Define a ordem/quebra do relatorio                                    //
     ///////////////////////////////////////////////////////////////////////////
     sOrderBy := ' ORDER BY 3, 1, 2 ';
   end
  else if cbxRelatorios.ItemIndex = 1 then
   begin
     ///////////////////////////////////////////////////////////////////////////
     // Não Multiplica por mil caso o relatório selecionado seja sucata       //
     ///////////////////////////////////////////////////////////////////////////
     sCampoValorReceber := '          m.Quantidade * IF(m.GerID_Empresa=27, 200.00, r.ValorMercado) AS ValorReceber, ';
     sOrderBy := ' ORDER BY 3, 1, 2 ';
   end
  else if cbxRelatorios.ItemIndex = 2 then
   begin
     ///////////////////////////////////////////////////////////////////////////
     // Multiplica por mil caso o relatório selecionado for o recicláveis     //
     ///////////////////////////////////////////////////////////////////////////
     sCampoValorReceber := '           m.Quantidade * (IF(m.GerID_Empresa=27, 200.00, r.ValorMercado)) * 1000 AS ValorReceber, ';
     sOrderBy := ' ORDER BY 3, 1, 2 ';
   end
  else if cbxRelatorios.ItemIndex = 3 then
   begin
     ///////////////////////////////////////////////////////////////////////////
     // Multiplica por mil caso o relatório selecionado for o recicláveis     //
     ///////////////////////////////////////////////////////////////////////////
     sCampoValorReceber := '           m.Quantidade * (IF(m.GerID_Empresa=27, 200.00, r.ValorMercado)) * 1000 AS ValorReceber, ';
     sOrderBy := ' ORDER BY 1, 4, 5 ';
   end;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  // MONTA A INSTRUÇÃO SQL.                                                   //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  frmPrincipal.sqlDataSet.CommandText := ' SELECT '                                                  +
                                          '          f.Descricao AS NomeFantasia, '                   +
                                          '          m.GerDtEntrega, '                                +
                                          '          er.RazaoSocial AS RazaoSocialRecep, '            +
                                          '          p.Descricao AS Procedencia, '                    +
                                          '          r.Descricao AS Residuo, '                        +
                                          '          m.GerID_Empresa, '                               +
                                          '          e.RazaoSocial, '                                 +
                                          '          m.Numero, '                                      +
                                          '          m.Quantidade, '                                  +
                                          '          m.CDF, '                                         +
                                          '          m.RecepID_Empresa, '                             +
                                          '          m.ID_Residuo, '                                  +
//                                          '          r.ValorMercado, '                                +
                                          '          IF(m.GerID_Empresa=27, 200, r.ValorMercado) AS ValorMercado, ' +
//                                          '          m.Quantidade * r.ValorMercado AS ValorReceber, ' +
//                                          '          (m.Quantidade * r.ValorMercado) * 1000 AS ValorReceber, ' +
                                          sCampoValorReceber                                          +
                                          '          m.ID_Situacao, '                                 +
                                          '          s.Descricao AS Situacao, '                       +
                                          '          e.ID_Fantasia, '                                 +
                                          '          e.Endereco, '                                    +
                                          '          e.Municipio, '                                   +
                                          '          e.UF, '                                          +
                                          '          e.Responsavel, '                                 +
                                          '          m.ID_Procedencia, '                              +
                                          '          m.Obs '                                          +
                                          ' FROM '                                                    +
                                          '          manifesto m, '                                   +
                                          '          residuo r, '                                     +
                                          '          empresa e, '                                     +
                                          '          empresa er, '                                    +
                                          '          fantasia f, '                                    +
                                          '          situacao s, '                                    +
                                          '          procedencia p '                                  +
                                          ' WHERE '                                                   +
                                          sTipoManifesto                                              +
                                          sSituacao                                                   +
                                          sEmpresaGeradora                                            +
                                          sEmpresaReceptora                                           +
                                          sResiduo                                                    +
                                          '          ( m.GerDtEntrega         >= ' + sDtInicial + ' ) and ' +
                                          '          ( m.GerDtEntrega         <= ' + sDtFinal   + ' ) and ' +
                                          '          ( m.ID_Residuo           = r.ID_Residuo  ) and ' +
                                          '          ( m.GerID_Empresa        = e.ID_Empresa  ) and ' +
                                          '          ( e.ID_Fantasia          = f.ID_Fantasia ) and ' +
                                          '          ( m.RecepID_Empresa      = er.ID_Empresa ) and ' +
                                          '          ( m.ID_Situacao          = s.ID_Situacao ) and ' +
                                          '          ( m.ID_Procedencia       = p.ID_Procedencia ) '  +
                                          sOrderBy;
  cdsManifestos.Active := False;
  cdsManifestos.Active := True;
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  sTituloPeriodo   := 'Período de ' + txtDataInicial.Text + ' até ' + txtDataFinal.Text;

  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  frmPrincipal.rvpGestao_Empresarial.SetParam('TituloListaCDFPendentes', 'Verificar' );
  frmPrincipal.rvpGestao_Empresarial.SetParam('TituloPeriodo', sTituloPeriodo );
  frmPrincipal.rvpGestao_Empresarial.SetParam('TituloPrincipal', sTituloPrincipal );


  frmPrincipal.rvpGestao_Empresarial.SetParam('DataRelat', FormatDateTime('"Rio de Janeiro," dd "de" mmmm "de" yyyy',  StrToDate(txtDatatRelat.Text) ) );

  if chkAlteraResp.Checked then
  begin
    // Verificar Andre
    //frmPrincipal.rvpGestao_Empresarial.SetParam('Responsavel', Trim(cdsResponsavelDescTratSigla.AsString) + ' ' + cdsResponsavelNome.AsString );
  end
  else
  begin
    //frmPrincipal.rvpGestao_Empresarial.SetParam('Responsavel', Trim(cdsListaGeradorTrat.AsString) + ' ' + cdsListaGeradorNome.AsString );

    //verificar Andre
    //frmPrincipal.rvpGestao_Empresarial.SetParam('Responsavel', cdsListaGeradorGerResponsavel.AsString );
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

  // verificar Andre
  //cdsRazaoSocial.Filter   := 'ID_Fantasia = ' + cdsRazaoSocialID_Fantasia.AsString;
  //cdsRazaoSocial.Filtered := True;

  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //  GERA PROTOCOLO                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  // verificar Andre
  //GeraProtocolo(Self);
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
  //////////////////////////////////////////////////////////////////////////////
  //                                                                          //
  //                                                                          //
  //                                                                          //
  //////////////////////////////////////////////////////////////////////////////
  if cbxRelatorios.ItemIndex = 0 then
   begin
     frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptListaManifPorEmpRecep');
   end
  else if cbxRelatorios.ItemIndex = 1 then
   begin
     frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptPagamentoSucata');
   end
  else if cbxRelatorios.ItemIndex = 2 then
   begin
     frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptPagamentoReciclaveis');
   end
  else if cbxRelatorios.ItemIndex = 3 then
   begin
     frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptFechamentoMensalRetiradaResiduo');
   end;
end;

end.
