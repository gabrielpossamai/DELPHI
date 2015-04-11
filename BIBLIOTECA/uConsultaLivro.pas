unit uConsultaLivro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Vcl.ComCtrls, Vcl.StdCtrls,
  uCadastraLivro, uLivro;

type
  TConsultaLivro = class(TConsultaPai)
  private
    { Private declarations }
    umCadastraLivro : TCadastraLivro;
    umLivro : Livro;
  public
    { Public declarations }
    procedure Novo;    override;
    procedure Alterar; override;
    procedure Excluir; override;
    procedure Sair;    override;
    procedure setCadastro (pObj : TObject); override;
    procedure conhecaObj (pObj : TObject);  override;
  end;

var
  ConsultaLivro: TConsultaLivro;

implementation

{$R *.dfm}

{ TConsultaLivro }

procedure TConsultaLivro.Alterar;
begin
  inherited;
   umCadastraLivro.conhecaObj(umLivro);
   umCadastraLivro.ShowModal;
end;

procedure TConsultaLivro.conhecaObj(pObj: TObject);
begin
  inherited;
  umLivro := Livro(pObj);
end;

procedure TConsultaLivro.Excluir;
begin
  inherited;
   umCadastraLivro.ShowModal;
end;

procedure TConsultaLivro.Novo;
begin
  inherited;
  umCadastraLivro.ShowModal;
end;

procedure TConsultaLivro.Sair;
begin
  inherited;

end;

procedure TConsultaLivro.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastraLivro := TCadastraLivro(pObj);

end;

end.
