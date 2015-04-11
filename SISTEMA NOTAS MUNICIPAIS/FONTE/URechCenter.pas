unit URechCenter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, StdCtrls, Mask, DBCtrls, WSDBEdit,
  WSEdit, ExtDlgs;

type
  TFRechCenter = class(TForm)
    lbltitulo: TLabel;
    Label1: TLabel;
    WSDBEdit1: TWSDBEdit;
    WSDBEdit2: TWSDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    WSDBEdit3: TWSDBEdit;
    Bevel1: TBevel;
    WSDBEdit4: TWSDBEdit;
    Label4: TLabel;
    WSDBEdit5: TWSDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    WSDBEdit6: TWSDBEdit;
    WSDBEdit7: TWSDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    WSDBEdit8: TWSDBEdit;
    Panel1: TPanel;
    ToolBarNavegacao: TToolBar;
    BtnSalvar: TToolButton;
    btnsair: TToolButton;
    Label9: TLabel;
    DBImage1: TDBImage;
    WSEdit1: TWSEdit;
    rgsistema: TDBRadioGroup;
    procedure btnsairClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure WSDBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBImage1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRechCenter: TFRechCenter;

implementation

uses UDM, UMenu;

{$R *.dfm}

procedure TFRechCenter.btnsairClick(Sender: TObject);
begin
     dm.cdsrechcenter.cancel;
     close;
end;

procedure TFRechCenter.BtnSalvarClick(Sender: TObject);
begin
     dm.cdsrechcenter.post;
     dm.cdsrechcenter.applyupdates(-1);
     close;
end;

procedure TFRechCenter.WSDBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = 27) and (btnsair.enabled = true) then
       btnsair.click;
    if (Key = VK_F12) and (btnSalvar.enabled = true) then
       btnsalvar.Click;
    if (key = 40) then
       Perform (WM_nextDlgCtl,0,0);
    if (key = 13) then
    begin
       if (sender as TWSDBEdit).enterclicar then
          btnsalvar.click
       else
          Perform (WM_nextDlgCtl,0,0);
    end;
    if (key = 38) then
       Perform (WM_nextDlgCtl,1,0);
end;

procedure TFRechCenter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFRechCenter.FormActivate(Sender: TObject);
begin
     setCaption(sender as tform);
     dm.cdsrechcenter.edit;
end;

procedure TFRechCenter.DBImage1DblClick(Sender: TObject);
var
  BMP: TBitMap;
begin
  BMP := TBitMap.Create;
  if dm.OpenPictureDialog.Execute then
  begin
    BMP.LoadFromFile(dm.OpenPictureDialog.FileName);
    DM.cdsrechcenterrecLOGO.Assign(BMP);
  end;
end;

end.
