unit uCadastraLivro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastraPai, Vcl.StdCtrls,
   uLivro;

type
  TCadastraLivro = class(TCadastraPai)
    lbl_Titulo: TLabel;
    lbl_Autor: TLabel;
    edt_Titulo: TEdit;
    edt_Autor: TEdit;
    lbl_Editora: TLabel;
    edt_Editora: TEdit;
  private
    { Private declarations }
    umLivro : Livro;
  public
    { Public declarations }
    procedure conhecaObj(pObj : Tobject); override;
    procedure salvar;                     override;
    procedure sair;                       override;
    procedure carregaEdit;                override;
    procedure limpaEdit;                  override;
  end;

var
  CadastraLivro: TCadastraLivro;

implementation

{$R *.dfm}

{ TCadastraLivro }

procedure TCadastraLivro.carregaEdit;
begin
  inherited;
   self.edt_Titulo.Text := umLivro.getTitulo;
   self.edt_Autor.Text := inttostr(umLivro.getCodigo);
end;

procedure TCadastraLivro.conhecaObj(pObj: Tobject);
begin
  inherited;
  umLivro := Livro(pObj);
  limpaEdit;
end;

procedure TCadastraLivro.limpaEdit;
begin
  inherited;
  self.edt_Titulo.Clear;
  self.edt_Autor.Clear;
  self.edt_Editora.Clear;
  self.edt_Codigo.Clear;
end;

procedure TCadastraLivro.sair;
begin
  inherited;

end;

procedure TCadastraLivro.salvar;
begin
  inherited;

end;

end.
