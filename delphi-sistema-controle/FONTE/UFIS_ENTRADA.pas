unit UFIS_ENTRADA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Ufrm, StdCtrls, ComCtrls, Buttons, ExtCtrls, Mask, EditLabel,
  UComponentTag, Math ;

type
  TfrmFIS_ENTRADA = class(Tfrm)
    edtNUM_DOCUMENTO: TEditLabel;
    edtCOD_EMPRESA: TEditLabel;
    edtNOM_EMPRESA: TEditTag;
    edtCOD_FILIAL: TEditLabel;
    edtNOM_FILIAL: TEditTag;
    edtCOD_FORNECEDOR: TEditLabel;
    edtNOM_FORNECEDOR: TEditTag;
    edtNOM_SERIE: TEditLabel;
    edtDAT_EMISSAO: TEditLabel;
    edtDAT_ENTRADA: TEditLabel;
    edtVAL_TOTAL: TEditLabel;
    edtVAL_CUSTOS_NF: TEditLabel;
    edtVAL_CUSTOS: TEditLabel;
    grpSexo: TGroupBox;
    optNormal: TRadioButtonTag;
    optDevolucao: TRadioButtonTag;
    edtCOD_PRODUTO: TEditLabel;
    edtNOM_PRODUTO: TEditTag;
    edtQTD_MOV: TEditLabel;
    edtVAL_MOV: TEditLabel;
    lvw: TListViewTag;
    btnInserirProduto: TButton;
    btnExcluirProduto: TButton;
    lblValorTotal: TLabel;
    optAjuste: TRadioButtonTag;
    procedure FormCreate(Sender: TObject);
    procedure edtCOD_EMPRESAChange(Sender: TObject);
    procedure edtCOD_EMPRESAClickButton(Sender: TObject);
    procedure edtCOD_FILIALClickButton(Sender: TObject);
    procedure edtCOD_FORNECEDORClickButton(Sender: TObject);
    procedure edtCOD_PRODUTOClickButton(Sender: TObject);
    procedure edtCOD_EMPRESAExit(Sender: TObject);
    procedure edtCOD_FILIALExit(Sender: TObject);
    procedure edtCOD_FORNECEDORExit(Sender: TObject);
    procedure edtCOD_PRODUTOExit(Sender: TObject);
    procedure edtNOM_SERIEExit(Sender: TObject);
    procedure edtVAL_CUSTOS_NFExit(Sender: TObject);
    procedure edtVAL_CUSTOSExit(Sender: TObject);
    procedure btnInserirProdutoClick(Sender: TObject);
    procedure btnExcluirProdutoClick(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure txtHabilitaEdicaoEnter(Sender: TObject);
    procedure edtCOD_EMPRESAEnter(Sender: TObject);
    procedure edtVAL_MOVExit(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure lvwDblClick(Sender: TObject);
    procedure lvwKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    function PesquisaNova(Sender: TObject; blnValida,
      Msg: boolean): boolean;
    procedure InsereProdutoNaLista;
    function GravaNota: boolean;
  public
    procedure CarregaProdutos;
    procedure SomaProdutos;
  end;

var
  frmFIS_ENTRADA: TfrmFIS_ENTRADA;

implementation

{$R *.dfm}

uses UPESQUISA, UEstoque, URateio, Functions, DB;

procedure TfrmFIS_ENTRADA.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'FIS_ENTRADA';
end;

function TfrmFIS_ENTRADA.PesquisaNova(Sender: TObject; blnValida,
  Msg: boolean): boolean;
var Edt      : TEditlabel;
    EdtN     : TEdit;
    Pesquisa : TPesquisa;
    str      : array[0..2] of string;

begin
  Edt := Sender as TEditLabel;
  EdtN:= Edt._Edit;

  if (Edt._Campo = 'COD_EMPRESA') then
  begin
    str[0] := 'COD_EMPRESA,NOM_EMPRESA';
    str[1] := 'CAD_EMPRESA';
    str[2] := EmptyStr;
  end
  else if (Edt._Campo = 'COD_FILIAL') then
  begin
    str[0] := 'COD_FILIAL,NOM_FILIAL';
    str[1] := 'CAD_FILIAL';
    str[2] := 'COD_EMPRESA = '+edtCOD_EMPRESA.Text;
  end
  else if (Edt._Campo = 'COD_FORNECEDOR') then
  begin
    str[0] := 'COD_FORNECEDOR,NOM_FORNECEDOR';
    str[1] := 'CAD_FORNECEDOR';
    str[2] := EmptyStr;
  end
  else if (Edt.Name = 'edtCOD_PRODUTO') then
  begin
    str[0] := 'COD_PRODUTO,NOM_PRODUTO';
    str[1] := 'VW_PRODUTO';
    str[2] := EmptyStr;
  end
  else
    Exit;

  Pesquisa := TPesquisa.Create;
  Result := Pesquisa.ExecutaPesquisa(blnValida,str[0],str[1],Edt,EdtN,str[2],Msg);

  Pesquisa.Free;
end;

procedure TfrmFIS_ENTRADA.edtCOD_EMPRESAChange(Sender: TObject);
begin
  inherited;
  edtCOD_FILIAL.Text := '';
  edtCOD_FILIAL.Enabled := trim(edtCOD_EMPRESA.Text) <> '';
end;

procedure TfrmFIS_ENTRADA.edtCOD_EMPRESAClickButton(Sender: TObject);
begin
  inherited;
  PesquisaNova(Sender,false,true);
end;

procedure TfrmFIS_ENTRADA.edtCOD_FILIALClickButton(Sender: TObject);
begin
  inherited;
  PesquisaNova(Sender,false,true);
end;

procedure TfrmFIS_ENTRADA.edtCOD_FORNECEDORClickButton(Sender: TObject);
begin
  inherited;
  PesquisaNova(Sender,false,true);
end;

procedure TfrmFIS_ENTRADA.edtCOD_PRODUTOClickButton(Sender: TObject);
begin
  inherited;
  PesquisaNova(Sender,false,true);
end;

procedure TfrmFIS_ENTRADA.edtCOD_EMPRESAExit(Sender: TObject);
begin
  inherited;
  if not PesquisaNova(Sender,true,true) then
    TEditLabel(Sender).SetFocus;
end;

procedure TfrmFIS_ENTRADA.edtCOD_FILIALExit(Sender: TObject);
begin
  inherited;
  if not PesquisaNova(Sender,true,true) then
    TEditLabel(Sender).SetFocus;

end;

procedure TfrmFIS_ENTRADA.edtCOD_FORNECEDORExit(Sender: TObject);
begin
  inherited;
  if not PesquisaNova(Sender,true,true) then
    TEditLabel(Sender).SetFocus;

end;

procedure TfrmFIS_ENTRADA.edtCOD_PRODUTOExit(Sender: TObject);
begin
  inherited;
  if not PesquisaNova(Sender,true,true) then
    TEditLabel(Sender).SetFocus;
end;

procedure TfrmFIS_ENTRADA.edtNOM_SERIEExit(Sender: TObject);
begin
  inherited;
  if trim(edtNOM_SERIE.Text) = '' then
    edtNOM_SERIE.Text := ' ';
end;

procedure TfrmFIS_ENTRADA.edtVAL_CUSTOS_NFExit(Sender: TObject);
begin
  inherited;
  if trim(edtVAL_CUSTOS_NF.Text) = '' then
    edtVAL_CUSTOS_NF.Text := '0,00';
end;

procedure TfrmFIS_ENTRADA.edtVAL_CUSTOSExit(Sender: TObject);
begin
  inherited;
  if trim(edtVAL_CUSTOS.Text) = '' then
    edtVAL_CUSTOS.Text := '0,00';
end;


procedure TfrmFIS_ENTRADA.InsereProdutoNaLista;
var item: TListItem;
    i,index: integer;
begin
  if trim(edtCOD_PRODUTO.Text) = '' then
  begin
    MessageDlg( 'O campo C�digo Produto deve ser preenchido.',mtWarning,[mbOK],0);
    if edtCOD_PRODUTO.Enabled then
      edtCOD_PRODUTO.SetFocus;
    Exit;
  end;

  if trim(edtQTD_MOV.Text) = '' then
  begin
    MessageDlg( 'O campo Quantidade deve ser preenchido.',mtWarning,[mbOK],0);
    Exit;
  end;

  if trim(edtVAL_MOV.Text) = '' then
  begin
    MessageDlg( 'O campo Valor Total deve ser preenchido.',mtWarning,[mbOK],0);
    Exit;
  end;

  index := -1;

  for i := 1 to lvw.Items.Count do
  begin
    if trim(lvw.Items.Item[i-1].Caption) = trim(edtCOD_PRODUTO.Text) then
    begin
      index := i-1;
      Break;
    end;
  end;

  if index >= 0 then
  begin
    if MessageDlg('Esse produto j� existe na lista. Deseja atualizar?',
         mtConfirmation,[mbYes,mbNo],0) = mrNo then
      Exit;
    lvw.Items.Item[index].Caption := edtCOD_PRODUTO.Text;
    lvw.Items.Item[index].SubItems[0] := edtNOM_PRODUTO.Text;
    lvw.Items.Item[index].SubItems[1] := edtQTD_MOV.Text;
    lvw.Items.Item[index].SubItems[2] := edtVAL_MOV.Text;
  end
  else
  begin
    item := lvw.Items.Add;
    item.Caption := edtCOD_PRODUTO.Text;
    item.SubItems.Add(edtNOM_PRODUTO.Text);
    item.SubItems.Add(edtQTD_MOV.Text);
    item.SubItems.Add(edtVAL_MOV.Text);
  end;

  edtCOD_PRODUTO.Text := '';
  edtQTD_MOV.Text := '';
  edtVAL_MOV.Text := '';
  edtCOD_PRODUTO.SetFocus;
end;

procedure TfrmFIS_ENTRADA.btnInserirProdutoClick(Sender: TObject);
begin
  inherited;
  InsereProdutoNaLista;
  SomaProdutos;
end;

procedure TfrmFIS_ENTRADA.btnExcluirProdutoClick(Sender: TObject);
begin
  inherited;
  lvw.DeletaItemSelecionado;
  SomaProdutos;
end;

procedure TfrmFIS_ENTRADA.btnIncluiClick(Sender: TObject);
begin

  if not VerificaNotNull(false) then Exit;

  if lvw.Items.Count = 0 then
  begin
    MessageDlg('� necess�rio incluir algum produto.', mtWarning,[mbOK],0);
    Exit;
  end;

  if btnInclui.Enabled then
  begin
    if MessageDlg('Confirma Inclus�o?', mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      if GravaNota then
      begin
        MessageDlg('Nota Fiscal gravada com sucesso.', mtInformation,[mbOK],0);
        lvw.Items.Clear;
        LimpaCampos;
      end;
    end;
  end;
end;

function TfrmFIS_ENTRADA.GravaNota: boolean;
var
  i: integer;
  nf: TEntradaNF;
begin
  Result := false;
  
  nf := TEntradaNF.Create;

  nf.CodEmpresa := StrToInt(edtCOD_EMPRESA.Text);
  nf.CodFilial := StrToInt(edtCOD_FILIAL.Text);
  nf.CodFornecedor := StrToInt(edtCOD_FORNECEDOR.Text);
  nf.NumDocumento := StrToInt(edtNUM_DOCUMENTO.Text);
  nf.NomSerie := trim(edtNOM_SERIE.Text);
  nf.DatEmissao := StrToDate(edtDAT_EMISSAO.Text);
  nf.DatEntrada := StrToDate(edtDAT_ENTRADA.Text);
  nf.ValTotal := StrToCur(edtVAL_TOTAL.Text);
  nf.ValCustosNF := StrToCur(edtVAL_CUSTOS_NF.Text);
  nf.ValCustos := StrToCur(edtVAL_CUSTOS.Text);

  if optNormal.Checked then
    nf.Tipo := 'N'
  else if optDevolucao.Checked then
    nf.Tipo := 'D'
  else
    nf.Tipo := 'A';

  for i := 0 to lvw.Items.Count-1 do
  begin
    nf.Produtos.Add(
      StrToInt(lvw.Items.Item[i].Caption),
      lvw.Items.Item[i].SubItems[0],
      StrToCur(lvw.Items.Item[i].SubItems[1]),
      StrToCur(lvw.Items.Item[i].SubItems[2])
      );
  end;

  if not nf.GravaNota then
    MessageDlg(nf.MsgErro,mtWarning,[mbOK],0)
  else 
    Result := true;
end;

procedure TfrmFIS_ENTRADA.CarregaProdutos;
var
  str: string;
  ds: TDataSource;
  item: TListItem;
begin

  lvw.Items.Clear;

  if (trim(edtCOD_EMPRESA.Text) = '') or
   (trim(edtCOD_FILIAL.Text) = '') or
   (trim(edtCOD_FORNECEDOR.Text) = '') or
   (trim(edtNUM_DOCUMENTO.Text) = '') then Exit;

  str := 'Select ';
  str := str+' A.COD_PRODUTO,';
  str := str+' B.NOM_PRODUTO,';
  str := str+' A.QTD_MOV,';
  str := str+' A.VAL_PRODUTO ';
  str := str+' From ';
  str := str+' EST_ENTRADA A,';
  str := str+' VW_PRODUTO B ';
  str := str+' Where ';
  str := str+' A.COD_PRODUTO = B.COD_PRODUTO And ';
  str := str+' A.COD_EMPRESA = '+edtCOD_EMPRESA.Text+' And ';
  str := str+' A.COD_FILIAL = '+edtCOD_FILIAL.Text+' And ';
  str := str+' A.COD_FORNECEDOR = '+edtCOD_FORNECEDOR.Text+' And ';
  str := str+' A.NUM_DOCUMENTO = '+edtNUM_DOCUMENTO.Text+' And ';
  if trim(edtNOM_SERIE.Text) = '' then
    str := str+' A.NOM_SERIE = '+cnn.Aspas(' ')
  else
    str := str+' A.NOM_SERIE = '+cnn.Aspas(edtNOM_SERIE.Text);

  if cnn.ExecuteQuery(str,ds) then
  begin
    while not ds.DataSet.Eof do
    begin
      item := lvw.Items.Add;
      item.Caption := ds.DataSet.FieldByName('COD_PRODUTO').AsString;
      item.SubItems.Add(ds.DataSet.FieldByName('NOM_PRODUTO').AsString);
      item.SubItems.Add(FormatCurr('#,##0.000', ds.DataSet.FieldByName('QTD_MOV').AsCurrency));
      item.SubItems.Add(FormatCurr('#,##0.00',ds.DataSet.FieldByName('VAL_PRODUTO').AsCurrency));
      ds.DataSet.Next;
    end;
  end;
  SomaProdutos;
end;

procedure TfrmFIS_ENTRADA.txtHabilitaEdicaoEnter(Sender: TObject);
begin
  inherited;

  if not btnInclui.Enabled then
  begin
    CarregaProdutos;
    SomaProdutos;
  end;

end;

procedure TfrmFIS_ENTRADA.edtCOD_EMPRESAEnter(Sender: TObject);
begin
  inherited;
  lvw.Items.Clear;
  SomaProdutos;
end;

procedure TfrmFIS_ENTRADA.edtVAL_MOVExit(Sender: TObject);
begin
  inherited;
  if (Trim(edtCOD_PRODUTO.Text) = '') and (btnInclui.Enabled = true) then
    btnInclui.SetFocus;
end;

procedure TfrmFIS_ENTRADA.btnAlteraClick(Sender: TObject);

var nf: TEntradaNF;

begin
  if not VerificaNotNull(false) then Exit;

  if lvw.Items.Count = 0 then
  begin
    MessageDlg('� necess�rio incluir algum produto.', mtWarning,[mbOK],0);
    Exit;
  end;

  if btnaltera.Enabled then
  begin

    nf := TEntradaNF.Create;

    if MessageDlg('Confirma Altera��o?', mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      if nf.ExcluiNota(
        StrToInt(edtCOD_EMPRESA.Text),
        StrToInt(edtCOD_FILIAL.Text),
        StrToInt(edtCOD_FORNECEDOR.Text),
        StrToInt(edtNUM_DOCUMENTO.Text),
        edtNOM_SERIE.Text,
        false) then
      begin
        if GravaNota then
        begin
          MessageDlg('Nota Fiscal alterada com sucesso.', mtInformation,[mbOK],0);
          lvw.Items.Clear;
          pnl1.Enabled := true;
          LimpaCampos;
        end;
      end;
    end;
  end;

end;

procedure TfrmFIS_ENTRADA.btnExcluiClick(Sender: TObject);
var
  nf: TEntradaNF;
begin

  if MessageDlg('Confirma Exclus�o?', mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin

    nf := TEntradaNF.Create;
    
    if nf.ExcluiNota(
      StrToInt(edtCOD_EMPRESA.Text),
      StrToInt(edtCOD_FILIAL.Text),
      StrToInt(edtCOD_FORNECEDOR.Text),
      StrToInt(edtNUM_DOCUMENTO.Text),
      edtNOM_SERIE.Text) then
    begin
      MessageDlg('Nota Fiscal exclu�da com sucesso.', mtInformation,[mbOK],0);
        HabilitaEdicao(False,True);
      lvw.Items.Clear;
      SomaProdutos;
    end;
  end;
end;

procedure TfrmFIS_ENTRADA.lvwDblClick(Sender: TObject);
begin
  inherited;
  if Assigned(lvw.Selected) then
  begin
    edtCOD_PRODUTO.Text := lvw.Selected.Caption;
    edtNOM_PRODUTO.Text := lvw.Selected.SubItems[0];
    edtQTD_MOV.Text := lvw.Selected.SubItems[1];
    edtVAL_MOV.Text := lvw.Selected.SubItems[2];
    lvw.Selected.Delete;
    SomaProdutos;
    edtCOD_PRODUTO.SetFocus;
  end;
end;

procedure TfrmFIS_ENTRADA.SomaProdutos;
var
  i: integer;
  cur: currency;
begin
  cur := 0;

  for i := 0 to lvw.Items.Count-1 do
    cur := cur + StrToCur(lvw.Items.Item[i].SubItems[2]);

  lblValorTotal.Caption := 'Valor Total: '+FormatCurr('#,##0.00',cur);
end;


procedure TfrmFIS_ENTRADA.lvwKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = VK_DELETE then
  begin
    lvw.DeletaItemSelecionado;
    SomaProdutos;
    key := 0;
  end;

end;

end.
