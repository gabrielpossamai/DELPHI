unit uCadPrioridades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, DBClient, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls,
  ComCtrls, ToolWin, Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, bsSkinTabs, BusinessSkinForm, bsSkinCtrls,
  cxPropertiesStore, cxLookAndFeels, cxLookAndFeelPainters;

type
  TfrmcadPrioridades = class(TForm)
    StatusBar1: TStatusBar;
    qryCadPrioridades: TADOQuery;
    srcCadPriridades: TDataSource;
    cdsPrioridades: TClientDataSet;
    dspPrioridades: TDataSetProvider;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    PagPrincipal: TbsSkinPageControl;
    pagConsulta: TbsSkinTabSheet;
    bsSkinTabSheet2: TbsSkinTabSheet;
    Codigo: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    cmbGrupos: TComboBox;
    cmbPrioridade: TComboBox;
    edtDescricao: TEdit;
    cmbSinNao: TComboBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Descricao: TcxGridDBColumn;
    cxGrid1DBTableView1Prioridade: TcxGridDBColumn;
    cxGrid1DBTableView1Grupo: TcxGridDBColumn;
    cxGrid1DBTableView1concluido: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
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
    cxPropertiesStore1: TcxPropertiesStore;
    bsSkinCoolBar3: TbsSkinCoolBar;
    bsSkinToolBar3: TbsSkinToolBar;
    btnincluir: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    btnexcluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    BtnConcluir: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    btnFechar: TbsSkinSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BotaoFecharClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnConcluirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
     pvQualBotao : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadPrioridades: TfrmcadPrioridades;

implementation

uses uprincipal;
{$R *.dfm}

procedure TfrmcadPrioridades.BotaoFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmcadPrioridades.BtnAlterarClick(Sender: TObject);
begin
   pvQualBotao :='Alterar';
   BtnIncluir.Enabled  :=False;
   BtnAlterar.Enabled  :=False;
   BtnExcluir.Enabled  :=False;
   BtnOk.Enabled       :=True;
   BtnConcluir.Enabled :=True;
   PagPrincipal.ActivePageIndex:=1;
   pagConsulta.Enabled := False;
   edtDescricao.SetFocus;

   edtDescricao.Text       := cdsPrioridades.FieldByName('Descricao').AsString;
   cmbGrupos.Text          := cdsPrioridades.FieldByName('Grupo').AsString;
   cmbPrioridade.ItemIndex := (cdsPrioridades.FieldByName('Prioridade').AsInteger)-1;
   cmbSinNao.ItemIndex     := 1 ;
   if cdsPrioridades.FieldByName('Concluido').AsString='Sim' then
      cmbSinNao.ItemIndex     := 0 ;
end;

procedure TfrmcadPrioridades.BtnConcluirClick(Sender: TObject);
begin
   cdsPrioridades.Edit;
   cdsPrioridades.FieldByName('Concluido').AsString :='Sim';
   cdsPrioridades.Post;
   cdsPrioridades.ApplyUpdates(0);
end;

procedure TfrmcadPrioridades.BtnExcluirClick(Sender: TObject);
begin
   cdsPrioridades.Delete;
   cdsPrioridades.ApplyUpdates(0);
end;

procedure TfrmcadPrioridades.BtnIncluirClick(Sender: TObject);
begin
   pvQualBotao :='Incluir';
   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnConcluir.Enabled :=True;
   PagPrincipal.ActivePageIndex:=1;
   pagConsulta.Enabled := False;
   edtDescricao.SetFocus;
end;

procedure TfrmcadPrioridades.BtnOkClick(Sender: TObject);
begin
   if pvQualBotao ='Incluir' Then
      cdsPrioridades.Append
   Else
      cdsPrioridades.Edit;
   cdsPrioridades.FieldByName('Descricao').AsString  := edtDescricao.Text;
   cdsPrioridades.FieldByName('Grupo').AsString      := cmbGrupos.Text;
   cdsPrioridades.FieldByName('Prioridade').AsString := IntTostr( cmbPrioridade.ItemIndex+1);
   cdsPrioridades.FieldByName('Concluido').AsString  := cmbSinNao.Text;

   cdsPrioridades.Post;
   cdsPrioridades.ApplyUpdates(0);

   BtnOk.Enabled      :=False;
   BtnConcluir.Enabled:=True;
   BtnIncluir.Enabled :=True;
   BtnAlterar.Enabled :=True;
   BtnExcluir.Enabled :=True;
   EdtDescricao.Text  :='';
   pagConsulta.Enabled := True;
   PagPrincipal.ActivePageIndex:=0;

end;

procedure TfrmcadPrioridades.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    {
    if upperCase(cdsPrioridades.FieldByName('Prioridade').AsString)='1'  then
       DBGrid1.Canvas.font.Color    := clGreen
    Else if upperCase(cdsPrioridades.FieldByName('Prioridade').AsString)='2' then
       DBGrid1.Canvas.font.Color    := clBlue
    Else if upperCase(cdsPrioridades.FieldByName('Prioridade').AsString)='3' then
       DBGrid1.Canvas.font.Color    := clRed;
    if upperCase(cdsPrioridades.FieldByName('Concluido').AsString)=upperCase('Sim') then
    Begin
       DBGrid1.Canvas.Brush.Color   := clred;
       DBGrid1.Canvas.font.Color    := clBlack;
    End;
    DBGrid1.DefaultDrawColumnCell( Rect, DataCol, Column, State );
    }
end;

procedure TfrmcadPrioridades.FormShow(Sender: TObject);
begin

   qryCadPrioridades.SQL.Text :=' Select Grupo from T_Prioridades Group By Grupo ';
   cdsPrioridades.Open;

   cmbGrupos.Clear;
   while not cdsPrioridades.Eof do
   Begin
     cmbGrupos.Items.add(cdsPrioridades.FieldByname('Grupo').asString);
     cdsPrioridades.Next;
   End;
   cdsPrioridades.Close;

   qryCadPrioridades.close;
   qryCadPrioridades.SQL.text :='Select * from T_Prioridades ';

   cdsPrioridades.Close;
   cdsPrioridades.Open;

   PagPrincipal.ActivePageIndex:=0;
end;

procedure TfrmcadPrioridades.btnFecharClick(Sender: TObject);
begin
   Close;
end;

end.
