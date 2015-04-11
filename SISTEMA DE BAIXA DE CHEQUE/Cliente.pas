unit Cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, ActnList, ToolWin, ComCtrls, StdCtrls, Mask, DBCtrls;

type
  TFmClientes = class(TForm)
    MainMenu: TMainMenu;
    ActionList: TActionList;
    PopupMenu: TPopupMenu;
    ImageList: TImageList;
    DbeCpf: TDBEdit;
    Label1: TLabel;
    DbeName: TDBEdit;
    Label2: TLabel;
    DbePhone: TDBEdit;
    Label3: TLabel;
    BtnCancelar: TButton;
    AcCancel: TAction;
    AcPost: TAction;
    BtnConfirma: TButton;
    Salvar1: TMenuItem;
    Cancelar1: TMenuItem;
    procedure AcCancelExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcPostExecute(Sender: TObject);
    procedure DbeCpfChange(Sender: TObject);
    procedure HabilitaConfirma;
    procedure DbePhoneChange(Sender: TObject);
    procedure DbeNameChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmClientes: TFmClientes;

implementation

uses Modulo;

const VALIDA_DLL = 'Valida.dll';

function cpfValido(Num: String)  : Boolean;  stdcall; external VALIDA_DLL;
function cnpjValido(Num: String) : Boolean;  stdcall; external VALIDA_DLL;

{$R *.dfm}

var
  pessoaOk: Boolean = True;
  telefoneOk: Boolean = False;
  nomeOK: Boolean = False;

procedure TFmClientes.AcCancelExecute(Sender: TObject);
begin
  DmWinBank.IbtClientes.Cancel;
  Close;
end;

procedure TFmClientes.AcPostExecute(Sender: TObject);
begin
  try
    DmWinBank.IbtClientes.Post;
    Close;
  except
    on e:Exception do
    begin
      if pos('PRIMARY', e.Message) <> 0 then
        begin
          ShowMessage('Cliente com CNPJ ou CPF já existente, tente novamente');
          DbeCpf.SetFocus;
        end
      else
        ShowMessage('Erro no banco de dados:' + #13 + e.Message);
    end;
  end;
end;

procedure TFmClientes.DbeCpfChange(Sender: TObject);
begin
//  if(cpfValido(Trim(DbeCpf.Text))) then
//    ShowMessage('True')
//  else
//    ShowMessage('False');
//  pessoaOK := ((Length(DbeCpf.Text) = 11) AND (cpfValido(DbeCpf.Text))) OR
//    ((Length(DbeCpf.Text) = 14) AND (cnpjValido(DbeCpf.Text)));
  HabilitaConfirma;
end;

procedure TFmClientes.DbeNameChange(Sender: TObject);
begin
  nomeOk := (Length(DbeName.Text) > 2);
  HabilitaConfirma;
end;

procedure TFmClientes.DbePhoneChange(Sender: TObject);
begin
  telefoneOk := (Length(DbePhone.Text) > 8) AND (Length(DbePhone.Text) < 11);
  HabilitaConfirma;
end;

procedure TFmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AcCancelExecute(Sender);
  Action := caFree;
end;

procedure TFmClientes.HabilitaConfirma;
begin
  BtnConfirma.Enabled := (pessoaOK AND telefoneOk AND nomeOk);
end;

end.
