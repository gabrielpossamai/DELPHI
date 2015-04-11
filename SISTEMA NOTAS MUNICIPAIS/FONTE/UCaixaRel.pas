unit UCaixaRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TFCaixaRel = class(TForm)
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
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel8: TRLLabel;
    lblsaldo: TRLLabel;
    RLLabel9: TRLLabel;
    lblsaldoant: TRLLabel;
    RLBand6: TRLBand;
    RLLabel10: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel11: TRLLabel;
    RLDBText13: TRLDBText;
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCaixaRel: TFCaixaRel;
  saldo, entrada, saida: double;

implementation

uses UDM, UCaixa;

{$R *.dfm}

procedure TFCaixaRel.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     saldo := saldo + dm.CDSCaixaCAIENTRADA.asfloat - dm.CDSCaixaCAISAIDA.asfloat;
     lblsaldo.caption := formatfloat('#,###,###0.00', saldo);
end;

procedure TFCaixaRel.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     lblsaldoant.caption := formatfloat('#,###,###0.00', fcaixa.cdssaldoantsum.asfloat);
end;

end.
