unit uConsultaEditora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Vcl.ComCtrls, Vcl.StdCtrls, uCadastraEditora;

type
  TConsultaEditora = class(TConsultaPai)
  private
    { Private declarations }
    umCadastraEditora : TCadastraEditora;
  public
    { Public declarations }
    procedure Novo;    override;
    procedure Alterar; override;
    procedure Excluir; override;
    procedure Sair;    override;
    procedure setCadastro (pObj : TObject); override;
  end;

var
  ConsultaEditora: TConsultaEditora;

implementation

{$R *.dfm}

{ TConsultaEditora }

procedure TConsultaEditora.Alterar;
begin
  inherited;
  umCadastraEditora.ShowModal;
end;

procedure TConsultaEditora.Excluir;
begin
  inherited;
  umCadastraEditora.ShowModal;
end;

procedure TConsultaEditora.Novo;
begin
  inherited;
   umCadastraEditora.ShowModal;
end;

procedure TConsultaEditora.Sair;
begin
  inherited;

end;

procedure TConsultaEditora.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastraEditora := TCadastraEditora(pObj);
end;

end.
