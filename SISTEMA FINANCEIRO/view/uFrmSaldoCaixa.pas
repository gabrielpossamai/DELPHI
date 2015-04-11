unit uFrmSaldoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, uCaixa;

type
  TfrmSaldoCaixa = class(TForm)
    Label3: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel2: TBevel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    btnFiltrar: TBitBtn;
    lblEntradas: TLabel;
    lblSaidas: TLabel;
    lblSaldo: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    Caixa : TCaixa;
    procedure PreencherCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSaldoCaixa: TfrmSaldoCaixa;

implementation

{$R *.dfm}

procedure TfrmSaldoCaixa.btnFiltrarClick(Sender: TObject);
begin
  Caixa.GetSaldoAtual(FormatDateTime('yyyy/MM/dd',DateTimePicker1.Date),
                      FormatDateTime('yyyy/MM/dd',DateTimePicker2.Date));
  PreencherCampos;
end;

procedure TfrmSaldoCaixa.FormCreate(Sender: TObject);
begin
  Caixa := TCaixa.Create;
  Caixa.GetSaldoAtual('','');
  PreencherCampos;
end;

procedure TfrmSaldoCaixa.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Caixa);
end;

procedure TfrmSaldoCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then
    btnFiltrar.Click;
end;

procedure TfrmSaldoCaixa.PreencherCampos;
begin
  lblEntradas.Caption := FormatFloat('R$: ,#0.00', Caixa.Entradas);
  lblSaidas.Caption   := FormatFloat('R$: ,#0.00', Caixa.Saidas);
  lblSaldo.Caption    := FormatFloat('R$: ,#0.00', Caixa.Saldo);
end;

end.
