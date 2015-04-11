unit UPesagemRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, DB, DBClient;

type
  TFPesagemRel = class(TForm)
    RLReport: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand2: TRLBand;
    RLDBImage2: TRLDBImage;
    RLDBRichText1: TRLDBRichText;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLBand5: TRLBand;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLLabel19: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText4: TRLDBText;
    RLReport1: TRLReport;
    RLBand6: TRLBand;
    RLDBImage1: TRLDBImage;
    RLDBRichText2: TRLDBRichText;
    RLBand7: TRLBand;
    RLLabel20: TRLLabel;
    RLBand8: TRLBand;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText28: TRLDBText;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel31: TRLLabel;
    RLDBText29: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText35: TRLDBText;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLLabel35: TRLLabel;
    RLDBText39: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText40: TRLDBText;
    CDSTMP: TClientDataSet;
    RLLabel22: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText17: TRLDBText;
    RLReport2: TRLReport;
    RLBand10: TRLBand;
    RLDBImage3: TRLDBImage;
    RLDBRichText3: TRLDBRichText;
    RLBand11: TRLBand;
    RLLabel30: TRLLabel;
    RLBand12: TRLBand;
    RLDBText32: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLLabel43: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLLabel47: TRLLabel;
    RLDBText49: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText51: TRLDBText;
    RLDBText52: TRLDBText;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    RLBand4: TRLBand;
    RLDBText5: TRLDBText;
    RLDBImage4: TRLDBImage;
    RLDBText16: TRLDBText;
    RLDBText56: TRLDBText;
    RLDBText57: TRLDBText;
    RLDBText58: TRLDBText;
    RLDBText59: TRLDBText;
    RLBand13: TRLBand;
    RLDBText60: TRLDBText;
    RLDBImage5: TRLDBImage;
    RLDBText61: TRLDBText;
    RLDBText62: TRLDBText;
    RLDBText63: TRLDBText;
    RLDBText64: TRLDBText;
    RLDBText65: TRLDBText;
    RLBand9: TRLBand;
    DSTMP: TDataSource;
    RLBand14: TRLBand;
    RLLabel29: TRLLabel;
    lblpeso: TRLLabel;
    lbltolerancia: TRLLabel;
    lblpesotolerado: TRLLabel;
    lblpesopermitido: TRLLabel;
    lblexcesso: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText66: TRLDBText;
    RLDBText67: TRLDBText;
    RLDBText68: TRLDBText;
    RLDraw1: TRLDraw;
    procedure RLReport2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand14BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesagemRel: TFPesagemRel;
  peso, tolerancia, pesopermitido, pesotolerado, excesso : double;

implementation

uses UDM;

{$R *.dfm}

procedure TFPesagemRel.RLReport2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     peso := 0;
     tolerancia := 0;
     pesopermitido := 0;
     pesotolerado := 0;
     excesso := 0;
end;

procedure TFPesagemRel.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     peso := peso + DM.CDSPesagemPESPESO.asfloat;
     tolerancia := tolerancia + DM.CDSPesagemPESTOLERANCIA.asfloat;
     pesopermitido := pesopermitido + DM.CDSPesagemPESPESOPERMITIDO.asfloat;
     pesotolerado := pesotolerado + DM.CDSPesagemtolerancia.asfloat;
     excesso := excesso + DM.CDSPesagemexcesso.asfloat;
end;

procedure TFPesagemRel.RLBand14BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     lblpeso.caption := formatfloat('#,###,###0.00', peso);
     lbltolerancia.caption := formatfloat('#,###,###0.00', tolerancia);
     lblpesopermitido.caption := formatfloat('#,###,###0.00', pesopermitido);
     lblpesotolerado.caption := formatfloat('#,###,###0.00', pesotolerado);
     lblexcesso.caption := formatfloat('#,###,###0.00', excesso);
end;

end.
