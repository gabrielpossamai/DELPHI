unit UFProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLRichText, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
  WSEdit, RXCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TFFProduto = class(TForm)
    lbltitulo: TLabel;
    PanPesquisa: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    btngrupo: TRxSpeedButton;
    txtcodini: TWSEdit;
    txtgrupo: TWSEdit;
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
    lblgrupo: TRLLabel;
    lblpreco: TRLLabel;
    lblestoque: TRLLabel;
    lblcusto: TRLLabel;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    txtrelgrupo: TRLDBText;
    txtpreco: TRLDBText;
    txtestoque: TRLDBText;
    txtcusto: TRLDBText;
    txtcodfin: TWSEdit;
    Label1: TLabel;
    RGModelo: TRadioGroup;
    Label2: TLabel;
    txtcliente: TWSEdit;
    btncliente: TRxSpeedButton;
    QRel: TSQLQuery;
    DSPRel: TDataSetProvider;
    CDSRel: TClientDataSet;
    DSRel: TDataSource;
    QRelPROCOD: TIntegerField;
    QRelPRONOME: TStringField;
    QRelPROCUSTOATUUNI: TFloatField;
    QRelPROESTOQUE: TFMTBCDField;
    QRelPROVALOR: TFMTBCDField;
    QRelGRUNOME: TStringField;
    CDSRelPROCOD: TIntegerField;
    CDSRelPRONOME: TStringField;
    CDSRelPROCUSTOATUUNI: TFloatField;
    CDSRelPROESTOQUE: TFMTBCDField;
    CDSRelPROVALOR: TFMTBCDField;
    CDSRelGRUNOME: TStringField;
    QCompradores: TSQLQuery;
    DSPCompradores: TDataSetProvider;
    CDSCompradores: TClientDataSet;
    DSCompradores: TDataSource;
    RLReportCompradores: TRLReport;
    RLBand6: TRLBand;
    RLDBText13: TRLDBText;
    RLDBImage3: TRLDBImage;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLBand7: TRLBand;
    RLDBImage4: TRLDBImage;
    RLDBRichText2: TRLDBRichText;
    RLBand8: TRLBand;
    RLLabel8: TRLLabel;
    RLBand9: TRLBand;
    RLLabel12: TRLLabel;
    RLGroup: TRLGroup;
    RLBand11: TRLBand;
    RLBand12: TRLBand;
    RLBand13: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    QCompradoresQUANT: TFloatField;
    QCompradoresPRONOME: TStringField;
    QCompradoresCLINOME: TStringField;
    CDSCompradoresQUANT: TFloatField;
    CDSCompradoresPRONOME: TStringField;
    CDSCompradoresCLINOME: TStringField;
    QCompradoresPROCOD: TIntegerField;
    CDSCompradoresPROCOD: TIntegerField;
    RLLabel13: TRLLabel;
    bandtotal: TRLBand;
    RLLabel14: TRLLabel;
    RLDBResult1: TRLDBResult;
    CDSReltotal: TFloatField;
    GBMostrar: TGroupBox;
    chkcusto: TCheckBox;
    chkestoque: TCheckBox;
    chkpreco: TCheckBox;
    Label3: TLabel;
    chkgrupo: TCheckBox;
    chkestoquezero: TCheckBox;
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtcodfinKeyPress(Sender: TObject; var Key: Char);
    procedure btngrupoClick(Sender: TObject);
    procedure btnclienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure txtclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSRelCalcFields(DataSet: TDataSet);
    procedure RGModeloClick(Sender: TObject);
    procedure chkcustoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFProduto: TFFProduto;

implementation

uses UDM, UGrupoProd, UCliente, UMenu;

{$R *.dfm}

procedure TFFProduto.BtnImprimirClick(Sender: TObject);
begin
     if rgmodelo.itemindex = 0 then
     begin
          with qrel.sql do
          begin
               clear;
               add('SELECT PROCOD, PRONOME, PROCUSTOATUUNI, PROESTOQUE, PROVALOR, GRUNOME');
               add('FROM TPRODUTO LEFT OUTER JOIN TGRUPOPROD ON GRUCOD = PROGRUPO');
               add('WHERE PROCOD <> 0');
               if chkestoquezero.Checked then
                   add('AND PROESTOQUE <= 0.1');
               if trim(txtgrupo.text) <> '' then
                   add('AND GRUCOD = ' + txtgrupo.text);
               if trim(txtcodini.text) <> '' then
                   add('AND PROCOD >= ' + txtcodini.text);
               if trim(txtcodfin.text) <> '' then
                   add('AND PROCOD <= ' + txtcodfin.text);
               case RGOrdem.itemindex of
                  0 : add('ORDER BY PRONOME');
                  1 : add('ORDER BY PROCOD');
               end;
          end;
          cdsrel.open;
          RLReport.PreviewModal;
          cdsrel.close;
     end
     else
     begin
          with qcompradores.sql do
          begin
               clear;
               add('SELECT SUM(ITEQUANT) AS QUANT, PROCOD, PRONOME, CLINOME');
               add('FROM');
               add('    TNOTAFISC INNER JOIN TCLIENTE ON CLICOD = NOTCLIENTE,');
               add('    TITEMNOTAFISC INNER JOIN TPRODUTO ON PROCOD = ITEPRODUTO');
               add('WHERE NOTNUMERO = ITENUMERO');
               if trim(txtgrupo.text) <> '' then
                   add('AND PROGRUPO = ' + txtgrupo.text);
               if trim(txtcodini.text) <> '' then
                   add('AND PROCOD >= ' + txtcodini.text);
               if trim(txtcodfin.text) <> '' then
                   add('AND PROCOD <= ' + txtcodfin.text);
               add('GROUP BY PROCOD, PRONOME, CLINOME');
               case RGOrdem.itemindex of
                  0 : add('ORDER BY PRONOME,1');
                  1 : add('ORDER BY PROCOD,1');
               end;
          end;
          CDSCompradores.open;
          case RGOrdem.itemindex of
             0 : RLGroup.DataFields := 'PRONOME';
             1 : RLGroup.DataFields := 'PROCOD';
          end;
          RLReportCompradores.PreviewModal;
          cdscompradores.close;
     end;
end;

procedure TFFProduto.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFFProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;
end;

procedure TFFProduto.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFFProduto.txtcodfinKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
         btnimprimir.click;
end;

procedure TFFProduto.btngrupoClick(Sender: TObject);
begin
     try
         fgrupoprod := tfgrupoprod.create(self);
         usuario('btnconsultar',fgrupoprod.wsinformacao.programa);
         dm.cdsgrupo.open;
         fgrupoprod.showmodal;
         txtgrupo.text := dm.cdsgrupoprodgrucod.asstring;
     finally
         fgrupoprod.release;
         fgrupoprod:= nil;
         fgrupoprod.free;
     end;
end;

procedure TFFProduto.btnclienteClick(Sender: TObject);
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

procedure TFFProduto.FormShow(Sender: TObject);
begin
     setCaption(sender as tform);
end;

procedure TFFProduto.txtclienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_f3 then
    begin
         if sender = txtgrupo then
              btngrupo.click;
         if sender = txtcliente then
              btncliente.click;
    end;
end;

procedure TFFProduto.CDSRelCalcFields(DataSet: TDataSet);
begin
     CDSReltotal.asfloat := CDSRelPROESTOQUE.asfloat * CDSRelPROVALOR.asfloat;
end;

procedure TFFProduto.RGModeloClick(Sender: TObject);
begin
     GBMostrar.enabled := rgmodelo.ItemIndex = 0;
     chkestoquezero.Enabled := rgmodelo.ItemIndex = 0;
end;

procedure TFFProduto.chkcustoClick(Sender: TObject);
begin
     lblcusto.Visible := chkcusto.Checked;
     txtcusto.Visible := chkcusto.Checked;

     lblestoque.Visible := chkestoque.Checked;
     txtestoque.Visible := chkestoque.Checked;

     lblpreco.Visible := chkpreco.Checked;
     txtpreco.Visible := chkpreco.Checked;

     lblgrupo.Visible := chkgrupo.Checked;
     txtrelgrupo.Visible := chkgrupo.Checked;

     bandtotal.Visible := (chkestoque.Checked) and (  chkpreco.Checked);
end;

end.
