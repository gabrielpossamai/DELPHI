unit uFrmSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TfrmSplash = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
  if ProgressBar1.Position <= 100 then
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    case ProgressBar1.Position of
      10 : Label1.Caption := 'Carregando as dll...';
      25 : Label1.Caption := 'Carregando as tabelas...';
      45 : Label1.Caption := 'Carregando as configurações...';
      75 : Label1.Caption := 'Iniciando o sistema...';
    end;

    if ProgressBar1.Position = 100 then
      Close;
  end;
end;

end.
