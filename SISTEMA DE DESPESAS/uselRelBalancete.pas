unit uselRelBalancete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin,  DB, ADODB, DBCtrls, StdCtrls,
  EditNew, ExtCtrls, DBClient, BusinessSkinForm, bsSkinGrids, bsDBGrids,
  Mask, bsSkinBoxCtrls, bsSkinCtrls;

type
  TfrmselrelBalancete = class(TForm)
    Panel1: TPanel;
    qryCadtipoDespesa: TADOQuery;
    srcCadCodtasCorrente: TDataSource;
    qryRelatorio: TADOQuery;
    bsSkinGroupBox1: TbsSkinGroupBox;
    lblTurma: TbsSkinStdLabel;
    dtpData_Fim: TbsSkinDateEdit;
    dtpData_Ini: TbsSkinDateEdit;
    edtData_Ini: TEditN;
    edtData_fim: TEditN;
    cmbSelData: TComboBox;
    dbgSelecao: TbsSkinDBGrid;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    cdsBalancete: TClientDataSet;
    DataSource1: TDataSource;
    bsSkinScrollBar1: TbsSkinScrollBar;
    bsSkinScrollBar2: TbsSkinScrollBar;
    cdsBalanceteCodigo: TStringField;
    cdsBalanceteDescricao: TStringField;
    cdsBalanceteTotal: TFloatField;
    cdsBalanceteMeta: TFloatField;
    cdsBalanceteDiferenca: TFloatField;
    bsSkinCoolBar3: TbsSkinCoolBar;
    bsSkinToolBar3: TbsSkinToolBar;
    bsSkinBevel4: TbsSkinBevel;
    BtnFechar: TbsSkinSpeedButton;
    btnAtualizar: TbsSkinSpeedButton;
    procedure cmbVenctoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BotaoFecharClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure edtData_IniExit(Sender: TObject);
    procedure edtData_fimExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure dbgSelecaoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TbsColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    pvilinha : Integer;
    { Public declarations }
  end;

var
  frmselrelBalancete: TfrmselrelBalancete;

implementation


uses uprincipal,ufuncoes;
{$R *.dfm}

procedure TfrmselrelBalancete.cmbVenctoChange(Sender: TObject);
begin
   ListaPeriodo( TbsSkinDateEdit( edtData_Ini ),TbsSkinDateEdit( edtData_fim), cmbSelData.ItemIndex, Now );
   edtData_IniExit( Self );
   edtData_fimExit( Self );
end;

procedure TfrmselrelBalancete.FormShow(Sender: TObject);
begin
   ListaPeriodo( TbsSkinDateEdit( edtData_Ini ), TbsSkinDateEdit( edtData_fim), cmbSelData.ItemIndex, Now );
   edtData_IniExit( Self );
   edtData_fimExit( Self );
   qryCadtipoDespesa.SQL.Text :=' Select Codigo,Descricao From T_tipoDespesas ';
   qryCadtipoDespesa.Open;
   cmbSelData.SetFocus;

end;

procedure TfrmselrelBalancete.BotaoFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmselrelBalancete.btnAtualizarClick(Sender: TObject);
var  lsCodConta  : String;
     lsInicio    : String;
     lsDescricao : String;
     lrtotal     : Real;
     lrMetaTotal : Real;
     lrtotGeral  : Real;
     lrMetaGeral : Real;
     lrDifGeral  : Real;
begin
   qryRelatorio.close;
   qryRelatorio.SQL.Text :='Select Desp.Cod_TipoDespesa, max(Tipo.Descricao) as Descricao,'+
                           '       Sum(Desp.Valor) as Total, '+
                           '       Max(Tipo.Meta ) as Meta '+
                           'from T_Despesas Desp, T_TipoDespesas tipo '+
                           'where Desp.Data_Lancamento>=:pardata_Ini and '+
                           '      Desp.Data_Lancamento<=:ParData_Fim and  '+
                           '      Desp.D_C=:parD_C and Tipo.Codigo=Desp.Cod_tipoDespesa '+
                           'Group by Cod_TipoDespesa '+
                           'Order by Cod_TipoDespesa ';
   qryRelatorio.Parameters.ParamValues['parData_Ini']          := Strtodate(dtpData_Ini.text);
   qryRelatorio.Parameters.ParamValues['parData_Fim']          := Strtodate(dtpData_Fim.text);
   qryRelatorio.Parameters.ParamValues['parD_C']               := 'D';
   qryRelatorio.Open;

   lsCodConta   := Copy(qryRelatorio.FieldByname('Cod_TipoDespesa').AsString,1,2)+'00';

   cdsBalancete.EmptyDataSet;

   lrtotal     := 0;
   lrMetaTotal := 0;
   lrtotGeral  := 0;
   lrMetaGeral := 0;
   lrDifGeral  := 0;

   While not qryRelatorio.Eof do
   Begin
      if lsInicio<>Copy(qryRelatorio.FieldByname('Cod_TipoDespesa').AsString,1,2) Then
      Begin
         if lsCodConta<>'0100' Then
         Begin
            If cdsBalancete.Locate('Codigo',lsInicio+'00',[]) then
            Begin
               cdsBalancete.Edit;
               cdsBalancete.FieldByname('Total').AsFloat       := lrtotal;
               cdsBalancete.FieldByname('Meta').AsFloat        := lrMetaTotal;
               cdsBalancete.FieldByname('diferenca').AsFloat   := (lrMetaTotal - lrtotal);
               cdsBalancete.Post;
            End;
            lrTotal     := 0;
            lrMetaTotal := 0;
         End;
         lsDescricao := 'Descricao não localizada';
         if qryCadtipoDespesa.Locate('Codigo',lscodConta,[]) then
            lsDescricao := qryCadtipoDespesa.FieldByname('Descricao').AsString;
         cdsBalancete.append;
         cdsBalancete.FieldByname('Codigo').AsString     := lscodConta;
         cdsBalancete.FieldByname('Descricao').AsString  := lsDescricao;
         cdsBalancete.FieldByname('Total').AsFloat       := 0;
         cdsBalancete.Post;
         lsInicio  := Copy(qryRelatorio.FieldByname('Cod_TipoDespesa').AsString,1,2);
      end;
      cdsBalancete.append;
      cdsBalancete.FieldByname('Codigo').AsString     := qryRelatorio.FieldByname('Cod_TipoDespesa').AsString;
      cdsBalancete.FieldByname('Descricao').AsString  := qryRelatorio.FieldByname('Descricao').AsString;
      cdsBalancete.FieldByname('Total').AsFloat       := qryRelatorio.FieldByname('Total').AsFloat;
      cdsBalancete.FieldByname('Meta').AsFloat        := qryRelatorio.FieldByname('Meta').AsFloat;
      cdsBalancete.FieldByname('diferenca').AsFloat   := (qryRelatorio.FieldByname('Meta').AsFloat - qryRelatorio.FieldByname('Total').AsFloat );
      cdsBalancete.Post;
      lrtotal     := lrtotal + qryRelatorio.FieldByname('Total').AsFloat;
      lrMetaTotal := lrMetaTotal + qryRelatorio.FieldByname('Meta').AsFloat;

      lrtotGeral  := lrtotGeral + qryRelatorio.FieldByname('Total').AsFloat;
      lrMetaGeral := lrMetaGeral + qryRelatorio.FieldByname('Meta').AsFloat;
      lrDifGeral  := lrDifGeral  + (qryRelatorio.FieldByname('Meta').AsFloat-qryRelatorio.FieldByname('Total').AsFloat);

      qryRelatorio.Next;
      lsCodConta   := Copy(qryRelatorio.FieldByname('Cod_TipoDespesa').AsString,1,2)+'00';
   End;
   If cdsBalancete.Locate('Codigo',lsInicio+'00',[]) then
   Begin
      cdsBalancete.Edit;
      cdsBalancete.FieldByname('Total').AsFloat       := lrtotal;
      cdsBalancete.FieldByname('Meta').AsFloat        := lrMetaTotal;
      cdsBalancete.FieldByname('diferenca').AsFloat   := (lrMetaTotal - lrtotal);
      cdsBalancete.Post;
   End;
   cdsBalancete.append;
   cdsBalancete.FieldByname('Codigo').AsString     := '9999';
   cdsBalancete.FieldByname('Descricao').AsString  := 'Total Geral....';
   cdsBalancete.FieldByname('Total').AsFloat       := lrtotGeral;
   cdsBalancete.FieldByname('Meta').AsFloat        := lrMetaGeral;
   cdsBalancete.FieldByname('diferenca').AsFloat   := lrDifGeral;
   cdsBalancete.Post;

   cdsBalancete.First;
end;

procedure TfrmselrelBalancete.edtData_IniExit(Sender: TObject);
begin
   Try
      StrToDate( edtData_Ini.Text );
      dtpData_Ini.Date := StrToDate( edtData_Ini.Text );
   Except
      CaixaMensagem( 'A data inicial informada é inválida', ctAviso, [ cbOk ], 0 );
      Try
         edtData_Ini.SetFocus;
      Except
         //
      End;
      Exit;
   End;
end;

procedure TfrmselrelBalancete.edtData_fimExit(Sender: TObject);
begin
   Try
      StrToDate( edtData_Fim.Text );
      dtpData_Fim.Date := StrToDate( edtData_Fim.Text );
   Except
      CaixaMensagem( 'A data final informada é inválida', ctAviso, [ cbOk ], 0 );
      Try
         edtData_Fim.SetFocus;
      Except
         //
      End;
      Exit;
   End;
end;

procedure TfrmselrelBalancete.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmselrelBalancete.dbgSelecaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TbsColumn;
  State: TGridDrawState);
begin
   if gdSelected in State then
      exit;
    if cdsBalancete.FieldByName('Codigo').AsString='9999'  then
       dbgSelecao.Canvas.Brush.Color   := $00F9B984
    Else if Copy(cdsBalancete.FieldByName('Codigo').AsString,3,2)='00'  then
    Begin
       dbgSelecao.Canvas.font.Color    := clBlack;
       dbgSelecao.Canvas.Brush.Color   := $00DDFFFE;
    End
    else if Round(cdsBalancete.FieldByName('Total').Asfloat)<=Round(cdsBalancete.FieldByName('Meta').Asfloat)  then
       dbgSelecao.Canvas.Brush.Color   := $00B7FBD9
    Else if round(cdsBalancete.FieldByName('Total').Asfloat)>Round(cdsBalancete.FieldByName('Meta').Asfloat)  then
       dbgSelecao.Canvas.Brush.Color   := $00A28EFD;

    dbgSelecao.DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

end.
