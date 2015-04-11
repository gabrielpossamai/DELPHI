unit utesteview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridCardView, cxGridDBCardView, cxClasses,
  cxGridLevel, cxGrid;

type
  TForm1 = class(TForm)
    srcCadtipoDespesas: TDataSource;
    QryCadTipoDespesas: TADOQuery;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBCardView1: TcxGridDBCardView;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
   QryCadTipoDespesas.close;
   QryCadTipoDespesas.Sql.Text:=' Select * from T_TipoDespesas ';
   QryCadTipoDespesas.Open;
end;

end.
