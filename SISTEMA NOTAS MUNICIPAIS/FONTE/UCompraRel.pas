unit UCompraRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, FMTBcd, DBClient, DB, SqlExpr, Provider,
  Grids, DBGrids, Buttons;

type
  TFCompraRel = class(TForm)
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
    RLDBText7: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel1: TRLLabel;
    RLBand9: TRLBand;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText8: TRLDBText;
    QRelCOMDESCRICAO: TStringField;
    QRelCOMDATA: TDateField;
    QRelCOMNUMERO: TIntegerField;
    QRelPRONOME: TStringField;
    QRelITESEQ: TIntegerField;
    QRelITEPESOINI: TFMTBCDField;
    QRelITEPESOFIN: TFMTBCDField;
    QRelITEPESOTOTAL: TFMTBCDField;
    CDSRelCOMDESCRICAO: TStringField;
    CDSRelCOMDATA: TDateField;
    CDSRelCOMNUMERO: TIntegerField;
    CDSRelPRONOME: TStringField;
    CDSRelITESEQ: TIntegerField;
    CDSRelITEPESOINI: TFMTBCDField;
    CDSRelITEPESOFIN: TFMTBCDField;
    CDSRelITEPESOTOTAL: TFMTBCDField;
    QRelPROMULTIPLICADOR: TFMTBCDField;
    CDSRelPROMULTIPLICADOR: TFMTBCDField;
    RLDBText12: TRLDBText;
    RLLabel8: TRLLabel;
    CDSRelpreco: TFloatField;
    QRelPROVALOR: TFMTBCDField;
    CDSRelPROVALOR: TFMTBCDField;
    QProduto: TSQLQuery;
    DSProduto: TDataSource;
    CDSProduto: TClientDataSet;
    DSPProduto: TDataSetProvider;
    RLReportProduto: TRLReport;
    RLBand3: TRLBand;
    RLDBText14: TRLDBText;
    RLDBImage3: TRLDBImage;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLBand6: TRLBand;
    RLDBImage4: TRLDBImage;
    RLDBRichText2: TRLDBRichText;
    RLBand8: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLBand12: TRLBand;
    RLDBText21: TRLDBText;
    RLDBText24: TRLDBText;
    RLBand10: TRLBand;
    lbltotal: TRLLabel;
    RLLabel14: TRLLabel;
    QProdutoPRONOME: TStringField;
    QProdutoPESOLIQ: TFMTBCDField;
    CDSProdutoPRONOME: TStringField;
    CDSProdutoPESOLIQ: TFMTBCDField;
    RLLabel10: TRLLabel;
    RLDBText20: TRLDBText;
    QRelITEPRECO: TFMTBCDField;
    CDSRelITEPRECO: TFMTBCDField;
    procedure CDSRelCalcFields(DataSet: TDataSet);
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
  FCompraRel: TFCompraRel;
  total : double = 0;
  
implementation

uses UDM;

{$R *.dfm}

procedure TFCompraRel.CDSRelCalcFields(DataSet: TDataSet);
begin
     CDSRelpreco.asfloat := CDSRelITEPESOTOTAL.asfloat * CDSRelPROVALOR.asfloat * CDSRelPROMULTIPLICADOR.asfloat;
end;

procedure TFCompraRel.RLReportProdutoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     total := 0;  
end;

procedure TFCompraRel.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     total := total + CDSProdutoPESOLIQ.asfloat;
end;

procedure TFCompraRel.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     lbltotal.caption := formatfloat('#,###,###0.00', total);
end;

end.
