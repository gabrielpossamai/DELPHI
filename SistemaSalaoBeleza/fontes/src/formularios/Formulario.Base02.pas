unit Formulario.Base02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, W7Classes, W7Panels,
  Formulario.Base00;

type
  TFrmTelaBase02 = class(TFrmTelaBase00)
    W7Panel2: TW7Panel;
    procedure FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure AbrirTela(AOwner: TComponent);
  end;



implementation

{$R *.dfm}

{ TFrmTelaBase02 }

class procedure TFrmTelaBase02.AbrirTela(AOwner: TComponent);
var
  FrmTelaBase02: TFrmTelaBase02;
begin
  FrmTelaBase02:= TFrmTelaBase02.Create(AOwner);
  try
    FrmTelaBase02.ShowModal;


  finally
    FreeAndNil(FrmTelaBase02);
  end;
end;

procedure TFrmTelaBase02.FecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
