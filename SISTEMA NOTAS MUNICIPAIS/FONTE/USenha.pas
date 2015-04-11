unit USenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, WSDBEdit, ExtCtrls,
  ComCtrls, ToolWin, WSEdit, DB, WSComboBox, jpeg, EAppProt;

type
  TFSenha = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    txtsenha: TWSEdit;                                
    txtusuario: TWSComboBox;
    Panel1: TPanel;
    ToolBarNavegacao: TToolBar;
    BtnSalvar: TToolButton;
    btnsair: TToolButton;
    Image1: TImage;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    EvAppProtect: TEvAppProtect;
    procedure btnsairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure txtusuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSenha: TFSenha;

implementation

uses UDM, UMenu;

{$R *.dfm}

procedure TFSenha.btnsairClick(Sender: TObject);
begin
     application.terminate;
end;

procedure TFSenha.FormShow(Sender: TObject);
begin
     dm.cdsrechcenter.open;
     dm.Cdsusuario.first;
     while not dm.cdsusuario.eof do
     begin
          txtusuario.items.add(dm.CDSUsuarioUSULOGIN.asstring);
          dm.cdsusuario.next;
     end;
     txtusuario.itemindex := 0;
end;

procedure TFSenha.BtnSalvarClick(Sender: TObject);
var temp : string;
begin
     if not dm.cdsusuario.Locate('USULOGIN', txtusuario.items.strings[txtusuario.itemindex], []) then
     begin
          showmessage('Selecione o usuário!');
          txtusuario.setfocus;
          exit;
     end
     else
     begin
          if uppercase(dm.CDSUsuarioUSULOGIN.AsString) = 'MASTER'
          then temp := dm.cdsUsuarioUSUSENHA.asstring
          else temp := '';

          if txtsenha.text = dm.cdsUsuarioUSUSENHA.asstring + temp then
          begin
               fsenha.hide;
               fmenu := tfmenu.create(self);
               fmenu.showmodal;
          end
          else
          begin
               showmessage('Senha inválida!');
               txtusuario.setfocus;
               exit;
          end;
     end;
end;

procedure TFSenha.FormActivate(Sender: TObject);
begin
     if dm.cdsusuario.RecordCount = 0 then
     begin
          fmenu := tfmenu.create(self);
          fmenu.showmodal;
     end;
end;

procedure TFSenha.txtusuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var passar : boolean;
begin
    if (key = 27) and (btnsair.enabled = true) then
        btnsair.click;

    if (key = 40) and (not (sender is twscombobox)) then
    begin
         Perform (WM_nextDlgCtl,0,0);
    end;
    if (key = 13) then
    begin
        passar := true;
        if sender is TWSEDit then
        begin
            with sender as TWSEdit do
            begin
                if EnterClicar then
                begin
                   btnsalvar.click;
                   passar := false;
                end
                else
                begin
                   passar := true;
                end;
            end;
        end;
        if passar then
           Perform (WM_nextDlgCtl,0,0);
    end;
    if (key = 38) and (not (sender is twscombobox)) then
    begin
        Perform (WM_nextDlgCtl,1,0);
    end;
end;

end.
