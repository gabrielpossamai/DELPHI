unit uImportaExtrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, bsSkinGrids, bsDBGrids, BusinessSkinForm,
  bsSkinCtrls, ExtCtrls, ToolWin, ComCtrls, bsSkinShellCtrls, StdCtrls;

type
  TfrmImportaExtrato = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnImportar: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    statusbar: TbsSkinStatusBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinDBGrid1: TbsSkinDBGrid;
    cdsDadosExtrato: TClientDataSet;
    srcDadosExtrato: TDataSource;
    OD: TbsSkinOpenDialog;
    MemoExtrato: TMemo;
    Panel1: TbsSkinStatusPanel;
    bsSkinPanel1: TbsSkinPanel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnImportarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportaExtrato: TfrmImportaExtrato;

implementation
uses uprincipal,ufuncoes;

{$R *.dfm}

procedure TfrmImportaExtrato.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmImportaExtrato.btnImportarClick(Sender: TObject);
var
  licont         : integer;
  liNumeroInicio : integer;
  lbImporta      : Boolean;
begin
  if OD.Execute then
   begin
      MemoExtrato.Lines.LoadFromFile(OD.FileName);
   end;
   lbimporta      := False;
   liNumeroInicio := 0 ;
   for licont := 0 to MemoExtrato.Lines.Count Do
   Begin
      if UPPERCASE(Copy(MemoExtrato.Lines[licont],1,15))='BANCO DO BRASIL' then
      Begin
         Panel1.Caption := 'Importação Extrato banco do brasil';
         statusbar.Update;
      end;
      if UPPERCASE(Copy(MemoExtrato.Lines[licont],1,4))='DATA' then
      Begin
         lbimporta := true ;
         liNumeroInicio := (licont+1);
      end;
      if lbimporta and (licont>linumeroInicio) then
      Begin
          if Trim(Copy(MemoExtrato.Lines[licont],1,1))<>'=' then
          Begin
             cdsDadosExtrato.Append;
             cdsDadosExtrato.fieldByname('data').AsDatetime    := StrtoDatetime(Copy(MemoExtrato.Lines[licont],1,10));
             cdsDadosExtrato.fieldByname('Historico').AsString := Copy(MemoExtrato.Lines[licont],20,15);
             cdsDadosExtrato.fieldByname('Valor').AsFloat      := StrtoFloat(Copy(MemoExtrato.Lines[licont],62,10));
             cdsDadosExtrato.fieldByname('Tipo').AsString      := Copy(MemoExtrato.Lines[licont],72,1);
          End
          else
             lbimporta := False;

      end;
   end;
end;

procedure TfrmImportaExtrato.FormShow(Sender: TObject);
begin
   srcDadosExtrato.Enabled  := False;
   cdsDadosExtrato.Close;
   CriarCampo( fkData, cdsDadosExtrato, 'Historico', ftString, 30 );
   CriarCampo( fkData, cdsDadosExtrato, 'Data', ftDateTime, 0 );
   CriarCampo( fkData, cdsDadosExtrato, 'Valor', ftFloat, 0 );
   CriarCampo( fkData, cdsDadosExtrato, 'Tipo', ftString, 1 );
   cdsDadosExtrato.Close;
   cdsDadosExtrato.CreateDataSet;
   cdsDadosExtrato.Open;
   srcDadosExtrato.Enabled  := True;
end;

end.
