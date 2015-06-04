program Crypto;

{%ToDo 'Crypto.todo'}

uses
  Forms,
  ucrypto in 'ucrypto.pas' {frmCrypto},
  usobre in 'usobre.pas' {frmSobre};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCrypto, frmCrypto);
  Application.CreateForm(TfrmSobre, frmSobre);
  Application.Run;
end.
