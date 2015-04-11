unit UCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DBCtrls, ComCtrls;

type
  TFrmCadPadrao = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ValorCampo: TEdit;
    sbPesquisar: TSpeedButton;
    sbImprimir: TSpeedButton;
    sbFechar: TSpeedButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    StatusBar1: TStatusBar;
    procedure sbFecharClick(Sender: TObject);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBNavigator3Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPadrao: TFrmCadPadrao;

implementation

{$R *.dfm}

procedure TFrmCadPadrao.sbFecharClick(Sender: TObject);
begin

    Close;

end;

procedure TFrmCadPadrao.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button in [nbInsert, nbEdit] then 
  begin
    GroupBox1.Enabled := False; //desabilita o GroupBox1 e todos seus componentes.
    GroupBox2.Enabled := False;
    DbNavigator1.Enabled := False;
    DbNavigator2.Enabled := False;
    DbNavigator3.Enabled := True;
  end;

end;

procedure TFrmCadPadrao.DBNavigator3Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  GroupBox1.Enabled := True;
  GroupBox2.Enabled := True;
  DbNavigator1.Enabled := True;
  DbNavigator2.Enabled := True;
  DbNavigator3.Enabled := False;

end;

procedure TFrmCadPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    keybd_event(9,0,0,0); 
    Key := #0;
  end;

end;

end.
