unit UContRecRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TFContRecRel = class(TForm)
    RLReport: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBImage2: TRLDBImage;
    RLDBRichText1: TRLDBRichText;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText17: TRLDBText;
    Qvcto: TSQLQuery;
    CDSVcto: TClientDataSet;
    DSPVcto: TDataSetProvider;
    DSVcto: TDataSource;
    QvctoRECDOCUMENTO: TIntegerField;
    QvctoRECEMISSAO: TDateField;
    QvctoCLINOME: TStringField;
    QvctoITEDATA: TDateField;
    QvctoITEPAGAMENTO: TDateField;
    QvctoITESITUACAO: TStringField;
    CDSVctoRECDOCUMENTO: TIntegerField;
    CDSVctoRECEMISSAO: TDateField;
    CDSVctoCLINOME: TStringField;
    CDSVctoITEDATA: TDateField;
    CDSVctoITEPAGAMENTO: TDateField;
    CDSVctoITESITUACAO: TStringField;
    RLReportVcto: TRLReport;
    RLBand6: TRLBand;
    RLBand7: TRLBand;
    RLDBImage4: TRLDBImage;
    RLDBRichText2: TRLDBRichText;
    RLBand8: TRLBand;
    RLLabel13: TRLLabel;
    RLBand9: TRLBand;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLBand10: TRLBand;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText33: TRLDBText;
    RLBand11: TRLBand;
    RLLabel16: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLBand12: TRLBand;
    RLLabel21: TRLLabel;
    RLDBResult7: TRLDBResult;
    QvctoITEVALOR: TFloatField;
    CDSVctoITEVALOR: TFloatField;
    QvctoRECVALOR: TFloatField;
    CDSVctoRECVALOR: TFloatField;
    RLDBImage1: TRLDBImage;
    RLDBText6: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBImage3: TRLDBImage;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FContRecRel: TFContRecRel;

implementation

uses UDM;

{$R *.dfm}

end.
