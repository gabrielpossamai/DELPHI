unit uGrupoContatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, bsSkinCtrls, bsSkinGrids, bsDBGrids, ComCtrls,
  bsSkinTabs, ExtCtrls, ToolWin, DBClient, Provider;

type
  TfrmGrupoContato = class(TForm)
    PagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinDBGrid1: TbsSkinDBGrid;
    bsSkinScrollBar1: TbsSkinScrollBar;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    EdtCodigo: TEdit;
    EdtDescricao: TEdit;
    qryGruposContatos: TADOQuery;
    srcGruposContatos: TDataSource;
    dspGrupoContatos: TDataSetProvider;
    cdsGrupoContatos: TClientDataSet;
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
    procedure FormShow(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
  private
    pvQualBotao : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupoContato: TfrmGrupoContato;

implementation

{$R *.dfm}

procedure TfrmGrupoContato.btnalterarClick(Sender: TObject);
begin
   pvQualBotao :='Alterar';

   edtCodigo.Text        := cdsGrupoContatos.FieldByName('Codigo').AsString;
   edtDescricao.Text     := cdsGrupoContatos.FieldByName('Descricao').AsString;
   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
end;

procedure TfrmGrupoContato.BtnCancelaClick(Sender: TObject);
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

procedure TfrmGrupoContato.btnexcluirClick(Sender: TObject);
begin
   Try
      If MessageDlg( 'Deseja excluir o registro selecionado? ',
        mtConfirmation,[mbYes,mbNo],0)=mryes Then
      Begin
         cdsGrupoContatos.Delete;
      End;
   Finally
      cdsGrupoContatos.ApplyUpdates(0);
      cdsGrupoContatos.Close;
      cdsGrupoContatos.Open;
   End;

end;

procedure TfrmGrupoContato.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmGrupoContato.btnincluirClick(Sender: TObject);
begin
   pvQualBotao:='Incluir';
   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   EdtCodigo.SetFocus;
end;

procedure TfrmGrupoContato.btnokClick(Sender: TObject);
begin
   If pvQualBotao='Incluir' Then
      cdsGrupoContatos.Append
   Else
      cdsGrupoContatos.Edit;
   Try
      //cdsGrupoContatos.FieldByName('Codigo').AsString   := Trim( edtCodigo.Text );
      cdsGrupoContatos.FieldByName('Descricao').AsString:= Trim( edtDescricao.Text );
   Finally
      cdsGrupoContatos.Post;
      cdsGrupoContatos.ApplyUpdates(0);
      cdsGrupoContatos.Close;
      cdsGrupoContatos.Open;
   End;
   BtnOk.Enabled      :=False;
   BtnCancela.Enabled :=False;
   BtnIncluir.Enabled :=True;
   BtnAlterar.Enabled :=True;
   BtnExcluir.Enabled :=True;
   EdtCodigo.Text     :='';
   EdtDescricao.Text  :='';
   PagCadastro.ActivePageIndex:=0;
end;

procedure TfrmGrupoContato.FormShow(Sender: TObject);
begin
   BtnOk.Enabled      :=False;
   BtnCancela.Enabled :=False;
   BtnIncluir.Enabled :=True;
   BtnAlterar.Enabled :=True;
   BtnExcluir.Enabled :=True;
   PagCadastro.ActivePageIndex:=0;

   QryGruposContatos.Close;
   QryGruposContatos.Sql.Text:=' Select * from T_GruposContato ';

   cdsGrupoContatos.Open;
end;

end.
