unit UContaClienteRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TFContaClienteRel = class(TForm)
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
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    QCredito: TSQLQuery;
    QCreditoSUM: TFMTBCDField;
    DSPCredito: TDataSetProvider;
    CDSCredito: TClientDataSet;
    CDSCreditoSUM: TFMTBCDField;
    CDSDebito: TClientDataSet;
    CDSDebitoSUM: TFMTBCDField;
    DSPDebito: TDataSetProvider;
    QDebito: TSQLQuery;
    QDebitoSUM: TFMTBCDField;
    RLLabel10: TRLLabel;
    RLLabel9: TRLLabel;
    QTMP: TSQLQuery;
    DSTmp: TDataSource;
    CDSTmp: TClientDataSet;
    DSPTmp: TDataSetProvider;
    QTMPTMPCLIENTE: TStringField;
    QTMPTMPDATA: TDateField;
    QTMPTMPCODIGO: TIntegerField;
    QTMPTMPSALDOANT: TFMTBCDField;
    QTMPTMPTIPO: TStringField;
    QTMPTMPVALOR: TFMTBCDField;
    QTMPTMPSALDO: TFMTBCDField;
    QTMPTMPOBS: TStringField;
    CDSTmpTMPCLIENTE: TStringField;
    CDSTmpTMPDATA: TDateField;
    CDSTmpTMPCODIGO: TIntegerField;
    CDSTmpTMPSALDOANT: TFMTBCDField;
    CDSTmpTMPTIPO: TStringField;
    CDSTmpTMPVALOR: TFMTBCDField;
    CDSTmpTMPSALDO: TFMTBCDField;
    CDSTmpTMPOBS: TStringField;
    RLGroup1: TRLGroup;
    RLBand6: TRLBand;
    RLBand7: TRLBand;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    lblsaldo: TRLLabel;
    procedure CDSDebitoAfterClose(DataSet: TDataSet);
    procedure CDSDebitoBeforeOpen(DataSet: TDataSet);
    procedure CDSCreditoAfterClose(DataSet: TDataSet);
    procedure CDSCreditoBeforeOpen(DataSet: TDataSet);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FContaClienteRel: TFContaClienteRel;
  saldo : double = 0;

implementation

uses UDM, UContaCliente;

{$R *.dfm}

procedure TFContaClienteRel.CDSDebitoAfterClose(DataSet: TDataSet);
begin
     qdebito.close; 
end;

procedure TFContaClienteRel.CDSDebitoBeforeOpen(DataSet: TDataSet);
begin
     qdebito.open;
end;

procedure TFContaClienteRel.CDSCreditoAfterClose(DataSet: TDataSet);
begin
     qcredito.close;
end;

procedure TFContaClienteRel.CDSCreditoBeforeOpen(DataSet: TDataSet);
begin
     qcredito.open;
end;

procedure TFContaClienteRel.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     lblsaldo.caption := 'Saldo Final: ' + formatfloat('0.00', saldo);  
end;

procedure TFContaClienteRel.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     saldo := CDSTmpTMPSALDO.asfloat;
end;

end.
