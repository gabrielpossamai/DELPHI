unit Form1P;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, COMOBJ, OleServer, Excel97, Grids, DBGrids;

type
  TForm1F = class(TForm)
    Button1: TButton;
    Racas33i: TTable;
    SaveDialog1: TSaveDialog;
    QMovim05i: TQuery;
    Edit1: TEdit;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1F: TForm1F;

implementation

{$R *.DFM}

procedure TForm1F.Button1Click(Sender: TObject);
var
  Excel : Variant;
  Linha,i:Integer;
begin

      Excel := CreateOleObject('Excel.Application');
      Excel.Visible :=false;

      Excel.Workbooks.Add;

      Excel.WorkBooks[1].Sheets[1].Cells[1,1] := 'Nome';
      Excel.WorkBooks[1].Sheets[1].Cells[1,2] := 'Size';
      Excel.WorkBooks[1].Sheets[1].Cells[1,3] := 'Weight';

      Linha := 2;

      with QMovim05i do begin

         Open;

         while not EOF do begin

           Excel.WorkBooks[1].Sheets[1].Cells[Linha,1] := FieldByName('name').AsString;
           Excel.WorkBooks[1].Sheets[1].Cells[Linha,2] := FieldByName('size').AsString;
           Excel.WorkBooks[1].Sheets[1].Cells[Linha,3] := FieldByName('weight').AsFloat;

           Linha := Linha + 1;

           Next;

        end;

         Close;

      end;

      Excel.WorkBooks[1].SaveAs(GetCurrentDir+'/teste.xls');

      Excel.WorkBooks[1].Close;


   showmessage('ok ...');

end;

end.
