
unit uCadContaCorrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, StdCtrls, Grids, DBGrids, DB, ADODB, Buttons,
  EditNew, ExtCtrls, RDprint, bsSkinTabs, bsSkinCtrls, BusinessSkinForm,
  bsSkinGrids, bsDBGrids;

type
  TfrmCadContasCorrente = class(TForm)
    srcCadCodtasCorrente: TDataSource;
    QryCadContasCorrente: TADOQuery;
    QryModific: TADOQuery;
    BarraStatus: TStatusBar;
    QryMaxCod: TADOQuery;
    ImpMatricial: TRDprint;
    qryRelatorio: TADOQuery;
    PagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinDBGrid1: TbsSkinDBGrid;
    bsSkinTabSheet2: TbsSkinTabSheet;
    EdtCodigo: TEdit;
    EdtDescricao: TEdit;
    edtmeta: TEditN;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnexcluir: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    BtnCancela: TbsSkinSpeedButton;
    chkExibeResumo: TbsSkinCheckRadioBox;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinScrollBar1: TbsSkinScrollBar;
    procedure FormShow(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure btnFecharClick(Sender: TObject);
  private
    pvsQualBotao :String;
    pvilinha     : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadContasCorrente: TfrmCadContasCorrente;

implementation
uses uprincipal, ufuncoes, uRelExtrato;

{$R *.dfm}

procedure TfrmCadContasCorrente.FormShow(Sender: TObject);
begin
   BtnOk.Enabled      :=False;
   BtnCancela.Enabled :=False;
   BtnIncluir.Enabled :=True;
   BtnAlterar.Enabled :=True;
   BtnExcluir.Enabled :=True;
   PagCadastro.ActivePageIndex:=0;
   QryCadContasCorrente.Sql.Text:=' Select * from T_ContaCorrente ';
   QryCadContasCorrente.Open;
end;

procedure TfrmCadContasCorrente.BtnIncluirClick(Sender: TObject);
begin
   QryMaxCod.close;
   QryMaxCod.SQL.text := 'Select Max(codigo) as Codigo From T_ContaCorrente ';
   QryMaxCod.Open;

   EdtCodigo.Text :=incZero(IntToStr(StrToint( QryMaxCod.FieldByname('Codigo').asString )+1 ),3);

   pvsQualBotao:='INCLUIR';

   QryModific.SQL.Text:= 'Insert Into T_ContaCorrente '+
                         '(Sequencia,Codigo, Descricao, Saldo, Meta,ExibeResumo) Values '+
                         '(:ParSequencia,:ParCodigo,:ParDescricao, :ParSaldo, :parMeta,:parExibeResumo)';

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   EdtCodigo.SetFocus;
end;

procedure TfrmCadContasCorrente.BtnAlterarClick(Sender: TObject);
begin
   pvsQualBotao:='ALTERAR';
   QryModific.SQL.Text:= 'Update T_ContaCorrente set Codigo=:ParCodigo,ExibeResumo=:parExibeResumo, '+
                         'Descricao=:ParDescricao, Saldo=:Parsaldo, Meta=:parMeta '+
                         'Where Sequencia=:ParSequencia ';
   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   EdtCodigo.Text     := QryCadContasCorrente.fieldByName('Codigo').AsString;
   EdtDescricao.Text  := QryCadContasCorrente.fieldByName('Descricao').AsString;
   EdtMeta.Text       := Formatfloat('0.00',QryCadContasCorrente.fieldByName('Meta').AsFloat);
   chkExibeResumo.Checked := True;
   if QryCadContasCorrente.fieldByName('ExibeResumo').AsString='N' then
      chkExibeResumo.Checked := false;
   EdtCodigo.SetFocus;
end;

procedure TfrmCadContasCorrente.BtnOkClick(Sender: TObject);
begin
   QryModific.Parameters.ParamValues['ParSequencia'] := QryCadContasCorrente.fieldByName('Sequencia').AsString;
   QryModific.Parameters.ParamValues['ParCodigo']    := Edtcodigo.Text;
   QryModific.Parameters.ParamValues['ParExibeResumo']:= 'N';
   if chkExibeResumo.Checked then
      QryModific.Parameters.ParamValues['ParExibeResumo']:= 'S';
   QryModific.Parameters.ParamValues['ParDescricao'] := Edtdescricao.Text;
   QryModific.Parameters.ParamValues['ParSaldo']     := 0;
   QryModific.Parameters.ParamValues['ParMeta']      := strTofloat(EdtMeta.Text);
   if pvsQualBotao='INCLUIR' then
   Begin
      QryCadContasCorrente.SQL.Text:=' Select Max(Sequencia) as Ultima from T_ContaCorrente ';
      QryCadContasCorrente.Open;
      QryModific.Parameters.ParamValues['ParSequencia'] :=incZero(IntToStr((StrToInt(QryCadContasCorrente.FieldByName('Ultima').AsString)+1)),8)
   End;
   QryModific.ExecSql;
   QryCadContasCorrente.Sql.Text:=' Select * from T_ContaCorrente ';
   QryCadContasCorrente.Open;

   BtnOk.Enabled      :=False;
   BtnCancela.Enabled :=False;
   BtnIncluir.Enabled :=True;
   BtnAlterar.Enabled :=True;
   BtnExcluir.Enabled :=True;
   EdtCodigo.Text     :='';
   EdtDescricao.Text  :='';
   PagCadastro.ActivePageIndex:=0;
end;

procedure TfrmCadContasCorrente.BtnCancelaClick(Sender: TObject);
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

procedure TfrmCadContasCorrente.BtnExcluirClick(Sender: TObject);
begin
   if CaixaMensagem( 'Confirma exclusão Deste Tipo de Despesas '+
                     QryCadContasCorrente.fieldByName('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  then
   Begin
      Qrymodific.SQL.text :='delete from T_ContaCorrente where Sequencia=:ParSequencia ';
      Qrymodific.Parameters.ParamValues['ParSequencia'] :=QryCadContasCorrente.fieldByname('Sequencia').AsString;
      Qrymodific.ExecSql;
   End;
end;

procedure TfrmCadContasCorrente.ImpMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 06;
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao ');
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
end;

procedure TfrmCadContasCorrente.btnFecharClick(Sender: TObject);
begin
   close;
end;

end.
