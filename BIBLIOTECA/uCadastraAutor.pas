unit uCadastraAutor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastraPai, Vcl.StdCtrls;

type
  TCadastraAutor = class(TCadastraPai)
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
  CadastraAutor: TCadastraAutor;

implementation

{$R *.dfm}

{ TCadastraAutor }

procedure TCadastraAutor.carregaEdit;
begin
  inherited;

end;

procedure TCadastraAutor.conhecaObj(pObj: Tobject);
begin
  inherited;

end;

procedure TCadastraAutor.limpaEdit;
begin
  inherited;

end;

procedure TCadastraAutor.sair;
begin
  inherited;

end;

procedure TCadastraAutor.salvar;
begin
  inherited;

end;

end.
