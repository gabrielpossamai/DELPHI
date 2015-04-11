unit uCadTipoDespesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, StdCtrls, Grids, DBGrids, DB, ADODB, Buttons,
  EditNew, ExtCtrls, BusinessSkinForm, bsSkinCtrls, bsSkinGrids, bsDBGrids,
  bsSkinTabs, Mask, bsSkinBoxCtrls;

type
  TfrmCadTipoDespesa = class(TForm)
    srcCadtipoDespesas: TDataSource;
    QryCadTipoDespesas: TADOQuery;
    QryModific: TADOQuery;
    QryPesquisaDespesas: TADOQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    pagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    pagmanutencao: TbsSkinTabSheet;
    bsSkinPanel3: TbsSkinPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtPesquisa: TEdit;
    dbgConsulta: TbsSkinDBGrid;
    bsSkinStatusBar1: TbsSkinStatusBar;
    bsSkinScrollBar1: TbsSkinScrollBar;
    bsSkinCoolBar3: TbsSkinCoolBar;
    bsSkinToolBar3: TbsSkinToolBar;
    btnincluir: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    btnexcluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    btnFechar: TbsSkinSpeedButton;
    btnCancela: TbsSkinSpeedButton;
    bsSkinExPanel1: TbsSkinExPanel;
    chkSomaDespesa: TbsSkinCheckRadioBox;
    edtmeta: TbsSkinEdit;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    EdtDescricao: TEdit;
    EdtCodigo: TEdit;
    bsSkinStdLabel2: TbsSkinStdLabel;
    procedure FormShow(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BotaoFecharClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure QryCadTipoDespesasAfterOpen(DataSet: TDataSet);
    procedure btnFecharClick(Sender: TObject);
    procedure dbgConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TbsColumn; State: TGridDrawState);
  private
    pvsQualBotao :String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTipoDespesa: TfrmCadTipoDespesa;

implementation
uses uprincipal, ufuncoes;

{$R *.dfm}

procedure TfrmCadTipoDespesa.FormShow(Sender: TObject);
begin
   BtnOk.Enabled      :=False;
   BtnCancela.Enabled :=False;
   BtnIncluir.Enabled :=True;
   BtnAlterar.Enabled :=True;
   BtnExcluir.Enabled :=True;
   PagCadastro.ActivePageIndex := 0;
   QryCadTipoDespesas.close;
   QryCadTipoDespesas.Sql.Text:=' Select * from T_TipoDespesas order by codigo ';
   QryCadTipoDespesas.Open;
end;

procedure TfrmCadTipoDespesa.BtnIncluirClick(Sender: TObject);
begin
   pvsQualBotao:='INCLUIR';
   QryPesquisaDespesas.close;
   QryPesquisaDespesas.SQL.text := 'Select Max(codigo) as Codigo From T_TipoDespesas';
   QryPesquisaDespesas.Open;

   EdtCodigo.Text :=incZero(IntToStr(StrToint( QryPesquisaDespesas.FieldByname('Codigo').asString )+1 ),4);

   QryModific.SQL.Text:= 'Insert Into T_TipoDespesas '+
                         '(Sequencia,Codigo, Descricao,Meta,SomaDespesa) Values '+
                         '(:ParSequencia,:ParCodigo,:ParDescricao,:parMeta,:parSomaDespesa)';
   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   EdtCodigo.SetFocus;
end;

procedure TfrmCadTipoDespesa.BtnAlterarClick(Sender: TObject);
begin
   pvsQualBotao:='ALTERAR';
   QryModific.SQL.Text:= 'Update T_TipoDespesas set Codigo=:ParCodigo,Descricao=:ParDescricao, '+
                         'Meta=:parMeta, SomaDespesa=:parSomaDespesa '+
                         'Where Sequencia=:ParSequencia ';
   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   chkSomaDespesa.Checked := true;
   if QryCadTipoDespesas.fieldByName('SomaDespesa').AsString='N' then
      chkSomaDespesa.Checked := False;
   EdtCodigo.Text     :=QryCadTipoDespesas.fieldByName('Codigo').AsString;
   EdtDescricao.Text  :=QryCadTipoDespesas.fieldByName('Descricao').AsString;
   edtmeta.Text       := formatFloat('0.00',QryCadTipoDespesas.fieldByName('Meta').Asfloat);
   EdtCodigo.SetFocus;
end;

procedure TfrmCadTipoDespesa.BtnOkClick(Sender: TObject);
begin
   QryModific.Parameters.ParamValues['ParSequencia']   := QryCadTipoDespesas.fieldByName('Sequencia').AsString;
   QryModific.Parameters.ParamValues['ParCodigo']      := Edtcodigo.Text;
   QryModific.Parameters.ParamValues['ParDescricao']   := Edtdescricao.Text;
   QryModific.Parameters.ParamValues['ParSomaDespesa'] := 'N';
   if chkSomaDespesa.Checked Then
      QryModific.Parameters.ParamValues['ParSomaDespesa'] := 'S';
   QryModific.Parameters.ParamValues['Parmeta']        := StrTofloat(edtmeta.Text);
   if pvsQualBotao='INCLUIR' then
   Begin
      QryCadTipoDespesas.SQL.Text:=' Select Max(Sequencia) as Ultima from T_TipoDespesas ';
      QryCadTipoDespesas.Open;
      QryModific.Parameters.ParamValues['ParSequencia'] :=incZero(IntToStr((StrToInt(QryCadTipoDespesas.FieldByName('Ultima').AsString)+1)),8)
   End;
   QryModific.ExecSql;

   QryCadTipoDespesas.Close;
   QryCadTipoDespesas.SQL.Text :=' Select * from T_tipoDespesas order by codigo ';
   QryCadTipoDespesas.Open;

   BtnOk.Enabled      :=False;
   BtnCancela.Enabled :=False;
   BtnIncluir.Enabled :=True;
   BtnAlterar.Enabled :=True;
   BtnExcluir.Enabled :=True;
   EdtCodigo.Text     :='';
   EdtDescricao.Text  :='';
   EdtPesquisa.Text  :='';
   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadTipoDespesa.dbgConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TbsColumn;
  State: TGridDrawState);
begin
   if gdSelected in State then
      exit;
    if Copy(QryCadTipoDespesas.FieldByName('Codigo').AsString,3,2)='00'  then
    Begin
       dbgConsulta.Canvas.font.Color    := clBlack;
       dbgConsulta.Canvas.Brush.Color   := $00B7F98A;
    End;

    dbgConsulta.DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure TfrmCadTipoDespesa.BtnCancelaClick(Sender: TObject);
begin
   BtnOk.Enabled      :=False;
   BtnCancela.Enabled :=False;
   BtnIncluir.Enabled :=True;
   BtnAlterar.Enabled :=True;
   BtnExcluir.Enabled :=True;
   EdtCodigo.Text     :='';
   EdtDescricao.Text  :='';
   PagCadastro.ActivePageIndex:=0;
end;

procedure TfrmCadTipoDespesa.BotaoFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmCadTipoDespesa.BtnExcluirClick(Sender: TObject);
begin
   if CaixaMensagem( 'Confirma exclusão Deste Tipo de Despesas '+
                     QryCadTipoDespesas.fieldByName('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  then
   Begin
      Qrymodific.SQL.text :='delete from T_TipoDespesas where Sequencia=:ParSequencia ';
      Qrymodific.Parameters.ParamValues['ParSequencia'] :=QryCadTipoDespesas.fieldByname('Sequencia').AsString;
      Qrymodific.ExecSql;
   End;
   QryCadTipoDespesas.Close;
   QryCadTipoDespesas.Open;
end;

procedure TfrmCadTipoDespesa.edtPesquisaChange(Sender: TObject);
begin
   QryCadTipoDespesas.SQL.Text :=' Select * from T_tipoDespesas where Descricao like :pardescricao order by codigo';
   QryCadTipoDespesas.Parameters.ParamValues['Pardescricao'] :='%'+edtPesquisa.Text+'%';
   QryCadTipoDespesas.Open;
end;

procedure TfrmCadTipoDespesa.QryCadTipoDespesasAfterOpen(
  DataSet: TDataSet);
  Var licont : Integer;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;

end;

procedure TfrmCadTipoDespesa.btnFecharClick(Sender: TObject);
begin
   Close;
end;

end.
