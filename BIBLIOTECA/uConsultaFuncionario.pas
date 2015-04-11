unit uConsultaFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Vcl.ComCtrls, Vcl.StdCtrls, uCadastraFuncionario;

type
  TConsultaFuncionario = class(TConsultaPai)
  private
    { Private declarations }
    umCadastraFuncionario : TCadastraFuncionario;
  public
    { Public declarations }
    procedure Novo;    override;
    procedure Alterar; override;
    procedure Excluir; override;
    procedure Sair;    override;
    procedure setCadastro (pObj : TObject); override;
  end;

var
  ConsultaFuncionario: TConsultaFuncionario;

implementation

{$R *.dfm}

{ TConsultaFuncionario }

procedure TConsultaFuncionario.Alterar;
begin
  inherited;
   umCadastraFuncionario.ShowModal;
end;

procedure TConsultaFuncionario.Excluir;
begin
  inherited;
   umCadastraFuncionario.ShowModal;
end;

procedure TConsultaFuncionario.Novo;
begin
  inherited;
  umCadastraFuncionario.ShowModal;
end;

procedure TConsultaFuncionario.Sair;
begin
  inherited;

end;

procedure TConsultaFuncionario.setCadastro(pObj: TObject);
begin
  inherited;
   umCadastraFuncionario := TCadastraFuncionario(pObj);
end;

end.
