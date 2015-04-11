unit BaixaCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, DBCtrls, ActnList, ImgList, Menus;

type
  TFmBaixaCheque = class(TForm)
    DbeJurosPagos: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    ImageList: TImageList;
    ActionList: TActionList;
    PopupMenu: TPopupMenu;
    BtnCancel: TButton;
    BtnPost: TButton;
    AcCancel: TAction;
    AcPost: TAction;
    Confirmar1: TMenuItem;
    Cancelar1: TMenuItem;
    AcExit: TAction;
    Sair1: TMenuItem;
    DtpDataPag: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcCancelExecute(Sender: TObject);
    procedure AcPostExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DtpDataPagExit(Sender: TObject);
    procedure UpdatePost;
    procedure DbeJurosPagosExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmBaixaCheque: TFmBaixaCheque;

implementation

uses Modulo;

var
  DataPagOk : Boolean = True;
  JurosPagosOk : Boolean = True;

{$R *.dfm}

procedure TFmBaixaCheque.AcCancelExecute(Sender: TObject);
begin
  DmWinBank.IbtCheques.Cancel;
  Close;
end;

procedure TFmBaixaCheque.AcPostExecute(Sender: TObject);
begin
  try
    with DmWinBank do
    begin
      IbtChequesDATAPGTO.AsDateTime := DtpDataPag.Date;
      IbtCheques.Post;
    end;
    Close;
  except
    on e: Exception do
    begin
       ShowMessage('Erro no banco de dados: ' + #13 + e.Message);
    end;
  end;
end;

procedure TFmBaixaCheque.DbeJurosPagosExit(Sender: TObject);
begin
  try
    JurosPagosOk := (Length(DbeJurosPagos.Text) > 0) AND
      (StrToFloat(DbeJurosPagos.Text) > 0);
  except
    on e: EConvertError do
      JurosPagosOk := False;
  end;

  if JurosPagosOk then
    DbeJurosPagos.Color := clWindow
  else
    DbeJurosPagos.Color := clYellow;

  UpdatePost;
end;

procedure TFmBaixaCheque.DtpDataPagExit(Sender: TObject);
begin
  with DmWinBank do
  begin
    IbtChequesDATAPGTO.Value := DtpDataPag.Date;
    DataPagOk := (FormatDateTime('yyyymmdd', DtpDataPag.Date) > FormatDateTime('yyyymmdd', IbtChequesEMISSAO.AsDateTime)) AND
      (FormatDateTime('yyyymmdd', DtpDataPag.Date) <= FormatDateTime('yyyymmdd', Date));
  end;

  if DataPagOk then
    DtpDataPag.Color := clWindow
  else
    DtpDataPag.Color := clYellow;

  UpdatePost;
end;

procedure TFmBaixaCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AcCancelExecute(Sender);
  Action := caFree;
end;

procedure TFmBaixaCheque.FormCreate(Sender: TObject);
begin
  DtpDataPag.Date := Date();
end;

procedure TFmBaixaCheque.UpdatePost;
begin
  AcPost.Enabled := DataPagOk AND JurosPagosOk;
end;

end.
