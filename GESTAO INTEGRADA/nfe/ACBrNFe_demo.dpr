program ACBrNFe_demo;

uses
  Forms,
  ufrmNFeMonitor in 'ufrmNFeMonitor.pas' {frmNFeMonitor},
  ufrmStatus in 'ufrmStatus.pas' {frmStatus};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmNFeMonitor, frmNFeMonitor);
  Application.CreateForm(TfrmStatus, frmStatus);
  Application.Run;
end.
