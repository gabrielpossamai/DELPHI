unit UContPagRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TFContPagRel = class(TForm)
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
    RLBand12: TRLBand;
    RLLabel21: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBImage3: TRLDBImage;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    QvctoPAGDOCUMENTO: TIntegerField;
    QvctoPAGEMISSAO: TDateField;
    QvctoPAGVALOR: TFMTBCDField;
    QvctoCLINOME: TStringField;
    QvctoITEDATA: TDateField;
    QvctoITEVALOR: TFMTBCDField;
    QvctoITEPAGAMENTO: TDateField;
    QvctoITESITUACAO: TStringField;
    CDSVctoPAGDOCUMENTO: TIntegerField;
    CDSVctoPAGEMISSAO: TDateField;
    CDSVctoPAGVALOR: TFMTBCDField;
    CDSVctoCLINOME: TStringField;
    CDSVctoITEDATA: TDateField;
    CDSVctoITEVALOR: TFMTBCDField;
    CDSVctoITEPAGAMENTO: TDateField;
    CDSVctoITESITUACAO: TStringField;
    lblvalor: TRLLabel;
    lblacrescimo: TRLLabel;
    lblentrada: TRLLabel;
    lbldesconto: TRLLabel;
    lbltotal: TRLLabel;
    lblvalorpago: TRLLabel;
    lblitevalor: TRLLabel;
    RLDBResult1: TRLDBResult;
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReportVctoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReportBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FContPagRel: TFContPagRel;
  valor, acrescimo, desconto, entrada, valorpago, total : double;

implementation

uses UDM;

{$R *.dfm}

procedure TFContPagRel.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
      lblvalor.caption := formatfloat('#,###,###0.00', valor);
      lblacrescimo.caption := formatfloat('#,###,###0.00', acrescimo);
      lbldesconto.caption := formatfloat('#,###,###0.00', desconto);
      lblentrada.caption := formatfloat('#,###,###0.00', entrada);
      lblvalorpago.caption := formatfloat('#,###,###0.00', valorpago);
      lbltotal.caption := formatfloat('#,###,###0.00', total);
end;

procedure TFContPagRel.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     lblitevalor.caption := formatfloat('#,###,###0.00', valor);
end;

procedure TFContPagRel.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     valor := valor + dm.CDSContPagPAGVALOR.asfloat;
     acrescimo := acrescimo + dm.CDSContPagPAGACRESCIMO.asfloat;
     desconto := desconto + dm.CDSContPagPAGDESCONTO.asfloat;
     entrada := entrada + dm.CDSContPagPAGENTRADA.asfloat;
     valorpago := valorpago + dm.CDSContPagPAGVALORPAGO.asfloat;
     total := total + dm.CDSContPagPAGTOTAL.asfloat;
end;

procedure TFContPagRel.RLReportVctoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     valor := 0;
end;

procedure TFContPagRel.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     valor := valor + CDSVctoitevalor.asfloat; 
end;

procedure TFContPagRel.RLReportBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     valor := 0;
     acrescimo := 0;
     desconto := 0;
     entrada := 0;
     valorpago := 0;
     total := 0;
end;

end.
