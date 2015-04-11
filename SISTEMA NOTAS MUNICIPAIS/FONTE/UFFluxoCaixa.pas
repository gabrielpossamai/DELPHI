unit UFFluxoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
  WSEdit, RXCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask,
  WSMaskEdit, DateUtils, Grids, DBGrids;

type
  TFFFluxoCaixa = class(TForm)
    lbltitulo: TLabel;
    PanPesquisa: TPanel;
    ToolBarNavegacao: TToolBar;
    BtnImprimir: TToolButton;
    ToolButton1: TToolButton;
    btnsair: TToolButton;
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
    RLLabel7: TRLLabel;
    Label2: TLabel;
    txtgrupo: TWSEdit;
    btngrupo: TRxSpeedButton;
    QRel: TSQLQuery;
    DSPRel: TDataSetProvider;
    CDSRel: TClientDataSet;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    Label1: TLabel;
    RLBand6: TRLBand;
    RLLabel8: TRLLabel;
    txtano: TWSMaskEdit;
    txtsaldo: TWSEdit;
    Label4: TLabel;
    QRelMES: TSmallintField;
    QRelCAIGRUPO: TIntegerField;
    QRelGRUCAINOME: TStringField;
    QRelENTRADA: TFMTBCDField;
    QRelSAIDA: TFMTBCDField;
    CDSRelMES: TSmallintField;
    CDSRelCAIGRUPO: TIntegerField;
    CDSRelGRUCAINOME: TStringField;
    CDSRelENTRADA: TFMTBCDField;
    CDSRelSAIDA: TFMTBCDField;
    DSFluxo: TDataSource;
    CDSFluxo: TClientDataSet;
    DSPFluxo: TDataSetProvider;
    QFluxo: TSQLQuery;
    QFluxoTMPTIPO: TStringField;
    QFluxoTMPGRUPO: TIntegerField;
    QFluxoTMPNOMEGRUPO: TStringField;
    QFluxoTMPVALOR1: TFloatField;
    QFluxoTMPVALOR2: TFloatField;
    QFluxoTMPVALOR3: TFloatField;
    QFluxoTMPVALOR4: TFloatField;
    QFluxoTMPVALOR5: TFloatField;
    QFluxoTMPVALOR6: TFloatField;
    QFluxoTMPVALOR7: TFloatField;
    QFluxoTMPVALOR8: TFloatField;
    QFluxoTMPVALOR9: TFloatField;
    QFluxoTMPVALOR10: TFloatField;
    QFluxoTMPVALOR11: TFloatField;
    QFluxoTMPVALOR12: TFloatField;
    CDSFluxoTMPTIPO: TStringField;
    CDSFluxoTMPGRUPO: TIntegerField;
    CDSFluxoTMPNOMEGRUPO: TStringField;
    CDSFluxoTMPVALOR1: TFloatField;
    CDSFluxoTMPVALOR2: TFloatField;
    CDSFluxoTMPVALOR3: TFloatField;
    CDSFluxoTMPVALOR4: TFloatField;
    CDSFluxoTMPVALOR5: TFloatField;
    CDSFluxoTMPVALOR6: TFloatField;
    CDSFluxoTMPVALOR7: TFloatField;
    CDSFluxoTMPVALOR8: TFloatField;
    CDSFluxoTMPVALOR9: TFloatField;
    CDSFluxoTMPVALOR10: TFloatField;
    CDSFluxoTMPVALOR11: TFloatField;
    CDSFluxoTMPVALOR12: TFloatField;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand7: TRLBand;
    RLBand8: TRLBand;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLDBResult7: TRLDBResult;
    RLDBResult8: TRLDBResult;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    lblsaldofin1: TRLLabel;
    lblsaldofin2: TRLLabel;
    lblsaldofin4: TRLLabel;
    lblsaldofin3: TRLLabel;
    lblsaldofin8: TRLLabel;
    lblsaldofin7: TRLLabel;
    lblsaldofin6: TRLLabel;
    lblsaldofin5: TRLLabel;
    lblsaldofin12: TRLLabel;
    lblsaldofin11: TRLLabel;
    lblsaldofin10: TRLLabel;
    lblsaldofin9: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel16: TRLLabel;
    lblsaldo1: TRLLabel;
    lblsaldo2: TRLLabel;
    lblsaldo4: TRLLabel;
    lblsaldo3: TRLLabel;
    lblsaldo8: TRLLabel;
    lblsaldo7: TRLLabel;
    lblsaldo6: TRLLabel;
    lblsaldo5: TRLLabel;
    lblsaldo12: TRLLabel;
    lblsaldo11: TRLLabel;
    lblsaldo10: TRLLabel;
    lblsaldo9: TRLLabel;
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btngrupoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtgrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtanoKeyPress(Sender: TObject; var Key: Char);
    procedure RLReportBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFFluxoCaixa: TFFFluxoCaixa;

implementation

uses UDM, UGrupoProd, UCliente, UMenu, UGrupoCaixa;

{$R *.dfm}

procedure TFFFluxoCaixa.BtnImprimirClick(Sender: TObject);
begin
     try
          strtoint(txtano.text);
     except
          showmessage('Campo ano inválido!');
          txtano.setfocus;
          exit;
     end;
     try
          strtofloat(txtsaldo.text);
     except
          showmessage('Campo saldo anterior inválido!');
          txtsaldo.setfocus;
          exit;
     end;
     with qrel.sql do
     begin
          clear;
          add('SELECT EXTRACT(MONTH FROM CAIDATA) AS MES, CAIGRUPO, GRUCAINOME, SUM(CAIENTRADA) AS ENTRADA, SUM(CAISAIDA) AS SAIDA');
          add('FROM TCAIXA LEFT OUTER JOIN TGRUPOCAIXA ON GRUCAICOD = CAIGRUPO');
          add('WHERE EXTRACT(YEAR FROM CAIDATA) = ' + txtano.text);
          if trim(txtgrupo.text) <> '' then
              add('AND CAIGRUPO = ' + trim(txtgrupo.text));
          add('GROUP BY 1, CAIGRUPO, GRUCAINOME');
     end;
     CDSREl.open;

     execsql('DELETE FROM TTMPFLUXO;');
     cdsfluxo.Open;
     cdsrel.First;
     while not cdsrel.eof do
     begin
          if CDSRelENTRADA.asfloat > 0 then
          begin
               if cdsfluxo.locate('TMPTIPO;TMPGRUPO', vararrayof(['E', CDSRelCAIGRUPO.asinteger]), []) then
                    cdsfluxo.edit
               else
                    cdsfluxo.Append;
               CDSFluxo.FieldByName('TMPVALOR' + inttostr(CDSRelMES.AsInteger)).asfloat := CDSRelENTRADA.asfloat;
               cdsfluxo.FieldByName('TMPTIPO').asstring := 'E';
          end
          else
          begin
               if cdsfluxo.locate('TMPTIPO;TMPGRUPO', vararrayof(['S', CDSRelCAIGRUPO.asinteger]), []) then
                    cdsfluxo.edit
               else
                    cdsfluxo.Append;
               CDSFluxo.FieldByName('TMPVALOR' + inttostr(CDSRelMES.AsInteger)).asfloat := CDSRelSAIDA.asfloat;
               cdsfluxo.FieldByName('TMPTIPO').asstring := 'S';
          end;
          CDSFluxo.FieldByName('TMPGRUPO').asinteger := CDSRelCAIGRUPO.asinteger;
          CDSFluxo.FieldByName('TMPNOMEGRUPO').asstring := CDSRelGRUCAINOME.asstring;
          cdsfluxo.post;
          cdsrel.next;
     end;
     cdsfluxo.applyupdates(0);        
     CDSRel.close;
     RLReport.PreviewModal;
     cdsfluxo.close;
end;

procedure TFFFluxoCaixa.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFFFluxoCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFFFluxoCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = 27) and (btnsair.enabled = true) then
        btnsair.click;
    if (Key = VK_F8) and (btnimprimir.enabled = true) then
        btnimprimir.Click;
    if (key = 13) or (key = 40) then
           Perform (WM_nextDlgCtl,0,0);
    if (key = 38) then
            Perform (WM_nextDlgCtl,1,0);
end;

procedure TFFFluxoCaixa.btngrupoClick(Sender: TObject);
begin
     try
         fgrupocaixa := tfgrupocaixa.create(self);
         usuario('btnconsultar',fgrupocaixa.wsinformacao.programa);
         dm.cdsgrupocaixa.open;
         fgrupocaixa.showmodal;
         txtgrupo.text := dm.cdsgrupocaixagrucaicod.asstring;
     finally
         fgrupocaixa.release;
         fgrupocaixa := nil;
         fgrupocaixa.free;
     end;
end;

procedure TFFFluxoCaixa.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
     txtano.text := inttostr(yearof(date));
end;

procedure TFFFluxoCaixa.txtgrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_f3 then
    begin
         if sender = txtgrupo then
              btngrupo.click;
    end;
end;

procedure TFFFluxoCaixa.txtanoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
         btnimprimir.click;
end;

procedure TFFFluxoCaixa.RLReportBeforePrint(Sender: TObject;
  var PrintIt: Boolean);

  function totalfluxo(tipo : string; numero : byte) : double;
  begin
       result := sqltotal('SELECT SUM(TMPVALOR' + inttostr(numero) + ') FROM TTMPFLUXO WHERE TMPTIPO = ' + quotedstr(tipo));
  end;

begin
     lblsaldo1.Caption := txtsaldo.text;
     lblsaldofin1.Caption := floattostr(strtofloat(lblsaldo1.caption) + totalfluxo('E',1) - totalfluxo('S',1));
     lblsaldo2.Caption := lblsaldofin1.Caption;
     lblsaldofin2.Caption := floattostr(strtofloat(lblsaldo2.caption) + totalfluxo('E',2) - totalfluxo('S',2));
     lblsaldo3.Caption := lblsaldofin2.Caption;
     lblsaldofin3.Caption := floattostr(strtofloat(lblsaldo3.caption) + totalfluxo('E',3) - totalfluxo('S',3));
     lblsaldo4.Caption := lblsaldofin3.Caption;
     lblsaldofin4.Caption := floattostr(strtofloat(lblsaldo4.caption) + totalfluxo('E',4) - totalfluxo('S',4));
     lblsaldo5.Caption := lblsaldofin4.Caption;
     lblsaldofin5.Caption := floattostr(strtofloat(lblsaldo5.caption) + totalfluxo('E',5) - totalfluxo('S',5));
     lblsaldo6.Caption := lblsaldofin5.Caption;
     lblsaldofin6.Caption := floattostr(strtofloat(lblsaldo6.caption) + totalfluxo('E',6) - totalfluxo('S',6));
     lblsaldo7.Caption := lblsaldofin6.Caption;
     lblsaldofin7.Caption := floattostr(strtofloat(lblsaldo7.caption) + totalfluxo('E',7) - totalfluxo('S',7));
     lblsaldo8.Caption := lblsaldofin7.Caption;
     lblsaldofin8.Caption := floattostr(strtofloat(lblsaldo8.caption) + totalfluxo('E',8) - totalfluxo('S',8));
     lblsaldo9.Caption := lblsaldofin8.Caption;
     lblsaldofin9.Caption := floattostr(strtofloat(lblsaldo9.caption) + totalfluxo('E',9) - totalfluxo('S',9));
     lblsaldo10.Caption := lblsaldofin9.Caption;
     lblsaldofin10.Caption := floattostr(strtofloat(lblsaldo10.caption) + totalfluxo('E',10) - totalfluxo('S',10));
     lblsaldo11.Caption := lblsaldofin10.Caption;
     lblsaldofin11.Caption := floattostr(strtofloat(lblsaldo11.caption) + totalfluxo('E',11) - totalfluxo('S',11));
     lblsaldo12.Caption := lblsaldofin11.Caption;
     lblsaldofin12.Caption := floattostr(strtofloat(lblsaldo12.caption) + totalfluxo('E',12) - totalfluxo('S',12));
end;

end.
