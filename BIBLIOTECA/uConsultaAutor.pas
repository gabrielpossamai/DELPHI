unit uConsultaAutor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Vcl.ComCtrls, Vcl.StdCtrls, uCadastraAutor;

type
  TConsultaAutor = class(TConsultaPai)
  private
    { Private declarations }
    umCadastraAutor : TCadastraAutor;
  public
    { Public declarations }
    procedure Novo;    override;
    procedure Alterar; override;
    procedure Excluir; override;
    procedure Sair;    override;
    procedure setCadastro (pObj : TObject); override;
  end;

var
  ConsultaAutor: TConsultaAutor;

implementation

{$R *.dfm}

{ TConsultaAutor }

procedure TConsultaAutor.Alterar;
begin
  inherited;
   umCadastraAutor.ShowModal;
end;

procedure TConsultaAutor.Excluir;
begin
  inherited;
   umCadastraAutor.ShowModal;
end;

procedure TConsultaAutor.Novo;
begin
  inherited;
   umCadastraAutor.ShowModal;
end;

procedure TConsultaAutor.Sair;
begin
  inherited;

end;

procedure TConsultaAutor.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastraAutor := TCadastraAutor(pObj);
end;

end.
