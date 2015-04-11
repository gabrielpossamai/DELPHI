unit UGraficoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  Buttons;

type
  TFrmGraficoCliente = class(TForm)
    chtGrafico: TChart;
    CliCid: TBarSeries;
    QCliCid: TADOQuery;
    QCliCidQtde: TIntegerField;
    QCliCidCliCid: TWideStringField;
    PrintDialog1: TPrintDialog;
    sbImprimir: TSpeedButton;
    procedure sbImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGraficoCliente: TFrmGraficoCliente;

implementation

uses UDM, UBkpRst;

{$R *.dfm}

procedure TFrmGraficoCliente.sbImprimirClick(Sender: TObject);
begin
if PrintDialog1.Execute then
  begin
    chtGrafico.BackColor := clWhite;
    chtGrafico.Print;
  end;
end;

procedure TFrmGraficoCliente.FormShow(Sender: TObject);
begin
    CliCid.Clear;    
    chtGrafico.Title.Text.Clear;
    chtGrafico.Title.Text.Add('Gráfico Clientes por Cidade');
    QCliCid.Open;
    While (not QCliCid.Eof) do
    begin
        // Insere dados do Eixo Y do gráfico de barras
        CliCid.AddY(QCliCidQtde.Value, QCliCidCliCid.AsString, clSkyBlue);
        QCliCid.Next;
    end;
end;

end.
