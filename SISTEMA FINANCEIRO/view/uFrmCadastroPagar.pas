unit uFrmCadastroPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastroBasico, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, tpEdit, Datasnap.DBClient;

type
  TfrmCadastroPagar = class(TfrmCadastroBasico)
    Label2: TLabel;
    edtDocumento: TEdit;
    edtDescricao: TEdit;
    Label3: TLabel;
    edtQtdeParcelas: TEdit;
    Label4: TLabel;
    edtVlrCompra: TtpEdit;
    Label6: TLabel;
    edtDtCompra: TtpEdit;
    Label7: TLabel;
    edtVariacao: TEdit;
    Label8: TLabel;
    Button1: TButton;
    cdsParcelas: TClientDataSet;
    DBGrid1: TDBGrid;
    dsParcelas: TDataSource;
    cdsParcelasParcela: TIntegerField;
    cdsParcelasValor: TCurrencyField;
    cdsParcelasVencimento: TDateField;
    Button2: TButton;
    Label9: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acSalvarExecute(Sender: TObject);
    procedure acPesquisarExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPagar: TfrmCadastroPagar;

implementation

{$R *.dfm}

uses uDmDados, uFuncoes, uDmRelatorios;

procedure TfrmCadastroPagar.acExcluirExecute(Sender: TObject);
begin
 if Application.MessageBox('Deseja realmente cancelar o documento?','Pergunta',MB_YESNO+MB_ICONQUESTION) = mrYes then
 begin
   try
     TClientDataSet(dsTabela.DataSet).Edit;
     DmDados.cdsContas_pagarstatus.AsString := 'C';
     TClientDataSet(dsTabela.DataSet).ApplyUpdates(0);
     Application.MessageBox('Documento cancelado com sucesso!','Informação',0+64);
     TClientDataSet(dsTabela.DataSet).Open;
   except on E : Exception do
     raise Exception.Create('Erro ao excluir registro: '+E.Message);
   end;
 end;
end;

procedure TfrmCadastroPagar.acImprimirExecute(Sender: TObject);
begin
  DmRelatorios := TDmRelatorios.Create(nil);
  try
    DmRelatorios.frxReport.LoadFromFile(ExtractFilePath(Application.ExeName)+'relatorios\relCadPagar.fr3');
    DmRelatorios.frxReport.ShowReport();
  finally
    FreeAndNil(DmRelatorios);
  end;
end;

procedure TfrmCadastroPagar.acPesquisarExecute(Sender: TObject);
begin
  inherited;
  with DmDados do
  begin
    DmDados.cdsContas_pagar.Close;
    DmDados.cdsContas_pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR';
    DmDados.cdsContas_pagar.Open;
  end;
end;

procedure TfrmCadastroPagar.acSalvarExecute(Sender: TObject);
var
  I : Integer;
begin
  if cdsParcelas.IsEmpty then
  begin
    Application.MessageBox('Você precisa gerar a(s) parcela(s).','Atenção',MB_OK+MB_ICONWARNING);
    edtDocumento.SetFocus;
    Abort;
  end;

  try
    with DmDados do
    begin
      cdsParcelas.First;
      while not cdsParcelas.Eof do
      begin
        if dsTabela.State in [dsBrowse,dsInactive] then
          cdsContas_pagar.Insert;

        cdsContas_pagarid.AsInteger             := GetId('ID','CONTAS_PAGAR');
        cdsContas_pagarnumero_doc.AsString      := trim(edtDocumento.Text);
        cdsContas_pagardescricao.AsString       := trim(edtDescricao.Text);
        cdsContas_pagarparcela.AsInteger        := cdsParcelasParcela.AsInteger;
        cdsContas_pagarvlr_parcela.AsCurrency   := cdsParcelasValor.AsCurrency;
        cdsContas_pagarvlr_compra.AsCurrency    := StringParaFloat(edtVlrCompra.Text);
        cdsContas_pagardt_compra.AsDateTime     := StrToDate(edtDtCompra.Text);
        cdsContas_pagardt_vencimento.AsDateTime := cdsParcelasVencimento.AsDateTime;
        cdsContas_pagarstatus.AsString          := 'A';
        cdsContas_pagarvlr_abatido.AsCurrency   := 0;
        cdsContas_pagardt_cadastro.AsDateTime   := now;
        cdsContas_pagar.Post;
        cdsContas_pagar.ApplyUpdates(0);
        cdsParcelas.Next;
      end;
    end;
    Application.MessageBox('Registro inserido com sucesso!','Informação',MB_OK+MB_ICONINFORMATION);
    TClientDataSet(dsTabela.DataSet).Open;

    //Limpar
    for I := 0 to ComponentCount -1 do
    begin
      if Components[i] is TCustomEdit then
        TCustomEdit(Components[i]).Clear;
    end;
    if PageControl1.ActivePage = tbsCadastro then
    begin
      tbsCadastro.TabVisible  := false;
      tbsPesquisar.TabVisible := true;
      PageControl1.ActivePage := tbsPesquisar;
    end;
    edtPesquisar.SetFocus;
    cdsParcelas.EmptyDataSet;
  except on E : Exception do
    raise Exception.Create('Erro ao salvar registro: '+E.Message);
  end;
end;

procedure TfrmCadastroPagar.btnFiltrarClick(Sender: TObject);
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
    cdsContas_pagar.Close;
    case cbxFiltros.ItemIndex of
      0 : cdsContas_pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR WHERE DESCRICAO LIKE '+QuotedStr('%'+edtPesquisar.Text+'%');
      1 : cdsContas_pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR WHERE DOCUMENTO LIKE '+QuotedStr('%'+edtPesquisar.Text+'%');
    end;
    cdsContas_pagar.Open;
  end;
end;

procedure TfrmCadastroPagar.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  if edtDocumento.Text = '' then
  begin
    Application.MessageBox('Preencha o campo documento.','Atenção',MB_OK+MB_ICONWARNING);
    edtDocumento.SetFocus;
    Abort;
  end;
  if edtDescricao.Text = '' then
  begin
    Application.MessageBox('Preencha o campo descrição.','Atenção',MB_OK+MB_ICONWARNING);
    edtDescricao.SetFocus;
    Abort;
  end;
  if edtQtdeParcelas.Text = '' then
  begin
    Application.MessageBox('Preencha o campo quantidade de parcela(s).','Atenção',MB_OK+MB_ICONWARNING);
    edtQtdeParcelas.SetFocus;
    Abort;
  end;
  if edtVariacao.Text = '' then
  begin
    Application.MessageBox('Preencha o campo variação da(s) parcela(s).','Atenção',MB_OK+MB_ICONWARNING);
    edtVariacao.SetFocus;
    Abort;
  end;
  if StringParaFloat(edtVlrCompra.Text) = 0 then
  begin
    Application.MessageBox('Preencha o campo valor da compra.','Atenção',MB_OK+MB_ICONWARNING);
    edtVlrCompra.SetFocus;
    Abort;
  end;
  if edtDtCompra.Text = '' then
  begin
    Application.MessageBox('Preencha o campo data da compra.','Atenção',MB_OK+MB_ICONWARNING);
    edtDtCompra.SetFocus;
    Abort;
  end;

  cdsParcelas.EmptyDataSet;
  for I := 1 to StrToInt(edtQtdeParcelas.Text) do
  begin
    cdsParcelas.Insert;
    cdsParcelasParcela.AsInteger     := i;
    cdsParcelasValor.AsCurrency      := StringParaFloat(edtVlrCompra.Text) / StrToInt(edtQtdeParcelas.Text);
    cdsParcelasVencimento.AsDateTime := StrToDate(edtDtCompra.Text) + (StrToInt(edtVariacao.Text) * i);
    cdsParcelas.Post;
  end;
end;

procedure TfrmCadastroPagar.Button2Click(Sender: TObject);
begin
  cdsParcelas.EmptyDataSet;
end;

procedure TfrmCadastroPagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ZebrarDBGrid(dsParcelas,DBGrid1,State,Rect,Column);
end;

end.
