unit uCadastraFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastraPai, Vcl.StdCtrls;

type
  TCadastraFuncionario = class(TCadastraPai)
    lbl_Nome: TLabel;
    edt_Nome: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure conhecaObj(pObj : Tobject); override;
    procedure salvar;                     override;
    procedure sair;                       override;
    procedure carregaEdit;                override;
    procedure limpaEdit;                  override;
  end;

var
  CadastraFuncionario: TCadastraFuncionario;

implementation

{$R *.dfm}

{ TCadastraFuncionario }

procedure TCadastraFuncionario.carregaEdit;
begin
  inherited;

end;

procedure TCadastraFuncionario.conhecaObj(pObj: Tobject);
begin
  inherited;

end;

procedure TCadastraFuncionario.limpaEdit;
begin
  inherited;

end;

procedure TCadastraFuncionario.sair;
begin
  inherited;

end;

procedure TCadastraFuncionario.salvar;
begin
  inherited;

end;

end.
