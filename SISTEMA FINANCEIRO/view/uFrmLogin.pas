unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TfrmLogin = class(TForm)
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnEntrar: TBitBtn;
    Image1: TImage;
    edtLogin: TComboBox;
    lblUltimoAcesso: TLabel;
    procedure btnEntrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uUsuario, ufrmPrincipal, uFuncoes, uSistema;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
var
  Usuario : TUsuario;
begin
  if edtLogin.Text = '' then
  begin
    Application.MessageBox('Informe seu usuário.','Atenção',MB_OK+MB_ICONWARNING);
    edtLogin.SetFocus;
    Abort;
  end;
  if edtSenha.Text = '' then
  begin
    Application.MessageBox('Informe sua senha.','Atenção',MB_OK+MB_ICONWARNING);
    edtSenha.SetFocus;
    Abort;
  end;

  Usuario := TUsuario.Create;
  try
    Usuario.Login := trim(edtLogin.Text);
    Usuario.Senha := trim(edtSenha.Text);
    if Usuario.Logar then
    begin
      TSistema.SetUltimoAcesso(Usuario.Login);
      frmPrincipal.StatusBar1.Panels[1].Text := 'Usuário: '+Usuario.Login;
      ModalResult := mrOk;
    end
    else
    begin
      Application.MessageBox('Usuário e/ou senha inválido.','Atenção',MB_OK+MB_ICONWARNING);
      edtLogin.SetFocus;
      Abort;
    end;
  finally
    FreeAndNil(Usuario);
  end;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOk then
    ModalResult := mrNo;
end;

procedure TfrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  TUsuario.CarregarLogin(edtLogin);
  edtLogin.Text           := TSistema.GetUsuarioAcesso;
  lblUltimoAcesso.Caption := TSistema.GetUltimoAcesso;
end;

end.
