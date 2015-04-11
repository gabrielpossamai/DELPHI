unit UFVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
  WSEdit, RXCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask,
  WSMaskEdit;

type
  TFFVenda = class(TForm)
    lbltitulo: TLabel;
    PanPesquisa: TPanel;
    RGOrdem: TRadioGroup;
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
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText12: TRLDBText;
    Label2: TLabel;
    txtcliente: TWSEdit;
    btncliente: TRxSpeedButton;
    QRel: TSQLQuery;
    DSPRel: TDataSetProvider;
    CDSRel: TClientDataSet;
    DSRel: TDataSource;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText11: TRLDBText;
    QRelNOTNUMERO: TIntegerField;
    QRelNOTEMISSAO: TDateField;
    QRelNOTCFOP: TStringField;
    QRelCLINOME: TStringField;
    QRelPLANOME: TStringField;
    QRelNOTTOTAL: TFloatField;
    CDSRelNOTNUMERO: TIntegerField;
    CDSRelNOTEMISSAO: TDateField;
    CDSRelNOTCFOP: TStringField;
    CDSRelCLINOME: TStringField;
    CDSRelPLANOME: TStringField;
    CDSRelNOTTOTAL: TFloatField;
    Label1: TLabel;
    Label3: TLabel;
    RLBand6: TRLBand;
    RLLabel8: TRLLabel;
    RLDBResult1: TRLDBResult;
    txtdataini: TWSMaskEdit;
    txtdatafin: TWSMaskEdit;
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnclienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtdatafinKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFVenda: TFFVenda;

implementation

uses UDM, UGrupoProd, UCliente, UMenu;

{$R *.dfm}

procedure TFFVenda.BtnImprimirClick(Sender: TObject);
begin
     with qrel.sql do
     begin
          clear;
          add('SELECT NOTNUMERO, NOTEMISSAO, NOTCFOP, CLINOME, PLANOME, NOTTOTAL');
          add('FROM TNOTAFISC');
          add('   INNER JOIN TCLIENTE ON CLICOD = NOTCLIENTE');
          add('   INNER JOIN TPLANOPGTO ON PLACOD = NOTPLANOPGTO');
          if txtdataini.text <> '  /  /    ' then
              add('AND NOTEMISSAO >= :DATAINI');
          if txtdatafin.text <> '  /  /    ' then
              add('AND NOTEMISSAO <= :DATAFIN');
          case RGOrdem.itemindex of
             0 : add('ORDER BY CLINOME,NOTNUMERO');
             1 : add('ORDER BY NOTNUMERO');
          end;
     end;
     if txtdataini.text <> '  /  /    ' then
         qrel.parambyname('DATAINI').asdatetime := strtodate(txtdataini.text);
     if txtdatafin.text <> '  /  /    ' then
         qrel.parambyname('DATAFIN').asdatetime := strtodate(txtdatafin.text);
     CDSREl.open;
     RLReport.PreviewModal;
     CDSRel.close;
end;

procedure TFFVenda.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFFVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFFVenda.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFFVenda.btnclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         dm.cdscliente.open;
         fcliente.showmodal;
         txtcliente.text := dm.cdsclienteclicod.asstring;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

procedure TFFVenda.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
end;

procedure TFFVenda.txtclienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_f3 then
    begin
         if sender = txtcliente then
              btncliente.click;
    end;
end;

procedure TFFVenda.txtdatafinKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
         btnimprimir.click;
end;

end.
