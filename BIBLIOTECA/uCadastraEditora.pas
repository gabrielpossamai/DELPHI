unit uCadastraEditora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastraPai, Vcl.StdCtrls;

type
  TCadastraEditora = class(TCadastraPai)
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
  CadastraEditora: TCadastraEditora;

implementation

{$R *.dfm}

{ TCadastraEditora }

procedure TCadastraEditora.carregaEdit;
begin
  inherited;

end;

procedure TCadastraEditora.conhecaObj(pObj: Tobject);
begin
  inherited;

end;

procedure TCadastraEditora.limpaEdit;
begin
  inherited;

end;

procedure TCadastraEditora.sair;
begin
  inherited;

end;

procedure TCadastraEditora.salvar;
begin
  inherited;

end;

end.
