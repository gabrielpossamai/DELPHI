unit UCalculavel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Function Triplo(N: Integer): Integer; stdcall;
  Function Dobro(N: Integer): Integer; stdcall;


implementation

{$R *.dfm}
  Function Triplo(N: Integer): Integer; external 'C:\Users\Clésio\Desktop\SISTEMA\PROGRAMAS\DLLCurso.dll';
  Function Dobro(N: Integer): Integer; external 'C:\Users\Clésio\Desktop\SISTEMA\PROGRAMAS\DLLCurso.dll';


procedure TForm1.Button1Click(Sender: TObject);
begin
    Edit1.Text := IntToStr(Dobro(100)); // retorna 200
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    Edit1.Text := IntToStr(Triplo(100)); // retorna 300
end;

end.
