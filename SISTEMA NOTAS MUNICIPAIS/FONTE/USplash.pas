unit USplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, jpeg, ExtCtrls, Gauges, DBCtrls, RxGIF,
  EOneInst;

type
  TFSplash = class(TForm)
    Image: TImage;
    Gauge: TGauge;
    EvOneInstance: TEvOneInstance;
    procedure EvOneInstanceDuplicated(Sender: TObject;
      PrevInstance: Cardinal);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSplash: TFSplash;

implementation

uses UDM;

{$R *.dfm}

procedure TFSplash.EvOneInstanceDuplicated(Sender: TObject;
  PrevInstance: Cardinal);
begin
     Application.MessageBox('O Sistema já está aberto!', ' ', mrNone);
     application.terminate;
end;

end.
