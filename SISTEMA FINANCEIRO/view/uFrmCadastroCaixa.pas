unit uFrmCadastroCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastroBasico, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, tpEdit;

type
  TfrmCadastroCaixa = class(TfrmCadastroBasico)
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    edtDocumento: TEdit;
    edtDescricao: TEdit;
    RadioGroup1: TRadioGroup;
    edtValor: TtpEdit;
    Label3: TLabel;
    procedure acSalvarExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure acPesquisarExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCaixa: TfrmCadastroCaixa;

implementation

{$R *.dfm}

uses uDmDados, uFuncoes, System.Math, uDmRelatorios;

procedure TfrmCadastroCaixa.acEditarExecute(Sender: TObject);
begin
  inherited;
  with DmDados do
  begin
    edtDocumento.Text     := cdsCaixanumero_doc.AsString;
    edtDescricao.Text     := cdsCaixadescricao.AsString;
    edtValor.Text         := FormatFloat(',#0.00',cdsCaixavalor.AsCurrency);
    RadioGroup1.ItemIndex := ifthen(cdsCaixatipo.AsString = 'C',0,1);
  end;
end;

procedure TfrmCadastroCaixa.acImprimirExecute(Sender: TObject);
begin
  DmRelatorios := TDmRelatorios.Create(nil);
  try
    DmRelatorios.frxReport.LoadFromFile(ExtractFilePath(Application.ExeName)+'relatorios\relCadLancamentoCaixa.fr3');
    DmRelatorios.frxReport.ShowReport();
  finally
    FreeAndNil(DmRelatorios);
  end;
end;

procedure TfrmCadastroCaixa.acPesquisarExecute(Sender: TObject);
begin
  inherited;
  with DmDados do
  begin
    DmDados.cdsCaixa.Close;
    DmDados.cdsCaixa.CommandText := 'SELECT * FROM CAIXA';
    DmDados.cdsCaixa.Open;
  end;
end;

procedure TfrmCadastroCaixa.acSalvarExecute(Sender: TObject);
begin
  //Validações
  if trim(edtDocumento.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo documento.','Atenção',MB_OK+MB_ICONWARNING);
    edtDocumento.SetFocus;
    Abort;
  end;
  if trim(edtDescricao.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo descrição.','Atenção',MB_OK+MB_ICONWARNING);
    edtDescricao.SetFocus;
    Abort;
  end;
  if StringParaFloat(edtValor.Text) <= 0 then
  begin
    Application.MessageBox('Informe um valor maior que zero.','Atenção',MB_OK+MB_ICONWARNING);
    edtValor.SetFocus;
    Abort;
  end;

  with DmDados do
  begin
    if dsTabela.State in [dsInsert] then
    begin
      cdsCaixaid.AsInteger           := GetId('ID','CAIXA');
      cdsCaixadt_cadastro.AsDateTime := now;
    end;
    cdsCaixanumero_doc.AsString := Trim(edtDocumento.Text);
    cdsCaixadescricao.AsString  := trim(edtDescricao.Text);
    cdsCaixavalor.AsCurrency    := StringParaFloat(edtValor.Text);
    case RadioGroup1.ItemIndex of
      0: cdsCaixatipo.AsString := 'C';
      1: cdsCaixatipo.AsString := 'D';
    end;
  end;
  inherited;
end;

procedure TfrmCadastroCaixa.btnFiltrarClick(Sender: TObject);
begin
  inherited;
  if edtPesquisar.Text = '' then
  begin
    Application.MessageBox('Informe um valor a ser pesquisado ou clique em Pesquisar.','Atenção',MB_OK+MB_ICONWARNING);
    edtPesquisar.SetFocus;
    Abort;
  end;
  with DmDados do
  begin
    cdsCaixa.Close;
    case cbxFiltros.ItemIndex of
      0 : cdsCaixa.CommandText := 'SELECT * FROM CAIXA WHERE DOCUMENTO  LIKE '+QuotedStr('%'+edtPesquisar.Text+'%');
      1 : cdsCaixa.CommandText := 'SELECT * FROM CAIXA WHERE DESCRICAO LIKE '+QuotedStr('%'+edtPesquisar.Text+'%');
    end;
    cdsUsuarios.Open;
  end;
end;

end.
