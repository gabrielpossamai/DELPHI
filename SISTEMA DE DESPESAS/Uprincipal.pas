{ ***************************************************************************
  Empresa..: Eduardo & Bruno Company & Participations
  Autor....: Eduardo Medeiros Dantas.
  Data.....: 09/03/2009
  Aviso....: Copyright (c) 2009, Eduardo Medeiros Dantas.
  Módulo...: Formulário principal (Apresentação e controle)
  *************************************************************************** }
unit Uprincipal;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ActnList, ToolWin, ActnMan, ActnCtrls, ActnMenus, ExtCtrls,
   XPStyleActnCtrls, ImgList, DB, ADODB, IniFiles, ComCtrls,
   Buttons, StdCtrls, DBCtrls, Spin, Grids, cxgridExportlink,
   DBGrids, EditNew, DBTables, BusinessSkinForm, Menus, bsSkinData,
   bsSkinShellCtrls, bsSkinCtrls, TeeProcs, TeEngine, Chart, Series,
   bsSkinGrids, bsDBGrids, Mask, bsSkinBoxCtrls, cxGraphics, bsSkinTabs,
   cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
   cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
   cxClasses, cxControls, cxGridCustomView, cxGrid, cxPropertiesStore,
   cxGridCustomPopupMenu, cxGridPopupMenu, cxLookAndFeels, cxLookAndFeelPainters,
   bsPngImageList, dxSkinsCore, Tabs, DockTabSet;

type
   TFrmPrincipal = class(TForm)
      ActionManager1: TActionManager;
      actCad_PlanoContas: TAction;
      Act_Despesas: TAction;
      ImageList2: TImageList;
      AdoPrincipal: TADOConnection;
      actContas: TAction;
      ActCad_TipoPagamento: TAction;
      actLocalizarBanco: TAction;
      qryResumo: TADOQuery;
      QryCadTipoDespesas: TADOQuery;
      srcCadtipoDespesas: TDataSource;
      QryDespTipoPagamento: TADOQuery;
      cdsDespTipoPagamento: TDataSource;
      Action1: TAction;
      actUti_Manutencao: TAction;
      qryReceitas: TADOQuery;
      qryRelatorio: TADOQuery;
      actEstrutura: TAction;
      actrelExtratoConta: TAction;
      bsBusinessSkinForm1: TbsBusinessSkinForm;
      OD: TbsOpenSkinDialog;
      Skindata: TbsSkinData;
      bsSkinMainMenuBar1: TbsSkinMainMenuBar;
      MainMenu1: TMainMenu;
      Cadastros1: TMenuItem;
      Despesas1: TMenuItem;
      PlanodeContas1: TMenuItem;
      Utilitario1: TMenuItem;
      Sair1: TMenuItem;
      Help1: TMenuItem;
      ContaCorrente1: TMenuItem;
      ManutencaodoBanco1: TMenuItem;
      N1: TMenuItem;
      CarregarSkins1: TMenuItem;
      ImageList1: TImageList;
    Compdata: TbsCompressedStoredSkin;
      Relatorios1: TMenuItem;
      PlanodeContas2: TMenuItem;
      deConta1: TMenuItem;
      N2: TMenuItem;
      ImportarExtrato1: TMenuItem;
      AgendaTelefonica1: TMenuItem;
      N3: TMenuItem;
      Prioridades1: TMenuItem;
      Balancete: TMenuItem;
      Financeiro1: TMenuItem;
      FechamentoDoMes1: TMenuItem;
      N4: TMenuItem;
      Credores1: TMenuItem;
      Engenharia1: TMenuItem;
      qryTerceiros: TADOQuery;
      srcTerceiros: TDataSource;
      Imagebutoes: TcxImageList;
      QryCadDespesas: TADOQuery;
      SrcCadDespesas: TDataSource;
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
      GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
      GridTableViewStyleSheetWindowsClassic: TcxGridTableViewStyleSheet;
      QryTempCadDespesas: TADOQuery;
      ComparativoporPeriodo1: TMenuItem;
      qryCadContas: TADOQuery;
      cxStyle27: TcxStyle;
      qryModific: TADOQuery;
      qryCadCredores: TADOQuery;
      cxPropertiesStore1: TcxPropertiesStore;
      cxGridPopupMenu1: TcxGridPopupMenu;
      qryDetalheTerceiros: TADOQuery;
      srcDetalheTerceiros: TDataSource;
      srcReceitas: TDataSource;
      PagSkinData: TbsSkinData;
    CompPagSkinData: TbsCompressedStoredSkin;
    PagGeralAnalise: TbsSkinPageControl;
      bsSkinTabSheet10: TbsSkinTabSheet;
      bsSkinTabSheet11: TbsSkinTabSheet;
      bsSkinExPanel2: TbsSkinExPanel;
      lblAguarde: TbsSkinStdLabel;
      PanelTerceiros: TbsSkinExPanel;
      PagRecTerceiros: TbsSkinPageControl;
      bsSkinTabSheet4: TbsSkinTabSheet;
      ChartTerceiros: TChart;
      BarSeries2: TBarSeries;
      PieSeries2: TPieSeries;
      bsSkinTabSheet6: TbsSkinTabSheet;
      cxGrid5: TcxGrid;
      GridDetalheTerceiros: TcxGridDBTableView;
      cxGridDBColumn5: TcxGridDBColumn;
      cxGridDBColumn6: TcxGridDBColumn;
      cxGridDBColumn7: TcxGridDBColumn;
      cxGridDBColumn8: TcxGridDBColumn;
      cxGridDBColumn9: TcxGridDBColumn;
      cxGridDBColumn10: TcxGridDBColumn;
      cxGridDBColumn11: TcxGridDBColumn;
      cxGridDBColumn13: TcxGridDBColumn;
      cxGridDBColumn14: TcxGridDBColumn;
      cxGridLevel3: TcxGridLevel;
      bsSkinCheckRadioBox5: TbsSkinCheckRadioBox;
      bsSkinExPanel4: TbsSkinExPanel;
      cxGrid3: TcxGrid;
      GridTerceiros: TcxGridDBTableView;
      cxGridDBColumn1: TcxGridDBColumn;
      cxGridDBColumn2: TcxGridDBColumn;
      Colum_Pago: TcxGridDBColumn;
      cxGridLevel1: TcxGridLevel;
      bsSkinTabSheet12: TbsSkinTabSheet;
      PanelRecebimentos: TbsSkinExPanel;
      CarregaroutroSkin1: TMenuItem;
      bsSkinPanel1: TbsSkinPanel;
    pagDetalheReceber: TbsSkinPageControl;
      bsSkinTabSheet7: TbsSkinTabSheet;
    chart_Receitas: TChart;
      BarSeries4: TBarSeries;
      PieSeries4: TPieSeries;
      bsSkinTabSheet9: TbsSkinTabSheet;
      bsSkinCheckRadioBox2: TbsSkinCheckRadioBox;
      bsSkinPanel2: TbsSkinPanel;
      paggrafico: TbsSkinPageControl;
      bsSkinTabSheet1: TbsSkinTabSheet;
      ChtGraficos: TChart;
      Series1: TBarSeries;
      Series2: TPieSeries;
      bsSkinTabSheet3: TbsSkinTabSheet;
    charttipoPagamento: TChart;
      BarSeries1: TBarSeries;
      PieSeries1: TPieSeries;
      bsSkinTabSheet2: TbsSkinTabSheet;
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
      pnlTipoPagamento: TbsSkinExPanel;
      cxGrid4: TcxGrid;
      GridDespesas: TcxGridDBTableView;
      cxGridDBColumn3: TcxGridDBColumn;
      cxGridDBColumn4: TcxGridDBColumn;
      Column_Pago: TcxGridDBColumn;
      cxGridLevel2: TcxGridLevel;
      bsSkinPanel5: TbsSkinPanel;
      bsSkinStdLabel4: TbsSkinStdLabel;
      bsSkinStdLabel5: TbsSkinStdLabel;
      bsSkinStdLabel6: TbsSkinStdLabel;
      edtVlr_Despesas: TbsSkinEdit;
      edtVlr_Receitas: TbsSkinEdit;
      edtSaldo: TbsSkinEdit;
      ImageGeral: TbsPngImageList;
    bsSkinDBGrid1: TbsSkinDBGrid;
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    btnAtualizar: TbsSkinSpeedButton;
    cmbMes: TbsSkinComboBox;
    cmbano: TbsSkinComboBox;
    pnlopcoes: TbsSkinExPanel;
    bsSkinSpeedButton2: TbsSkinSpeedButton;
    chkSomaDebitosAbertos: TbsSkinCheckRadioBox;
    chkPeriodo: TbsSkinCheckRadioBox;
    pnlOpcoesGrafico: TbsSkinExPanel;
    bsSkinStdLabel10: TbsSkinStdLabel;
    bsSkinStdLabel9: TbsSkinStdLabel;
    CmbTipoGrafico: TbsSkinComboBox;
    spntop: TbsSkinSpinEdit;
    chkMostraLegenda: TbsSkinCheckRadioBox;
    chkTipoGrafico: TbsSkinCheckRadioBox;
    SkinEdicao: TbsSkinData;
    CompSkinEdicao: TbsCompressedStoredSkin;
    Column_Conferido: TcxGridDBColumn;
      procedure actCad_PlanoContasExecute(Sender: TObject);
      procedure actContasExecute(Sender: TObject);
      procedure Act_DespesasExecute(Sender: TObject);
      procedure ActCad_TipoPagamentoExecute(Sender: TObject);
      procedure actLocalizarBancoExecute(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure btnAtualizarClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure QryDespTipoPagamentoAfterOpen(DataSet: TDataSet);
      procedure ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
      procedure actUti_ManutencaoExecute(Sender: TObject);
      procedure PlanodeContas1Click(Sender: TObject);
      procedure ContaCorrente1Click(Sender: TObject);
      procedure ipoPagamento1Click(Sender: TObject);
      procedure PlanodeContas2Click(Sender: TObject);
      procedure LocalizarBanco1Click(Sender: TObject);
      procedure Sair1Click(Sender: TObject);
      procedure CarregarSkins1Click(Sender: TObject);
      procedure Despesas1Click(Sender: TObject);
      procedure ManutencaodoBanco1Click(Sender: TObject);
      procedure deConta1Click(Sender: TObject);
      procedure ImportarExtrato1Click(Sender: TObject);
      procedure Prioridades1Click(Sender: TObject);
      procedure AgendaTelefonica1Click(Sender: TObject);
      procedure BalanceteClick(Sender: TObject);
      procedure FechamentoDoMes1Click(Sender: TObject);
      procedure Credores1Click(Sender: TObject);
      procedure QryDespTipoPagamentoAfterScroll(DataSet: TDataSet);
      procedure QryCadDespesasAfterOpen(DataSet: TDataSet);
      procedure QryCadDespesasBeforeOpen(DataSet: TDataSet);
      procedure QryCadDespesasCalcFields(DataSet: TDataSet);
      procedure ComparativoporPeriodo1Click(Sender: TObject);
      procedure chkMostraLegendaClick(Sender: TObject);
      procedure chkTipoGraficoClick(Sender: TObject);
      procedure GridPagamentosCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
         var ADone: Boolean);
      procedure GridTerceirosCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
         var ADone: Boolean);
      procedure GridDespesasCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
         var ADone: Boolean);
      procedure bsSkinSpeedButton2Click(Sender: TObject);
      procedure qryTerceirosAfterScroll(DataSet: TDataSet);
      procedure qryTerceirosAfterOpen(DataSet: TDataSet);
      procedure qryDetalheTerceirosAfterOpen(DataSet: TDataSet);
      procedure NovoMenu1Click(Sender: TObject);
      procedure paggraficoChange(Sender: TObject);
      procedure CarregaroutroSkin1Click(Sender: TObject);
    procedure pagDetalheReceberChange(Sender: TObject);
    procedure PagGeralAnaliseChange(Sender: TObject);
    procedure Grid_DespesasCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
   private
      { Private declarations }
      procedure AjustaBancoDeDados;
   public
      pviLinha: Integer;
      lpDados: TIniFile;
      { Public declarations }
   end;

var
   FrmPrincipal: TFrmPrincipal;
   GsVelocidade: Integer;
   Gsversis: String;
   GsNomeEmp: String;
   GstituloRel: String;
   gsPeriodoRel: String;
   gspath: String;

implementation

uses uCadTipoDespesa, uCadDespesas, uCadTipoPagamento, ufuncoes,
   uSQL, uRelExtrato, uImportaExtrato, uCadPrioridades, uagenda,
   uselRelBalancete, ufechames, uCadCredores, uAnaliseGrafica, uContatos,
   uNovoMenu;
{$R *.dfm}

procedure TFrmPrincipal.actCad_PlanoContasExecute(Sender: TObject);
begin
   FrmCadTipoDespesa.Showmodal;
end;

procedure TFrmPrincipal.actContasExecute(Sender: TObject);
begin
   frmCadTipoPagamento.Showmodal;
end;

procedure TFrmPrincipal.Act_DespesasExecute(Sender: TObject);
begin
   frmCaddespesas.Showmodal;
end;

procedure TFrmPrincipal.AgendaTelefonica1Click(Sender: TObject);
begin
   frmContatos := TfrmContatos.Create(Self);
   frmContatos.Showmodal;
   // FrmAgenda.showmodal;
end;

procedure TFrmPrincipal.AjustaBancoDeDados;
begin
   if not ExisteCampo('T_ContaCorrente', 'Prazo', AdoPrincipal) then
   Begin
      qryModific.Close;
      qryModific.SQL.Text := 'alter table T_ContaCorrente add Prazo integer';
      qryModific.ExecSql;
   End;
   if not ExisteCampo('T_ContaCorrente', 'Vencimento', AdoPrincipal) then
   Begin
      qryModific.Close;
      qryModific.SQL.Text := 'alter table T_ContaCorrente add Vencimento integer';
      qryModific.ExecSql;
   End;
   if not ExisteCampo('T_ContaCorrente', 'Tipo_Cobranca', AdoPrincipal) then
   Begin
      qryModific.Close;
      qryModific.SQL.Text := 'alter table T_ContaCorrente add Tipo_cobranca integer';
      qryModific.ExecSql;

      qryModific.Close;
      qryModific.SQL.Text := 'Update T_ContaCorrente set Tipo_cobranca=2';
      qryModific.ExecSql;

   End;
   if not ExisteCampo('T_Despesas', 'nr_Parcela', AdoPrincipal) then
   Begin
      qryModific.Close;
      qryModific.SQL.Text := 'alter table T_despesas add nr_parcela integer';
      qryModific.ExecSql;

      qryModific.Close;
      qryModific.SQL.Text := 'Update T_despesas set nr_parcela=1';
      qryModific.ExecSql;
   End;
   if not ExisteCampo('T_Despesas', 'Recebido', AdoPrincipal) then
   Begin
      qryModific.Close;
      qryModific.SQL.Text := 'alter table T_despesas add recebido varchar(1)';
      qryModific.ExecSql;

      qryModific.Close;
      qryModific.SQL.Text := 'Update T_despesas set Recebido=' + QuotedStr('S');
      qryModific.ExecSql;
   End;

   if not ExisteCampo('T_Despesas', 'Conferido', AdoPrincipal) then
   Begin
      qryModific.Close;
      qryModific.SQL.Text := 'alter table T_despesas add Conferido varchar(1)';
      qryModific.ExecSql;

      qryModific.Close;
      qryModific.SQL.Text := 'Update T_despesas set Conferido=' + QuotedStr('N');
      qryModific.ExecSql;
   End;
   if not ExisteCampo('T_Despesas', 'Documento', AdoPrincipal) then
   Begin
      qryModific.Close;
      qryModific.SQL.Text := 'alter table T_despesas add Documento varchar(10)';
      qryModific.ExecSql;
   End;

end;

procedure TFrmPrincipal.ActCad_TipoPagamentoExecute(Sender: TObject);
begin
   frmCadTipoPagamento.Showmodal;
end;

procedure TFrmPrincipal.actLocalizarBancoExecute(Sender: TObject);
Var
   ldlgTemp: TOpenDialog;
   LsPath: String;
begin
   ldlgTemp := TOpenDialog.Create(Self);
   ldlgTemp.Filter := 'Banco de Dados Access|*.MDB';
   If Not ldlgTemp.Execute Then
   Begin
      FreeAndNil(ldlgTemp);
      Exit;
   End;
   LsPath := ldlgTemp.FileName;
   Try
      AdoPrincipal.Close;
      AdoPrincipal.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;' + 'Data Source=' + LsPath + ';' + 'Persist Security Info=False';
      AdoPrincipal.LoginPrompt := False;
      AdoPrincipal.Open;
      lpDados.WriteString('ADM', 'CaminhoBase', AdoPrincipal.ConnectionString);
   Except
      On E: Exception Do
      Begin
         MessageDlg('Não foi possível abrir o Banco de Dados ADO!!!' + E.Message, mtError, [mbOk], 0);
         Exit;
      End;
   End;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
var
   licont: Integer;
   lstmArquivo: TFileStream;
begin

   // pnlTipoPagamento.RollState := True;
   // PanelGrafico.RollState     := True;
   {
     cmbMes.ItemIndex           := lpDados.ReadInteger('CONF_TELAINICIAL','MesCorrente',cmbMes.ItemIndex);
     spntop.Value               := lpDados.Readfloat('CONF_TELAINICIAL','TopDespesas',spntop.Value);
     CmbTipoGrafico.ItemIndex   := lpDados.ReadInteger('CONF_TELAINICIAL','TipoGrafico',CmbTipoGrafico.ItemIndex);

     ChtGraficos.Legend.Visible := False;
     }
   if FileExists(lpDados.ReadString('ADM', 'PagSkinPadrao', 'c:\')) then
      PagSkinData.LoadFromCompressedFile(lpDados.ReadString('ADM', 'PagSkinPadrao', 'c:\'));
   {$REGION 'Atualizando a Combo de Anos'}
   cmbano.Items.Clear;
   QryTempCadDespesas.Close;
   QryTempCadDespesas.SQL.Text := ' Select year(Data_lancamento) as Ano from T_Despesas group by year(Data_Lancamento) order by 1 desc';
   QryTempCadDespesas.Open;
   cmbano.Items.add('Nenhum');

   while Not QryTempCadDespesas.Eof do
   Begin
      cmbano.Items.add(QryTempCadDespesas.FieldByName('ano').AsString);
      QryTempCadDespesas.Next;
   End;

   qryCadCredores.Close;
   qryCadCredores.SQL.Text := 'Select * from T_Credores ';
   qryCadCredores.Open;

   cmbano.ItemIndex := lpDados.ReadInteger('CONF_TELAINICIAL', 'AnoCorrente', cmbano.ItemIndex);
   {$ENDREGION}

   AjustaBancoDeDados;

   if FileExists(gspath + '\Config\Config_' + TForm(Sender).name) then
   Begin
      lstmArquivo := TFileStream.Create(gspath + '\Config\Config_' + TForm(Sender).name, fmOpenRead);
      cxPropertiesStore1.StorageStream := lstmArquivo;
      cxPropertiesStore1.RestoreFrom;
      lstmArquivo.Free;
   End;
   btnAtualizarClick(btnAtualizar);
   ChtGraficos.Legend.Visible := False;
end;

procedure TFrmPrincipal.GridDespesasCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
   var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Values[Colum_Pago.Index] = 'S' Then
      ACanvas.Brush.color := $00B5FBAA;
end;

procedure TFrmPrincipal.GridPagamentosCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
   var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Values[Column_Pago.Index] = 'S' Then
      ACanvas.Brush.color := $00B5FBAA;
end;

procedure TFrmPrincipal.chkMostraLegendaClick(Sender: TObject);
begin
   Case paggrafico.activepageIndex Of
     0 : ChtGraficos.Legend.Visible        := chkMostraLegenda.Checked;
     1 : charttipoPagamento.Legend.Visible := chkMostraLegenda.Checked;
   End;
end;

procedure TFrmPrincipal.chkTipoGraficoClick(Sender: TObject);
begin
   if chkTipoGrafico.Checked then
      spntop.Value := 100
   Else
      spntop.Value := 10;
end;

procedure TFrmPrincipal.pagDetalheReceberChange(Sender: TObject);
var liConta : Integer;
begin
   case pagDetalheReceber.ActivePageIndex of
      0 :
      Begin
         qryReceitas.Close;
         qryReceitas.SQL.Text := 'Select Conta.Descricao, ' + 'Sum(Desp.Valor) As Total ' +
                                 'From T_Despesas Desp, T_ContaCorrente Tpg, T_TipoDespesas Conta  ' + 'where Tpg.codigo=Desp.Cod_ContaCorrente and ' +
                                 '      D_C=:parD_C and  ' + '      Conta.codigo=Desp.Cod_tipoDespesa ';
        qryReceitas.SQL.add('and month(Desp.Data_Lancamento)=:ParMes ');
        qryReceitas.SQL.add('and Year(Desp.Data_Lancamento)=:ParAno ');
        qryReceitas.SQL.add('Group By Conta.Descricao order by 2 desc ');
        qryReceitas.Parameters.ParamValues['ParMes'] := intToStr(cmbMes.ItemIndex);
        qryReceitas.Parameters.ParamValues['ParAno'] := cmbano.Text;
        qryReceitas.Parameters.ParamValues['ParD_C'] := 'C';
        qryReceitas.Open;

        {$REGION 'Grafico das Receitas'}
        for liConta := 1 To chart_Receitas.SeriesCount do
        begin
           chart_Receitas.Series[liConta - 1].Active := False;
           chart_Receitas.Series[liConta - 1].Clear;
        end;
        while not qryReceitas.Eof do
        Begin
           chart_Receitas.Series[CmbTipoGrafico.ItemIndex].AddY(qryReceitas.FieldByName('Total').AsFloat,
           Copy(qryReceitas.FieldByName('Descricao').AsString, 1, 20));
           qryReceitas.Next;
        End;
        chart_Receitas.Series[CmbTipoGrafico.ItemIndex].Active := true;
        {$ENDREGION}



      End;
      1 :
      Begin
         qryReceitas.Close;
         qryReceitas.SQL.Text := 'Select day(Data_Lancamento)  as Dia, ' + '       month(Data_Lancamento) as Mes, ' +
            '       Year(Data_Lancamento)  as Ano, ' + '       Desp.Pago,  ' + '       Desp.Sequencia,Desp.Data_Lancamento,Conta.Descricao, ' +
            '       Desp.Cod_TipoDespesa,Desp.Cod_Contacorrente, Desp.D_C, Tipo.Descricao as Operacao,' +
            'Desp.Valor, Desp.Historico,Desp.Data_Vencimento,Desp.Cod_TipoPagamento ' +
            'From T_Despesas Desp, T_ContaCorrente Conta, T_TipoDespesas Tipo ' +
            'where Conta.Codigo=Desp.Cod_Contacorrente and ' + '      tipo.codigo=Desp.Cod_TipoDespesa ';
         qryReceitas.SQL.add('and Desp.D_C=:ParD_C ');
         qryReceitas.SQL.add('and month(Desp.Data_Lancamento)=:ParMes ');
         qryReceitas.SQL.add('and Year(Desp.Data_Lancamento)=:ParAno ');
         qryReceitas.SQL.add('Order by Data_Lancamento ');

         qryReceitas.Parameters.ParamValues['ParD_C'] := 'C';
         qryReceitas.Parameters.ParamValues['ParMes'] := intToStr(cmbMes.ItemIndex);
         qryReceitas.Parameters.ParamValues['ParAno'] := cmbano.Text;
         qryReceitas.Open;
      End;
   End;
end;

procedure TFrmPrincipal.bsSkinSpeedButton2Click(Sender: TObject);
begin
   ExportGridToExcel(gspath + 'Relatorios Excel\Relatorio_' + formatDatetime('mmss', now), cxGrid1);
end;


procedure TFrmPrincipal.btnAtualizarClick(Sender: TObject);
var
   liConta: Integer;
   lrVlr_Total: Double;
begin
   case PagGeralAnalise.activepageIndex of
      0 :
      Begin
         lblAguarde.Visible := true;
         lblAguarde.Update;

         qryReceitas.Close;
         qryReceitas.SQL.Text := 'Select Sum(Desp.Valor) As Total From T_Despesas Desp, T_ContaCorrente Tpg, T_TipoDespesas Conta  ' +
            'where Tpg.codigo=Desp.Cod_ContaCorrente and  D_C=:parD_C and Conta.codigo=Desp.Cod_tipoDespesa ';
         qryReceitas.SQL.add('and month(Desp.Data_Lancamento)=:ParMes ');
         qryReceitas.SQL.add('and Year(Desp.Data_Lancamento)=:ParAno ');

         qryReceitas.Parameters.ParamValues['ParMes'] := intToStr(cmbMes.ItemIndex);
         qryReceitas.Parameters.ParamValues['ParAno'] := cmbano.Text;
         qryReceitas.Parameters.ParamValues['ParD_C'] := 'C';
         qryReceitas.Open;

         edtVlr_Receitas.Text := formatfloat('0.00', qryReceitas.FieldByName('Total').AsFloat);

         qryReceitas.Close;
         qryReceitas.SQL.Text := 'Select Sum(Desp.Valor) As Total ' +
            ' From T_Despesas Desp, T_ContaCorrente Tpg  ' +
            'where Tpg.codigo=Desp.Cod_ContaCorrente and ' + '      D_C=:parD_C and ' + '      tpg.exiberesumo=:parExiberesumo ';
         qryReceitas.SQL.add('and month(Desp.Data_Lancamento)=:ParMes ');
         qryReceitas.SQL.add('and Year(Desp.Data_Lancamento)=:ParAno ');

         qryReceitas.Parameters.ParamValues['ParMes'] := intToStr(cmbMes.ItemIndex);
         qryReceitas.Parameters.ParamValues['ParAno'] := cmbano.Text;
         qryReceitas.Parameters.ParamValues['ParD_C'] := 'D';
         qryReceitas.Parameters.ParamValues['parExiberesumo'] := 'S';
         qryReceitas.Open;

         edtVlr_Despesas.Text:= formatfloat('0.00', qryReceitas.FieldByName('Total').AsFloat);

         edtSaldo.Text := formatfloat('0.00', (StrToFloat(edtVlr_Receitas.Text) - StrToFloat(edtVlr_Despesas.Text)));

         paggraficoChange(paggrafico);
         lblAguarde.Visible := False;
      End;
      1 :
      Begin
         {$REGION 'Resumo das compras para Terceiros'}
         qryTerceiros.Close;
         qryTerceiros.SQL.Text := 'Select tpg.Descricao, ' +
                                  '       Min(Pago) as Pago, ' +
                                  '       Sum(Desp.Valor) As Total, '+
                                  '       Max(Tpg.Codigo) as Codigo ' +
                                  'From T_Despesas Desp, T_credores Tpg, T_TipoDespesas Conta ' +
                                  'WHERE Tpg.codigo=Desp.Cod_TipoPagamento and ' +
                                  '      D_C=:parD_C and  ' +
                                  '      Conta.codigo=Desp.Cod_tipoDespesa ';
         if chkSomaDebitosAbertos.Checked Then
            qryTerceiros.SQL.add('and Desp.Pago=:ParPago ');
         if not chkPeriodo.Checked Then
         Begin
            qryTerceiros.SQL.add('and month(Desp.Data_Lancamento)=:ParMes ');
            qryTerceiros.SQL.add('and Year(Desp.Data_Lancamento)=:ParAno ');
         End;
         qryTerceiros.SQL.add('Group By tpg.Descricao order by 3 desc ');
         if not chkPeriodo.Checked Then
         Begin
            qryTerceiros.Parameters.ParamValues['ParMes'] := intToStr(cmbMes.ItemIndex);
            qryTerceiros.Parameters.ParamValues['ParAno'] := cmbano.Text;
         End;
         qryTerceiros.Parameters.ParamValues['ParD_C'] := 'V';
         if chkSomaDebitosAbertos.Checked Then
            qryTerceiros.Parameters.ParamValues['ParPago'] := 'N';
         qryTerceiros.Open;
         {$ENDREGION}

         {$REGION 'Grafico das compras de terceiros'}
         for liConta := 1 To ChartTerceiros.SeriesCount do
         begin
            ChartTerceiros.Series[liConta - 1].Active := False;
            ChartTerceiros.Series[liConta - 1].Clear;
         end;
         while not qryTerceiros.Eof do
         Begin
            ChartTerceiros.Series[CmbTipoGrafico.ItemIndex].AddY(qryTerceiros.FieldByName('Total').AsFloat,
               Copy(qryTerceiros.FieldByName('Descricao').AsString, 1, 20));
            qryTerceiros.Next;
         End;
         ChartTerceiros.Series[CmbTipoGrafico.ItemIndex].Active := true;
         {$ENDREGION}

         lrVlr_Total := 0;
         while not qryReceitas.Eof do
         Begin
            lrVlr_Total := lrVlr_Total + qryReceitas.FieldByName('Total').AsFloat;
            qryReceitas.Next;
         End;
      End;
      2 :
      Begin
         pagDetalheReceberChange(pagDetalheReceber);
      end;
   End;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
var
   psCaminhoDados: String;
begin
   gspath := ExtractFilePath(ParamStr(0));
   If Copy(gspath, Length(gspath), 1) <> '\' Then
      gspath := gspath + '\';

   lpDados := TIniFile.Create(gspath + 'Config.ini');

   psCaminhoDados := gspath + 'Dados\Despesas.mdb';
   GsNomeEmp := ' Despesas Pessoais  ';

   AdoPrincipal.Close;
   AdoPrincipal.ConnectionString := psCaminhoDados;
   AdoPrincipal.LoginPrompt := False;
   AdoPrincipal.Open;

end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   licont: Integer;
   lstmArquivo: TFileStream;
begin

   if not DirectoryExists( gspath + '\Config' ) Then
      CreateDir( gspath + '\Config' );

   lstmArquivo := TFileStream.Create(gspath + '\Config\Config_' + TForm(Sender).name, fmCreate);
   cxPropertiesStore1.StorageStream := lstmArquivo;
   cxPropertiesStore1.StoreTo;
   lstmArquivo.Free;
   {
     lpDados.WriteInteger('CONF_TELAINICIAL','MesCorrente',cmbMes.ItemIndex);
     lpDados.WriteInteger('CONF_TELAINICIAL','AnoCorrente',cmbano.ItemIndex);
     lpDados.WriteInteger('CONF_TELAINICIAL','TipoGrafico',CmbTipoGrafico.ItemIndex);
     lpDados.Writefloat('CONF_TELAINICIAL','TopDespesas',spntop.Value);
     }
end;

procedure TFrmPrincipal.QryDespTipoPagamentoAfterOpen(DataSet: TDataSet);
Var
   licont: Integer;
begin
   for licont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[licont - 1].DataType = ftFloat Then
         TFloatField(DataSet.Fields[licont - 1]).DisplayFormat := '0.00';
   end;
end;

procedure TFrmPrincipal.QryDespTipoPagamentoAfterScroll(DataSet: TDataSet);
begin
   QryCadDespesas.Close;
   QryCadDespesas.SQL.Text := 'Select day(Data_Lancamento)  as Dia, ' + '       month(Data_Lancamento) as Mes, ' +
      '       Year(Data_Lancamento)  as Ano, ' + '       Desp.Pago,  ' + '       Desp.Sequencia,Desp.Data_Lancamento,Conta.Descricao, ' +
      '       Desp.Cod_TipoDespesa,Desp.Cod_Contacorrente, Desp.D_C, Tipo.Descricao as Operacao,' +
      'Desp.Valor, Desp.Historico,Desp.Data_Vencimento,Desp.Cod_TipoPagamento ' +
      'From T_Despesas Desp, T_ContaCorrente Conta, T_TipoDespesas Tipo ' +
      'where Conta.Codigo=Desp.Cod_Contacorrente and ' + '      tipo.codigo=Desp.Cod_TipoDespesa ';
   QryCadDespesas.SQL.add('and Desp.Cod_ContaCorrente=:ParCod_ContaCorrente ');
   QryCadDespesas.SQL.add('and month(Desp.Data_Lancamento)=:ParMes ');
   QryCadDespesas.SQL.add('and Year(Desp.Data_Lancamento)=:ParAno ');
   QryCadDespesas.SQL.add('Order by Data_Lancamento ');

   QryCadDespesas.Parameters.ParamValues['ParCod_ContaCorrente'] := QryDespTipoPagamento.FieldByName('Codigo').AsString;
   QryCadDespesas.Parameters.ParamValues['ParMes'] := intToStr(cmbMes.ItemIndex);
   QryCadDespesas.Parameters.ParamValues['ParAno'] := cmbano.Text;
   QryCadDespesas.Open;

end;

procedure TFrmPrincipal.qryDetalheTerceirosAfterOpen(DataSet: TDataSet);
var
   licont: Integer;
begin
   for licont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[licont - 1].DataType = ftFloat Then
         TFloatField(DataSet.Fields[licont - 1]).DisplayFormat := '0.00';
   end;
end;

procedure TFrmPrincipal.qryTerceirosAfterOpen(DataSet: TDataSet);
var
   licont: Integer;
begin
   for licont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[licont - 1].DataType = ftFloat Then
         TFloatField(DataSet.Fields[licont - 1]).DisplayFormat := '0.00';
   end;
end;

procedure TFrmPrincipal.qryTerceirosAfterScroll(DataSet: TDataSet);
begin
   qryDetalheTerceiros.Close;
   qryDetalheTerceiros.SQL.Text := 'Select day(Data_Lancamento)  as Dia, ' + '       month(Data_Lancamento) as Mes, ' +
      '              Year(Data_Lancamento)  as Ano, ' + '       Desp.Pago,  ' + '       Desp.Sequencia,Desp.Data_Lancamento, Conta.Descricao, ' +
      '       Desp.Cod_TipoDespesa,Desp.Cod_Contacorrente, Desp.D_C, Tipo.Descricao as Operacao,' +
      'Desp.Valor, Desp.Historico,Desp.Data_Vencimento,Desp.Cod_TipoPagamento ' +
      'From T_Despesas Desp, T_ContaCorrente Conta, T_TipoDespesas Tipo ' +
      'where Conta.Codigo=Desp.Cod_Contacorrente and D_C=:parD_C and ' +
      '      tipo.codigo=Desp.Cod_TipoDespesa and Cod_TipoPagamento=:parCod_TipoPagamento';
   qryDetalheTerceiros.SQL.add('and month(Desp.Data_Lancamento)=:ParMes ');
   qryDetalheTerceiros.SQL.add('and Year(Desp.Data_Lancamento)=:ParAno ');
   qryDetalheTerceiros.SQL.add('Order by Data_Lancamento ');
   qryDetalheTerceiros.Parameters.ParamValues['ParCod_TipoPagamento'] := qryTerceiros.FieldByName('Codigo').AsString;
   qryDetalheTerceiros.Parameters.ParamValues['ParMes'] := intToStr(cmbMes.ItemIndex);
   qryDetalheTerceiros.Parameters.ParamValues['ParAno'] := cmbano.Text;
   qryDetalheTerceiros.Parameters.ParamValues['ParD_C'] := 'V';
   qryDetalheTerceiros.Open;
end;

procedure TFrmPrincipal.QryCadDespesasAfterOpen(DataSet: TDataSet);
var
   licont: Integer;
begin
   for licont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[licont - 1].DataType = ftFloat Then
         TFloatField(DataSet.Fields[licont - 1]).DisplayFormat := '0.00';
   end;
end;

procedure TFrmPrincipal.QryCadDespesasBeforeOpen(DataSet: TDataSet);
begin
   CriarCalculado(DataSet, 'Nome_Status', ftString, 15);
   CriarCalculado(DataSet, 'Nome_Credor', ftString, 30);
   CriarCalculado(DataSet, 'Nome_Pago', ftString, 3);
end;

procedure TFrmPrincipal.QryCadDespesasCalcFields(DataSet: TDataSet);
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
      If qryCadCredores.locate('Codigo', QryCadDespesas.FieldByName('Cod_TipoPagamento').AsString, []) Then
         QryCadDespesas.FieldByName('Nome_Credor').AsString := Copy(qryCadCredores.FieldByName('Descricao').AsString, 1, 30);
   End;
   if QryCadDespesas.FieldByName('Pago').AsString = 'S' Then
      QryCadDespesas.FieldByName('Nome_Pago').AsString := 'Sim'
   Else
      QryCadDespesas.FieldByName('Nome_Pago').AsString := 'Não'

end;

procedure TFrmPrincipal.ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
begin
   {
     ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
     pviLinha := 06;
     pviLinha:=Pvilinha+1;
     TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao ');
     pviLinha:=Pvilinha+1;
     TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
     pviLinha:=Pvilinha+1;
     }
end;

procedure TFrmPrincipal.actUti_ManutencaoExecute(Sender: TObject);
begin
   FrmSQL := TFrmSql.Create(Self);
   FrmSQL.Showmodal;
end;

procedure TFrmPrincipal.PlanodeContas1Click(Sender: TObject);
begin
   FrmCadTipoDespesa := TFrmCadTipoDespesa.Create(Self);
   FrmCadTipoDespesa.Showmodal;
end;

procedure TFrmPrincipal.ComparativoporPeriodo1Click(Sender: TObject);
begin
   frmAnaliseGrafica := TfrmAnaliseGrafica.Create(Self);
   frmAnaliseGrafica.Showmodal;
   FreeAndNil(frmAnaliseGrafica);
end;

procedure TFrmPrincipal.ContaCorrente1Click(Sender: TObject);
begin
   frmCadTipoPagamento := TfrmCadTipoPagamento.Create(Self);
   frmCadTipoPagamento.Showmodal;
end;

procedure TFrmPrincipal.Credores1Click(Sender: TObject);
begin
   frmCadCredores := TfrmCadCredores.Create(Self);
   frmCadCredores.Showmodal;
end;

procedure TFrmPrincipal.GridTerceirosCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
   var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Values[Colum_Pago.Index] = 'S' Then
      ACanvas.Brush.color := $00B5FBAA;
end;

procedure TFrmPrincipal.Grid_DespesasCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
   if AViewInfo.GridRecord.Values[Column_Conferido.Index] = 'S' Then
      ACanvas.Brush.color := $009BF7B7;
end;

procedure TFrmPrincipal.ipoPagamento1Click(Sender: TObject);
begin
   frmCadTipoPagamento.Showmodal;
end;

procedure TFrmPrincipal.PlanodeContas2Click(Sender: TObject);
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
     qryRelatorio.SQL.Text :='Select * from T_tipoDespesas '+
     'Order by Codigo';

     qryRelatorio.Open;
     while not qryRelatorio.Eof Do
     Begin
     if Copy(qryRelatorio.fieldByname('codigo').asString,3,2)='00' then
     impmatricial.Imp(pvilinha,001,qryRelatorio.fieldByname('codigo').asString+'-'+
     qryRelatorio.fieldByname('Descricao').asString )
     Else
     impmatricial.Imp(pvilinha,004,qryRelatorio.fieldByname('codigo').asString+'-'+
     qryRelatorio.fieldByname('Descricao').asString );
     if pvilinha >= 60 Then
     impmatricial.Novapagina;

     pvilinha := pvilinha+1;
     qryRelatorio.Next;
     End;

     ImpMatricial.Fechar;
     }
end;

procedure TFrmPrincipal.Prioridades1Click(Sender: TObject);
begin
   frmCadPrioridades := TfrmCadPrioridades.Create(Self);
   frmCadPrioridades.Showmodal;
end;

procedure TFrmPrincipal.LocalizarBanco1Click(Sender: TObject);
Var
   ldlgTemp: TOpenDialog;
   LsPath: String;
begin
   ldlgTemp := TOpenDialog.Create(Self);
   ldlgTemp.Filter := 'Banco de Dados Access|*.MDB';
   If Not ldlgTemp.Execute Then
   Begin
      FreeAndNil(ldlgTemp);
      Exit;
   End;
   LsPath := ldlgTemp.FileName;
   Try
      AdoPrincipal.Close;
      AdoPrincipal.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;' + 'Data Source=' + LsPath + ';' + 'Persist Security Info=False';
      AdoPrincipal.LoginPrompt := False;
      AdoPrincipal.Open;
      lpDados.WriteString('ADM', 'CaminhoBase', AdoPrincipal.ConnectionString);
   Except
      On E: Exception Do
      Begin
         MessageDlg('Não foi possível abrir o Banco de Dados ADO!!!' + E.Message, mtError, [mbOk], 0);
         Exit;
      End;
   End;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
   application.Terminate;
end;

procedure TFrmPrincipal.CarregaroutroSkin1Click(Sender: TObject);
var
   Ext: String;
begin
   OD.Skindata := Skindata;
   if OD.Execute then
   begin
      Ext := ExtractFileExt(OD.FileName);
      if LowerCase(Ext) = '.ini' then
         PagSkinData.LoadFromFile(OD.FileName)
      else if LowerCase(Ext) = '.skn' then
         PagSkinData.LoadFromCompressedFile(OD.FileName);
      lpDados.WriteString('ADM', 'PagSkinPadrao', OD.FileName);
   end;
end;

procedure TFrmPrincipal.CarregarSkins1Click(Sender: TObject);
var
   Ext: String;
begin
   OD.Skindata := Skindata;
   if OD.Execute then
   begin
      Ext := ExtractFileExt(OD.FileName);
      if LowerCase(Ext) = '.ini' then
         Skindata.LoadFromFile(OD.FileName)
      else if LowerCase(Ext) = '.skn' then
         Skindata.LoadFromCompressedFile(OD.FileName);
      lpDados.WriteString('ADM', 'SkinPadrao', OD.FileName);
   end;
end;

procedure TFrmPrincipal.Despesas1Click(Sender: TObject);
begin
   frmCaddespesas := TfrmCaddespesas.Create(Self);
   frmCaddespesas.Showmodal;
   FreeAndNil(frmCaddespesas);
end;

procedure TFrmPrincipal.ManutencaodoBanco1Click(Sender: TObject);
begin
   FrmSQL := TFrmSql.Create(Self);
   FrmSQL.Showmodal;
end;

procedure TFrmPrincipal.NovoMenu1Click(Sender: TObject);
begin
   frmnovomenu := Tfrmnovomenu.Create(Self);
   frmnovomenu.Showmodal;
end;

procedure TFrmPrincipal.PagGeralAnaliseChange(Sender: TObject);
begin
   btnAtualizarClick(btnAtualizar);
end;

Procedure TFrmPrincipal.paggraficoChange(Sender: TObject);
var
   lrVlr_Total: Double;
   licont: Integer;
   lsConta: String;
   lsGrupo: String;
begin
   Case paggrafico.activepageIndex Of
      0:
         Begin
            {$REGION 'Grafico Principal das despeas'}
            pnlopcoes.visible := False;
            pnlOpcoesGrafico.visible := True;
            qryResumo.Close;
            qryResumo.SQL.Text := 'Select top ' + spntop.Text + ' Max(Conta.Descricao)as Descricao, ' +
               'Sum(Desp.Valor) As Total, Max(Conta.Codigo) as Codigo, Max(Historico) as Historico ' +
               'From T_Despesas Desp, T_TipoDespesas Conta where Conta.Codigo=Desp.Cod_TipoDespesa And D_C=:parD_C AND ' +
               'Conta.SomaDespesa=:parSomaDespesa  ';
            qryResumo.SQL.add('and month(Desp.Data_Lancamento)=:ParMes ');
            qryResumo.SQL.add('and Year(Desp.Data_Lancamento)=:ParAno ');
            qryResumo.SQL.add('Group By Conta.Descricao order by 2 desc ');

            qryResumo.Parameters.ParamValues['ParMes'] := intToStr(cmbMes.ItemIndex);
            qryResumo.Parameters.ParamValues['ParAno'] := cmbano.Text;
            qryResumo.Parameters.ParamValues['ParD_C'] := 'D';
            qryResumo.Parameters.ParamValues['ParSomaDespesa'] := 'S';
            qryResumo.Open;

            if chkTipoGrafico.Checked Then
            Begin
               lrVlr_Total := 0;
               lsGrupo := Copy(qryResumo.FieldByName('Codigo').AsString, 1, 2);
               for licont := 1 To ChtGraficos.SeriesCount do
               begin
                  ChtGraficos.Series[licont - 1].Active := False;
                  ChtGraficos.Series[licont - 1].Clear;
               end;

               While not qryResumo.Eof do
               Begin
                  if lsGrupo <> Copy(qryResumo.FieldByName('Codigo').AsString, 1, 2) Then
                  Begin
                     qryCadContas.Close;
                     qryCadContas.SQL.Text := 'Select Descricao From T_tipoDespesas where Codigo=:parCodigo ';
                     qryCadContas.Parameters.ParamValues['parcodigo'] := lsConta;
                     qryCadContas.Open;
                     ChtGraficos.Series[CmbTipoGrafico.ItemIndex].AddY(lrVlr_Total, Copy(qryCadContas.FieldByName('Descricao').AsString, 1, 30));
                     lsGrupo := Copy(qryResumo.FieldByName('Codigo').AsString, 1, 2);
                     lrVlr_Total := 0;
                  end;
                  lrVlr_Total := lrVlr_Total + qryResumo.FieldByName('Total').AsFloat;
                  lsConta := Copy(qryResumo.FieldByName('Codigo').AsString, 1, 2) + '00';
                  qryResumo.Next;
               End;
            End
            Else
            Begin
               for licont := 1 To ChtGraficos.SeriesCount do
               begin
                  ChtGraficos.Series[licont - 1].Active := False;
                  ChtGraficos.Series[licont - 1].Clear;
               end;
               while not qryResumo.Eof do
               Begin
                  ChtGraficos.Series[CmbTipoGrafico.ItemIndex].AddY(qryResumo.FieldByName('Total').AsFloat,
                     Copy(qryResumo.FieldByName('Descricao').AsString, 1, 20));
                  qryResumo.Next;
               End;
            End;
            ChtGraficos.Series[CmbTipoGrafico.ItemIndex].Active := true;
            {$ENDREGION}
         End;
      1:
         Begin
            {$REGION 'Grafico por tipo de pagamento'}
            pnlopcoes.visible := False;
            pnlOpcoesGrafico.visible := True;
            QryDespTipoPagamento.Close;
            QryDespTipoPagamento.SQL.Text := 'Select Tpg.Descricao, Min(pago) as Pago, ' + '             Sum(Desp.Valor) As Total, ' +
               '             Max(Tpg.Codigo) as Codigo,  ' + '             Max(tpg.exiberesumo) as Soma ' +
               'From T_Despesas Desp, T_ContaCorrente Tpg  ' + 'where Tpg.codigo=Desp.Cod_ContaCorrente and ' + '      D_C=:parD_C and ' +
               '      tpg.exiberesumo=:parExiberesumo ';
            if chkSomaDebitosAbertos.Checked Then
               QryDespTipoPagamento.SQL.add('and Desp.Pago=:ParPago ');
            QryDespTipoPagamento.SQL.add('and month(Desp.Data_Lancamento)=:ParMes ');
            QryDespTipoPagamento.SQL.add('and Year(Desp.Data_Lancamento)=:ParAno ');
            QryDespTipoPagamento.SQL.add('Group By Tpg.Descricao order by 3 desc ');

            QryDespTipoPagamento.Parameters.ParamValues['ParMes'] := intToStr(cmbMes.ItemIndex);
            QryDespTipoPagamento.Parameters.ParamValues['ParAno'] := cmbano.Text;
            QryDespTipoPagamento.Parameters.ParamValues['ParD_C'] := 'D';
            QryDespTipoPagamento.Parameters.ParamValues['parExiberesumo'] := 'S';
            if chkSomaDebitosAbertos.Checked Then
               QryDespTipoPagamento.Parameters.ParamValues['ParPago'] := 'N';
            QryDespTipoPagamento.Open;

            For licont := 1 To charttipoPagamento.SeriesCount do
            begin
               charttipoPagamento.Series[licont - 1].Active := False;
               charttipoPagamento.Series[licont - 1].Clear;
            end;

            lrVlr_Total := 0;
            while not QryDespTipoPagamento.Eof do
            Begin
               charttipoPagamento.Series[CmbTipoGrafico.ItemIndex].AddY(QryDespTipoPagamento.FieldByName('Total').AsFloat,
                  Copy(QryDespTipoPagamento.FieldByName('Descricao').AsString, 1, 13));
               lrVlr_Total := lrVlr_Total + QryDespTipoPagamento.FieldByName('Total').AsFloat;
               QryDespTipoPagamento.Next;
            End;
            charttipoPagamento.Series[CmbTipoGrafico.ItemIndex].Active := true;
            {$ENDREGION}
         End;
      2:
         Begin
            {$REGION 'Resumo Analitico'}
            pnlopcoes.visible        := True;
            pnlOpcoesGrafico.visible := False;
            QryDespTipoPagamento.Close;
            QryDespTipoPagamento.SQL.Text := 'Select Tpg.Descricao, ' +
                                             '       Min(pago) as Pago, ' +
                                             '       Min(Desp.Conferido) as Conferido, ' +
               '             Sum(Desp.Valor) As Total, ' + '             Max(Tpg.Codigo) as Codigo,  ' +
               '             Max(tpg.exiberesumo) as Soma ' + 'From T_Despesas Desp, T_ContaCorrente Tpg  ' +
               'where Tpg.codigo=Desp.Cod_ContaCorrente and ' + '      D_C=:parD_C and ' + '      tpg.exiberesumo=:parExiberesumo ';
            if chkSomaDebitosAbertos.Checked Then
               QryDespTipoPagamento.SQL.add('and Desp.Pago=:ParPago ');
            QryDespTipoPagamento.SQL.add('and month(Desp.Data_Lancamento)=:ParMes ');
            QryDespTipoPagamento.SQL.add('and Year(Desp.Data_Lancamento)=:ParAno ');
            QryDespTipoPagamento.SQL.add('Group By Tpg.Descricao order by 3 desc ');

            QryDespTipoPagamento.Parameters.ParamValues['ParMes'] := intToStr(cmbMes.ItemIndex);
            QryDespTipoPagamento.Parameters.ParamValues['ParAno'] := cmbano.Text;
            QryDespTipoPagamento.Parameters.ParamValues['ParD_C'] := 'D';
            QryDespTipoPagamento.Parameters.ParamValues['parExiberesumo'] := 'S';
            if chkSomaDebitosAbertos.Checked Then
               QryDespTipoPagamento.Parameters.ParamValues['ParPago'] := 'N';
            QryDespTipoPagamento.Open;
            {$ENDREGION}
         End;
   End;

end;

procedure TFrmPrincipal.deConta1Click(Sender: TObject);
begin
   frmrelExtrato := TfrmRelExtrato.Create(Self);
   frmrelExtrato.Showmodal;
end;

procedure TFrmPrincipal.ImportarExtrato1Click(Sender: TObject);
begin
   frmImportaExtrato := TfrmImportaExtrato.Create(Self);
   frmImportaExtrato.Showmodal;
end;

procedure TFrmPrincipal.BalanceteClick(Sender: TObject);
begin
   frmselrelBalancete := TfrmselrelBalancete.Create(Self);
   frmselrelBalancete.Showmodal
end;

procedure TFrmPrincipal.FechamentoDoMes1Click(Sender: TObject);
begin
   frmfechames := Tfrmfechames.Create(Self);
   frmfechames.Showmodal;
end;

end.
