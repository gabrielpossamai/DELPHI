unit uCadDespesas;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ComCtrls, ToolWin, StdCtrls, Grids, DBGrids, DB, ADODB, Buttons,
   DBCtrls, EditNew, ExtCtrls, cxgridExportlink,
   bsSkinCtrls, bsSkinGrids, bsDBGrids, bsdbctrls, BusinessSkinForm,
   bsSkinData, bsSkinShellCtrls, bsSkinBoxCtrls, bsSkinTabs, Mask,
   bsCalendar, TeEngine, Series, TeeProcs, Chart, cxStyles,
   cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
   cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
   cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxGridStrs,
   cxPropertiesStore, Menus, cxGridCustomPopupMenu, cxGridPopupMenu, bsSkinMenus,
   cxLookAndFeels, cxLookAndFeelPainters, bsSkinExCtrls, dxSkinsCore;


type
   TfrmCadDespesas = class(TForm)
      srcCadtipoDespesas: TDataSource;
      QryCadTipoDespesas: TADOQuery;
      QryModific: TADOQuery;
      StatusBar1: TStatusBar;
      QryCadContasCorrente: TADOQuery;
      srcCadCodtasCorrente: TDataSource;
      QryCadDespesas: TADOQuery;
      SrcCadDespesas: TDataSource;
      QryCadCredores: TADOQuery;
      SrcCadCredores: TDataSource;
      qryResumo: TADOQuery;
      PanelConsulta: TbsSkinPanel;
      cmbPesqNome_TipoDespesa: TbsSkinDBLookupComboBox;
      bsSkinStdLabel1: TbsSkinStdLabel;
      bsSkinStdLabel2: TbsSkinStdLabel;
      cmbPesqCod_TipoDespesa: TbsSkinDBLookupComboBox;
      cmbMes: TbsSkinComboBox;
      lblMes: TbsSkinStdLabel;
      lbl01: TbsSkinStdLabel;
      cmbano: TbsSkinComboBox;
      bsBusinessSkinForm1: TbsBusinessSkinForm;
      bsSkinSpeedButton1: TbsSkinSpeedButton;
      bsSkinSpeedButton2: TbsSkinSpeedButton;
      cmbPesqNome_TipoPagamento: TbsSkinDBLookupComboBox;
      cmbPesqCod_TipoPagamento: TbsSkinDBLookupComboBox;
      BtnAtualizar: TbsSkinSpeedButton;
      pagCadastro: TbsSkinPageControl;
      bsSkinTabSheet1: TbsSkinTabSheet;
      bsSkinTabSheet2: TbsSkinTabSheet;
      GridDespesasDBTableView1: TcxGridDBTableView;
      GridDespesasLevel1: TcxGridLevel;
      GridDespesas: TcxGrid;
      Colum_Conta_Corrente: TcxGridDBColumn;
      Colum_Tipo_Despesa: TcxGridDBColumn;
      GridDespesasDBTableView1Column4: TcxGridDBColumn;
      GridDespesasDBTableView1Column5: TcxGridDBColumn;
      Colum_dia: TcxGridDBColumn;
      Colum_Mes: TcxGridDBColumn;
      Colum_Ano: TcxGridDBColumn;
      GridDespesasDBTableView1Column1: TcxGridDBColumn;
      qryMaxCod: TADOQuery;
      GridDespesasDBTableView1Column2: TcxGridDBColumn;
      PopupMenu1: TPopupMenu;
      MarcarPago1: TMenuItem;
      DesmarcarPago1: TMenuItem;
      GridDespesasDBTableView1Column3: TcxGridDBColumn;
      bsSkinSpeedButton4: TbsSkinSpeedButton;
      edtPeriodoIni: TbsSkinDateEdit;
      edtPeriodoFim: TbsSkinDateEdit;
      bsSkinStdLabel5: TbsSkinStdLabel;
      bsSkinStdLabel10: TbsSkinStdLabel;
      cmbPeriodo: TbsSkinComboBox;
      cxGridPopupMenu1: TcxGridPopupMenu;
      cxPropertiesStore1: TcxPropertiesStore;
      MarcarRecebido1: TMenuItem;
      DesmarcaRecebido1: TMenuItem;
      N1: TMenuItem;
      Column_Nome_recebido: TcxGridDBColumn;
      colum_nr_parcela: TcxGridDBColumn;
      bsSkinPopupMenu1: TbsSkinPopupMenu;
      ExportarparaExcel1: TMenuItem;
      ExportarparaHTML1: TMenuItem;
      ExportarparaTexto1: TMenuItem;
      ExportarparaXML1: TMenuItem;
      bsSkinCoolBar2: TbsSkinCoolBar;
      bsSkinSpeedButton6: TbsSkinSpeedButton;
      bsSkinToolBar1: TbsSkinToolBar;
      btnincluir: TbsSkinSpeedButton;
      btnalterar: TbsSkinSpeedButton;
      btnFechar: TbsSkinSpeedButton;
      bsSkinBevel1: TbsSkinBevel;
      btnExcluir: TbsSkinSpeedButton;
      btnCancela: TbsSkinSpeedButton;
      bsSkinBevel2: TbsSkinBevel;
      BtnOk: TbsSkinSpeedButton;
      bsSkinMenuSpeedButton1: TbsSkinMenuSpeedButton;
      bsSkinExPanel1: TbsSkinExPanel;
      bsSkinStdLabel6: TbsSkinStdLabel;
      bsSkinStdLabel7: TbsSkinStdLabel;
      bsSkinStdLabel8: TbsSkinStdLabel;
      bsSkinStdLabel9: TbsSkinStdLabel;
      lblcredor: TbsSkinStdLabel;
      bsSkinStdLabel11: TbsSkinStdLabel;
      bsSkinStdLabel12: TbsSkinStdLabel;
      bsSkinStdLabel13: TbsSkinStdLabel;
      bsSkinStdLabel14: TbsSkinStdLabel;
      edtData: TbsSkinDateEdit;
      edtDataVencimento: TbsSkinDateEdit;
      cmbD_C: TbsSkinComboBox;
      cmbNome_ContaCorrente: TbsSkinDBLookupComboBox;
      cmbCod_contaCorrente: TbsSkinDBLookupComboBox;
      cmbCod_TipoPagamento: TbsSkinDBLookupComboBox;
      cmbNome_TipoPagamento: TbsSkinDBLookupComboBox;
      EdtValor: TbsSkinEdit;
      Edthistorico: TbsSkinEdit;
      cmbNome_TipoDespesa: TbsSkinDBLookupComboBox;
      cmbCod_TipoDespesa: TbsSkinDBLookupComboBox;
      edtQtdeParcelas: TbsSkinSpinEdit;
      bsSkinButton1: TbsSkinButton;
      PanelDetalhamento: TbsSkinExPanel;
      bsSkinPanel1: TbsSkinPanel;
      cmbNome_CentroCusto: TbsSkinDBLookupComboBox;
      bsSkinEdit1: TbsSkinEdit;
      bsSkinButton2: TbsSkinButton;
      bsSkinButton3: TbsSkinButton;
      bsSkinDBGrid1: TbsSkinDBGrid;
    N2: TMenuItem;
    MarcaConferido1: TMenuItem;
    DesmarcarConferido1: TMenuItem;
      procedure FormShow(Sender: TObject);
      procedure BtnIncluirClick(Sender: TObject);
      procedure BtnAlterarClick(Sender: TObject);
      procedure BtnOkClick(Sender: TObject);
      procedure BotaoFecharClick(Sender: TObject);
      procedure cmbCod_contaCorrenteClick(Sender: TObject);
      procedure cmbNome_ContaCorrenteClick(Sender: TObject);
      procedure cmbCod_TipoDespesaClick(Sender: TObject);
      procedure cmbNome_TipoDespesaClick(Sender: TObject);
      procedure BtnAtualizarClick(Sender: TObject);
      procedure cmbCod_TipoPagamentoClick(Sender: TObject);
      procedure cmbNome_TipoPagamentoClick(Sender: TObject);
      procedure cmbPesqNome_TipoDespesaClick(Sender: TObject);
      procedure cmbPesqCod_TipoDespesaClick(Sender: TObject);
      procedure QryCadDespesasAfterOpen(DataSet: TDataSet);
      procedure cmbPesqNome_TipoPagamentoClick(Sender: TObject);
      procedure cmbPesqCod_TipoPagamentoClick(Sender: TObject);
      procedure PagCadastroChange(Sender: TObject);
      procedure bsSkinSpeedButton5Click(Sender: TObject);
      procedure bsSkinSpeedButton1Click(Sender: TObject);
      procedure bsSkinSpeedButton2Click(Sender: TObject);
      procedure btnFecharClick(Sender: TObject);
      procedure bsSkinSpeedButton3Click(Sender: TObject);
      procedure cmbD_CChange(Sender: TObject);
      procedure QryCadDespesasBeforeOpen(DataSet: TDataSet);
      procedure QryCadDespesasCalcFields(DataSet: TDataSet);
      procedure bsSkinButton1Click(Sender: TObject);
      procedure MarcarPago1Click(Sender: TObject);
      procedure DesmarcarPago1Click(Sender: TObject);
      procedure bsSkinSpeedButton4Click(Sender: TObject);
      procedure cmbPeriodoChange(Sender: TObject);
      procedure MarcarRecebido1Click(Sender: TObject);
      procedure DesmarcaRecebido1Click(Sender: TObject);
      procedure ExportarparaExcel1Click(Sender: TObject);
      procedure ExportarparaHTML1Click(Sender: TObject);
      procedure ExportarparaTexto1Click(Sender: TObject);
      procedure ExportarparaXML1Click(Sender: TObject);
      procedure btnexcluirClick(Sender: TObject);
      procedure btnCancelaClick(Sender: TObject);
      procedure PanelCalendarioConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
      procedure edtDataExit(Sender: TObject);
    procedure MarcaConferido1Click(Sender: TObject);
    procedure DesmarcarConferido1Click(Sender: TObject);
   private
      pvsQualBotao: String;
      pvrValorAnt: Real;
      pvsTipoD_C: String;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmCadDespesas: TfrmCadDespesas;

implementation

uses uprincipal, ufuncoes, uCadTipoDespesa;
{$R *.dfm}

procedure TfrmCadDespesas.FormShow(Sender: TObject);
var
   Ext: String;
begin

   cxSetResourceString(@scxGridGroupByBoxCaption, 'Click, arraste e solte aqui');
   cxSetResourceString(@scxGridNoDataInfoText, 'Não há dados');

   BtnOk.Enabled := False;
   btnCancela.Enabled := False;
   btnincluir.Enabled := True;
   btnalterar.Enabled := True;
   btnExcluir.Enabled := True;

   cmbCod_TipoPagamento.Visible := False;
   cmbNome_TipoPagamento.Visible := False;
   lblcredor.Visible := False;

   pagCadastro.ActivePageIndex := 0;
   pvrValorAnt := 0;
   pvsTipoD_C := '';
   edtData.Date := Now;
   cmbMes.ItemIndex := strToint(formatdateTime('mm', Now));
   cmbMes.ItemIndex := frmprincipal.cmbMes.ItemIndex;
   QryCadCredores.Sql.Text := ' Select * from T_Credores ';
   QryCadCredores.Open;

   QryCadTipoDespesas.Sql.Text := ' Select * from T_TipoDespesas ORDER BY DESCRICAO';
   QryCadTipoDespesas.Open;

   QryCadContasCorrente.Sql.Text := ' Select * from T_ContaCorrente ';
   QryCadContasCorrente.Open;

   cmbano.Items.Clear;
   frmprincipal.QryTempCadDespesas.Close;
   frmprincipal.QryTempCadDespesas.Sql.Text := ' Select year(Data_lancamento) as Ano from T_Despesas group by year(Data_Lancamento) order by 1 desc';
   frmprincipal.QryTempCadDespesas.Open;
   cmbano.Items.add('Nenhum');
   while Not frmprincipal.QryTempCadDespesas.Eof do
   Begin
      cmbano.Items.add(frmprincipal.QryTempCadDespesas.FieldByName('ano').AsString);
      frmprincipal.QryTempCadDespesas.Next;
   End;
   frmprincipal.QryTempCadDespesas.Close;

   cmbano.ItemIndex := frmprincipal.cmbano.ItemIndex;
   BtnAtualizarClick(BtnAtualizar);
end;

procedure TfrmCadDespesas.MarcaConferido1Click(Sender: TObject);
var
   lssequencia: String;
begin
   lssequencia := QryCadDespesas.FieldByName('Sequencia').AsString;
   QryModific.Close;
   QryModific.Sql.Text := 'UpDate T_despesas set Conferido=''S'' Where Sequencia=:parSequencia  ';
   QryModific.Parameters.ParamValues['parSequencia'] := QryCadDespesas.FieldByName('Sequencia').AsString;
   QryModific.ExecSQL;
   BtnAtualizarClick(BtnAtualizar);
   QryCadDespesas.Locate('Sequencia', lssequencia, []);
end;

procedure TfrmCadDespesas.MarcarPago1Click(Sender: TObject);
var
   lssequencia: String;
begin
   lssequencia := QryCadDespesas.FieldByName('Sequencia').AsString;
   QryModific.Close;
   QryModific.Sql.Text := 'UpDate T_despesas set Pago=''S'' Where Sequencia=:parSequencia  ';
   QryModific.Parameters.ParamValues['parSequencia'] := QryCadDespesas.FieldByName('Sequencia').AsString;
   QryModific.ExecSQL;
   BtnAtualizarClick(BtnAtualizar);
   QryCadDespesas.Locate('Sequencia', lssequencia, []);
end;

procedure TfrmCadDespesas.MarcarRecebido1Click(Sender: TObject);
var
   lssequencia: String;
begin
   lssequencia := QryCadDespesas.FieldByName('Sequencia').AsString;
   QryModific.Close;
   QryModific.Sql.Text := 'UpDate T_despesas set Recebido=''S'' Where Sequencia=:parSequencia  ';
   QryModific.Parameters.ParamValues['parSequencia'] := QryCadDespesas.FieldByName('Sequencia').AsString;
   QryModific.ExecSQL;
   BtnAtualizarClick(BtnAtualizar);
   QryCadDespesas.Locate('Sequencia', lssequencia, []);
end;

procedure TfrmCadDespesas.BtnIncluirClick(Sender: TObject);
begin
   pvsQualBotao := 'INCLUIR';

   btnincluir.Enabled := False;
   btnalterar.Enabled := False;
   btnExcluir.Enabled := False;
   BtnOk.Enabled := True;
   btnCancela.Enabled := True;
   edtQtdeParcelas.Enabled := True;
   pagCadastro.ActivePageIndex := 1;
   PanelConsulta.Enabled := False;
   EdtValor.SetFocus;

end;

procedure TfrmCadDespesas.BtnAlterarClick(Sender: TObject);
begin
   pvsQualBotao := 'ALTERAR';
   btnincluir.Enabled := False;
   btnalterar.Enabled := False;
   btnExcluir.Enabled := False;
   BtnOk.Enabled := True;
   btnCancela.Enabled := True;
   pagCadastro.ActivePageIndex := 1;
   edtData.Date := QryCadDespesas.FieldByName('Data_lancamento').AsDatetime;
   edtDataVencimento.Date := QryCadDespesas.FieldByName('Data_Vencimento').AsDatetime;

   Edthistorico.Text := QryCadDespesas.FieldByName('Historico').AsString;
   cmbCod_TipoDespesa.Keyvalue := QryCadDespesas.FieldByName('Cod_tipoDespesa').AsString;
   cmbNome_TipoDespesa.Keyvalue := QryCadDespesas.FieldByName('Cod_tipoDespesa').AsString;
   cmbCod_contaCorrente.Keyvalue := QryCadDespesas.FieldByName('Cod_Contacorrente').AsString;
   cmbNome_ContaCorrente.Keyvalue := QryCadDespesas.FieldByName('Cod_Contacorrente').AsString;
   cmbNome_TipoPagamento.Keyvalue := QryCadDespesas.FieldByName('Cod_TipoPagamento').AsString;
   cmbCod_TipoPagamento.Keyvalue := QryCadDespesas.FieldByName('Cod_TipoPagamento').AsString;
   EdtValor.Text := Formatfloat('0.00', QryCadDespesas.FieldByName('Valor').AsFloat);
   pvrValorAnt := QryCadDespesas.FieldByName('Valor').AsFloat;
   pvsTipoD_C := QryCadDespesas.FieldByName('D_C').AsString;
   edtQtdeParcelas.Enabled := False;
   cmbD_C.ItemIndex := 0;
   if QryCadDespesas.FieldByName('D_C').AsString = 'C' Then
      cmbD_C.ItemIndex := 1
   Else if QryCadDespesas.FieldByName('D_C').AsString = 'V' Then
      cmbD_C.ItemIndex := 2;

end;

procedure TfrmCadDespesas.BtnOkClick(Sender: TObject);
var
   licont: Integer;
   liDias: Integer;
   lsMes: String;
   lsDias: String;
   lsDiasant: String;
   lsAno: String;
   lsParcelas: String;
   lsDocumento : String;
begin
   if pvsQualBotao = 'INCLUIR' then
   Begin
      lsDias := formatdateTime('DD', edtData.Date);
      lsMes := formatdateTime('MM', edtData.Date);
      lsDiasant := formatdateTime('DD', edtData.Date);
      lsAno := formatdateTime('yyyy', edtData.Date);
      liDias := 0;
      lsDocumento := FormatDateTime('yyyymmddss',now);

      FOR licont := 1 To strToint(edtQtdeParcelas.Text) Do
      Begin
         QryModific.Sql.Text := 'Insert Into T_Despesas ' +
                                '( Sequencia,Cod_TipoDespesa, Cod_ContaCorrente,' +
                                '  Historico,D_C,Valor,Data_lancamento,Data_Vencimento, '+
                                '  Cod_TipoPagamento,Pago,Recebido,nr_parcela,Documento ) '+
                                ' Values ' +
                                '( :ParSequencia,:ParCod_TipoDespesa, :ParCod_ContaCorrente, ' +
                                '  :ParHistorico,:ParD_C,:ParValor,:ParData_lancamento, ' +
                                '  :ParData_Vencimento,:ParCod_TipoPagamento,:parpago,'+
                                '  :parRecebido,:parnr_parcela,:parDocumento )';

         QryModific.Parameters.ParamValues['ParSequencia'] := QryCadTipoDespesas.FieldByName('Sequencia').AsString;
         QryModific.Parameters.ParamValues['ParData_lancamento'] := StrtoDateTime(lsDias + '/' + lsMes + '/' + lsAno);
         QryModific.Parameters.ParamValues['ParData_Vencimento'] := StrtoDateTime(lsDias + '/' + lsMes + '/' + lsAno);
         lsParcelas := ' ';
         if strToint(edtQtdeParcelas.Text) <> 1 Then
            lsParcelas := ' ' + IntToStr(licont) + '/' + edtQtdeParcelas.Text;
         if Trim(Edthistorico.Text) <> '' then
            QryModific.Parameters.ParamValues['ParHistorico'] := Edthistorico.Text + lsParcelas
         Else
            QryModific.Parameters.ParamValues['ParHistorico'] := cmbNome_TipoDespesa.Text + lsParcelas;

         QryModific.Parameters.ParamValues['ParValor'] := StrToFloat(EdtValor.Text) / strToint(edtQtdeParcelas.Text);
         QryModific.Parameters.ParamValues['ParD_C'] := Copy(cmbD_C.Text, 1, 1);
         QryModific.Parameters.ParamValues['ParCod_TipoDespesa'] := cmbCod_TipoDespesa.Text;
         QryModific.Parameters.ParamValues['ParPago'] := 'N';
         QryModific.Parameters.ParamValues['ParRecebido'] := 'N';
         QryModific.Parameters.ParamValues['ParDocumento'] := lsDocumento;
         QryModific.Parameters.ParamValues['parnr_parcela'] := edtQtdeParcelas.Value;
         QryModific.Parameters.ParamValues['ParCod_ContaCorrente'] := cmbCod_contaCorrente.Text;
         QryModific.Parameters.ParamValues['ParCod_TipoPagamento'] := '001'; // NÃO TO CONTROLANDO PELO TIPO É PELA CONTA
         if cmbD_C.ItemIndex = 2 then
            QryModific.Parameters.ParamValues['ParCod_TipoPagamento'] := cmbCod_TipoPagamento.Text; // NÃO TO CONTROLANDO PELO TIPO É PELA CONTA

         lsMes := IncZero(IntToStr(strToint(lsMes) + 1), 2);
         if strToint(lsMes) > 12 Then
         Begin
            lsMes := '01';
            lsAno := IncZero(IntToStr(strToint(lsAno) + 1), 2);
         End;
         if (strToint(lsMes) = 2) and (strToint(lsDias) >= 29) Then
         Begin
            lsDias := '28';
         end;

         qryMaxCod.Close;
         qryMaxCod.Sql.Text := ' Select Max(Sequencia) as Ultima from T_Despesas ';
         qryMaxCod.Open;
         if qryMaxCod.FieldByName('Ultima').AsString = '' then
            QryModific.Parameters.ParamValues['ParSequencia'] := '00000001'
         else
            QryModific.Parameters.ParamValues['ParSequencia'] := IncZero(IntToStr((strToint(qryMaxCod.FieldByName('Ultima').AsString) + 1)), 8);
         QryModific.ExecSQL;
      End;
   End;

   if pvsQualBotao = 'ALTERAR' then
   Begin
      QryModific.Close;
      QryModific.Sql.Text := 'Update T_Despesas Set ' + 'Cod_TipoDespesa=:ParCod_TipoDespesa, ' + 'Cod_ContaCorrente=:ParCod_ContaCorrente, ' +
         'Historico=:ParHistorico, D_C=:ParD_C, Valor=:ParValor, ' + 'Data_lancamento=:ParData_lancamento, ' +
         'Data_Vencimento=:ParData_Vencimento, ' + 'Cod_TipoPagamento=:parCod_TipoPagamento ' +
         'where Sequencia=:ParSequencia ';

      QryModific.Parameters.ParamValues['ParSequencia'] := QryCadDespesas.FieldByName('Sequencia').AsString; ;
      lsParcelas := ' ';
      if strToint(edtQtdeParcelas.Text) <> 1 Then
         lsParcelas := ' ' + IntToStr(licont) + '/' + edtQtdeParcelas.Text;
      if Trim(Edthistorico.Text) <> '' then
         QryModific.Parameters.ParamValues['ParHistorico'] := Edthistorico.Text + lsParcelas
      Else
         QryModific.Parameters.ParamValues['ParHistorico'] := cmbNome_TipoDespesa.Text + lsParcelas;
      QryModific.Parameters.ParamValues['ParValor'] := StrToFloat(EdtValor.Text);
      QryModific.Parameters.ParamValues['ParD_C'] := Copy(cmbD_C.Text, 1, 1);
      QryModific.Parameters.ParamValues['ParCod_TipoDespesa'] := cmbCod_TipoDespesa.Text;
      QryModific.Parameters.ParamValues['ParCod_ContaCorrente'] := cmbCod_contaCorrente.Text;
      QryModific.Parameters.ParamValues['ParCod_TipoPagamento'] := '001'; // NÃO TO CONTROLANDO PELO TIPO É PELA CONTA
      if cmbD_C.ItemIndex = 2 then
         QryModific.Parameters.ParamValues['ParCod_TipoPagamento'] := cmbCod_TipoPagamento.Text; // NÃO TO CONTROLANDO PELO TIPO É PELA CONTA
      QryModific.Parameters.ParamValues['ParData_lancamento'] := StrtoDate(edtData.Text);
      QryModific.Parameters.ParamValues['ParData_Vencimento'] := StrtoDate(edtData.Text);
      QryModific.ExecSQL;
   End;

   BtnAtualizarClick(BtnAtualizar);
   PanelConsulta.Enabled := True;

   BtnOk.Enabled := False;
   btnCancela.Enabled := False;
   btnincluir.Enabled := True;
   btnalterar.Enabled := True;
   btnExcluir.Enabled := True;
   pagCadastro.ActivePageIndex := 0;
   pvrValorAnt := 0;
   pvsTipoD_C := '';

end;

procedure TfrmCadDespesas.BotaoFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCadDespesas.cmbCod_contaCorrenteClick(Sender: TObject);
begin
   cmbNome_ContaCorrente.Keyvalue := cmbCod_contaCorrente.Keyvalue;
   edtDataVencimento.Date := Now;

   // edtData.text :=  QryCadContasCorrente.FieldBVyName().AsInteger;

End;

procedure TfrmCadDespesas.cmbNome_ContaCorrenteClick(Sender: TObject);
begin
   cmbCod_contaCorrente.Keyvalue := cmbNome_ContaCorrente.Keyvalue;
end;

procedure TfrmCadDespesas.cmbCod_TipoDespesaClick(Sender: TObject);
begin
   cmbNome_TipoDespesa.Keyvalue := cmbCod_TipoDespesa.Keyvalue;
end;

procedure TfrmCadDespesas.cmbNome_TipoDespesaClick(Sender: TObject);
begin
   cmbCod_TipoDespesa.Keyvalue := cmbNome_TipoDespesa.Keyvalue;
end;

procedure TfrmCadDespesas.BtnAtualizarClick(Sender: TObject);
Var
   lrTotalGeral: Real;
begin
   QryCadDespesas.Close;
   QryCadDespesas.Sql.Text := 'Select day(Data_Lancamento)  as Dia, ' + '       month(Data_Lancamento) as Mes, ' +
      '       Year(Data_Lancamento)  as Ano, ' + '       Desp.Pago,  ' + '       Desp.Recebido,  ' + '       Desp.nr_Parcela,  ' +
      '       Desp.Sequencia,Desp.Data_Lancamento,Conta.Descricao, ' +
      '       Desp.Cod_TipoDespesa,Desp.Cod_Contacorrente, Desp.D_C, Tipo.Descricao as Operacao,' +
      'Desp.Valor, Desp.Historico,Desp.Data_Vencimento,Desp.Cod_TipoPagamento ' +
      'From T_Despesas Desp, T_ContaCorrente Conta, T_TipoDespesas Tipo ' +
      'where Conta.Codigo=Desp.Cod_Contacorrente and ' + '      tipo.codigo=Desp.Cod_TipoDespesa ';
   if cmbPesqCod_TipoDespesa.Keyvalue <> null Then
      QryCadDespesas.Sql.add('and Desp.Cod_TipoDespesa=:ParCod_TipoDespesa ');
   if cmbPesqCod_TipoPagamento.Keyvalue <> null Then
      QryCadDespesas.Sql.add('and Desp.Cod_ContaCorrente=:ParCod_ContaCorrente ');
   if cmbPeriodo.ItemIndex = 0 Then
   Begin
      if cmbMes.ItemIndex <> 0 Then
         QryCadDespesas.Sql.add('and month(Desp.Data_Lancamento)=:ParMes ');
      if cmbano.ItemIndex <> 0 Then
         QryCadDespesas.Sql.add('and Year(Desp.Data_Lancamento)=:ParAno ');
   End
   Else
      QryCadDespesas.Sql.add('and ( Data_Lancamento>=:parData_LancamentoIni and Data_Lancamento<=:parData_LancamentoFim ) ');

   QryCadDespesas.Sql.add('Order by Data_Lancamento ');

   if cmbPesqCod_TipoDespesa.Keyvalue <> null Then
      QryCadDespesas.Parameters.ParamValues['ParCod_TipoDespesa'] := cmbPesqCod_TipoDespesa.Text;
   if cmbPesqCod_TipoPagamento.Keyvalue <> null Then
      QryCadDespesas.Parameters.ParamValues['ParCod_ContaCorrente'] := cmbPesqCod_TipoPagamento.Text;
   if cmbPeriodo.ItemIndex = 0 Then
   Begin
      if cmbMes.ItemIndex <> 0 Then
         QryCadDespesas.Parameters.ParamValues['ParMes'] := IntToStr(cmbMes.ItemIndex);
      if cmbano.ItemIndex <> 0 Then
         QryCadDespesas.Parameters.ParamValues['ParAno'] := cmbano.Text;
   End
   Else
   Begin
      QryCadDespesas.Parameters.ParamValues['parData_LancamentoIni'] := StrtoDate(edtPeriodoIni.Text);
      QryCadDespesas.Parameters.ParamValues['parData_LancamentoFim'] := StrtoDate(edtPeriodoFim.Text);
   End;

   QryCadDespesas.Open;
end;

procedure TfrmCadDespesas.cmbCod_TipoPagamentoClick(Sender: TObject);
begin
   cmbNome_TipoPagamento.Keyvalue := cmbCod_TipoPagamento.Keyvalue;
end;

procedure TfrmCadDespesas.cmbD_CChange(Sender: TObject);
begin
   cmbCod_TipoPagamento.Visible := False;
   cmbNome_TipoPagamento.Visible := False;
   lblcredor.Visible := False;
   if cmbD_C.ItemIndex = 2 Then
   Begin
      cmbCod_TipoPagamento.Visible := True;
      cmbNome_TipoPagamento.Visible := True;
      lblcredor.Visible := True;
   End;
end;

procedure TfrmCadDespesas.cmbNome_TipoPagamentoClick(Sender: TObject);
begin
   cmbCod_TipoPagamento.Keyvalue := cmbNome_TipoPagamento.Keyvalue;
end;

procedure TfrmCadDespesas.cmbPesqNome_TipoDespesaClick(Sender: TObject);
begin
   cmbPesqCod_TipoDespesa.Keyvalue := cmbPesqNome_TipoDespesa.Keyvalue;
end;

procedure TfrmCadDespesas.cmbPesqCod_TipoDespesaClick(Sender: TObject);
begin
   cmbPesqNome_TipoDespesa.Keyvalue := cmbPesqCod_TipoDespesa.Keyvalue;
end;

procedure TfrmCadDespesas.QryCadDespesasAfterOpen(DataSet: TDataSet);
var
   licont: Integer;
begin
   for licont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[licont - 1].DataType = ftFloat Then
         TFloatField(DataSet.Fields[licont - 1]).DisplayFormat := '0.00';
   end;
end;

procedure TfrmCadDespesas.QryCadDespesasBeforeOpen(DataSet: TDataSet);
begin
   CriarCalculado(DataSet, 'Nome_Status', ftString, 15);
   CriarCalculado(DataSet, 'Nome_Credor', ftString, 30);
   CriarCalculado(DataSet, 'Nome_Pago', ftString, 3);
   CriarCalculado(DataSet, 'Nome_Recebido', ftString, 3);
end;

procedure TfrmCadDespesas.QryCadDespesasCalcFields(DataSet: TDataSet);
begin
   if QryCadDespesas.FieldByName('D_C').AsString = 'C' Then
   Begin
      QryCadDespesas.FieldByName('Nome_status').AsString := 'Credito';
      QryCadDespesas.FieldByName('Nome_Credor').AsString := 'Meus Creditos';
   End
   Else if QryCadDespesas.FieldByName('D_C').AsString = 'D' Then
   Begin
      QryCadDespesas.FieldByName('Nome_status').AsString := 'Debito';
      QryCadDespesas.FieldByName('Nome_Credor').AsString := 'Meus Debitos';
   End
   Else if QryCadDespesas.FieldByName('D_C').AsString = 'V' Then
   Begin
      QryCadDespesas.FieldByName('Nome_status').AsString := 'Venda Crediario';
      If QryCadCredores.Locate('Codigo', QryCadDespesas.FieldByName('Cod_TipoPagamento').AsString, []) Then
         QryCadDespesas.FieldByName('Nome_Credor').AsString := Copy(QryCadCredores.FieldByName('Descricao').AsString, 1, 30);
   End;

   if QryCadDespesas.FieldByName('Pago').AsString = 'S' Then
      QryCadDespesas.FieldByName('Nome_Pago').AsString := 'Sim'
   Else
      QryCadDespesas.FieldByName('Nome_Pago').AsString := 'Não';

   if QryCadDespesas.FieldByName('Recebido').AsString = 'S' Then
      QryCadDespesas.FieldByName('Nome_Recebido').AsString := 'Sim'
   Else
      QryCadDespesas.FieldByName('Nome_Recebido').AsString := 'Não'
end;

procedure TfrmCadDespesas.cmbPesqNome_TipoPagamentoClick(Sender: TObject);
begin
   cmbPesqCod_TipoPagamento.Keyvalue := cmbPesqNome_TipoPagamento.Keyvalue;
end;

procedure TfrmCadDespesas.DesmarcarConferido1Click(Sender: TObject);
var
   lssequencia: String;
begin
   lssequencia := QryCadDespesas.FieldByName('Sequencia').AsString;
   QryModific.Close;
   QryModific.Sql.Text := 'UpDate T_despesas set Conferido=''N'' Where Sequencia=:parSequencia  ';
   QryModific.Parameters.ParamValues['parSequencia'] := QryCadDespesas.FieldByName('Sequencia').AsString;
   QryModific.ExecSQL;
   BtnAtualizarClick(BtnAtualizar);
   QryCadDespesas.Locate('Sequencia', lssequencia, []);
end;

procedure TfrmCadDespesas.DesmarcaRecebido1Click(Sender: TObject);
var
   lssequencia: String;
begin
   lssequencia := QryCadDespesas.FieldByName('Sequencia').AsString;
   QryModific.Close;
   QryModific.Sql.Text := 'UpDate T_despesas set Recebido=''N'' Where Sequencia=:parSequencia  ';
   QryModific.Parameters.ParamValues['parSequencia'] := QryCadDespesas.FieldByName('Sequencia').AsString;
   QryModific.ExecSQL;
   BtnAtualizarClick(BtnAtualizar);
   QryCadDespesas.Locate('Sequencia', lssequencia, []);
end;

procedure TfrmCadDespesas.DesmarcarPago1Click(Sender: TObject);
var
   lssequencia: String;
begin
   lssequencia := QryCadDespesas.FieldByName('Sequencia').AsString;
   QryModific.Close;
   QryModific.Sql.Text := 'UpDate T_despesas set Pago=''N'' Where Sequencia=:parSequencia  ';
   QryModific.Parameters.ParamValues['parSequencia'] := QryCadDespesas.FieldByName('Sequencia').AsString;
   QryModific.ExecSQL;
   BtnAtualizarClick(BtnAtualizar);
   QryCadDespesas.Locate('Sequencia', lssequencia, []);
end;

procedure TfrmCadDespesas.edtDataExit(Sender: TObject);
var
   liMes: Integer;
   lidiaBom : integer;
begin
  {
   lidiaBom := ((60-QryCadContasCorrente.FieldByName('Prazo').AsInteger)+QryCadContasCorrente.FieldByName('Vencimento').AsInteger);

   if (edtData.Date > StrtoDate(QryCadContasCorrente.FieldByName('Vencimento').AsString + formatdateTime('/mm/yyyy', Now))) and
      (edtData.Date < StrtoDate(IncZero(IntToStr(liDiaBom),2)+ formatdateTime('/mm/yyyy', Now)))  Then
   Begin
      liMes := strToint(formatdateTime('mm', Now)) + 1;
      edtDataVencimento.Date := StrtoDate(QryCadContasCorrente.FieldByName('Vencimento').AsString + '/' +
                                          IncZero(IntToStr(liMes),2) + '/' + formatdateTime('yyyy', Now));
   End
   Else
   Begin
      liMes := strToint(formatdateTime('mm', Now)) + 2;
      edtDataVencimento.Date := StrtoDate(QryCadContasCorrente.FieldByName('Vencimento').AsString + '/' +
                                          IncZero(IntToStr(liMes),2) + '/' + formatdateTime('yyyy', Now));

   End;
   }
end;

procedure TfrmCadDespesas.ExportarparaExcel1Click(Sender: TObject);
begin
   ExportGridToExcel(gsPath + 'Relatorios Excel\Relatorio_' + formatdateTime('mmss', Now), GridDespesas);
end;

procedure TfrmCadDespesas.ExportarparaHTML1Click(Sender: TObject);
begin
   ExportGridToHTML(gsPath + 'Relatorios Excel\Relatorio_' + formatdateTime('mmss', Now), GridDespesas);
end;

procedure TfrmCadDespesas.ExportarparaTexto1Click(Sender: TObject);
begin
   ExportGridToText(gsPath + 'Relatorios Excel\Relatorio_' + formatdateTime('mmss', Now), GridDespesas);
end;

procedure TfrmCadDespesas.ExportarparaXML1Click(Sender: TObject);
begin
   ExportGridToXml(gsPath + 'Relatorios Excel\Relatorio_' + formatdateTime('mmss', Now), GridDespesas);
end;

procedure TfrmCadDespesas.cmbPesqCod_TipoPagamentoClick(Sender: TObject);
begin
   cmbPesqNome_TipoPagamento.Keyvalue := cmbPesqCod_TipoPagamento.Keyvalue;
end;

procedure TfrmCadDespesas.PagCadastroChange(Sender: TObject);
begin
   {
     if rdgTipoVisualizacao.ItemIndex = 1 then
     Begin
     ChtGraficos.Series[0].Active := True;
     ChtGraficos.Series[0].Clear;
     QryCadDespesas.First;
     ChtGraficos.Title.Text.Text :=' Despesas com '+cmbPesqNome_TipoDespesa.text+' no Ano de '+cmbAno.text;
     while not QryCadDespesas.Eof do
     Begin
     ChtGraficos.Series[0].AddY(QryCadDespesas.FieldByname('Total').Asfloat, QryCadDespesas.FieldByname( 'Mes' ).AsString );
     //copy(meses.Items[Strtoint(QryCadDespesas.FieldByname( 'Mes' ).AsString
     QryCadDespesas.Next;
     End;
     End
     Else
     ChtGraficos.Series[0].Clear;
     }
end;

procedure TfrmCadDespesas.bsSkinSpeedButton5Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmCadDespesas.btnCancelaClick(Sender: TObject);
begin
   BtnOk.Enabled := False;
   btnCancela.Enabled := False;
   btnincluir.Enabled := True;
   btnalterar.Enabled := True;
   btnExcluir.Enabled := True;
   Edthistorico.Text := '';
   PanelConsulta.Enabled := True;
   pagCadastro.ActivePageIndex := 0;
end;

procedure TfrmCadDespesas.btnexcluirClick(Sender: TObject);
begin
   if CaixaMensagem('Confirma exclusão Deste Tipo de Despesas ' + QryCadDespesas.FieldByName('Descricao').AsString, ctConfirma, [cbSimNao], 0) then
   Begin
      QryModific.Sql.Text := 'delete from T_Despesas where Sequencia=:ParSequencia ';
      QryModific.Parameters.ParamValues['ParSequencia'] := QryCadDespesas.FieldByName('Sequencia').AsString;
      QryModific.ExecSQL;
   End;
   BtnAtualizarClick(BtnAtualizar);
end;

procedure TfrmCadDespesas.bsSkinButton1Click(Sender: TObject);
begin
   FrmCadTipoDespesa := TFrmCadTipoDespesa.Create(Self);
   FrmCadTipoDespesa.Showmodal;
   QryCadTipoDespesas.Close;
   QryCadTipoDespesas.Open;
end;

procedure TfrmCadDespesas.PanelCalendarioConstrainedResize(Sender: TObject; var MinWidth, MinHeight, MaxWidth, MaxHeight: Integer);
begin
   PanelDetalhamento.RollState := False;
end;

procedure TfrmCadDespesas.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo(TbsSkinDateEdit(edtPeriodoIni), TbsSkinDateEdit(edtPeriodoFim), cmbPeriodo.ItemIndex, Now);
   if cmbPeriodo.ItemIndex = 0 then
   Begin
      cmbMes.Visible := True;
      cmbano.Visible := True;
      lbl01.Visible := True;
      lblMes.Visible := True;
      BtnAtualizar.left := 558;
   End
   Else
   Begin
      cmbMes.Visible := False;
      cmbano.Visible := False;
      lbl01.Visible := False;
      lblMes.Visible := False;
      BtnAtualizar.left := 366;
   End;
end;

procedure TfrmCadDespesas.bsSkinSpeedButton1Click(Sender: TObject);
begin
   cmbPesqCod_TipoDespesa.Keyvalue := null;
   cmbPesqNome_TipoDespesa.Keyvalue := null;
end;

procedure TfrmCadDespesas.bsSkinSpeedButton2Click(Sender: TObject);
begin
   cmbPesqCod_TipoPagamento.Keyvalue := null;
   cmbPesqNome_TipoPagamento.Keyvalue := null;
end;

procedure TfrmCadDespesas.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCadDespesas.bsSkinSpeedButton3Click(Sender: TObject);
begin
   TToolButton(Sender).PopUpMenu.Popup(TToolButton(Sender).ClientOrigin.X, TToolButton(Sender).ClientOrigin.Y + TToolButton(Sender).Height);
end;

procedure TfrmCadDespesas.bsSkinSpeedButton4Click(Sender: TObject);
begin
   if CaixaMensagem('Confirma o pagamento das contas ', ctConfirma, [cbSimNao], 0) then
   Begin
      QryCadDespesas.first;
      while not QryCadDespesas.Eof do
      Begin
         QryModific.Close;
         QryModific.Sql.Text := 'UpDate T_despesas set Pago=''S'' Where Sequencia=:parSequencia  ';
         QryModific.Parameters.ParamValues['parSequencia'] := QryCadDespesas.FieldByName('Sequencia').AsString;
         QryModific.ExecSQL;
         QryCadDespesas.Next;
      End;
      BtnAtualizarClick(BtnAtualizar);
   End;
end;

end.
