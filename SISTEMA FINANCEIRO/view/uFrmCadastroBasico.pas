unit uFrmCadastroBasico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ImgList,
  Datasnap.DBClient, Vcl.Buttons;

type
  TfrmCadastroBasico = class(TForm)
    dsTabela: TDataSource;
    Panel1: TPanel;
    PageControl1: TPageControl;
    tbsCadastro: TTabSheet;
    tbsPesquisar: TTabSheet;
    dbgDados: TDBGrid;
    StatusBar1: TStatusBar;
    ImageListCadastro: TImageList;
    Label1: TLabel;
    edtPesquisar: TEdit;
    btnFiltrar: TBitBtn;
    ActAcoes: TActionList;
    acInserir: TAction;
    acEditar: TAction;
    acExcluir: TAction;
    acSalvar: TAction;
    acCancelar: TAction;
    acPesquisar: TAction;
    acImprimir: TAction;
    acFechar: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    cbxFiltros: TComboBox;
    Label5: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure acFecharExecute(Sender: TObject);
    procedure acInserirUpdate(Sender: TObject);
    procedure acEditarUpdate(Sender: TObject);
    procedure acExcluirUpdate(Sender: TObject);
    procedure acSalvarUpdate(Sender: TObject);
    procedure acCancelarUpdate(Sender: TObject);
    procedure acImprimirUpdate(Sender: TObject);
    procedure acPesquisarExecute(Sender: TObject);
    procedure dbgDadosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    iModo : Integer;
    procedure LimparTudo;
  public
    { Public declarations }
  end;

var
  frmCadastroBasico: TfrmCadastroBasico;

implementation

{$R *.dfm}

uses uDmDados, uFuncoes;

procedure TfrmCadastroBasico.acCancelarExecute(Sender: TObject);
begin
  TClientDataSet(dsTabela.DataSet).Cancel;
  LimparTudo;
end;

procedure TfrmCadastroBasico.acCancelarUpdate(Sender: TObject);
begin
  acCancelar.Enabled := acSalvar.Enabled = true;
end;

procedure TfrmCadastroBasico.acEditarExecute(Sender: TObject);
begin
  iModo := 1;
  if PageControl1.ActivePage = tbsPesquisar then
  begin
    tbsCadastro.TabVisible  := true;
    tbsPesquisar.TabVisible := false;
    PageControl1.ActivePage := tbsCadastro;
  end;
  TClientDataSet(dsTabela.DataSet).Edit;
end;

procedure TfrmCadastroBasico.acEditarUpdate(Sender: TObject);
begin
  if not TClientDataSet(dsTabela.DataSet).IsEmpty then
    acEditar.Enabled := dsTabela.State in [dsBrowse];
end;

procedure TfrmCadastroBasico.acExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir o registro?','Pergunta',MB_YESNO+MB_ICONQUESTION) = mrYes then
  begin
    try
      TClientDataSet(dsTabela.DataSet).Delete;
      TClientDataSet(dsTabela.DataSet).ApplyUpdates(0);
      Application.MessageBox('Registro excluído com sucesso!','Informação',0+64);
      TClientDataSet(dsTabela.DataSet).Open;
    except on E : Exception do
      raise Exception.Create('Erro ao excluir registro: '+E.Message);
    end;
  end;
end;

procedure TfrmCadastroBasico.acExcluirUpdate(Sender: TObject);
begin
  if not TClientDataSet(dsTabela.DataSet).IsEmpty then
    acExcluir.Enabled := dsTabela.State in [dsBrowse];
end;

procedure TfrmCadastroBasico.acFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroBasico.acImprimirExecute(Sender: TObject);
begin
  showmessage('Em desenvolvimento...');
end;

procedure TfrmCadastroBasico.acImprimirUpdate(Sender: TObject);
begin
  if not TClientDataSet(dsTabela.DataSet).IsEmpty then
    acImprimir.Enabled := dsTabela.State in [dsBrowse];
end;

procedure TfrmCadastroBasico.acInserirExecute(Sender: TObject);
begin
  iModo := 0;
  if PageControl1.ActivePage = tbsPesquisar then
  begin
    tbsCadastro.TabVisible  := true;
    tbsPesquisar.TabVisible := false;
    PageControl1.ActivePage := tbsCadastro;
  end;
  if not TClientDataSet(dsTabela.DataSet).Active then
    TClientDataSet(dsTabela.DataSet).Open;
  TClientDataSet(dsTabela.DataSet).Insert;
end;

procedure TfrmCadastroBasico.acInserirUpdate(Sender: TObject);
begin
  acInserir.Enabled := dsTabela.State in [dsBrowse,dsInactive];
end;

procedure TfrmCadastroBasico.acPesquisarExecute(Sender: TObject);
begin
  edtPesquisar.Clear;
end;

procedure TfrmCadastroBasico.acSalvarExecute(Sender: TObject);
begin
  try
    TClientDataSet(dsTabela.DataSet).Post;
    TClientDataSet(dsTabela.DataSet).ApplyUpdates(0);

    case iModo of
      0 : Application.MessageBox('Registro inserido com sucesso!','Informação',MB_OK+MB_ICONINFORMATION);
      1 : Application.MessageBox('Registro atualizado com sucesso!','Informação',MB_OK+MB_ICONINFORMATION);
    end;
    //Limpar os campos
    LimparTudo;
    TClientDataSet(dsTabela.DataSet).Open;
  except on E : Exception do
    raise Exception.Create('Erro ao salvar registro: '+E.Message);
  end;
end;

procedure TfrmCadastroBasico.acSalvarUpdate(Sender: TObject);
begin
  acSalvar.Enabled := dsTabela.State in [dsInsert,dsEdit];
end;

procedure TfrmCadastroBasico.dbgDadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ZebrarDBGrid(dsTabela,dbgDados,State,Rect,Column);
end;

procedure TfrmCadastroBasico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TClientDataSet(dsTabela.DataSet).Cancel;
  TClientDataSet(dsTabela.DataSet).Close;
end;

procedure TfrmCadastroBasico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    Close;
  if key = #13 then
    Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmCadastroBasico.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := tbsPesquisar;
end;

procedure TfrmCadastroBasico.LimparTudo;
var
  I: Integer;
begin
  for I := 0 to ComponentCount -1 do
  begin
    if Components[i] is TCustomEdit then
      TCustomEdit(Components[i]).Clear;
  end;
  if PageControl1.ActivePage = tbsCadastro then
  begin
    tbsCadastro.TabVisible  := false;
    tbsPesquisar.TabVisible := true;
    PageControl1.ActivePage := tbsPesquisar;
  end;
  edtPesquisar.SetFocus;
end;

end.
