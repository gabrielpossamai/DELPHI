unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, sSkinManager, sEdit, sLabel, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    imgUsuarios: TImage;
    Label1: TLabel;
    imgReceber: TImage;
    imgPagar: TImage;
    imgCaixa: TImage;
    imgConsReceber: TImage;
    imgConsPagar: TImage;
    Label2: TLabel;
    Label3: TLabel;
    imgConfiguração: TImage;
    imgNavegador: TImage;
    Image3: TImage;
    Image4: TImage;
    StatusBar1: TStatusBar;
    imgRelPagar: TImage;
    imgRelReceber: TImage;
    imgRelCaixa: TImage;
    BalloonHint: TBalloonHint;
    Timer: TTimer;
    sSkinManager1: TsSkinManager;
    BitBtn1: TBitBtn;
    procedure TimerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgUsuariosClick(Sender: TObject);
    procedure imgCaixaClick(Sender: TObject);
    procedure imgPagarClick(Sender: TObject);
    procedure imgReceberClick(Sender: TObject);
    procedure imgConsReceberClick(Sender: TObject);
    procedure imgConsPagarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uFrmCadastroBasico, uFrmCadastroUsuarios, uFuncoes, uFrmCadastroCaixa,
  uFrmCadastroPagar, uFrmCadastroReceber, uFrmConsPagar, uFrmConsReceber,
  uFrmLogin, uFrmSplash, uFrmSaldoCaixa;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  CriarForm(TfrmSaldoCaixa, frmSaldoCaixa);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja realmente sair?','Informação',MB_YESNO+MB_ICONQUESTION) = mrYes then
    Application.Terminate
  else
    Abort;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  frmSplash := TfrmSplash.Create(nil);
  try
    frmSplash.ShowModal;
  finally
    FreeAndNil(frmSplash);
  end;

  frmLogin := TfrmLogin.Create(nil);
  try
    frmLogin.ShowModal;
    if frmLogin.ModalResult = mrNo then
      Application.Terminate;
  finally
    FreeAndNil(frmLogin);
  end;
end;

procedure TfrmPrincipal.imgCaixaClick(Sender: TObject);
begin
  CriarForm(TfrmCadastroCaixa, frmCadastroCaixa);
end;

procedure TfrmPrincipal.imgConsPagarClick(Sender: TObject);
begin
  CriarForm(TfrmConsPagar,frmConsPagar);
end;

procedure TfrmPrincipal.imgConsReceberClick(Sender: TObject);
begin
  CriarForm(TfrmConsReceber,frmConsReceber);
end;

procedure TfrmPrincipal.imgPagarClick(Sender: TObject);
begin
  CriarForm(TfrmCadastroPagar, frmCadastroPagar);
end;

procedure TfrmPrincipal.imgReceberClick(Sender: TObject);
begin
  CriarForm(TfrmCadastroReceber,frmCadastroReceber);
end;

procedure TfrmPrincipal.imgUsuariosClick(Sender: TObject);
begin
  CriarForm(TfrmCadastroUsuarios, frmCadastroUsuarios);
end;

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
