unit uNovoMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinExCtrls, bsSkinHint, ImgList, bsPngImageList, bsSkinData,
  BusinessSkinForm, bsSkinCtrls, StdCtrls, ComCtrls, bsSkinTabs, bsSkinBoxCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,iniFiles,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, Series,
  TeEngine, ExtCtrls, TeeProcs, Chart, ADODB, cxLookAndFeels,
  cxLookAndFeelPainters;

type
  TfrmNovoMenu = class(TForm)
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinTabSheet3: TbsSkinTabSheet;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinData1: TbsSkinData;
    bsCompressedSkinList1: TbsCompressedSkinList;
    bsPngImageList1: TbsPngImageList;
    bsSkinHint1: TbsSkinHint;
    MenuGeral: TbsSkinToolBarEx;
    bsSkinLabel6: TbsSkinLabel;
    ImageGeral: TbsPngImageList;
    PanelGrafico: TbsSkinExPanel;
    bsSkinNotebook2: TbsSkinNotebook;
    bsSkinStdLabel8: TbsSkinStdLabel;
    cmbMes: TbsSkinComboBox;
    cmbano: TbsSkinComboBox;
    paggrafico: TbsSkinPageControl;
    bsSkinTabSheet4: TbsSkinTabSheet;
    ChtGraficos: TChart;
    Series1: TBarSeries;
    Series2: TPieSeries;
    bsSkinTabSheet5: TbsSkinTabSheet;
    crtContaCorrente: TChart;
    BarSeries1: TBarSeries;
    PieSeries1: TPieSeries;
    bsSkinTabSheet6: TbsSkinTabSheet;
    cxGrid1: TcxGrid;
    Grid_Despesas: TcxGridDBTableView;
    Colum_dia: TcxGridDBColumn;
    Colum_Mes: TcxGridDBColumn;
    Colum_Ano: TcxGridDBColumn;
    Grid_DespesasColumn5: TcxGridDBColumn;
    Colum_Tipo_Despesa: TcxGridDBColumn;
    Colum_Conta_Corrente: TcxGridDBColumn;
    Grid_DespesasColumn1: TcxGridDBColumn;
    Grid_DespesasColumn2: TcxGridDBColumn;
    Grid_DespesasColumn3: TcxGridDBColumn;
    Grid_DespesasColumn4: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    bsSkinCheckRadioBox1: TbsSkinCheckRadioBox;
    bsSkinStdLabel9: TbsSkinStdLabel;
    spntop: TbsSkinSpinEdit;
    bsSkinStdLabel10: TbsSkinStdLabel;
    CmbTipoGrafico: TbsSkinComboBox;
    chkTipoGrafico: TbsSkinCheckRadioBox;
    chkSomaDebitosAbertos: TbsSkinCheckRadioBox;
    chkMostraLegenda: TbsSkinCheckRadioBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    pnlTipoPagamento: TbsSkinExPanel;
    cxGrid4: TcxGrid;
    GridDespesas: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    Column_Pago: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    qryReceitas: TADOQuery;
    srcReceitas: TDataSource;
    SrcDespTipoPagamento: TDataSource;
    QryDespTipoPagamento: TADOQuery;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    qryResumo: TADOQuery;
    qryCadContas: TADOQuery;
    Conexao: TADOConnection;
    bsSkinLinkBar1: TbsSkinLinkBar;
    procedure bsSkinToolBarEx1Items0Click(Sender: TObject);
    procedure MenuGeralItems1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bsSkinLinkBar1Items2Click(Sender: TObject);
  private
    { Private declarations }
  public
    lpDados  : TIniFile;

    { Public declarations }
  end;

var
  frmNovoMenu: TfrmNovoMenu;
  GsVelocidade  : Integer;
  Gsversis      : String;
  GsNomeEmp     : String;
  GstituloRel   : String;
  gsPeriodoRel  : String;
  gspath        : String;

implementation

uses uContatos, uCadDespesas;

{$R *.dfm}

procedure TfrmNovoMenu.bsSkinLinkBar1Items2Click(Sender: TObject);
var liconta : Integer;
    lrvlr_Total : Real;
    lsGrupo : String;
    lsConta : String;
    lrTotal : Double;
begin

   {$REGION 'Grafico Principal das despeas'}

   qryResumo.Close;
   qryResumo.Sql.Text:='Select top '+spntop.text+' Max(Conta.Descricao)as Descricao, '+
                            'Sum(Desp.Valor) As Total, Max(Conta.Codigo) as Codigo,  '+
                            'Max(Historico) as Historico '+
                            'From T_Despesas Desp, T_TipoDespesas Conta '+
                            'where Conta.Codigo=Desp.Cod_TipoDespesa And D_C=:parD_C AND '+
                            'Conta.SomaDespesa=:parSomaDespesa  ';
   qryResumo.Sql.Add('and month(Desp.Data_Lancamento)=:ParMes ');
   qryResumo.Sql.Add('and Year(Desp.Data_Lancamento)=:ParAno ');
   qryResumo.Sql.Add('Group By Conta.Descricao order by 2 desc ');

   qryResumo.Parameters.ParamValues['ParMes'] :=intToStr(cmbMes.ItemIndex);
   qryResumo.Parameters.ParamValues['ParAno'] := cmbano.Text;
   qryResumo.Parameters.ParamValues['ParD_C'] :='D';
   qryResumo.Parameters.ParamValues['ParSomaDespesa'] :='S';
   qryResumo.Open;

   if chkTipoGrafico.Checked Then
   Begin
      lrtotal     := 0;
      lsGrupo     := Copy(qryResumo.FieldByname('Codigo').AsString,1,2);
      for liConta := 1 To ChtGraficos.SeriesCount do
      begin
         ChtGraficos.Series[Liconta-1].Active := False;
         ChtGraficos.Series[Liconta-1].Clear;
      end;

      While not qryResumo.Eof do
      Begin
         if lsGrupo<>Copy(qryResumo.FieldByname('Codigo').AsString,1,2) Then
         Begin
            qryCadContas.Close;
            qryCadContas.Sql.Text :='Select Descricao From T_tipoDespesas where Codigo=:parCodigo ';
            qryCadContas.Parameters.ParamValues['parcodigo'] := lsConta;
            qryCadContas.open;
            ChtGraficos.Series[CmbTipoGrafico.ItemIndex].AddY(lrtotal, copy( qryCadContas.FieldByname( 'Descricao' ).AsString, 1, 30 ) );
            lsGrupo  := Copy(qryResumo.FieldByname('Codigo').AsString,1,2);
            lrTotal  := 0 ;
         end;
         lrtotal   := lrtotal + qryResumo.FieldByname('Total').AsFloat;
         lsConta   := Copy(qryResumo.FieldByname('Codigo').AsString,1,2)+'00';
         qryResumo.Next;
      End;

   End
   Else
   Begin
      for liConta := 1 To ChtGraficos.SeriesCount do
      begin
         ChtGraficos.Series[Liconta-1].Active :=False;
         ChtGraficos.Series[Liconta-1].Clear;
      end;
      while not qryResumo.Eof do
      Begin
         ChtGraficos.Series[CmbTipoGrafico.ItemIndex].AddY(qryResumo.FieldByname('Total').Asfloat, copy( qryResumo.FieldByname( 'Descricao' ).AsString, 1, 20 ) );
         qryResumo.Next;
      End;
   End;
   ChtGraficos.Series[CmbTipoGrafico.ItemIndex].Active :=True;
   {$ENDREGION}

   {$REGION 'Grafico por tipo de pagamento'}

   QryDespTipoPagamento.Close;
   QryDespTipoPagamento.Sql.Text:='Select Tpg.Descricao, '+
                            '             Min(pago) as Pago, '+
                            '             Sum(Desp.Valor) As Total, '+
                            '             Max(Tpg.Codigo) as Codigo,  '+
                            '             Max(tpg.exiberesumo) as Soma '+
                            'From T_Despesas Desp, T_ContaCorrente Tpg  '+
                            'where Tpg.codigo=Desp.Cod_ContaCorrente and '+
                            '      D_C=:parD_C and '+
                            '      tpg.exiberesumo=:parExiberesumo ';
   if chkSomaDebitosAbertos.Checked Then
       QryDespTipoPagamento.Sql.Add('and Desp.Pago=:ParPago ');
   QryDespTipoPagamento.Sql.Add('and month(Desp.Data_Lancamento)=:ParMes ');
   QryDespTipoPagamento.Sql.Add('and Year(Desp.Data_Lancamento)=:ParAno ');
   QryDespTipoPagamento.Sql.Add('Group By Tpg.Descricao order by 3 desc ');

   QryDespTipoPagamento.Parameters.ParamValues['ParMes']    := intToStr(cmbMes.ItemIndex);
   QryDespTipoPagamento.Parameters.ParamValues['ParAno']    := cmbano.Text;
   QryDespTipoPagamento.Parameters.ParamValues['ParD_C']    := 'D';
   QryDespTipoPagamento.Parameters.ParamValues['parExiberesumo'] := 'S';
   if chkSomaDebitosAbertos.Checked Then
       QryDespTipoPagamento.Parameters.ParamValues['ParPago'] := 'N';
   QryDespTipoPagamento.Open;

   lrvlr_Total := 0;
   while not QryDespTipoPagamento.Eof do
   Begin
      lrvlr_Total := lrvlr_Total + QryDespTipoPagamento.fieldbyName('Total').AsFloat;
      QryDespTipoPagamento.Next;
   End;
  // edtVlr_Despesas.text := formatfloat('0.00',lrvlr_Total);

   For liConta := 1 To crtContaCorrente.SeriesCount do
   begin
      crtContaCorrente.Series[Liconta-1].Active :=False;
      crtContaCorrente.Series[Liconta-1].Clear;
   end;

   QryDespTipoPagamento.First;
   while not QryDespTipoPagamento.Eof do
   Begin
      crtContaCorrente.Series[CmbTipoGrafico.ItemIndex].AddY(QryDespTipoPagamento.FieldByname('Total').Asfloat, copy( QryDespTipoPagamento.FieldByname( 'Descricao' ).AsString, 1, 13 ) );
      QryDespTipoPagamento.Next;
   End;
   crtContaCorrente.Series[CmbTipoGrafico.ItemIndex].Active :=True;
 {$ENDREGION}



   qryReceitas.Close;
   qryReceitas.Sql.Text:='Select Conta.Descricao, '+
                            'Sum(Desp.Valor) As Total, Max(Tpg.Codigo) as Codigo  '+
                            'From T_Despesas Desp, T_ContaCorrente Tpg, T_TipoDespesas Conta  '+
                            'where Tpg.codigo=Desp.Cod_ContaCorrente and '+
                            '      D_C=:parD_C and  '+
                            '      Conta.codigo=Desp.Cod_tipoDespesa ';
   qryReceitas.Sql.Add('and month(Desp.Data_Lancamento)=:ParMes ');
   qryReceitas.Sql.Add('and Year(Desp.Data_Lancamento)=:ParAno ');
   qryReceitas.Sql.Add('Group By Conta.Descricao order by 2 desc ');

   qryReceitas.Parameters.ParamValues['ParMes']    := intToStr(cmbMes.ItemIndex);
   qryReceitas.Parameters.ParamValues['ParAno']    := cmbano.Text;
   qryReceitas.Parameters.ParamValues['ParD_C']    := 'C';
   qryReceitas.Open;


end;

procedure TfrmNovoMenu.bsSkinToolBarEx1Items0Click(Sender: TObject);
begin
   frmContatos := TfrmContatos.Create(Self);
   frmContatos.Showmodal;
end;

procedure TfrmNovoMenu.FormCreate(Sender: TObject);
var psCaminhoDados : String ;
begin
   gsPath := ExtractFilePath( ParamStr( 0 ) );
   If Copy( gsPath, Length(gsPath), 1) <> '\' Then
     gsPath := gsPath+'\';

   lpDados := TIniFile.Create(gsPath+'Config.ini');

   psCaminhoDados := gsPath+'Dados\Despesas.mdb';
   GsNomeEmp      := ' Despesas Pessoais  ';

   Conexao.Close;
   Conexao.ConnectionString := psCaminhoDados;
   Conexao.LoginPrompt := False;
   Conexao.Open;

end;

procedure TfrmNovoMenu.MenuGeralItems1Click(Sender: TObject);
begin
   frmCaddespesas:=TfrmCaddespesas.Create(self);
   frmCaddespesas.showmodal;
end;

end.
