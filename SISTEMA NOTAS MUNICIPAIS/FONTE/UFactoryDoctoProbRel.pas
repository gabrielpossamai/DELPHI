unit UFactoryDoctoProbRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TFFactoryDoctoProbRel = class(TForm)
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
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText12: TRLDBText;
    RLBand6: TRLBand;
    RLLabel5: TRLLabel;
    lblvalor: TRLLabel;
    lbltaxa: TRLLabel;
    procedure RLReportBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFactoryDoctoProbRel: TFFactoryDoctoProbRel;
  taxa, valor : double;
  
implementation

uses UDM, UCaixa;

{$R *.dfm}

procedure TFFactoryDoctoProbRel.RLReportBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     taxa := 0;
     valor := 0; 
end;

procedure TFFactoryDoctoProbRel.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     lblvalor.caption := formatfloat('#,###,###0.00', valor);
     lbltaxa.caption := formatfloat('#,###,###0.00', taxa);
end;

procedure TFFactoryDoctoProbRel.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     taxa := taxa + dm.CDSFactoryDoctoProbFACPROTAXAS.asfloat;
     valor := valor + dm.CDSFactoryDoctoProbFACPROVALOR.asfloat;     
end;

end.
