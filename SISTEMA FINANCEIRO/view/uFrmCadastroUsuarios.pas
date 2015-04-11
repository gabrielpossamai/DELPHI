unit uFrmCadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastroBasico, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmCadastroUsuarios = class(TfrmCadastroBasico)
    edtNome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtLogin: TEdit;
    edtSenha: TEdit;
    procedure acSalvarExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure acPesquisarExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuarios: TfrmCadastroUsuarios;

implementation

{$R *.dfm}

uses uDmDados, uFuncoes, uDmRelatorios;

procedure TfrmCadastroUsuarios.acEditarExecute(Sender: TObject);
begin
  inherited;
  edtNome.Text  := DmDados.cdsUsuariosnome.AsString;
  edtLogin.Text := DmDados.cdsUsuarioslogin.AsString;
  edtSenha.Text := DmDados.cdsUsuariossenha.AsString;
end;

procedure TfrmCadastroUsuarios.acImprimirExecute(Sender: TObject);
begin
  DmRelatorios := TDmRelatorios.Create(nil);
  try
    DmRelatorios.frxReport.LoadFromFile(ExtractFilePath(Application.ExeName)+'relatorios\relCadUsuarios.fr3');
    DmRelatorios.frxReport.ShowReport();
  finally
    FreeAndNil(DmRelatorios);
  end;
end;

procedure TfrmCadastroUsuarios.acPesquisarExecute(Sender: TObject);
begin
  inherited;
  with DmDados do
  begin
    DmDados.cdsUsuarios.Close;
    DmDados.cdsUsuarios.CommandText := 'SELECT * FROM USUARIOS';
    DmDados.cdsUsuarios.Open;
  end;
end;

procedure TfrmCadastroUsuarios.acSalvarExecute(Sender: TObject);
begin
  if Trim(edtNome.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo nome.','Atenção',MB_OK+MB_ICONWARNING);
    edtNome.SetFocus;
    Abort;
  end;
  if Trim(edtLogin.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo login.','Atenção',MB_OK+MB_ICONWARNING);
    edtLogin.SetFocus;
    Abort;
  end;
  if (dsTabela.State in [dsInsert]) and (GetLoginCadastrado(trim(edtLogin.Text))) then
  begin
    Application.MessageBox('Login encontra-se cadastrado.','Atenção',MB_OK+MB_ICONWARNING);
    edtLogin.SetFocus;
    Abort;
  end;
  if Trim(edtSenha.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo senha.','Atenção',MB_OK+MB_ICONWARNING);
    edtSenha.SetFocus;
    Abort;
  end;
  with DmDados do
  begin
    if dsTabela.State in [dsInsert] then
      cdsUsuariosid.AsInteger         := GetId('ID','USUARIOS');
    cdsUsuariosnome.AsString          := trim(edtNome.Text);
    cdsUsuarioslogin.AsString         := trim(edtLogin.Text);
    cdsUsuariossenha.AsString         := trim(edtSenha.Text);
    cdsUsuariosstatus.AsString        := 'A';
    cdsUsuariosdt_cadastro.AsDateTime := now;
  end;
  inherited;
end;

procedure TfrmCadastroUsuarios.btnFiltrarClick(Sender: TObject);
begin
  if edtPesquisar.Text = '' then
  begin
    Application.MessageBox('Informe um valor a ser pesquisado ou clique em Pesquisar.','Atenção',MB_OK+MB_ICONWARNING);
    edtPesquisar.SetFocus;
    Abort;
  end;
  with DmDados do
  begin
    cdsUsuarios.Close;
    case cbxFiltros.ItemIndex of
      0 : cdsUsuarios.CommandText := 'SELECT * FROM USUARIOS WHERE NOME  LIKE '+QuotedStr('%'+edtPesquisar.Text+'%');
      1 : cdsUsuarios.CommandText := 'SELECT * FROM USUARIOS WHERE LOGIN LIKE '+QuotedStr('%'+edtPesquisar.Text+'%');
    end;
    cdsUsuarios.Open;
  end;
end;

end.
