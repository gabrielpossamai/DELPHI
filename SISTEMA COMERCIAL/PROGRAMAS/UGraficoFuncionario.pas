unit UGraficoFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TeeProcs, TeEngine, Chart, Series, DB, ADODB, Buttons;

type
  TFrmGraficoFuncionario = class(TForm)
    chtGrafico: TChart;
    QFunSalario: TADOQuery;
    QFunSalarioQtde: TIntegerField;
    QFunSalarioFunSalario: TBCDField;
    PrintDialog1: TPrintDialog;
    sbImprimir: TSpeedButton;
    FunSalario: TPieSeries;
    procedure FormShow(Sender: TObject);
    procedure sbImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGraficoFuncionario: TFrmGraficoFuncionario;

implementation

uses UDM;

{$R *.dfm}

procedure TFrmGraficoFuncionario.FormShow(Sender: TObject);
begin
    FunSalario.Clear;
    chtGrafico.Title.Text.Clear;
    chtGrafico.Title.Text.Add('Gráfico Funcionários por Salario');
    QFunSalario.Open;
    While (not QFunSalario.Eof) do
    begin
        // Insere dados do Eixo Y do gráfico de barras
        FunSalario.AddY(QFunSalarioQtde.Value, QFunSalarioFunSalario.AsString, clTeeColor);
        QFunSalario.Next;
    end;

end;

procedure TFrmGraficoFuncionario.sbImprimirClick(Sender: TObject);
begin

  if PrintDialog1.Execute then
    begin
      chtGrafico.BackColor := clWhite;
      chtGrafico.Print;
    end;
end;

end.
