unit UFactoryDoctoRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, FMTBcd, DBClient, DB, SqlExpr, Provider,
  Grids, DBGrids, Buttons, RLParser;

type
  TFFactoryDoctoRel = class(TForm)
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
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
    QRelFACDOCDATA: TDateField;
    QRelBANNOME: TStringField;
    QRelITECHEQUE: TIntegerField;
    QRelITECPFCPNJ: TStringField;
    QRelITEVCTO: TDateField;
    QRelITEVALOR: TFMTBCDField;
    QRelITEDESC: TFMTBCDField;
    QRelITELIQ: TFMTBCDField;
    CDSRelFACDOCDATA: TDateField;
    CDSRelBANNOME: TStringField;
    CDSRelITECHEQUE: TIntegerField;
    CDSRelITECPFCPNJ: TStringField;
    CDSRelITEVCTO: TDateField;
    CDSRelITEVALOR: TFMTBCDField;
    CDSRelITEDESC: TFMTBCDField;
    CDSRelITELIQ: TFMTBCDField;
    RLBand9: TRLBand;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLBand3: TRLBand;
    RLLabel11: TRLLabel;
    lblvalor: TRLLabel;
    lbldesconto: TRLLabel;
    lblliquido: TRLLabel;
    QRelITESACADO: TStringField;
    CDSRelITESACADO: TStringField;
    RLLabel12: TRLLabel;
    RLDBText16: TRLDBText;
    RLReportFicha: TRLReport;
    RLBand4: TRLBand;
    RLDBText17: TRLDBText;
    RLDBImage3: TRLDBImage;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLBand6: TRLBand;
    RLDBImage4: TRLDBImage;
    RLDBRichText2: TRLDBRichText;
    RLBand7: TRLBand;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLBand8: TRLBand;
    RLBand10: TRLBand;
    RLLabel24: TRLLabel;
    lblitevalor: TRLLabel;
    lblitedesconto: TRLLabel;
    lbliteliquido: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText31: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel28: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLLabel31: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    QRelCLIRAZAO: TStringField;
    CDSRelCLIRAZAO: TStringField;
    RLDBText38: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    lbliof: TRLLabel;
    QRelITEIOF: TFloatField;
    CDSRelITEIOF: TFloatField;
    RLLabel34: TRLLabel;
    RLDBText39: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLDBText40: TRLDBText;
    txttaxa: TRLDBResult;
    RLDBResult2: TRLDBResult;
    QRelITETAXA: TFloatField;
    CDSRelITETAXA: TFloatField;
    RLDBText41: TRLDBText;
    RLLabel40: TRLLabel;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReportBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFactoryDoctoRel: TFFactoryDoctoRel;
  iof, valor, desconto, liquido : double;

implementation

uses UDM;

{$R *.dfm}

procedure TFFactoryDoctoRel.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     lblvalor.caption := formatfloat('#,###,###0.00', valor);
     lbldesconto.caption := formatfloat('#,###,###0.00', desconto);
     lblliquido.caption := formatfloat('#,###,###0.00', liquido);
end;

procedure TFFactoryDoctoRel.RLReportBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     iof := 0;
     valor := 0;
     desconto := 0;
     liquido := 0;
end;

procedure TFFactoryDoctoRel.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     valor := valor + CDSRelITEVALOR.asfloat;
     liquido := liquido + CDSRelITELIQ.asfloat;
     desconto := desconto + CDSRelITEDESC.asfloat;
end;

procedure TFFactoryDoctoRel.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     valor := valor + dm.CDSItemFactoryDoctoITEVALOR.asfloat;
     iof := iof + dm.cdsitemfactorydoctoiteiof.asfloat;
     liquido := liquido + dm.CDSItemFactoryDoctoITELIQ.asfloat;
     desconto := desconto + dm.CDSItemFactoryDoctoITEDESC.asfloat;
end;

procedure TFFactoryDoctoRel.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     lblitevalor.caption := formatfloat('#,###,###0.00', valor);
     lbliof.caption := formatfloat('#,###,###0.00', iof);
     lblitedesconto.caption := formatfloat('#,###,###0.00', desconto);
     lbliteliquido.caption := formatfloat('#,###,###0.00', liquido);
end;

end.
