unit UExecSQL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin;

type
  TFExecSQL = class(TForm)
    lbltitulo: TLabel;
    Memo: TMemo;
    ToolBarNavegacao: TToolBar;
    BtnSalvar: TToolButton;
    ToolButton22: TToolButton;
    btnsair: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExecSQL: TFExecSQL;

implementation

uses UDM, UMenu;

{$R *.dfm}

procedure TFExecSQL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFExecSQL.FormShow(Sender: TObject);
begin
     setCaption(Sender as TForm);
end;

procedure TFExecSQL.btnsairClick(Sender: TObject);
begin
     close; 
end;

procedure TFExecSQL.BtnSalvarClick(Sender: TObject);
begin
     dm.qexiste.close;
     dm.qexiste.SQL := memo.Lines;
     dm.qexiste.execsql;
     dm.qexiste.close;
     showmessage('Executado com sucesso!');
end;

end.
