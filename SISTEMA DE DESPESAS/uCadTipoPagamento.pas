unit uCadTipoPagamento;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ComCtrls, ToolWin, StdCtrls, Grids, DBGrids, DB, ADODB, Buttons,
   EditNew, ExtCtrls, bsSkinTabs, bsSkinCtrls, BusinessSkinForm,
   bsSkinGrids, bsDBGrids, Mask, bsSkinBoxCtrls;

type
   TfrmcadTipoPagamento = class(TForm)
      srcCadCodtasCorrente: TDataSource;
      QryCadContasCorrente: TADOQuery;
      QryModific: TADOQuery;
      QryMaxCod: TADOQuery;
      // ImpMatricial: TRDprint;
      qryRelatorio: TADOQuery;
      PagCadastro: TbsSkinPageControl;
      bsSkinTabSheet1: TbsSkinTabSheet;
      bsSkinDBGrid1: TbsSkinDBGrid;
      bsSkinTabSheet2: TbsSkinTabSheet;
      bsBusinessSkinForm1: TbsBusinessSkinForm;
      bsSkinScrollBar1: TbsSkinScrollBar;
      bsSkinStatusBar2: TbsSkinStatusBar;
      bsSkinExPanel1: TbsSkinExPanel;
      EdtCodigo: TEdit;
      EdtDescricao: TEdit;
      edtmeta: TbsSkinEdit;
      bsSkinStdLabel1: TbsSkinStdLabel;
      bsSkinStdLabel2: TbsSkinStdLabel;
      bsSkinStdLabel3: TbsSkinStdLabel;
      chkExibeResumo: TbsSkinCheckRadioBox;
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
      cmbTipoCobranca: TbsSkinComboBox;
      cmbVencimento: TbsSkinComboBox;
      bsSkinStdLabel4: TbsSkinStdLabel;
      lblVencimento: TbsSkinStdLabel;
      cmbPrazo: TbsSkinComboBox;
      lblPrazo: TbsSkinStdLabel;
    bsSkinPanel3: TbsSkinPanel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    edtPesquisa: TEdit;
      procedure FormShow(Sender: TObject);
      procedure BtnIncluirClick(Sender: TObject);
      procedure BtnAlterarClick(Sender: TObject);
      procedure BtnOkClick(Sender: TObject);
      procedure BtnCancelaClick(Sender: TObject);
      procedure BtnExcluirClick(Sender: TObject);
      procedure ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
      procedure btnFecharClick(Sender: TObject);
      procedure cmbTipoCobrancaChange(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
   private
      pvsQualBotao: String;
      pvilinha: Integer;
      { Private declarations }
   public
      { Public declarations }
   end;

var
   frmcadTipoPagamento: TfrmcadTipoPagamento;

implementation

uses uprincipal, ufuncoes, uRelExtrato;
{$R *.dfm}

procedure TfrmcadTipoPagamento.FormShow(Sender: TObject);
begin
   btnok.Enabled := False;
   btnCancela.Enabled := False;
   btnincluir.Enabled := True;
   btnalterar.Enabled := True;
   btnexcluir.Enabled := True;
   PagCadastro.ActivePageIndex := 0;
   QryCadContasCorrente.Close;
   QryCadContasCorrente.Sql.Text := ' Select * from T_ContaCorrente order by descricao ';
   QryCadContasCorrente.Open;
end;

procedure TfrmcadTipoPagamento.BtnIncluirClick(Sender: TObject);
begin
   QryMaxCod.Close;
   QryMaxCod.Sql.Text := 'Select Max(codigo) as Codigo From T_ContaCorrente ';
   QryMaxCod.Open;

   EdtCodigo.Text := incZero(IntToStr(StrToint(QryMaxCod.FieldByname('Codigo').asString) + 1), 3);

   pvsQualBotao := 'INCLUIR';

   QryModific.Sql.Text := 'Insert Into T_ContaCorrente ' + '(Sequencia,Codigo, Descricao, Saldo, Meta,ExibeResumo,Prazo,Vencimento,Tipo_Cobranca) Values ' +
      '(:ParSequencia,:ParCodigo,:ParDescricao, :ParSaldo, :parMeta,:parExibeResumo,:parPrazo,:parVencimento,:parTipo_Cobranca)';

   btnincluir.Enabled := False;
   btnalterar.Enabled := False;
   btnexcluir.Enabled := False;
   btnok.Enabled := True;
   btnCancela.Enabled := True;
   PagCadastro.ActivePageIndex := 1;
   EdtCodigo.SetFocus;
end;

procedure TfrmcadTipoPagamento.BtnAlterarClick(Sender: TObject);
var I : integer;
begin
   pvsQualBotao := 'ALTERAR';
   QryModific.Sql.Text :=
      'Update T_ContaCorrente set Codigo=:ParCodigo,ExibeResumo=:parExibeResumo, Prazo=:parPrazo, Vencimento=:parVencimento, Tipo_Cobranca=:parTipo_Cobranca, '
      + 'Descricao=:ParDescricao, Saldo=:Parsaldo, Meta=:parMeta Where Sequencia=:ParSequencia ';
   btnincluir.Enabled := False;
   btnalterar.Enabled := False;
   btnexcluir.Enabled := False;
   btnok.Enabled := True;
   btnCancela.Enabled := True;
   PagCadastro.ActivePageIndex := 1;
   EdtCodigo.Text := QryCadContasCorrente.FieldByname('Codigo').asString;
   cmbTipoCobranca.ItemIndex := QryCadContasCorrente.FieldByname('Tipo_Cobranca').asInteger;
   cmbTipoCobrancaChange(cmbTipoCobranca);
   if cmbTipoCobranca.ItemIndex = 0 then
   Begin
      for I := 0 to cmbPrazo.Items.Count - 1 do
      Begin
         if StrToInt(cmbPrazo.Items[I])= QryCadContasCorrente.FieldByname('Prazo').asInteger  then
            cmbPrazo.ItemIndex := I
      End;
      for I := 0 to cmbVencimento.Items.Count - 1 do
      Begin
         if StrToInt(cmbVencimento.Items[I])= QryCadContasCorrente.FieldByname('Vencimento').asInteger  then
            cmbVencimento.ItemIndex := I
      End;
   End;
   EdtDescricao.Text := QryCadContasCorrente.FieldByname('Descricao').asString;

   edtmeta.Text := Formatfloat('0.00', QryCadContasCorrente.FieldByname('Meta').AsFloat);
   chkExibeResumo.Checked := True;
   if QryCadContasCorrente.FieldByname('ExibeResumo').asString = 'N' then
      chkExibeResumo.Checked := False;
   EdtCodigo.SetFocus;
end;

procedure TfrmcadTipoPagamento.BtnOkClick(Sender: TObject);
begin
   QryModific.Parameters.ParamValues['ParSequencia'] := QryCadContasCorrente.FieldByname('Sequencia').asString;
   QryModific.Parameters.ParamValues['ParCodigo'] := EdtCodigo.Text;
   QryModific.Parameters.ParamValues['ParExibeResumo'] := 'N';
   if chkExibeResumo.Checked then
      QryModific.Parameters.ParamValues['ParExibeResumo'] := 'S';
   QryModific.Parameters.ParamValues['ParDescricao'] := EdtDescricao.Text;
   QryModific.Parameters.ParamValues['ParSaldo'] := 0;
   QryModific.Parameters.ParamValues['ParMeta'] := strTofloat(edtmeta.Text);
   QryModific.Parameters.ParamValues['ParPrazo'] := strToInt(cmbPrazo.Text);
   QryModific.Parameters.ParamValues['ParVencimento'] := strToInt(cmbVencimento.Text);
   QryModific.Parameters.ParamValues['ParTipo_cobranca'] := cmbTipoCobranca.itemindex;
   if pvsQualBotao = 'INCLUIR' then
   Begin
      QryCadContasCorrente.Sql.Text := ' Select Max(Sequencia) as Ultima from T_ContaCorrente ';
      QryCadContasCorrente.Open;
      QryModific.Parameters.ParamValues['ParSequencia'] := incZero(IntToStr((StrToint(QryCadContasCorrente.FieldByname('Ultima').asString) + 1)), 8)
   End;
   QryModific.ExecSql;

   QryCadContasCorrente.Close;
   QryCadContasCorrente.Sql.Text := ' Select * from T_ContaCorrente order by descricao ';
   QryCadContasCorrente.Open;

   btnok.Enabled := False;
   btnCancela.Enabled := False;
   btnincluir.Enabled := True;
   btnalterar.Enabled := True;
   btnexcluir.Enabled := True;
   EdtCodigo.Text := '';
   EdtDescricao.Text := '';
   PagCadastro.ActivePageIndex := 0;
end;

procedure TfrmcadTipoPagamento.cmbTipoCobrancaChange(Sender: TObject);
begin
   case cmbTipoCobranca.itemindex of
      0:
         Begin
            lblPrazo.visible := True;
            cmbPrazo.visible := True;
            lblVencimento.visible := True;
            cmbVencimento.visible := True;
         End;
      1, 2:
         Begin
            lblPrazo.visible := False;
            cmbPrazo.visible := False;
            lblVencimento.visible := False;
            cmbVencimento.visible := False;
         End;
   end;
end;

procedure TfrmcadTipoPagamento.edtPesquisaChange(Sender: TObject);
begin
   QryCadContasCorrente.SQL.Text :=' Select * from T_ContaCorrente where Descricao like :pardescricao order by codigo';
   QryCadContasCorrente.Parameters.ParamValues['Pardescricao'] :='%'+edtPesquisa.Text+'%';
   QryCadContasCorrente.Open;
end;

procedure TfrmcadTipoPagamento.BtnCancelaClick(Sender: TObject);
begin
   btnok.Enabled := False;
   btnCancela.Enabled := False;
   btnincluir.Enabled := True;
   btnalterar.Enabled := True;
   btnexcluir.Enabled := True;
   EdtCodigo.Text := '';
   EdtDescricao.Text := '';
   PagCadastro.ActivePageIndex := 0;
end;

procedure TfrmcadTipoPagamento.BtnExcluirClick(Sender: TObject);
begin
   if CaixaMensagem('Confirma exclusão Deste Tipo de Despesas ' + QryCadContasCorrente.FieldByname('Descricao').asString, ctConfirma, [cbSimNao], 0)
      then
   Begin
      QryModific.Sql.Text := 'delete from T_ContaCorrente where Sequencia=:ParSequencia ';
      QryModific.Parameters.ParamValues['ParSequencia'] := QryCadContasCorrente.FieldByname('Sequencia').asString;
      QryModific.ExecSql;
   End;
   QryCadContasCorrente.Close;
   QryCadContasCorrente.Sql.Text := ' Select * from T_ContaCorrente order by descricao ';
   QryCadContasCorrente.Open;
end;

procedure TfrmcadTipoPagamento.ImpMatricialNewPage(Sender: TObject; Pagina: Integer);
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

procedure TfrmcadTipoPagamento.btnFecharClick(Sender: TObject);
begin
   Close;
end;

end.
