unit uRelExtrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin,  DB, ADODB, DBCtrls, StdCtrls,
  EditNew, ExtCtrls;

type
  TfrmRelExtrato = class(TForm)
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btnImprimir: TToolButton;
    ToolButton11: TToolButton;
    BotaoFechar: TToolButton;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label18: TLabel;
    edtData_VenctoIni: TEditN;
    dtpData_VenctoIni: TDateTimePicker;
    Label19: TLabel;
    edtData_VenctoFim: TEditN;
    dtpData_VenctoFim: TDateTimePicker;
    cmbVencto: TComboBox;
    Label1: TLabel;
    cmbCod_contaCorrente: TDBLookupComboBox;
    cmbNome_ContaCorrente: TDBLookupComboBox;
    QryCadContasCorrente: TADOQuery;
    srcCadCodtasCorrente: TDataSource;
    qryRelatorio: TADOQuery;
    procedure cmbVenctoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbCod_contaCorrenteClick(Sender: TObject);
    procedure cmbNome_ContaCorrenteClick(Sender: TObject);
    procedure edtData_VenctoIniExit(Sender: TObject);
    procedure dtpData_VenctoIniCloseUp(Sender: TObject);
    procedure edtData_VenctoFimExit(Sender: TObject);
    procedure dtpData_VenctoFimCloseUp(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure BotaoFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    pvilinha : Integer;
    { Public declarations }
  end;

var
  frmRelExtrato: TfrmRelExtrato;

implementation


uses uprincipal,ufuncoes;
{$R *.dfm}

procedure TfrmRelExtrato.cmbVenctoChange(Sender: TObject);
begin
  // ListaPeriodo( TEdit( edtData_VenctoIni ), TEdit( edtData_VenctoFim ), cmbVencto.ItemIndex, Now );
   edtData_VenctoIniExit( Self );
   edtData_VenctoFimExit( Self );
end;

procedure TfrmRelExtrato.FormShow(Sender: TObject);
begin
   QryCadContasCorrente.Sql.Text:=' Select * from T_ContaCorrente ';
   QryCadContasCorrente.Open;

 //  ListaPeriodo( TEdit( edtData_VenctoIni ), TEdit( edtData_VenctoFim ), cmbVencto.ItemIndex, Now );
   edtData_VenctoIniExit( Self );
   edtData_VenctoFimExit( Self );
end;

procedure TfrmRelExtrato.cmbCod_contaCorrenteClick(Sender: TObject);
begin
   CmbNome_Contacorrente.KeyValue := cmbCod_ContaCorrente.KeyValue;
end;

procedure TfrmRelExtrato.cmbNome_ContaCorrenteClick(Sender: TObject);
begin
   CmbCod_Contacorrente.KeyValue := cmbNome_ContaCorrente.KeyValue;
end;

procedure TfrmRelExtrato.edtData_VenctoIniExit(Sender: TObject);
begin
   Try
      StrToDate( edtData_VenctoIni.Text );
      dtpData_VenctoIni.Date := StrToDate( edtData_VenctoIni.Text );
   Except
      CaixaMensagem( 'A data inicial informada é inválida', ctAviso, [ cbOk ], 0 );
      Try
         edtData_VenctoIni.SetFocus;
      Except
         //
      End;
      Exit;
   End;
end;

procedure TfrmRelExtrato.dtpData_VenctoIniCloseUp(Sender: TObject);
begin
   edtData_VenctoIni.Text := FormatDateTime( 'dd/mm/yyyy', dtpData_VenctoIni.Date );
   Try
      edtData_VenctoIni.SetFocus;
   Except
      //
   End;
end;

procedure TfrmRelExtrato.edtData_VenctoFimExit(Sender: TObject);
begin
   Try
      StrToDate( edtData_VenctoFim.Text );
      dtpData_VenctoFim.Date := StrToDate( edtData_VenctoFim.Text );
   Except
      CaixaMensagem( 'A data final informada é inválida', ctAviso, [ cbOk ], 0 );
      Try
         edtData_VenctoFim.SetFocus;
      Except
         //
      End;
      Exit;
   End;
end;

procedure TfrmRelExtrato.dtpData_VenctoFimCloseUp(Sender: TObject);
begin
   edtData_VenctoFim.Text := FormatDateTime( 'dd/mm/yyyy', dtpData_VenctoFim.Date );
   Try
      edtData_VenctoFim.SetFocus;
   Except
      //
   End;
end;

procedure TfrmRelExtrato.btnImprimirClick(Sender: TObject);
Var lrSaldo        : Real;
    lrSaldoInicial : Real;
begin
  {
   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := False;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;


   qryRelatorio.close;
   qryRelatorio.SQL.Text :='Select sum(Valor) as Total from T_Despesas '+
                           'where Cod_ContaCorrente=:parCod_ContaCorrente And '+
                           '      Data_Lancamento<:pardata_Ini and d_c=:parD_C';
   qryRelatorio.Parameters.ParamValues['parCod_ContaCorrente'] := QryCadContasCorrente.FieldByName('Codigo').AsString;
   qryRelatorio.Parameters.ParamValues['parData_Ini']          := Strtodate(edtData_VenctoIni.text);
   qryRelatorio.Parameters.ParamValues['parD_C']               := 'C';
   qryRelatorio.Open;
   lrSaldoInicial := qryRelatorio.FieldByname('Total').Asfloat;

   qryRelatorio.close;
   qryRelatorio.SQL.Text :='Select sum(Valor) as Total from T_Despesas '+
                           'where Cod_ContaCorrente=:parCod_ContaCorrente And '+
                           '      Data_Lancamento<:pardata_Ini and d_c=:parD_C';
   qryRelatorio.Parameters.ParamValues['parCod_ContaCorrente'] := QryCadContasCorrente.FieldByName('Codigo').AsString;
   qryRelatorio.Parameters.ParamValues['parData_Ini']          := Strtodate(edtData_VenctoIni.text);
   qryRelatorio.Parameters.ParamValues['parD_C']               := 'D';
   qryRelatorio.Open;
   lrSaldoInicial := (lrSaldoInicial - qryRelatorio.FieldByname('Total').Asfloat);


   qryRelatorio.close;
   qryRelatorio.SQL.Text :='Select * from T_Despesas '+
                           'where Cod_ContaCorrente=:parCod_ContaCorrente And '+
                           '      Data_Lancamento>=:pardata_Ini and '+
                           '      Data_Lancamento<=:ParData_Fim  '+
                           'Order by Data_Lancamento,Sequencia ';
   qryRelatorio.Parameters.ParamValues['parCod_ContaCorrente'] := QryCadContasCorrente.FieldByName('Codigo').AsString;
   qryRelatorio.Parameters.ParamValues['parData_Ini']          := Strtodate(edtData_VenctoIni.text);
   qryRelatorio.Parameters.ParamValues['parData_Fim']          := Strtodate(edtData_VenctoFim.text);
   qryRelatorio.Open;

   impmatricial.imp(pviLinha,001,'Saldo inicial ....');
   impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrsaldoInicial),[]);
   pviLinha:=Pvilinha+1;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   lrSaldo := lrSaldoInicial ;
   while not qryRelatorio.Eof Do
   Begin
      if upperCase(qryRelatorio.fieldByname('D_C').asString)='D' then
      Begin
         impmatricial.Imp(pvilinha,001,FormatDateTime('DD-MM-YYYY', qryRelatorio.fieldByname('Data_Lancamento').asDateTime)+' '+
                                    copy (qryRelatorio.fieldByname('Historico').asString,1,45) );
         impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',qryRelatorio.fieldByname('Valor').asfloat),[]);
         lrsaldo:=(lrSaldo-qryRelatorio.fieldByname('Valor').asfloat);
      End
      Else
      Begin
         impmatricial.Imp(pvilinha,001,FormatDateTime('DD-MM-YYYY', qryRelatorio.fieldByname('Data_Lancamento').asDateTime)+' '+
                                    qryRelatorio.fieldByname('Historico').asString );
         impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',qryRelatorio.fieldByname('Valor').Asfloat),[]);
         lrsaldo:=(lrSaldo+qryRelatorio.fieldByname('Valor').asfloat);
      end;
      impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrsaldo),[]);
      pvilinha := pvilinha+1;
      if pvilinha>=60 then
         impmatricial.Novapagina;

      qryRelatorio.Next;
   End;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   impmatricial.imp(pviLinha,001,'Saldo Final....');
   impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrsaldo),[]);
   pviLinha:=Pvilinha+1;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));

   ImpMatricial.Fechar;
   }
end;

procedure TfrmRelExtrato.ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
begin
  {
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 06;
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pvilinha,001,'Data    Descricao                                    Debito   Credito      Saldo');
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   }
end;

procedure TfrmRelExtrato.BotaoFecharClick(Sender: TObject);
begin
   close;
end;

end.
