unit UCalendario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls;

type
  TFCalendario = class(TForm)
    MonthCalendar1: TMonthCalendar;
    Panel1: TPanel;
    ToolBarNavegacao: TToolBar;
    btnsair: TToolButton;
    procedure btnsairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCalendario: TFCalendario;

implementation

uses UMenu;

{$R *.dfm}

procedure TFCalendario.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFCalendario.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
end;

end.
