program TExcel;

uses
  Forms,
  Form1P in 'Form1P.pas' {Form1F};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1F, Form1F);
  Application.Run;
end.
