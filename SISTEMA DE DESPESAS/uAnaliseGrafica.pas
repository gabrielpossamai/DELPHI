unit uAnaliseGrafica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  bsSkinBoxCtrls, StdCtrls, DB, ADODB, Mask, cxPropertiesStore;

type
  TfrmAnaliseGrafica = class(TForm)
    ChtGraficos: TChart;
    bsSkinStatusBar1: TbsSkinStatusBar;
    Series1: TBarSeries;
    QryGrafico: TADOQuery;
    qryCadContas: TADOQuery;
    Series2: TPieSeries;
    bsSkinExPanel1: TbsSkinExPanel;
    BtnAtualizar: TbsSkinSpeedButton;
    bsSkinGroupBox1: TbsSkinGroupBox;
    lbl01: TbsSkinStdLabel;
    cmbano: TbsSkinComboBox;
    cmbMes: TbsSkinComboBox;
    dtpData_Ini: TbsSkinDateEdit;
    lblTurma: TbsSkinStdLabel;
    dtpData_Fim: TbsSkinDateEdit;
    cmbPeriodo: TbsSkinComboBox;
    bsSkinGroupBox2: TbsSkinGroupBox;
    CmbTipoGrafico: TbsSkinComboBox;
    Series3: TFastLineSeries;
    cxPropertiesStore1: TcxPropertiesStore;
    CmbTipoAnalise: TbsSkinComboBox;
    lblParcelas: TbsSkinStdLabel;
    edtQtdeParcelas: TbsSkinSpinEdit;
    chkMostraLegenda: TbsSkinCheckRadioBox;
    infoGrafico: TbsSkinExPanel;
    MemoInfo: TbsSkinMemo;
    Series4: TFastLineSeries;
    Series5: TFastLineSeries;
    procedure BtnAtualizarClick(Sender: TObject);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CmbTipoAnaliseChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure InativaGraficos;
    { Private declarations }
  public
    { Public declarations }
    function RetornarDadosDoGrafico( liTipoDoGrafico : Integer ) : TAdoQuery;
  end;

var
  frmAnaliseGrafica: TfrmAnaliseGrafica;

implementation

uses uprincipal,ufuncoes;

{$R *.dfm}

procedure TfrmAnaliseGrafica.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo( TbsSkinDateEdit(dtpData_Ini), TbsSkinDateEdit( dtpData_Fim), cmbPeriodo.ItemIndex, Now );
end;

procedure TfrmAnaliseGrafica.CmbTipoAnaliseChange(Sender: TObject);
begin

   case CmbTipoAnalise.itemindex of
      0 :
      Begin
         lblParcelas.Visible     := False;
         edtQtdeParcelas.visible := False;
      End;
      1,2 :
      Begin
        lblParcelas.Visible     := True;
        edtQtdeParcelas.visible := True;
        edtQtdeParcelas.value   := 10;
      End;
   end;
end;

procedure TfrmAnaliseGrafica.FormClose(Sender: TObject;
  var Action: TCloseAction);
 var  lstmArquivo: TFileStream;
begin
   lstmArquivo := TFileStream.Create(gspath + '\Config\Config_' + TForm(Sender).name, fmCreate);
   cxPropertiesStore1.StorageStream := lstmArquivo;
   cxPropertiesStore1.StoreTo;
   lstmArquivo.Free;

end;

procedure TfrmAnaliseGrafica.FormShow(Sender: TObject);
var lstmArquivo: TFileStream;
begin
   cmbPeriodoChange(cmbPeriodo);
   if FileExists(gspath + '\Config\Config_' + TForm(Sender).name) then
   Begin
      lstmArquivo := TFileStream.Create(gspath + '\Config\Config_' + TForm(Sender).name, fmOpenRead);
      cxPropertiesStore1.StorageStream := lstmArquivo;
      cxPropertiesStore1.RestoreFrom;
      lstmArquivo.Free;
   End;
   cmbPeriodoChange(cmbPeriodo);
   CmbTipoAnaliseChange(CmbTipoAnalise);
end;

function TfrmAnaliseGrafica.RetornarDadosDoGrafico( liTipoDoGrafico : Integer ) : TAdoQuery ;
var
  lsGroupBy : string;
  lsSelect  : string;
  lsOrder   : string;
  lsFiltro  : string;
  lqryTemp  : TAdoQuery;
begin

   lsGroupBy := 'Group by month(Data_Lancamento)';
   lsSelect  := 'month(Data_Lancamento) as mes, Sum(Desp.Valor) as Total ';
   lsOrder   := 'Order by month( Data_Lancamento ) ';

   lqryTemp  := TAdoQuery.Create(Nil);
   lqryTemp.Connection := FrmPrincipal.AdoPrincipal;

   case CmbTipoAnalise.ItemIndex of
      0 : lsFiltro := '';
      1 :
      begin
         lsFiltro :=  'nr_Parcela<=:parNR_Parcela AND nr_Parcela<>:parNR_Parcela2 AND ';
         lsSelect  := 'Month(Data_Lancamento) as Mes, Sum(Desp.Valor) as Total, Count( Month(Data_Lancamento) ) As TotQtdeMes ';
      end;
      2 :
      Begin
         lsSelect  := 'Historico as mes, Desp.Valor as Total ';
         lsFiltro := 'nr_Parcela<=:parNR_Parcela AND nr_Parcela<>:parNR_Parcela2 AND Month(Data_Lancamento)=:parData_Lancamento AND ';
         lsGroupBy := '';
         lsOrder   := 'Order by 2 Desc';
      End;
   end;

   lqryTemp.close;
   lqryTemp.SQL.Text :='Select '+lsSelect+' '+
                           'from T_Despesas Desp, T_ContaCorrente Tpg '+
                           'where Desp.Data_Lancamento>=:pardata_Ini and '+
                           '      Desp.Data_Lancamento<=:ParData_Fim and  '+lsFiltro+' '+
                           '      Desp.D_C=:parD_C and Tpg.codigo=Desp.Cod_ContaCorrente and  tpg.exiberesumo=:parExiberesumo '+
                           ' '+lsGroupBy+' '+
                           ' '+lsOrder;
   lqryTemp.Parameters.ParamValues['parData_Ini']          := Strtodate(dtpData_Ini.text);
   lqryTemp.Parameters.ParamValues['parData_Fim']          := Strtodate(dtpData_Fim.text);
   lqryTemp.Parameters.ParamValues['parD_C']               := 'D';
   lqryTemp.Parameters.ParamValues['parExiberesumo']       := 'S';


   case CmbTipoAnalise.ItemIndex of
      1 :
      Begin
         lqryTemp.Parameters.ParamValues['parNR_Parcela']   := edtQtdeParcelas.value;
         lqryTemp.Parameters.ParamValues['parNR_Parcela2']  := 1;
      End;
      2 :
      Begin
         lqryTemp.Parameters.ParamValues['parData_Lancamento'] := intToStr(cmbMes.ItemIndex);
         lqryTemp.Parameters.ParamValues['parNR_Parcela']      := edtQtdeParcelas.value;
         lqryTemp.Parameters.ParamValues['parNR_Parcela2']     := 1;
      End;
   end;

   lqryTemp.Open;

   Result  := lqryTemp;
end;

procedure TfrmAnaliseGrafica.InativaGraficos;
var
  liconta: Integer;
begin
  for liConta := 1 to ChtGraficos.SeriesCount do
  begin
    ChtGraficos.Series[Liconta - 1].Active := False;
    ChtGraficos.Series[Liconta - 1].Clear;
  end;
end;

procedure TfrmAnaliseGrafica.BtnAtualizarClick(Sender: TObject);
var lsGrupo  : String;
    lsConta  : String;
    lrTotal  : Double;
    lsFiltro  : String;
    lsGroupBy : String;
    lsSelect  : String;
    lsOrder   : String;
begin
   MemoInfo.clear;
   ChtGraficos.Legend.Visible := chkMostraLegenda.Checked;
   lrtotal := 0;

   InativaGraficos;
   ChtGraficos.Series[CmbTipoGrafico.ItemIndex].Active :=True;

   qryGrafico                 := RetornarDadosDoGrafico(CmbTipoAnalise.ItemIndex);
   While not qryGrafico.Eof do
   Begin
      lrtotal   := lrtotal + qryGrafico.FieldByname('Total').AsFloat;
      qryGrafico.Next;
   End;

   qryGrafico.first;
   While not qryGrafico.Eof do
   Begin
      case CmbTipoAnalise.itemIndex of
         1 :
        begin
           ChtGraficos.Series[3].Active :=True;
           ChtGraficos.Series[4].Active :=True;
           ChtGraficos.Series[3].AddY( (lrTotal/12), qryGrafico.FieldByname( 'Mes' ).AsString );
           ChtGraficos.Series[4].AddY(qryGrafico.FieldByname('Total').AsFloat,  ( qryGrafico.FieldByname( 'Mes' ).AsString ));
        end;
         0,2:ChtGraficos.Series[CmbTipoGrafico.ItemIndex].AddY(qryGrafico.FieldByname('Total').AsFloat,  ( qryGrafico.FieldByname( 'Mes' ).AsString ));
      end;
      qryGrafico.Next;
   end;

   if CmbTipoAnalise.itemIndex = 1 then
   Begin
      MemoInfo.Lines.add('Total das Despesas '+ Formatfloat(',0.00',lrtotal));
      MemoInfo.Lines.add('Valor Medio por despesa '+ Formatfloat(',0.00',(lrtotal/qryGrafico.RecordCount)));
   End;

   if CmbTipoAnalise.ItemIndex = 2 then
   Begin
      MemoInfo.Lines.add('Valor Medio por despesa '+ Formatfloat(',0.00',(lrtotal/qryGrafico.RecordCount)));
      MemoInfo.Lines.add('Numero de Despesas '+ IntToStr(qryGrafico.RecordCount));
   End;

   //ChtGraficos.Series[4].AddY(qryGrafico.FieldByname('TotQtdeMes').AsFloat,  ( qryGrafico.FieldByname( 'Mes' ).AsString ));
   ChtGraficos.Title.Text[0] := CmbTipoAnalise.Text;
end;

end.
