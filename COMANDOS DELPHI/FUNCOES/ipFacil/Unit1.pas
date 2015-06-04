unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Sockets;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    TcpClient1: TTcpClient;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  Label1.caption := TcpClient1.LocalDomainName;
  LAbel2.caption := TcpClient1.LocalHostAddr;
  LAbel3.caption := TcpClient1.LocalHostName;
end;

end.
