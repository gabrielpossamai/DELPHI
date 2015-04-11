program Despesas;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  Uprincipal in 'Uprincipal.pas' {FrmPrincipal},
  uCadTipoDespesa in 'uCadTipoDespesa.pas' {frmCadTipoDespesa},
  uFuncoes in 'uFuncoes.pas',
  uMensagens in 'uMensagens.pas' {FrmMensagens},
  uCadDespesas in 'uCadDespesas.pas' {frmCadDespesas},
  uSQL in 'uSQL.pas' {FrmSQL},
  uRelExtrato in 'uRelExtrato.pas' {frmRelExtrato},
  uImportaExtrato in 'uImportaExtrato.pas' {frmImportaExtrato},
  uCadPrioridades in 'uCadPrioridades.pas' {frmcadPrioridades},
  uselRelBalancete in 'uselRelBalancete.pas' {frmselrelBalancete},
  ufechames in 'ufechames.pas' {frmfechames},
  uCadCredores in 'uCadCredores.pas' {frmCadCredores},
  uCadTipoPagamento in 'uCadTipoPagamento.pas' {frmcadTipoPagamento},
  uAnaliseGrafica in 'uAnaliseGrafica.pas' {frmAnaliseGrafica},
  uGrupoContatos in 'uGrupoContatos.pas' {frmGrupoContato},
  uContatos in 'uContatos.pas' {frmContatos},
  uNovoMenu in 'uNovoMenu.pas' {frmNovoMenu},
  usobre in 'usobre.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TfrmNovoMenu, frmNovoMenu);
  Application.Run;
end.
