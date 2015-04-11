program Sistema;

{%ToDo 'Sistema.todo'}

uses
  Forms,
  UMenu in 'UMenu.pas' {FMenu},
  UDM in 'UDM.pas' {DM: TDataModule},
  UObservacoes in 'UObservacoes.pas' {FObservacoes},
  USenha in 'USenha.pas' {FSenha},
  USplash in 'USplash.pas' {FSplash},
  UPrograma in 'UPrograma.pas' {FPrograma},
  UProfissao in 'UProfissao.pas' {FProfissao},
  UAliquota in 'UAliquota.pas' {FAliquota},
  UConvenio in 'UConvenio.pas' {FConvenio},
  UDiasViajados in 'UDiasViajados.pas' {FDiasViajados},
  UUsuario in 'UUsuario.pas' {FUsuario},
  UAgenda in 'UAgenda.pas' {FAgenda},
  URechCenter in 'URechCenter.pas' {FRechCenter},
  UParamEmp in 'UParamEmp.pas' {FParamEmp},
  UCalendario in 'UCalendario.pas' {FCalendario},
  UProduto in 'UProduto.pas' {FProduto},
  UReserva in 'UReserva.pas' {FReserva},
  UCabecalho in 'UCabecalho.pas' {FCabecalho},
  UReservaRel in 'UReservaRel.pas' {FReservaRel},
  UFamilia in 'UFamilia.pas' {FFamilia},
  Uabout in 'Uabout.pas' {FSobre},
  UVendaRel in 'UVendaRel.pas' {FVendaRel},
  UExame in 'UExame.pas' {FExame},
  UExameRel in 'UExameRel.pas' {FExameRel},
  UAMB in 'UAMB.pas' {FAMB},
  UAmbRel in 'UAmbRel.pas' {FAmbRel},
  UConvenioRel in 'UConvenioRel.pas' {FConvenioRel},
  UAgendaRel in 'UAgendaRel.pas' {FAgendaRel},
  UOutraSaida in 'UOutraSaida.pas' {FOutraSaida},
  UContRecApae in 'UContRecApae.pas' {FContRecApae},
  UContRecApaeRel in 'UContRecApaeRel.pas' {FContRecApaeRel},
  UHistCliente in 'UHistCliente.pas' {FHistCliente},
  UHistClienteRel in 'UHistClienteRel.pas' {FHistClienteRel},
  UBairro in 'UBairro.pas' {FBairro},
  UBairroRel in 'UBairroRel.pas' {FBairroRel},
  UEscritorioContabil in 'UEscritorioContabil.pas' {FEscritorioContabil},
  UEscritorioContabilRel in 'UEscritorioContabilRel.pas' {FEscritorioContabilRel},
  UAtividade in 'UAtividade.pas' {FAtividade},
  UAtividadeRel in 'UAtividadeRel.pas' {FAtividadeRel},
  UEstabelecimento in 'UEstabelecimento.pas' {FEstabelecimento},
  UEstabelecimentoRel in 'UEstabelecimentoRel.pas' {FEstabelecimentoRel},
  UColaSapateiro in 'UColaSapateiro.pas' {FColaSapateiro},
  UColaSapateiroRel in 'UColaSapateiroRel.pas' {FColaSapateiroRel},
  UGrupoCaixa in 'UGrupoCaixa.pas' {FGrupoCaixa},
  UCaixaRel in 'UCaixaRel.pas' {FCaixaRel},
  UCaixa in 'UCaixa.pas' {FCaixa},
  UCompraVenda in 'UCompraVenda.pas' {FCompraVenda},
  UContaClienteRel in 'UContaClienteRel.pas' {FContaClienteRel},
  UOrdemServico in 'UOrdemServico.pas' {FOrdemServico},
  UCompraRel in 'UCompraRel.pas' {FCompraRel},
  UCompraBaixar in 'UCompraBaixar.pas' {FCompraBaixar},
  UParametroRel in 'UParametroRel.pas' {FParametroRel},
  UParametro in 'UParametro.pas' {FParametro},
  UModelo in 'UModelo.pas' {FModelo},
  UExcesso in 'UExcesso.pas' {FExcesso},
  UNotificacaoRel in 'UNotificacaoRel.pas' {FNotificacaoRel},
  UNotificacao in 'UNotificacao.pas' {FNotificacao},
  UPesagemRel in 'UPesagemRel.pas' {FPesagemRel},
  UPesagem in 'UPesagem.pas' {FPesagem},
  UCategoria in 'UCategoria.pas' {FCategoria},
  UGrupoFin in 'UGrupoFin.pas' {FGrupoFin},
  UConta in 'UConta.pas' {FConta},
  UEmpresa in 'UEmpresa.pas' {FEmpresa},
  UFactoryDoctoRel in 'UFactoryDoctoRel.pas' {FFactoryDoctoRel},
  UFactoryDocto in 'UFactoryDocto.pas' {FFactoryDocto},
  UFactoryDoctoProb in 'UFactoryDoctoProb.pas' {FFactoryDoctoProb},
  UFactoryDoctoProbRel in 'UFactoryDoctoProbRel.pas' {FFactoryDoctoProbRel},
  UContPagRel in 'UContPagRel.pas' {FContPagRel},
  UContPag in 'UContPag.pas' {FContPag},
  UGeraBoleto in 'UGeraBoleto.pas' {FGeraBoleto},
  UImovel in 'UImovel.pas' {FImovel},
  UPlanoPgto in 'UPlanoPgto.pas' {FPlanoPgto},
  UServico in 'UServico.pas' {FServico},
  UMargem in 'UMargem.pas' {FMargem},
  UCfop in 'UCfop.pas' {FCfop},
  UDeposito in 'UDeposito.pas' {FDeposito},
  UTipoCob in 'UTipoCob.pas' {FTipoCob},
  UNivel in 'UNivel.pas' {FNivel},
  UBanco in 'UBanco.pas' {FBanco},
  UCompra in 'UCompra.pas' {FCompra},
  UContrato in 'UContrato.pas' {FContrato},
  UContRecRel in 'UContRecRel.pas' {FContRecRel},
  UVeiculo in 'UVeiculo.pas' {FVeiculo},
  UMarca in 'UMarca.pas' {FMarca},
  UFFluxoCaixa in 'UFFluxoCaixa.pas' {FFFluxoCaixa},
  UCheque in 'UCheque.pas' {FCheque},
  UAliquotaICMS in 'UAliquotaICMS.pas' {FAliquotaICMS},
  UNotaEnt in 'UNotaEnt.pas' {FNotaEnt},
  UFProduto in 'UFProduto.pas' {FFProduto},
  UFVenda in 'UFVenda.pas' {FFVenda},
  UGrupoProd in 'UGrupoProd.pas' {FGrupoProd},
  UNotaFisc in 'UNotaFisc.pas' {FNotaFisc},
  UExecSQL in 'UExecSQL.pas' {FExecSQL},
  UCidade in 'UCidade.pas' {FCidade},
  UContaCliente in 'UContaCliente.pas' {FContaCliente},
  UContRec in 'UContRec.pas' {FContRec},
  UContratoRel in 'UContratoRel.pas' {FContratoRel},
  UCliente in 'UCliente.pas' {FCliente},
  UGrupo in 'UGrupo.pas' {FGrupo},
  UDiretoria in 'UDiretoria.pas' {FDiretoria},
  UUniversidade in 'UUniversidade.pas' {FUniversidade},
  UCurso in 'UCurso.pas' {FCurso},
  UClienteSimples in 'UClienteSimples.pas' {FClienteSimples},
  UVenda in 'UVenda.pas' {FVenda},
  UEstudante in 'UEstudante.pas' {FEstudante};

{$R *.res}

begin
  FSplash := TFsplash.Create(Application);
  fsplash.show;
  FSplash.Update;
  Application.Initialize;
  Application.ProcessMessages;
  fsplash.Gauge.Progress := 10;
  Application.ProcessMessages;
  Application.CreateForm(TDM, DM);
  Application.ProcessMessages;
  fsplash.Gauge.Progress:= 20;
  dm.atualizar_sistema;
  Application.ProcessMessages;
  fsplash.Gauge.Progress := 30;
  Application.ProcessMessages;
  fsplash.Gauge.Progress := 40;
  application.ProcessMessages;
  fsplash.Gauge.Progress := 50;
  Application.ProcessMessages;
  dm.cdsusuario.open;
  fsplash.Gauge.Progress := 60;
  Application.ProcessMessages;
  dm.cdsitemusuario.open;
  fsplash.Gauge.Progress := 70;
  Application.ProcessMessages;
  dm.cdsparamemp.open;
  fsplash.Gauge.Progress := 80;
  Application.ProcessMessages;
  fsplash.Gauge.Progress := 90;
  Application.CreateForm(TFSenha, FSenha);
  Application.ProcessMessages;
  fsplash.Gauge.Progress := 100;
  Application.ProcessMessages;
  fsplash.Free;
  Application.ProcessMessages;
  Application.Run;
end.
