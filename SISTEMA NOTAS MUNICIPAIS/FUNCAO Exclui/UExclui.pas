unit UExclui;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXpress, FMTBcd, StdCtrls, Mask, DB, SqlExpr, Buttons, dateutils;

type
  TFExclui = class(TForm)
    SQLConnection: TSQLConnection;
    QExclui: TSQLQuery;
    txtdataini: TMaskEdit;
    txtdatafin: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnok: TBitBtn;
    btnclose: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btncloseClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExclui: TFExclui;

implementation

{$R *.dfm}

procedure TFExclui.FormCreate(Sender: TObject);
var arq: TextFile;
   linha: String;
begin
     if fileexists('RECHCENTER.GDB') then
         RenameFile('RECHCENTER.GDB','BANCO.GDB');
     if fileexists('c:\caminho.txt') then
     begin
          AssignFile(arq, 'C:\caminho.txt');
          Reset(arq);
          ReadLn(arq,linha);
          closefile(arq);
          sqlconnection.Params.Values['Database'] := linha;
     end;
     try
          SQLConnection.connected := true;
     except
          showmessage('Impossível conectar com o banco de dados!');
          application.terminate;
     end;

end;

procedure TFExclui.btncloseClick(Sender: TObject);
begin
     application.terminate;
end;

procedure TFExclui.btnokClick(Sender: TObject);

   procedure exclui(sql : string);
   begin
        qexclui.SQL.Text := sql;
        qexclui.Params[0].asdate := strtodate(txtdataini.text);
        qexclui.Params[1].asdate := strtodate(txtdatafin.text);
        qexclui.ExecSQL;
        qexclui.close;        
   end;

begin
     exclui('delete from tvenda where vendata between :dataini and :datafim');
     exclui('delete from tcaixa where caidata between :dataini and :datafim');
     exclui('delete from tcompra where comdata between :dataini and :datafim');
     showmessage('Concluído!');
     btnclose.click;
end;

procedure TFExclui.FormShow(Sender: TObject);
begin
     txtdataini.text := datetostr(startofthemonth(date));
     txtdatafin.text := datetostr(endofthemonth(date));     
end;

end.
