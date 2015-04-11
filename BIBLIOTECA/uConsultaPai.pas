unit uConsultaPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, uCadastraLivro;

type
  TConsultaPai = class(TForm)
    edt_Consulta: TEdit;
    btn_Consultar: TButton;
    ListViewConsulta: TListView;
    btn_Novo: TButton;
    btn_Alterar: TButton;
    btn_Excluir: TButton;
    btn_Sair: TButton;
    procedure btn_SairClick(Sender: TObject);
    procedure btn_NovoClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure btn_ExcluirClick(Sender: TObject);
  private
    { Private declarations }
    umCadastraLivros : TCadastraLivro;
  public
    { Public declarations }
    procedure Novo;    virtual;
    procedure Alterar; virtual;
    procedure Excluir; virtual;
    procedure Sair;    virtual;
    procedure setCadastro (pObj : TObject); virtual;
    procedure conhecaObj (pObj : TObject);  virtual;
  end;

var
  ConsultaPai: TConsultaPai;

implementation

{$R *.dfm}

procedure TConsultaPai.Alterar;
begin

end;

procedure TConsultaPai.btn_AlterarClick(Sender: TObject);
begin
    Alterar;
end;

procedure TConsultaPai.btn_ExcluirClick(Sender: TObject);
begin
    Excluir;
end;

procedure TConsultaPai.btn_NovoClick(Sender: TObject);
begin
    Novo;
end;

procedure TConsultaPai.btn_SairClick(Sender: TObject);
begin
    sair;
end;

procedure TConsultaPai.conhecaObj(pObj: TObject);
begin

end;

procedure TConsultaPai.Excluir;
begin

end;

procedure TConsultaPai.Novo;
begin

end;

procedure TConsultaPai.Sair;
begin
    close;
end;

procedure TConsultaPai.setCadastro(pObj: TObject);
begin

end;

end.
