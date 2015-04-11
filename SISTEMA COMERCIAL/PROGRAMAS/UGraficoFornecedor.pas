unit UGraficoFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DB, ADODB, Buttons;

type
  TFrmGraficoFornecedor = class(TForm)
    chtGrafico: TChart;
    ForCid: TPieSeries;
    QForCid: TADOQuery;
    QForCidQtde: TIntegerField;
    QForCidForCid: TWideStringField;
    PrintDialog1: TPrintDialog;
    sbImprimir: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGraficoFornecedor: TFrmGraficoFornecedor;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmGraficoFornecedor.FormShow(Sender: TObject);
begin
    ForCid.Clear;    
    chtGrafico.Title.Text.Clear;
    chtGrafico.Title.Text.Add('Gráfico Fornecedores por Cidade');
    QForCid.Open;
    While (not QForCid.Eof) do
    begin
        // Insere dados do Eixo Y do gráfico de barras
        ForCid.AddY(QForCidQtde.Value, QForCidForCid.AsString, clTeeColor);
        QForCid.Next;
    end;

end;

procedure TFrmGraficoFornecedor.sbImprimirClick(Sender: TObject);
begin

  if PrintDialog1.Execute then
    begin
      chtGrafico.BackColor := clWhite;
      chtGrafico.Print;
    end;

end;

end.
