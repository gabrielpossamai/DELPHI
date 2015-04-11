unit uFrmBaixarReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, tpEdit, Vcl.Buttons;

type
  TfrmBaixarReceber = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    lblDocumento: TLabel;
    Label1: TLabel;
    lblParcela: TLabel;
    Label3: TLabel;
    lblVencimento: TLabel;
    lblVlrParcela: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    lblVlrAbatido: TLabel;
    GroupBox2: TGroupBox;
    edtObservacao: TEdit;
    edtValor: TtpEdit;
    Label6: TLabel;
    Label7: TLabel;
    btnBaixar: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    fValorParcela : Currency;
    fValorAbatido : Currency;
    { Private declarations }
  public
    fId : Integer;
    { Public declarations }
  end;

var
  frmBaixarReceber: TfrmBaixarReceber;

implementation

uses
  Data.SqlExpr, uDmDados;

{$R *.dfm}

procedure TfrmBaixarReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #27 then
    Close;
end;

procedure TfrmBaixarReceber.FormShow(Sender: TObject);
begin
  if fId = 0 then
    raise Exception.Create('O fid não pode ser zero.');

  with TSQLQuery.Create(nil) do
  try
    SQLConnection := DmDados.SQLConnection;
    sql.Add('select id, documento, parcela, vlr_parcela, vlr_abatido, dt_vencimento');
    sql.Add('from contas_receber where id = :prm');
    Params[0].AsInteger := fId;
    Open;

    lblDocumento.Caption  := Fields[1].AsString;
    lblParcela.Caption    := Fields[2].AsString;
    lblVlrParcela.Caption := FormatFloat('R$ ,#0.00',Fields[3].AsCurrency);
    lblVlrAbatido.Caption := FormatFloat('R$ ,#0.00',Fields[4].AsCurrency);
    lblVencimento.Caption := Fields[5].AsString;

    fValorParcela := Fields[3].AsCurrency;
    fValorAbatido := Fields[4].AsCurrency;
  finally
    Close;
    Free;
  end;
end;

end.
