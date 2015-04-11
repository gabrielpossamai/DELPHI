unit uConsultaAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Vcl.ComCtrls, Vcl.StdCtrls, uCadastraAluno;

type
  TConsultaAluno = class(TConsultaPai)
  private
    { Private declarations }
    umCadastraAluno : TCadastraAluno;
  public
    { Public declarations }
    procedure Novo;    override;
    procedure Alterar; override;
    procedure Excluir; override;
    procedure Sair;    override;
    procedure setCadastro (pObj : TObject); override;
  end;

var
  ConsultaAluno: TConsultaAluno;

implementation

{$R *.dfm}

{ TConsultaAluno }

procedure TConsultaAluno.Alterar;
begin
  inherited;
  umCadastraAluno.ShowModal;
end;

procedure TConsultaAluno.Excluir;
begin
  inherited;
   umCadastraAluno.ShowModal;
end;

procedure TConsultaAluno.Novo;
begin
  inherited;
   umCadastraAluno.ShowModal;
end;

procedure TConsultaAluno.Sair;
begin
  inherited;

end;

procedure TConsultaAluno.setCadastro(pObj: TObject);
begin
  inherited;
  umCadastraAluno := TCadastraAluno(pObj);
end;

end.
