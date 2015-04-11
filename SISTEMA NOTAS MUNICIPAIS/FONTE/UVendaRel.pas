unit UVendaRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, FMTBcd, DBClient, DB, SqlExpr, Provider,
  Grids, DBGrids, Buttons, RLParser;

type
  TFVendaRel = class(TForm)
    RLReport: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBImage1: TRLDBImage;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand2: TRLBand;
    RLDBImage2: TRLDBImage;
    RLDBRichText1: TRLDBRichText;
    QRel: TSQLQuery;
    DSRel: TDataSource;
    CDSRel: TClientDataSet;
    DSPRel: TDataSetProvider;
    RLBand5: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand4: TRLBand;
    RLBand7: TRLBand;
    RLDBText7: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLLabel3: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel1: TRLLabel;
    RLBand9: TRLBand;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    QRelCLINOME: TStringField;
    QRelVENDATA: TDateField;
    QRelVENNUMERO: TIntegerField;
    QRelPRONOME: TStringField;
    QRelITESEQ: TIntegerField;
    QRelITEPESO: TFMTBCDField;
    QRelITEVALOR: TFMTBCDField;
    CDSRelCLINOME: TStringField;
    CDSRelVENDATA: TDateField;
    CDSRelVENNUMERO: TIntegerField;
    CDSRelPRONOME: TStringField;
    CDSRelITESEQ: TIntegerField;
    CDSRelITEPESO: TFMTBCDField;
    CDSRelITEVALOR: TFMTBCDField;
    RLLabel4: TRLLabel;
    RLDBText8: TRLDBText;
    CDSRelTotal: TFloatField;
    QProduto: TSQLQuery;
    DSProduto: TDataSource;
    CDSProduto: TClientDataSet;
    DSPProduto: TDataSetProvider;
    QProdutoPRONOME: TStringField;
    QProdutoPESO: TFMTBCDField;
    QProdutoVALOR: TFMTBCDField;
    CDSProdutoPRONOME: TStringField;
    CDSProdutoPESO: TFMTBCDField;
    CDSProdutoVALOR: TFMTBCDField;
    RLReportProduto: TRLReport;
    RLBand3: TRLBand;
    RLDBText12: TRLDBText;
    RLDBImage3: TRLDBImage;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLBand6: TRLBand;
    RLDBImage4: TRLDBImage;
    RLDBRichText2: TRLDBRichText;
    RLBand8: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLBand12: TRLBand;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    CDSProdutomedio: TFloatField;
    RLBand10: TRLBand;
    lbltotal: TRLLabel;
    RLLabel14: TRLLabel;
    procedure CDSRelCalcFields(DataSet: TDataSet);
    procedure CDSProdutoCalcFields(DataSet: TDataSet);
    procedure RLReportProdutoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVendaRel: TFVendaRel;
  total : double = 0;
  
implementation

uses UDM;

{$R *.dfm}

procedure TFVendaRel.CDSRelCalcFields(DataSet: TDataSet);
begin
     CDSRelTotal.asfloat := CDSRelITEPESO.asfloat * CDSRelITEVALOR.asfloat; 
end;

procedure TFVendaRel.CDSProdutoCalcFields(DataSet: TDataSet);
begin
     if CDSProdutopeso.asfloat > 0 then
          CDSProdutomedio.asfloat := CDSProdutovalor.asfloat / CDSProdutopeso.asfloat
     else
          CDSProdutomedio.asfloat := 0;
end;
                                                         
procedure TFVendaRel.RLReportProdutoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     total := 0;
end;

procedure TFVendaRel.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     total := total + cdsprodutovalor.asfloat; 
end;

procedure TFVendaRel.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     lbltotal.caption := formatfloat('#,###,###0.00', total);
end;

end.
