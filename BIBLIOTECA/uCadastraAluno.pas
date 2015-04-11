unit uCadastraAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastraPai, Vcl.StdCtrls;

type
  TCadastraAluno = class(TCadastraPai)
    lbl_Nome: TLabel;
    edt_nome: TEdit;
    lbl_Idade: TLabel;
    edt_Idade: TEdit;
    lbl_Sexo: TLabel;
    edt_Sexo: TEdit;
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
  CadastraAluno: TCadastraAluno;

implementation

{$R *.dfm}

{ TCadastraAluno }

procedure TCadastraAluno.carregaEdit;
begin
  inherited;

end;

procedure TCadastraAluno.conhecaObj(pObj: Tobject);
begin
  inherited;

end;

procedure TCadastraAluno.limpaEdit;
begin
  inherited;

end;

procedure TCadastraAluno.sair;
begin
  inherited;

end;

procedure TCadastraAluno.salvar;
begin
  inherited;

end;

end.
