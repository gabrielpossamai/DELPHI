program Exclui;

uses
  Forms,
  UExclui in 'UExclui.pas' {FExclui};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFExclui, FExclui);
  Application.Run;
end.
