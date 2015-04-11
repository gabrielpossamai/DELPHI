unit uCadastraPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCadastraPai = class(TForm)
    edt_Codigo: TEdit;
    btn_Salvar: TButton;
    btn_Sair: TButton;
    lbl_Codigo: TLabel;
    procedure btn_SairClick(Sender: TObject);
    procedure btn_SalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure conhecaObj(pObj : Tobject); virtual;
    procedure salvar;                     virtual;
    procedure sair;                       virtual;
    procedure carregaEdit;                virtual;
    procedure limpaEdit;                  virtual;
  end;

var
  CadastraPai: TCadastraPai;

implementation

{$R *.dfm}

{ TCadastraPai }

procedure TCadastraPai.btn_SairClick(Sender: TObject);
begin
    sair;
end;

procedure TCadastraPai.btn_SalvarClick(Sender: TObject);
begin
    salvar;
end;

procedure TCadastraPai.carregaEdit;
begin

end;

procedure TCadastraPai.conhecaObj(pObj: Tobject);
begin

end;

procedure TCadastraPai.limpaEdit;
begin

end;

procedure TCadastraPai.sair;
begin
    close;
end;

procedure TCadastraPai.salvar;
begin

end;

end.
