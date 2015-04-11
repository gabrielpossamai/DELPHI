unit Uabout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, DBCtrls, RxGIF, EDskInf, Buttons,
  ELibFnc;

type
  TFSobre = class(TForm)
    Image: TImage;
    Label3: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbldrive: TLabel;
    lblfilesystem: TLabel;
    lblespacolivre: TLabel;
    lblespacototal: TLabel;
    lblserial: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EvDiskInfo: TEvDiskInfo;
    BitBtn1: TBitBtn;
    Label9: TLabel;
    lbldiretorio: TLabel;
    EvLibFunctions1: TEvLibFunctions;
    procedure ImageClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSobre: TFSobre;

implementation

uses UDM, UMenu;

{$R *.dfm}

procedure TFSobre.ImageClick(Sender: TObject);
begin
     close;
end;

procedure TFSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFSobre.FormShow(Sender: TObject);
begin
     lbldrive.caption := EvDiskInfo.Drive;
     lblfilesystem.caption := EvDiskInfo.FileSystem;
     lblespacolivre.caption := formatfloat('#,###,###0.00',EvDiskInfo.freespace/1024/1024);
     lblespacototal.caption := formatfloat('#,###,###0.00',EvDiskInfo.Size/1024/1024);
     lblserial.caption := EvDiskInfo.SerialNumber;
     lbldiretorio.caption := ExtractFilePath(Application.ExeName);
end;

procedure TFSobre.FormCreate(Sender: TObject);
begin
     setcaption(sender as tform);
end;

end.
