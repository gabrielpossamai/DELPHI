// comentario
unit uCadCredores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, StdCtrls, Grids, DBGrids, DB, ADODB, Buttons,
  EditNew, ExtCtrls,  bsSkinTabs, bsSkinCtrls, BusinessSkinForm,
  bsSkinGrids, bsDBGrids;

type
  TfrmCadCredores = class(TForm)
    srcCadCredores: TDataSource;
    QryCadCredores: TADOQuery;
    QryModific: TADOQuery;
    QryMaxCod: TADOQuery;
    qryRelatorio: TADOQuery;
    PagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinDBGrid1: TbsSkinDBGrid;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinScrollBar1: TbsSkinScrollBar;
    bsSkinStatusBar1: TbsSkinStatusBar;
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
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinPanel3: TbsSkinPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtPesquisa: TEdit;
    EdtDescricao: TEdit;
    EdtCodigo: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure btnFecharClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
  private
    pvsQualBotao :String;
    pvilinha     : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCredores: TfrmCadCredores;

implementation
uses uprincipal, ufuncoes, uRelExtrato;

{$R *.dfm}

procedure TfrmCadCredores.FormShow(Sender: TObject);
begin
   BtnOk.Enabled      :=False;
   BtnCancela.Enabled :=False;
   BtnIncluir.Enabled :=True;
   BtnAlterar.Enabled :=True;
   BtnExcluir.Enabled :=True;
   PagCadastro.ActivePageIndex:=0;
   QryCadCredores.Close;
   QryCadCredores.Sql.Text:=' Select * from T_Credores ';
   QryCadCredores.Open;
end;

procedure TfrmCadCredores.BtnIncluirClick(Sender: TObject);
begin
   QryMaxCod.close;
   QryMaxCod.SQL.text := 'Select Max(codigo) as Codigo From T_Credores ';
   QryMaxCod.Open;
   if Trim(QryMaxCod.FieldByname('Codigo').asString)='' then
      EdtCodigo.Text :='001'
   Else
      EdtCodigo.Text :=incZero(IntToStr(StrToint( QryMaxCod.FieldByname('Codigo').asString )+1 ),3);

   pvsQualBotao:='INCLUIR';

   QryModific.SQL.Text:= 'Insert Into T_Credores '+
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

procedure TfrmCadCredores.BtnAlterarClick(Sender: TObject);
begin
   pvsQualBotao:='ALTERAR';
   QryModific.SQL.Text:= 'Update T_Credores set Codigo=:ParCodigo,ExibeResumo=:parExibeResumo, '+
                         'Descricao=:ParDescricao, Saldo=:Parsaldo, Meta=:parMeta '+
                         'Where Sequencia=:ParSequencia ';
   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   EdtCodigo.Text     := QryCadCredores.fieldByName('Codigo').AsString;
   EdtDescricao.Text  := QryCadCredores.fieldByName('Descricao').AsString;
   EdtCodigo.SetFocus;
end;

procedure TfrmCadCredores.BtnOkClick(Sender: TObject);
begin
   QryModific.Parameters.ParamValues['ParSequencia'] := QryCadCredores.fieldByName('Sequencia').AsString;
   QryModific.Parameters.ParamValues['ParCodigo']    := Edtcodigo.Text;
   QryModific.Parameters.ParamValues['ParExibeResumo']:= 'N';
   QryModific.Parameters.ParamValues['ParExibeResumo']:= 'S';
   QryModific.Parameters.ParamValues['ParDescricao'] := Edtdescricao.Text;
   QryModific.Parameters.ParamValues['ParSaldo']     := 0;
   QryModific.Parameters.ParamValues['ParMeta']      := 0;
   if pvsQualBotao='INCLUIR' then
   Begin
      QryCadCredores.Close;
      QryCadCredores.SQL.Text:=' Select Max(Sequencia) as Ultima from T_Credores ';
      QryCadCredores.Open;
      if Trim(QryCadCredores.FieldByName('Ultima').AsString)='' then
         QryModific.Parameters.ParamValues['ParSequencia'] := incZero(IntToStr(1),8)
      Else
         QryModific.Parameters.ParamValues['ParSequencia'] :=incZero(IntToStr((StrToInt(QryCadCredores.FieldByName('Ultima').AsString)+1)),8);
   End;
   QryModific.ExecSql;
   QryCadCredores.Close;
   QryCadCredores.Sql.Text:=' Select * from T_Credores ';
   QryCadCredores.Open;

   BtnOk.Enabled      :=False;
   BtnCancela.Enabled :=False;
   BtnIncluir.Enabled :=True;
   BtnAlterar.Enabled :=True;
   BtnExcluir.Enabled :=True;
   EdtCodigo.Text     :='';
   EdtDescricao.Text  :='';
   PagCadastro.ActivePageIndex:=0;
end;

procedure TfrmCadCredores.edtPesquisaChange(Sender: TObject);
begin
   QryCadCredores.SQL.Text :=' Select * from T_Credores where Descricao like :pardescricao order by codigo';
   QryCadCredores.Parameters.ParamValues['Pardescricao'] :='%'+edtPesquisa.Text+'%';
   QryCadCredores.Open;
end;

procedure TfrmCadCredores.BtnCancelaClick(Sender: TObject);
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

procedure TfrmCadCredores.BtnExcluirClick(Sender: TObject);
begin
   if CaixaMensagem( 'Confirma exclusão Deste Tipo de Despesas '+
                     QryCadCredores.fieldByName('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  then
   Begin
      Qrymodific.SQL.text :='delete from T_Credores where Sequencia=:ParSequencia ';
      Qrymodific.Parameters.ParamValues['ParSequencia'] :=QryCadCredores.fieldByname('Sequencia').AsString;
      Qrymodific.ExecSql;
   End;
   QryCadCredores.Close;
   QryCadCredores.Sql.Text:=' Select * from T_Credores ';
   QryCadCredores.Open;
end;

procedure TfrmCadCredores.ImpMatricialNewPage(Sender: TObject;
  Pagina: Integer);
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

procedure TfrmCadCredores.btnFecharClick(Sender: TObject);
begin
   close;
end;

end.
