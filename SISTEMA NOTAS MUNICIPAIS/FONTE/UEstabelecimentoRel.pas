unit UEstabelecimentoRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, FMTBcd, DB, DBClient, Provider, SqlExpr,
  Grids, DBGrids;

type
  TFEstabelecimentoRel = class(TForm)
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
    RLDBText9: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLReportAti: TRLReport;
    RLBand6: TRLBand;
    RLDBText12: TRLDBText;
    RLDBImage3: TRLDBImage;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLBand7: TRLBand;
    RLDBImage4: TRLDBImage;
    RLDBRichText2: TRLDBRichText;
    RLBand8: TRLBand;
    RLLabel7: TRLLabel;
    RLBand9: TRLBand;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand11: TRLBand;
    RLLabel13: TRLLabel;
    RLDBText23: TRLDBText;
    RLBand10: TRLBand;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    QRel: TSQLQuery;
    DSPRel: TDataSetProvider;
    CDSRel: TClientDataSet;
    DSRel: TDataSource;
    QRelESTCOD: TIntegerField;
    QRelESTNOME: TStringField;
    QRelESTFONE: TStringField;
    QRelESTRENOVACAO: TIntegerField;
    QRelESTCNPJCPF: TStringField;
    QRelATINOME: TStringField;
    CDSRelESTCOD: TIntegerField;
    CDSRelESTNOME: TStringField;
    CDSRelESTFONE: TStringField;
    CDSRelESTRENOVACAO: TIntegerField;
    CDSRelESTCNPJCPF: TStringField;
    CDSRelATINOME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstabelecimentoRel: TFEstabelecimentoRel;

implementation

uses UDM;

{$R *.dfm}

end.
