program gestaointegrada;

uses
  uVariaveisGlobais,
  uRotinasBancoDeDados,
  Forms,
  SysUtils,
  IniFiles,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  ufrmModeloMDIChild in '..\classes\FORMULARIOS\ufrmModeloMDIChild.pas' {frmModeloMDIChild},
  UFRMMANUTENCAOBD in '..\classes\FORMULARIOS\UFRMMANUTENCAOBD.pas' {frmManutencaoBD},
  ufrmCadSexo in 'ufrmCadSexo.pas' {frmCadSexo},
  ufrmCadTipoLograduro in 'ufrmCadTipoLograduro.pas' {frmCadTipoLograduro},
  ufrmCadEelitores in 'ufrmCadEelitores.pas' {frmCadEelitores},
  ufrmLogin in '..\classes\formularios\ufrmLogin.pas' {frmLogin},
  ufrmCadTipoEmpresa in 'ufrmCadTipoEmpresa.pas' {frmCadTipoEmpresa},
  ufrmCadUsuario in '..\classes\formularios\ufrmCadUsuario.pas' {frmCadUsuario},
  ufrmCadSetor in '..\classes\formularios\ufrmCadSetor.pas' {frmCadSetor},
  ufrmCadModulo in '..\classes\formularios\ufrmCadModulo.pas' {frmCadModulo},
  ufrmCadCliente in 'ufrmCadCliente.pas' {frmCadCliente},
  ufrmCadGrupo in '..\classes\formularios\ufrmCadGrupo.pas' {frmCadGrupo},
  ufrmCadModuloUsuario in '..\classes\formularios\ufrmCadModuloUsuario.pas' {frmCadModuloUsuario},
  ufrmCadEndereco in 'ufrmCadEndereco.pas' {frmCadEndereco},
  ufrmCadResiduo in 'ufrmCadResiduo.pas' {frmCadResiduo},
  ufrmCadEstadoFisico in 'ufrmCadEstadoFisico.pas' {frmCadEstadoFisico},
  ufrmCadAcond in 'ufrmCadAcond.pas' {frmCadAcond},
  ufrmCadOrigem in 'ufrmCadOrigem.pas' {frmCadOrigem},
  ufrmCadProcedencia in 'ufrmCadProcedencia.pas' {frmCadProcedencia},
  ufrmCadTratDisp in 'ufrmCadTratDisp.pas' {frmCadTratDisp},
  ufrmCadManifesto in 'ufrmCadManifesto.pas' {frmCadManifesto},
  ufrmCadTratamento in 'ufrmCadTratamento.pas' {frmCadTratamento},
  ufrmCadManifestoEstado in 'ufrmCadManifestoEstado.pas' {frmCadManifestoEstado},
  ufrmCadPessoa in 'ufrmCadPessoa.pas' {frmCadPessoa},
  ufrmCadCargo in 'ufrmCadCargo.pas' {frmCadCargo},
  ufrmCadResponsavel in 'ufrmCadResponsavel.pas' {frmCadResponsavel},
  ufrmCadEmpresa in 'ufrmCadEmpresa.pas' {frmCadEmpresa},
  ufrmRelatRetiradaResiduo in 'ufrmRelatRetiradaResiduo.pas' {frmRelatRetiradaResiduo},
  ufrmCancEfetivaEnvioManif in 'ufrmCancEfetivaEnvioManif.pas' {frmCancEfetivaEnvioManif},
  ufrmEfetivaEnvioManifesto in 'ufrmEfetivaEnvioManifesto.pas' {frmEfetivaEnvioManifesto},
  ufrmCadPeriodoNumero in 'ufrmCadPeriodoNumero.pas' {frmCadPeriodoNumero},
  ufrmCadTitRelat in 'ufrmCadTitRelat.pas' {frmCadTitRelat},
  ufrmCadNomeFantasia in 'ufrmCadNomeFantasia.pas' {frmCadNomeFantasia},
  ufrmLoginFerpan in 'ufrmLoginFerpan.pas' {frmLoginFerpan},
  ufrmSobre in '..\classes\formularios\ufrmSobre.pas' {frmSobre},
  ufrmSobreFerpan in 'ufrmSobreFerpan.pas' {frmSobreFerpan},
  ufrmEmissaoFatura in 'ufrmEmissaoFatura.pas' {frmEmissaoFatura},
  Extensos in '..\classes\Extensos.pas',
  ufrmLocalizaManifesto in 'ufrmLocalizaManifesto.pas' {frmLocalizaManifesto},
  ufrmFerramentasOpcoes in 'ufrmFerramentasOpcoes.pas' {frmFerramentasOpcoes},
  ufrmAlteraNumCDFsManifesto in 'ufrmAlteraNumCDFsManifesto.pas' {frmAlteraNumCDFsManifesto},
  ufrmRelatListaCDFPendentes in 'ufrmRelatListaCDFPendentes.pas' {frmRelatListaCDFPendentes},
  ufrmModeloRelatorio in '..\classes\formularios\ufrmModeloRelatorio.pas' {frmModeloRelatorio},
  ufrmCadManifestoAlteraSituacao in 'ufrmCadManifestoAlteraSituacao.pas' {frmCadManifestoAlteraSituacao},
  ufrmModPageControlWizard in '..\classes\formularios\ufrmModPageControlWizard.pas' {frmModPageControlWizard},
  ufrmModeloRelatWizard in '..\classes\formularios\ufrmModeloRelatWizard.pas' {frmModeloRelatWizard},
  ufrmAbrirNew in '..\classes\formularios\ufrmAbrirNew.pas' {frmAbrirNew},
  ufrmStatus in 'nfe\ufrmStatus.pas' {frmStatus},
  ufrmCadNotaFiscal in 'ufrmCadNotaFiscal.pas' {frmCadNotaFiscal},
  ufrmCadUnidadeMedida in 'ufrmCadUnidadeMedida.pas' {frmCadUnidadeMedida},
  uCEP in '..\classes\uCEP.pas',
  uVariaveisSQL_Gestao in '..\classes\uVariaveisSQL_Gestao.pas',
  ufrmCadOrgaoEmissor in 'ufrmCadOrgaoEmissor.pas' {frmCadOrgaoEmissor};

{$R *.res}

var
 sTituloAplicacao: string;
 I:                Integer;

begin
  // Inicializa a aplicação.
  Application.Initialize;
  //
  sSistemaPath                 := ExtractFilePath(Application.ExeName);
  sSistemaPathTemp             := GetTempDir;
  //
  sSistemaNomArqIni            := 'gestaointegrada.ini';
  sSistemaNomArqIniLocal       := 'gestaointegrada_local.ini';
  //
  iniSistemaArquivoIni         := TIniFile.Create( sSistemaPath     + sSistemaNomArqIni);
  iniSistemaArquivoIniLocal    := TIniFile.Create( sSistemaPathTemp + sSistemaNomArqIniLocal);
  //
  sSistemaNomArqIniEmp         := iniSistemaArquivoIni.ReadString('SISTEMA', 'ArquivoIniEmpresa', '');
  iniSistemaArquivoIniEmp      := TIniFile.Create( sSistemaPath + sSistemaNomArqIniEmp);

  // Atribuição de variáveis.
  sSistemaEmpresaRazaoSocial   := iniSistemaArquivoIni.ReadString('EMPRESA', 'RazaoSocial', '');
  sSistemaEmpresaNomeFantasia  := iniSistemaArquivoIni.ReadString('EMPRESA', 'NomeFantasia', '');
  sSistemaEmpresaCNPJ          := iniSistemaArquivoIni.ReadString('EMPRESA', 'CNPJ', '');
  sSistemaEmpresaInscEstadual  := iniSistemaArquivoIni.ReadString('EMPRESA', 'InscEstadual', '');
  sSistemaEmpresaInscMunicipal := iniSistemaArquivoIni.ReadString('EMPRESA', 'InscMunicipal', '');
  sSistemaEmpresaEndereco      := iniSistemaArquivoIni.ReadString('EMPRESA', 'Endereco', '');
  sSistemaEmpresaTelefone      := iniSistemaArquivoIni.ReadString('EMPRESA', 'Telefone', '');
  sSistemaEmpresaSite          := iniSistemaArquivoIni.ReadString('EMPRESA', 'Site', '');
  sSistemaDescricao            := iniSistemaArquivoIni.ReadString('SISTEMA', 'Descricao', '');
  sVersao                      := iniSistemaArquivoIni.ReadString('SISTEMA', 'versao', '');

  // Cria e configura a tela principal.
  sTituloAplicacao := sSistemaEmpresaNomeFantasia + ' - ' + sSistemaDescricao + ' - ' + 'Versão ' + sVersao;
  Application.Title := 'Sistema de Gestão Integrado';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  //  Application.CreateForm(TfrmDigitaOutros, frmDigitaOutros);
  frmPrincipal.ConexaoBD.Connected := False;

  ///////////////////////////////////////////////////////////////////////////////
  // CRIA, CONFIGURA E MOSTRA O FORMULÁRIO DE LOGIN.                           //
  ///////////////////////////////////////////////////////////////////////////////
  Application.CreateForm(TfrmLoginFerpan, frmLoginFerpan);

  frmLoginFerpan.ModalResult := 4;
  I := 1;

  while (frmLoginFerpan.ModalResult = 4 ) or (I <= 3)do
  begin
    frmLoginFerpan.iTentaAbrirForm := I;

    frmLoginFerpan.ShowModal;

    if frmLoginFerpan.ModalResult = 1 then
    begin
      frmLoginFerpan.Free;
      //////////////////////////////////////////////////////////////////////////
      // Passa informações do sistema para os relatórios.                     //
      //////////////////////////////////////////////////////////////////////////
      frmPrincipal.rvpGestao_Empresarial.SetParam('SistemaUsuarioNome', sSistemaUsuarioNome );
      frmPrincipal.rvpGestao_Empresarial.SetParam('SistemaEmpresaRazaoSocial', sSistemaEmpresaRazaoSocial );
      frmPrincipal.rvpGestao_Empresarial.SetParam('SistemaEmpresaNomeFantasia', sSistemaEmpresaNomeFantasia );
      frmPrincipal.rvpGestao_Empresarial.SetParam('SistemaEmpresaCNPJ', sSistemaEmpresaCNPJ );
      frmPrincipal.rvpGestao_Empresarial.SetParam('SistemaEmpresaInscEstadual', sSistemaEmpresaInscEstadual );
      frmPrincipal.rvpGestao_Empresarial.SetParam('SistemaEmpresaInscMunicipal', sSistemaEmpresaInscMunicipal );
      frmPrincipal.rvpGestao_Empresarial.SetParam('SistemaEmpresaEndereco', sSistemaEmpresaEndereco );
      frmPrincipal.rvpGestao_Empresarial.SetParam('SistemaEmpresaTelefone', sSistemaEmpresaTelefone );

      //////////////////////////////////////////////////////////////////////////
      // Configura a barra de status.                                         //
      //////////////////////////////////////////////////////////////////////////
      frmPrincipal.StatusBar.Panels[1].Text := ' BD: '               + 'MySQL ' + sSistemaBD_Versao;
      frmPrincipal.StatusBar.Panels[2].Text := ' BD Servidor: '      + sSistemaBD_IP_ou_HostName;
      frmPrincipal.StatusBar.Panels[3].Text := ' BD Esquema: '       + sSistemaBD_Esquema;
      frmPrincipal.StatusBar.Panels[4].Text := ' BD Usuário: '       + FormatFloat('000000', iSistemaUsuarioMatric) + ' - ' + sSistemaUsuarioNome;

      //////////////////////////////////////////////////////////////////////////
      // Configura o título da tela principal.                                //
      //////////////////////////////////////////////////////////////////////////
      frmPrincipal.Caption := sTituloAplicacao;

      //////////////////////////////////////////////////////////////////////////
      // Mostra a tela principal e roda a aplicação.                          //
      //////////////////////////////////////////////////////////////////////////
      IniVarSQLSelect;
      frmPrincipal.Show;
      Application.Run;
      Exit;
    end
    else if frmLoginFerpan.ModalResult = 2 then
    begin
      Exit;
    end
    else if frmLoginFerpan.ModalResult = 3 then
    begin
      I := I + 1;
    end
    else if frmLoginFerpan.ModalResult = 4 then
    begin
      I := 1;
    end;

  end;

end.


