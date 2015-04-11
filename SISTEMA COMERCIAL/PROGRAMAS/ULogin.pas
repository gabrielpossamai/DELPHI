unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Db;

type
  TFrmLogin = class(TForm)
    Image1: TImage;
    GrpBxLogin: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtApelido: TEdit;
    EdtSenha: TEdit;
    BtnOk: TBitBtn;
    BtnCancelar: TBitBtn;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin : TFrmLogin;

implementation
uses UDM, UMenuPrin, USplash;

{$R *.dfm}

procedure TFrmLogin.BtnCancelarClick(Sender: TObject);
begin

    Application.Terminate;

end;

procedure TFrmLogin.BtnOkClick(Sender: TObject);
begin
  Dm.tab_Usuarios.Open; // abre a tabela tab_Usuarios
  FrmMenuPrin.StatusBar1.Panels[2].Text := ' Usuário: ' + FrmLogin.EdtApelido.Text  + ' - ' + Dm.tab_UsuariosUsuDepto.AsSTring;

  If not (Dm.tab_Usuarios.Locate('UsuApelido', FrmLogin.EdtApelido.Text, [loPartialKey ])) or
  (Dm.tab_UsuariosUsuSenha.Value <> FrmLogin.EdtSenha.Text) then
    begin
   	    MessageDlg('Nome ou senha do usuário inválidos.'+#13+#13
        + 'Se você esqueceu sua senha, consulte '+ #13
 	      + 'o administrador do sistema', mtError, [mbOK], 0);      
        EdtSenha.Clear; // limpa o objeto EdtSenha
 		    EdtSenha.SetFocus; //Ajusta o foco para o objeto EdtSenha
    end
  else
    begin
      FrmLogin.Hide; //Esconde a tela
      FrmMenuPrin.ShowModal; //chama a tela FrmMenuPrin no modo modal
      FrmLogin.Release; //Remove a tela da memória
      FrmLogin := Nil; //Atribui conteúdo nulo para a variável de tela FrmLogin
 	end;

end;

end.
