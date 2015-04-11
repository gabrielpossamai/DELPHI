unit uFrmConsReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, tpEdit, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient, StrUtils;

type
  TfrmConsReceber = class(TForm)
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    rdgPeriodo: TRadioGroup;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    edtDataIni: TtpEdit;
    edtDataFim: TtpEdit;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    edtDocumento: TEdit;
    edtParcela: TEdit;
    rdgStatus: TRadioGroup;
    GroupBox4: TGroupBox;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    btnCancelar: TBitBtn;
    BitBtn2: TBitBtn;
    cdsConsultaid: TIntegerField;
    cdsConsultadocumento: TStringField;
    cdsConsultadescricao: TStringField;
    cdsConsultaparcela: TIntegerField;
    cdsConsultavlr_parcela: TFMTBCDField;
    cdsConsultavlr_compra: TFMTBCDField;
    cdsConsultavlr_abatido: TFMTBCDField;
    cdsConsultadt_compra: TDateField;
    cdsConsultadt_vencimento: TDateField;
    cdsConsultadt_cadastro: TDateField;
    cdsConsultastatus: TStringField;
    cdsConsultadt_pagamento: TDateField;
    Label5: TLabel;
    cdsConsultaTotal: TAggregateField;
    btnBaixar: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnBaixarClick(Sender: TObject);
  private
    procedure Pesquisar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsReceber: TfrmConsReceber;

implementation

{$R *.dfm}

uses uDmDados, uFuncoes, uFrmBaixarReceber;

procedure TfrmConsReceber.btnBaixarClick(Sender: TObject);
begin
  if (cdsConsultastatus.AsString = 'B') or (cdsConsultastatus.AsString = 'C') then
  begin
    Application.MessageBox('Não é possível baixar um documento cancelado ou baixado.','AtençãO',MB_OK+MB_ICONWARNING);
    abort;
  end;

  frmBaixarReceber := TfrmBaixarReceber.Create(nil);
  try
    frmBaixarReceber.fId := cdsConsultaid.AsInteger;
    frmBaixarReceber.ShowModal;
  finally
    FreeAndNil(frmBaixarReceber);
  end;
end;

procedure TfrmConsReceber.btnCancelarClick(Sender: TObject);
begin
  rdgPeriodo.ItemIndex := -1;
  rdgStatus.ItemIndex  := -1;
  edtDataIni.Clear;
  edtDataFim.Clear;
  edtDocumento.Clear;
  edtParcela.Clear;
  cdsConsulta.Close;
  StatusBar1.Panels[0].Text := '';
end;

procedure TfrmConsReceber.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ZebrarDBGrid(dsConsulta,DBGrid1,State,Rect,Column);
end;

procedure TfrmConsReceber.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsReceber.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = Vk_f2 then
    Pesquisar;
end;

procedure TfrmConsReceber.Pesquisar;
var
  Sql : TStringList;
begin
  //Validação
  if rdgPeriodo.ItemIndex > -1 then
  begin
    if (edtDataIni.Text = '') or (edtDataFim.Text = '') then
    begin
      Application.MessageBox('Informe a data.','Atenção', MB_OK+MB_ICONWARNING);
      edtDataIni.SetFocus;
      Abort;
    end;
  end;

  Sql := TStringList.Create;
  try
    sql.Add('select * from contas_receber');
    sql.Add('where id > 0');

    //Pesquisar por período
    if (rdgPeriodo.ItemIndex > -1) and (edtDataIni.Text <> '') and (edtDataFim.Text <> '') then
    begin
      case rdgPeriodo.ItemIndex of
        0 : sql.Add('and dt_compra between '+QuotedStr(ReveterData(edtDataIni.Text))+' and '+QuotedStr(ReveterData(edtDataFim.Text)));
        1 : sql.Add('and dt_vencimento between '+QuotedStr(ReveterData(edtDataIni.Text))+' and '+QuotedStr(ReveterData(edtDataFim.Text)));
        2 : sql.Add('and dt_pagamento between '+QuotedStr(ReveterData(edtDataIni.Text))+' and '+QuotedStr(ReveterData(edtDataFim.Text)));
      end;
    end;

    //Pesquisar por documento
    if edtDocumento.Text <> '' then
      sql.Add('and documento = '+QuotedStr(trim(edtDocumento.Text)));

    //Pesquisar por parcela
    if edtParcela.Text <> '' then
      sql.Add('and parcela = '+edtParcela.Text);

    //Pesquisar por status
    if rdgStatus.ItemIndex > -1 then
    begin
      case rdgStatus.ItemIndex of
        0 : sql.Add('and status = ''A''');
        1 : sql.Add('and status = ''C''');
        2 : sql.Add('and status = ''B''');
      end;
    end;

    try
      cdsConsulta.Close;
      cdsConsulta.CommandText := Sql.Text;
      cdsConsulta.Open;

      if cdsConsulta.IsEmpty then
        Application.MessageBox('Nenhum registro encontrado.','Atenção',MB_OK+MB_ICONWARNING);

      StatusBar1.Panels[0].Text := 'Registro(s) encontrado(s): '+inttostr(cdsConsulta.RecordCount);
      StatusBar1.Panels[1].Text := 'Total a receber: '+FormatFloat('R$ #,0.00',cdsConsultaTotal.AsVariant);
      btnBaixar.Enabled := not cdsConsulta.IsEmpty;
    except on E: Exception do
      raise Exception.Create('Erro ao consultar contas a pagar: '+E.Message);
    end;
  finally
    FreeAndNil(Sql);
  end;
end;

procedure TfrmConsReceber.SpeedButton1Click(Sender: TObject);
begin
  Pesquisar;
end;

end.
