unit Banco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ImgList, Menus, ActnList;

type
  TFmBancos = class(TForm)
    DbeCodigo: TDBEdit;
    DbeNome: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu: TMainMenu;
    PopupMenu: TPopupMenu;
    ActionList: TActionList;
    BtnCancel: TButton;
    BtnPost: TButton;
    AcCancel: TAction;
    AcPost: TAction;
    Salvar1: TMenuItem;
    Cancelar1: TMenuItem;
    ImageList: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcCancelExecute(Sender: TObject);
    procedure AcPostExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmBancos: TFmBancos;

implementation

uses Modulo;

{$R *.dfm}

procedure TFmBancos.AcCancelExecute(Sender: TObject);
begin
  DmWinBank.IbtBancos.Cancel;
  Close;
end;

procedure TFmBancos.AcPostExecute(Sender: TObject);
begin
  try
    DmWinBank.IbtBancos.Post;
    Close;
  except
    on e: Exception do
    begin
      if pos('PRIMARY', e.Message) <> 0 then
        begin
           ShowMessage('Código de banco já existente, tente novamente');
           DbeCodigo.SetFocus;
        end
      else
        ShowMessage('Erro no banco de dados:' + #13 + e.Message);
    end;
  end;
end;

procedure TFmBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AcCancelExecute(Sender);
  Action := caFree;
end;

end.
