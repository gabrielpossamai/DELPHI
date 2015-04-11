unit uDmRelatorios;

interface

uses
  System.SysUtils, System.Classes, frxDBSet, frxClass, frxExportText,
  frxExportPDF;

type
  TDmRelatorios = class(TDataModule)
    frxReport: TfrxReport;
    frxDBDsUsuarios: TfrxDBDataset;
    frxPDFExport: TfrxPDFExport;
    frxSimpleTextExport: TfrxSimpleTextExport;
    frxDBDsReceber: TfrxDBDataset;
    frxDBDsPagar: TfrxDBDataset;
    frxDBDsCaixa: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmRelatorios: TDmRelatorios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDmDados;

{$R *.dfm}

end.
