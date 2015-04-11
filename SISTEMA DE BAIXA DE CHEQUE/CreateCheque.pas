unit CreateCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, Menus, ImgList, ActnList;

type
  TFmCreateCheque = class(TForm)
    DbeCodBanco: TDBEdit;
    DblcbCodBanco: TDBLookupComboBox;
    DbeAgencia: TDBEdit;
    DbeConta: TDBEdit;
    DbeNumero: TDBEdit;
    DbeValor: TDBEdit;
    DblcbAlinea: TDBLookupComboBox;
    ActionList: TActionList;
    ImageList: TImageList;
    MainMenu: TMainMenu;
    PopupMenu: TPopupMenu;
    BtnCancel: TButton;
    BtnConfirma: TButton;
    AcPost: TAction;
    AcCancel: TAction;
    Label1: TLabel;
    Confirmar1: TMenuItem;
    Cancelar1: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    label6: TLabel;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcCancelExecute(Sender: TObject);
    procedure AcPostExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCreateCheque: TFmCreateCheque;

implementation

uses Modulo;

{$R *.dfm}

procedure TFmCreateCheque.AcCancelExecute(Sender: TObject);
begin
  DmWinBank.IbtCheques.Cancel;
  Close;
end;

procedure TFmCreateCheque.AcPostExecute(Sender: TObject);
begin
  try
    with DmWinBank do
      begin
        IbtChequesEMISSAO.Value := Date();
        IbtCheques.Post;
      end;
    Close;
  except
    on e: Exception do
    begin
      if pos('PRIMARY', e.Message) <> 0 then
        begin
          ShowMessage('já existe um cheque com estes mesmos dados, tente novamente');
          DbeCodBanco.SetFocus;
        end
      else
        if pos('FK_CHEQUES_BANCOS', e.Message) <> 0 then
          begin
            ShowMessage('Banco não existe, tente novamente');
            DblcbCodBanco.SetFocus;
          end
        else
          if pos('FK_CHEQUES_ALINEAS', e.Message) <> 0 then
            begin
              ShowMessage('Alínea não existe, tente novamente');
              DblcbAlinea.SetFocus;
            end
          else
            ShowMessage('Erro no banco de dados:' + #13 + e.Message);
    end;
  end;
end;

procedure TFmCreateCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AcCancelExecute(Sender);
  Action := caFree;
end;

end.
