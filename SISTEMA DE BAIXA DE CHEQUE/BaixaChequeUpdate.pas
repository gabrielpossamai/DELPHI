unit BaixaChequeUpdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, StdCtrls, Mask, DBCtrls, ComCtrls;

type
  TFmBaixaChequeUpdate = class(TForm)
    ActionList: TActionList;
    PopupMenu: TPopupMenu;
    DtpDataPag: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BtnCancel: TButton;
    BtnPost: TButton;
    AcCancel: TAction;
    AcPost: TAction;
    Cancelar1: TMenuItem;
    Confirmar1: TMenuItem;
    EdJurosPagos: TEdit;
    procedure UpdatePost;
    procedure AcCancelExecute(Sender: TObject);
    procedure AcPostExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DtpDataPagExit(Sender: TObject);
    procedure DbeJurosPagosExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmBaixaChequeUpdate: TFmBaixaChequeUpdate;

implementation

uses Modulo;

var
  DataPagOk : Boolean = True;
  JurosPagosOk : Boolean = True;

{$R *.dfm}

{ TFmBaixaChequeUpdate }

procedure TFmBaixaChequeUpdate.UpdatePost;
begin
  AcPost.Enabled := DataPagOk AND JurosPagosOk;
end;

procedure TFmBaixaChequeUpdate.AcCancelExecute(Sender: TObject);
begin
  Close;
end;

procedure TFmBaixaChequeUpdate.AcPostExecute(Sender: TObject);
begin
  try
    with DmWinBank, IbqChequeUpdate do
    begin
      	ParamByName('UpDataPgto').Value     := DtpDataPag.Date;
        ParamByName('UpJurosPagos').AsFloat := StrToFloat(EdJurosPagos.Text);
        ParamByName('UpCnpj').Value         := IbtChequesCNPJ.Value;
        ParamByName('UpBanco').AsInteger    := IbtChequesBANCO.Value;
        ParamByName('UpAgencia').AsInteger  := IbtChequesAGENCIA.Value;
        ParamByName('UpConta').AsInteger    := IbtChequesCONTA.Value;
        ParamByName('UpNumero').AsInteger   := IbtChequesNUMERO.Value;
        ExecSQL;

        IbtCheques.Refresh;
    end;
    Close;
  except
    on e: Exception do
    begin
       ShowMessage('Erro no banco de dados: ' + #13 + e.Message);
    end;
  end;
end;

procedure TFmBaixaChequeUpdate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AcCancelExecute(Sender);
  Action := caFree;
end;

procedure TFmBaixaChequeUpdate.FormCreate(Sender: TObject);
begin
  DtpDataPag.Date := Date();
end;

procedure TFmBaixaChequeUpdate.DbeJurosPagosExit(Sender: TObject);
begin
  try
    JurosPagosOk := (Length(EdJurosPagos.Text) > 0) AND
      (StrToFloat(EdJurosPagos.Text) > 0);
  except
    on e: EConvertError do
      JurosPagosOk := False;
  end;

  if JurosPagosOk then
    EdJurosPagos.Color := clWindow
  else
    EdJurosPagos.Color := clYellow;

  UpdatePost;
end;

procedure TFmBaixaChequeUpdate.DtpDataPagExit(Sender: TObject);
begin
  with DmWinBank do
  begin
    DataPagOk := (FormatDateTime('yyyymmdd', DtpDataPag.Date) > FormatDateTime('yyyymmdd', IbtChequesEMISSAO.AsDateTime)) AND
      (FormatDateTime('yyyymmdd', DtpDataPag.Date) <= FormatDateTime('yyyymmdd', Date));
  end;

  if DataPagOk then
    DtpDataPag.Color := clWindow
  else
    DtpDataPag.Color := clYellow;

  UpdatePost;
end;

end.
