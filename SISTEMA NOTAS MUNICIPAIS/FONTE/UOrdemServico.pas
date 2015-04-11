unit UOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, Buttons, WSMaskEdit, WSDBComboBox, dateutils, WSDBMemo,
  RLReport, RLRichText;

type
  TFOrdemServico = class(TForm)
    lbltitulo: TLabel;
    ToolBarNavegacao: TToolBar;
    BtnPrimeiro: TToolButton;
    BtnAnterior: TToolButton;
    BtnProximo: TToolButton;
    BtnUltimo: TToolButton;
    ToolButton10: TToolButton;
    BtnIncluir: TToolButton;
    btnnovopadrao: TToolButton;
    BtnAlterar: TToolButton;
    BtnExcluir: TToolButton;
    ToolButton14: TToolButton;
    BtnImprimir: TToolButton;
    btnhtml: TToolButton;
    btnexcel: TToolButton;
    ToolButton19: TToolButton;
    btndesconectar: TToolButton;
    BtnFiltro: TToolButton;
    ToolButton22: TToolButton;
    btnexportar: TToolButton;
    btnimportar: TToolButton;
    ToolButton1: TToolButton;
    btnsair: TToolButton;
    PageControl: TPageControl;
    TabConsulta: TTabSheet;
    TabCadastro: TTabSheet;
    DataSource: TDataSource;
    BtnCancelar: TToolButton;
    BtnSalvar: TToolButton;
    ToolButton4: TToolButton;
    DBGrid: TDBGrid;
    PanPesquisa: TPanel;
    lblpesq: TLabel;
    txtpesquisa: TWSEdit;
    Label6: TLabel;
    Label7: TLabel;
    panimpressao: TPanel;
    Image1: TImage;
    btnrelmecanico: TSpeedButton;
    btnrelcliente: TSpeedButton;
    Label19: TLabel;
    txtfiltrofinal: TWSMaskEdit;
    txtfiltroinicial: TWSMaskEdit;
    PageControlCad: TPageControl;
    TabPrincipal: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    btncliente: TRxSpeedButton;
    btnplaca: TRxSpeedButton;
    Label16: TLabel;
    txtdata: TWSDBEdit;
    txtnumero: TWSDBEdit;
    txtcodcliente: TWSDBEdit;
    txtcliente: TWSDBEdit;
    txtoperacao: TWSDBComboBox;
    TabSheet1: TTabSheet;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    txttotal: TWSDBEdit;
    WSDBEdit10: TWSDBEdit;
    Label21: TLabel;
    Label24: TLabel;
    WSDBEdit13: TWSDBEdit;
    Label25: TLabel;
    WSDBEdit14: TWSDBEdit;
    Label26: TLabel;
    Label30: TLabel;
    txtcodforma: TWSDBEdit;
    btnforma: TRxSpeedButton;
    txtforma: TWSDBEdit;
    WSDBEdit21: TWSDBEdit;
    Label31: TLabel;
    txtcodbanco: TWSDBEdit;
    btnbanco: TRxSpeedButton;
    txtbanco: TWSDBEdit;
    Label32: TLabel;
    DBGrid3: TDBGrid;
    DBGrid2: TDBGrid;
    Label37: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    txtatucontpag: TWSDBEdit;
    WSDBEdit1: TWSDBEdit;
    Label1: TLabel;
    Label38: TLabel;
    txtobs: TWSDBMemo;
    WSInformacao: TWSInformacao;
    btnobs: TRxSpeedButton;
    RLReportCliente: TRLReport;
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
    RLLabel5: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText17: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand8: TRLBand;
    RLDBText29: TRLDBText;
    RLLabel20: TRLLabel;
    RLBand5: TRLBand;
    RLDBText8: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLBand6: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand9: TRLBand;
    RLDBText53: TRLDBText;
    RLDBText54: TRLDBText;
    RLBand10: TRLBand;
    RLLabel36: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText36: TRLDBText;
    DBGrid4: TDBGrid;
    Label33: TLabel;
    txtvendedor: TWSDBEdit;
    txtcodvendedor: TWSDBEdit;
    btnvendedor: TRxSpeedButton;
    PageControlItem: TPageControl;
    TabProduto: TTabSheet;
    TabServico: TTabSheet;
    Panel1: TPanel;
    Label5: TLabel;
    btnproduto: TRxSpeedButton;
    Label10: TLabel;
    Label34: TLabel;
    txtproduto: TWSEdit;
    ToolBarItem: TToolBar;
    btnsalvarprod: TToolButton;
    btnexcluirprod: TToolButton;
    txtprecoprod: TWSEdit;
    txtquantprod: TWSEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label9: TLabel;
    btnservico: TRxSpeedButton;
    Label35: TLabel;
    Label36: TLabel;
    txtservico: TWSEdit;
    ToolBar1: TToolBar;
    btnsalvarserv: TToolButton;
    btnexcluirserv: TToolButton;
    txtprecoserv: TWSEdit;
    txtquantserv: TWSEdit;
    DBGrid5: TDBGrid;
    WSDBEdit2: TWSDBEdit;
    WSDBEdit3: TWSDBEdit;
    WSDBEdit4: TWSDBEdit;
    RLDBText18: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLSubDetail3: TRLSubDetail;
    RLBand7: TRLBand;
    RLDBText41: TRLDBText;
    RLBand11: TRLBand;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText51: TRLDBText;
    RLDBText52: TRLDBText;
    RLBand12: TRLBand;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel12: TRLLabel;
    RLBand14: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLReportMecanico: TRLReport;
    RLBand13: TRLBand;
    RLDBText28: TRLDBText;
    RLDBImage3: TRLDBImage;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLBand15: TRLBand;
    RLDBImage4: TRLDBImage;
    RLDBRichText2: TRLDBRichText;
    RLBand16: TRLBand;
    RLLabel18: TRLLabel;
    RLBand17: TRLBand;
    RLLabel19: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText49: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText50: TRLDBText;
    RLDBText56: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText57: TRLDBText;
    RLDBText58: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand19: TRLBand;
    RLDBText60: TRLDBText;
    RLDBText61: TRLDBText;
    RLDBText64: TRLDBText;
    RLBand20: TRLBand;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLSubDetail6: TRLSubDetail;
    RLBand25: TRLBand;
    RLDBText74: TRLDBText;
    RLDBText75: TRLDBText;
    RLDBText78: TRLDBText;
    RLBand26: TRLBand;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    Label8: TLabel;
    txtfiltrocliente: TWSEdit;
    btnfiltroproduto: TRxSpeedButton;
    txtplaca: TWSDBEdit;
    Label11: TLabel;
    txtfone: TWSDBEdit;
    Label13: TLabel;
    RLDBText11: TRLDBText;
    RLDBText16: TRLDBText;
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure btnnovopadraoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure btndesconectarClick(Sender: TObject);
    procedure btnexportarClick(Sender: TObject);
    procedure btnimportarClick(Sender: TObject);
    procedure btnhtmlClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnexcelClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnFiltroClick(Sender: TObject);    
    procedure btnexcluirprodClick(Sender: TObject);
    procedure btnsalvarprodClick(Sender: TObject);
    procedure btnprodutoClick(Sender: TObject);
    procedure btnrelclienteClick(Sender: TObject);
    procedure btnrelmecanicoClick(Sender: TObject);
    procedure btnformaClick(Sender: TObject);
    procedure btnclienteClick(Sender: TObject);
    procedure btnplacaClick(Sender: TObject);
    procedure txtcodclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure WSDBEdit21Exit(Sender: TObject);
    procedure btnvendedorClick(Sender: TObject);
    procedure btnobsClick(Sender: TObject);
    procedure txtprecoprodKeyPress(Sender: TObject; var Key: Char);
    procedure btnservicoClick(Sender: TObject);
    procedure txtprecoservKeyPress(Sender: TObject; var Key: Char);
    procedure btnexcluirservClick(Sender: TObject);
    procedure btnsalvarservClick(Sender: TObject);
    procedure txttotalExit(Sender: TObject);
    procedure btnbancoClick(Sender: TObject);
    procedure txtservicoExit(Sender: TObject);
    procedure txtoperacaoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure txtprodutoExit(Sender: TObject);
    procedure btnfiltroprodutoClick(Sender: TObject);
    procedure txtcodclienteExit(Sender: TObject);
    procedure btngerarnotaClick(Sender: TObject);
  private
    { Private declarations }
    procedure total;
  public
    { Public declarations }
  end;

var
  FOrdemServico: TFOrdemServico;

implementation

uses UDM, UMenu, UProduto, UBanco, UCidade, UPlanoPgto,
  UCliente, UCfop, UObservacoes, UVeiculo, UServico, UClienteSimples,
  UNotaFisc;

{$R *.dfm}

procedure TFOrdemServico.total;
begin
     dm.CDSOrdemServicoORDTOTALPRODUTOS.asfloat := sqltotal('select sum(ordprototal) from tordemservicoproduto' +
                                                    ' where ordpronumero = ' + dm.CDSOrdemServicoORDNUMERO.asstring);

     dm.CDSOrdemServicoORDTOTALSERVICOS.asfloat := sqltotal('select sum(ordsertotal) from tordemservicoservico' +
                                                    ' where ordsernumero = ' + dm.CDSOrdemServicoORDNUMERO.asstring);

     dm.CDSOrdemServicoORDTOTAL.value :=  dm.CDSOrdemServicoORDTOTALPRODUTOS.value +
                                      dm.CDSOrdemServicoORDTOTALSERVICOS.value -
                                      dm.CDSOrdemServicoORDDESCONTO.value +
                                      dm.CDSOrdemServicoORDACRESCIMO.value;
end;

procedure TFOrdemServico.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFOrdemServico.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFOrdemServico.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFOrdemServico.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFOrdemServico.btnsairClick(Sender: TObject);
begin
     if DataSource.DataSet.active = false then
        DataSource.DataSet.open;
     close;
end;

procedure TFOrdemServico.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(FOrdemServico, false);

     if not datasource.dataset.active then
        btnfiltro.click;

     DataSource.DataSet.append;

     PageControl.ActivePage:=TabCadastro;
     Editar(FOrdemServico, true);
end;

procedure TFOrdemServico.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(FOrdemServico, false);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FOrdemServico, true);
     end;
end;

procedure TFOrdemServico.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(FOrdemServico, false);
     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage:=TabCadastro;
          Editar(FOrdemServico, false);
          DataSource.DataSet.Edit;
     end;
end;

procedure TFOrdemServico.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);

    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
             if dm.CDSOrdemServicoORDCONTREC.asinteger <> 0 then
                 execsql('DELETE FROM TCONTREC WHERE RECDOCUMENTO = ' + dm.CDSOrdemServicoORDCONTREC.asstring);
             while dm.CDSOrdemServicoProduto.recordcount > 0 do
             begin
                  dm.CDSOrdemServicoProduto.delete;
                  dm.CDSOrdemServicoProduto.ApplyUpdates(0);
             end;
             while dm.CDSOrdemServicoServico.recordcount > 0 do
             begin
                  dm.CDSOrdemServicoServico.delete;
                  dm.CDSOrdemServicoServico.ApplyUpdates(0);
             end;
             while dm.CDSOrdemServicoVcto.recordcount > 0 do
             begin
                  dm.CDSOrdemServicoVcto.delete;
                  dm.CDSOrdemServicoVcto.ApplyUpdates(0);
             end;
             DataSource.DataSet.Delete;
             (DataSource.DataSet as TClientDataSet).ApplyUpdates(0);
        end;
end;

procedure TFOrdemServico.BtnSalvarClick(Sender: TObject);
var cliente : integer;
begin
     PageControlCad.ActivePageIndex := 0;
     if trim(txtcodcliente.text) = '' then
     begin
          cliente := strtoint(executasqlretorno('select max(clicod) from tcliente')) + 1;
          dm.CDSCliente.append;
          dm.CDSClienteCLICOD.asinteger := cliente;
          dm.CDSClienteCLIFORNECEDOR.asstring := 'N';
          dm.CDSClienteCLINOME.asstring := txtcliente.text;
          dm.CDSClienteCLITELCOMERCIAL.AsString := txtfone.Text;
          dm.CDSCidade.first;
          dm.CDSClienteCLICIDADE.asinteger := dm.CDSCidadeCIDCOD.asinteger;
          dm.CDSCliente.post;
          dm.CDSCliente.applyupdates(0);
          dm.CDSOrdemServicoORDCLIENTE.asinteger := cliente;
     end;

     PageControlCad.ActivePageIndex := 1;
     if trim(txtcodbanco.text) <> '' then
     begin
          try
               strtoint(txtcodbanco.text);
          except
               showmessage('Campo Banco Inválido!');
               txtcodbanco.setfocus;
               exit;
          end;
          if not dm.CDSBanco.Locate('BANCOD', txtcodbanco.text, []) then
          begin
               showmessage('Banco não cadastrado!');
               txtcodbanco.setfocus;
               exit;
          end;
     end;

     if trim(txtcodforma.text) <> '' then
     begin
          try
               strtoint(txtcodforma.text);
          except
               showmessage('Campo Forma de Pagamento Inválido!');
               txtcodforma.setfocus;
               exit;
          end;
          if not dm.CDSPlanoPgto.Locate('PLACOD', txtcodforma.text, []) then
          begin
               showmessage('Forma de Pagamento não cadastrada!');
               txtcodforma.setfocus;
               exit;
          end;
     end;
     PageControlCad.ActivePageIndex := 0;
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     if dm.CDSOrdemServicoORDATUCONTREC.asstring = 'S' then
     begin
          dm.CDSContRec.open;
          if not dm.CDSContRec.Locate('RECDOCUMENTO', dm.CDSOrdemServicoORDCONTREC.asinteger ,[]) then
                dm.CDSContRec.append
          else
                dm.cdscontrec.edit;
          execsql('DELETE FROM TITEMCONTREC WHERE ITEDOCUMENTO = ' + dm.CDSContRECRECDOCUMENTO.asstring);
          dm.CDSContRecRecEMISSAO.asdatetime := dm.CDSOrdemServicoORDDATAENT.asdatetime;
          dm.CDSContRecRecCLIENTE.asinteger := dm.CDSOrdemServicoORDCLIENTE.asinteger;
          dm.CDSContRecRecBANCO.asinteger := dm.CDSOrdemServicoORDBANCO.asinteger;
          dm.CDSContRecRecVALOR.asfloat := dm.CDSOrdemServicoORDTOTAL.asfloat;
          dm.CDSContRecRecACRESCIMO.asfloat := dm.CDSOrdemServicoORDACRESCIMO.value;
          dm.CDSContRecRecDESCONTO.asfloat := dm.CDSOrdemServicoORDDESCONTO.asfloat;
          dm.CDSContRecRecENTRADA.asfloat := dm.CDSOrdemServicoORDENTRADA.asfloat;
          dm.CDSContRecRecTOTAL.asfloat := dm.CDSOrdemServicoORDTOTAL.asfloat;
          dm.CDSContRecRECVALORPAGO.asfloat := 0;
          dm.CDSContRecRecPARCELAS.asinteger := dm.CDSOrdemServicoVcto.RecordCount;
          dm.CDSContRec.post;
          dm.CDSContRec.applyupdates(0);
          DataSource.DataSet.edit;
          dm.CDSOrdemServicoORDCONTREC.asinteger := dm.CDSContRecRecDOCUMENTO.asinteger;
          DataSource.DataSet.post;
          (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);

          while dm.CDSItemContRec.recordcount > 0 do
               dm.CDSItemContRec.delete;
          dm.CDSItemContRec.applyupdates(0);
          dm.CDSOrdemServicoVcto.first;
          while not dm.CDSOrdemServicoVcto.eof do
          begin
               dm.CDSItemContRec.append;
               dm.CDSItemContRecITEDOCUMENTO.asinteger := dm.CDSContRecRecDOCUMENTO.asinteger;
               dm.CDSItemContRecITEDATA.asdatetime := dm.CDSOrdemServicoVctoORDVCTODATA.asdatetime;
               dm.CDSItemContRecITEVALOR.asfloat := dm.CDSOrdemServicoVctoORDVCTOVALOR.asfloat;
               dm.CDSItemContRec.post;
               dm.CDSItemContRec.applyupdates(0);
               dm.CDSOrdemServicoVcto.next;
          end;
          dm.CDSContRec.close;
          dm.CDSContRecBeforeOpen(dm.CDSContrec);          
     end;
     navegar(FOrdemServico);
end;

procedure TFOrdemServico.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FOrdemServico);
end;

procedure TFOrdemServico.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFOrdemServico.BtnFiltroClick(Sender: TObject);
begin
    if txtfiltroinicial.text <> '  /  /    ' then
    begin
       try
           strtodate(txtfiltroinicial.text);
       except
           showmessage('Campo Data Inicial Inválido!');
           txtfiltroinicial.setfocus;
           exit;
       end;
    end;
    if txtfiltrofinal.text <> '  /  /    ' then
    begin
       try
           strtodate(txtfiltrofinal.text);
       except
           showmessage('Campo Data Final Inválido!');
           txtfiltrofinal.setfocus;
           exit;
       end;
    end;
    DataSource.DataSet.close;
    with dm.qordemservico.sql do
    begin
         clear;
         add('SELECT ORDNUMERO,ORDDATAENT,ORDHORAENT,ORDCLIENTE,ORDVEICULO,ORDTIPOSERVICO,ORDDATASAI,ORDHORASAI,');
         add('ORDVENDEDOR,ORDTOTALPRODUTOS,ORDTOTALSERVICOS,ORDACRESCIMO,ORDDESCONTO,ORDTOTAL,ORDPLANOPGTO,');
         add('ORDBANCO,ORDOBS,ORDBAIXADO,ORDATUCONTREC,ORDCONTREC, ORDENTRADA, ORDPLACA, ORDNOMECLIENTE, ORDTELEFONE');
         add('FROM TORDEMSERVICO');
         add('WHERE ORDNUMERO <> 0');
         if trim(txtfiltrocliente.text) <> '' then
            add('AND ORDCLIENTE = ' + txtfiltrocliente.text);
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(ORDNUMERO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if txtfiltroinicial.text <> '  /  /    ' then
            add('AND ORDDATAENT >= :DATAINI');
         if txtfiltrofinal.text <> '  /  /    ' then
            add('AND ORDDATAENT <= :DATAFIN');
         add('ORDER BY ORDNUMERO');
    end;
    if txtfiltroinicial.text <> '  /  /    ' then
       dm.qordemservico.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if txtfiltrofinal.text <> '  /  /    ' then
       dm.qordemservico.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    DataSource.DataSet.open;
end;

procedure TFOrdemServico.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, DM.DSItemVenda);
end;

procedure TFOrdemServico.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     importar(DataSource, Wsinformacao.Tabela);

     btndesconectar.click;
     btnfiltro.click;
     showmessage('Importação Concluída com Sucesso!');
end;

procedure TFOrdemServico.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFOrdemServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if (datasource.DataSet.State = dsinsert) or
        (datasource.DataSet.State = dsedit) then
     begin
          showmessage('Impossível sair, você esta em modo de edição!');
          action := canone; 
          exit;
     end;
     action := cafree;
end;

procedure TFOrdemServico.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFOrdemServico.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_f3 then
         if sender = txtfiltrocliente then
              btnfiltroproduto.Click;

    if (key = 38) then
    begin
         if (sender = txtpesquisa) and (btnanterior.enabled = true) and (datasource.dataset.active) then
         begin
             btnanterior.Click;
             key := 0;
         end
         else
             Perform (WM_nextDlgCtl,1,0);
    end;
    if (key = 40) then
    begin
         if (sender = txtpesquisa) and (btnproximo.enabled = true) and (datasource.dataset.active) then
         begin
            btnproximo.Click;
            key := 0;
         end
         else
            Perform (WM_nextDlgCtl,0,0);
    end;
    if key = (13) then
    begin
         if sender is twsedit then
         begin
              if (sender as twsedit).enterclicar then
                   btnfiltro.click
              else
                   Perform (WM_nextDlgCtl,0,0);
         end;
         if sender is twsmaskedit then
         begin
              if (sender as twsmaskedit).enterclicar then
                   btnfiltro.click
              else
                   Perform (WM_nextDlgCtl,0,0);
         end;
    end;
    if (key=vk_insert) and (btnIncluir.Enabled = True) then
        btnIncluir.Click;
    if (key=vk_f11) and (btnnovopadrao.Enabled = True) then
        btnnovopadrao.Click;
    if (key=vk_f10) and (btnAlterar.Enabled = True) then
        btnAlterar.Click;
    if tbKeyIsDown(VK_CONTROL) then
       if (key=vk_delete) and (BtnExcluir.Enabled = True) then
           BtnExcluir.Click;
    if (Key = VK_F12) and (btnSalvar.enabled = true) then
        btnsalvar.Click;
    if (key=27) and (btnSair.Enabled = True) then
        btnSair.Click;
    if (key=27) and (btncancelar.enabled = true) then
        btncancelar.click;
    if (key=vk_f8) and (btnImprimir.Enabled = True) then
        btnImprimir.Click;
    if (key=VK_F7) and (btndesconectar.Enabled = True) then
        btndesconectar.Click;
    if (key=VK_F9) and (btnFiltro.Enabled = True) then
        btnFiltro.Click;
    if (key=vk_f4) then
        btnexportar.click;
    if (key=vk_f2) then
        btnimportar.click;
    if (key=vk_f5) then
        PageControl.ActivePage := tabconsulta;
    if (key=vk_f6) then
        PageControl.ActivePage := TabCadastro;
end;

procedure TFOrdemServico.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFOrdemServico.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(FOrdemServico, not panimpressao.visible);
end;

procedure TFOrdemServico.btnexcluirprodClick(Sender: TObject);
begin
    if (dm.CDSOrdemServicoProduto.Active = true) then
      if (dm.CDSOrdemServicoProduto.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
             try
                  dm.CDSOrdemServicoProduto.Delete;
                  dm.CDSOrdemServicoProduto.ApplyUpdates(0);
                  total;
             except
                  ShowMessage('Impossível Excluir. Violação de Integridade.');
             end;
        end;
end;

procedure TFOrdemServico.btnsalvarprodClick(Sender: TObject);
begin
     if (trim(txtproduto.text) = '') and
        (trim(txtquantprod.text) = '') and
        (trim(txtprecoprod.text) = '') then
     begin
          btnsalvar.click;
          exit;
     end;
     try
          strtoint(txtnumero.text);
     except
          showmessage('Campo Número Inválido!');
          txtnumero.setfocus;
          exit;
     end;
     try
          strtoint(txtproduto.text);
     except
          showmessage('Campo Produto Inválido!');
          txtproduto.setfocus;
          exit;
     end;
     try
          strtofloat(txtquantprod.text);
     except
          showmessage('Campo Quantidade inválido!');
          txtquantprod.setfocus;
          exit;
     end;
     try
          strtofloat(txtprecoprod.text);
     except
          showmessage('Campo Preço inválido!');
          txtprecoprod.setfocus;
          exit;
     end;
     if not dm.cdsproduto.Locate('PROCOD', txtproduto.text, []) then
     begin
          showmessage('Produto não cadastrado!');
          txtproduto.setfocus;
          exit;
     end;
     if dm.CDSProdutoPROESTMIN.asfloat > 0 then     
     if dm.CDSProdutoPROESTOQUE.asfloat - strtofloat(txtquantprod.Text) < dm.CDSProdutoPROESTMIN.asfloat then
     begin
          if application.messagebox ('Essa saída ultrapassará o estoque mínimo permitido do produto, deseja continuar?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mrno then
          begin
               txtproduto.setfocus;
               exit;
          end;
     end;
     dm.CDSOrdemServico.post;
     dm.CDSOrdemServico.applyupdates(0);
     dm.CDSOrdemServico.edit;
     dm.CDSOrdemServicoProduto.append;
     dm.CDSOrdemServicoProdutoORDPRONUMERO.asinteger := dm.CDSOrdemServicoORDNUMERO.asinteger;
     dm.CDSOrdemServicoProdutoORDPROPRODUTO.asinteger := strtoint(txtproduto.text);
     dm.CDSOrdemServicoProdutoORDPROQUANT.asfloat := strtofloat(txtquantprod.text);
     dm.CDSOrdemServicoProdutoORDPROVALOR.asfloat := strtofloat(txtprecoprod.text);
     dm.CDSOrdemServicoProdutoORDPROCUSTO.asfloat := dm.CDSProdutoPROCUSTOATUUNI.asfloat;
     dm.CDSOrdemServicoProdutoORDPROTOTAL.asfloat := strtofloat(txtquantprod.text) * strtofloat(txtprecoprod.text);
     dm.CDSOrdemServicoProduto.post;
     dm.CDSOrdemServicoProduto.applyupdates(0);
     total;
     txtproduto.clear;
     txtquantprod.clear;
     txtprecoprod.clear;
     txtproduto.setfocus;
end;

procedure TFOrdemServico.btnprodutoClick(Sender: TObject);
begin
     try
         fproduto := tfproduto.create(self);
         usuario('btnconsultar',fproduto.wsinformacao.programa);
         fproduto.BtnFiltro.click;
         dm.cdsproduto.open;
         fproduto.showmodal;
         txtproduto.text := dm.CDSProdutoPROCOD.asstring;
     finally
         fproduto.release;
         fproduto:= nil;
         fproduto.free;
     end;
end;

procedure TFOrdemServico.btnrelclienteClick(Sender: TObject);
begin
     RLReportCliente.PreviewModal;
end;

procedure TFOrdemServico.btnrelmecanicoClick(Sender: TObject);
begin
     RLReportMecanico.PreviewModal;
end;

procedure TFOrdemServico.btnformaClick(Sender: TObject);
begin
     try
         FPlanoPgto := TFPlanoPgto.create(self);
         usuario('btnconsultar',FPlanoPgto.wsinformacao.programa);
         FPlanoPgto.txtpesquisa.text := txtforma.text;
         FPlanoPgto.BtnFiltro.click;
         FPlanoPgto.showmodal;
         dm.CDSOrdemServicoORDPLANOPGTO.asinteger := dm.cdsplanopgtoplacod.asinteger;
     finally
         FPlanoPgto.release;
         FPlanoPgto:= nil;
         FPlanoPgto.free;
     end;
end;

procedure TFOrdemServico.btnclienteClick(Sender: TObject);
begin
     try
         fclienteSimples := TfclienteSimples.create(self);
         usuario('btnconsultar',fclienteSimples.wsinformacao.programa);
         fclienteSimples.txtpesquisa.text := txtcliente.text;
         fclienteSimples.BtnFiltro.click;
         fclienteSimples.showmodal;
         dm.CDSOrdemServicoORDCLIENTE.asinteger := dm.cdsclienteclicod.asinteger;
         dm.CDSOrdemServicoORDNOMECLIENTE.asstring := dm.CDSClienteCLINOME.asstring;
         dm.CDSOrdemServicoORDTELEFONE.asstring := dm.CDSClienteCLITELCOMERCIAL.asstring;         
     finally
         fclienteSimples.release;
         fclienteSimples:= nil;
         fclienteSimples.free;
     end;
end;

procedure TFOrdemServico.btnplacaClick(Sender: TObject);
begin
     try
         FVeiculo := TFVeiculo.create(self);
         usuario('btnconsultar',FVeiculo.wsinformacao.programa);
         FVeiculo.BtnFiltro.click;
         FVeiculo.showmodal;
         dm.CDSOrdemServicoORDPLACA.asinteger := dm.CDSVeiculoVEIPLACA.asinteger;
     finally
         FVeiculo.release;
         FVeiculo := nil;
         FVeiculo.free;
     end;
end;

procedure TFOrdemServico.txtcodclienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   passar : boolean;
begin
    if (key = 27) and (btncancelar.enabled = true) then
        btncancelar.click;
    if (Key = VK_F12) and (btnSalvar.enabled = true) then
        btnsalvar.Click;

    if key = vk_f3 then
    begin
         if sender = txtobs then
              btnobs.click;
         if sender = txtproduto then
              btnproduto.click;
         if sender = txtservico then
              btnservico.click;
         if (sender = txtcodcliente) or (sender = txtcliente) then
              btncliente.click;
         if (sender = txtcodvendedor) or (sender = txtvendedor) then
              btnvendedor.click;
         if (sender = txtcodbanco) or (sender = txtbanco) then
              btnbanco.click;
         if (sender = txtcodforma) or (sender = txtforma) then
              btnforma.click;
    end;
    if (key = 40) and (not (sender is twsdbcombobox)) and (not (sender is twsdbmemo)) then
    begin
        if sender is TWSEDit then
        begin
            with sender as TWSEdit do
            begin
                if EnterClicar then
                begin
                     if btnProximo.enabled then
                        btnProximo.Click;
                     passar := false;
                end
                else
                begin
                     passar := true;
                end;
            end;
        end
        else
            passar := true;
        if passar then
            Perform (WM_nextDlgCtl,0,0);
    end;
    if (key = 13) and (not (sender is twsdbmemo)) then
    begin
        passar := true;
        if sender is TWSDBEDit then
        begin
            with sender as TWSDBEdit do
            begin
                if EnterClicar then
                begin
                   btnsalvar.click;
                   passar := false;
                end
                else
                begin
                   passar := true;
                end;
            end;
        end;
        if sender is TWSEDit then
        begin
            with sender as TWSEdit do
            begin
                if EnterClicar then
                begin
                   btnfiltro.click;
                end;
                passar := true;
            end;
        end;
        if passar then
           Perform (WM_nextDlgCtl,0,0);
    end;
    if (key = 38) and (not (sender is twsdbcombobox)) and (not (sender is twsdbmemo)) then
    begin
        if sender is TWSEDit then
        begin
            with sender as TWSEdit do
            begin
                if EnterClicar then
                begin
                     if BtnAnterior.enabled then
                        BtnAnterior.Click;
                     passar := false;
                end
                else
                begin
                     passar := true;
                end;
            end;
        end
        else
            passar := true;
        if passar then
            Perform (WM_nextDlgCtl,1,0);
    end;
end;

procedure TFOrdemServico.WSDBEdit21Exit(Sender: TObject);
var
     i : integer;
     data : tdate;
begin
     if dm.CDSPlanoPgto.locate('PLACOD', txtcodforma.text,[]) then
     begin
          dm.CDSOrdemServico.post;
          dm.CDSOrdemServico.ApplyUpdates(0);

          while dm.CDSOrdemServicoVcto.recordcount > 0 do
          begin
               dm.CDSOrdemServicoVcto.delete;
               dm.CDSOrdemServicoVcto.ApplyUpdates(0);
          end;
          dm.CDSOrdemServico.edit;
          if dm.CDSPlanoPgtoPLATIPO.asstring = 'D' then
          begin
               data := strtodate(dm.CDSPlanoPgtoPLADIA.asstring + '/' + inttostr(monthof(dm.CDSOrdemServicoORDDATAENT.asdatetime)) + '/' + inttostr(yearof(dm.CDSOrdemServicoORDDATAENT.asdatetime)));
               for i := 1 to dm.CDSPlanoPgtoPLAVEZES.asinteger do
               begin
                    dm.CDSOrdemServicoVcto.append;
                    dm.CDSOrdemServicoVctoORDVCTONUMERO.asinteger := dm.CDSNotaFiscNOTNUMERO.asinteger;
                    dm.CDSOrdemServicoVctoORDVCTODATA.asdatetime := data + (dm.CDSPlanoPgtoPLADIAS.asinteger * i);
                    dm.CDSOrdemServicoVctoORDVCTOVALOR.asfloat := (dm.CDSNotaFiscNOTTOTAL.asfloat - dm.CDSNotaFiscNOTENTRADA.asfloat) / dm.CDSPlanoPgtoPLAVEZES.asinteger;
                    dm.CDSOrdemServicoVcto.post;
                    dm.CDSOrdemServicoVcto.ApplyUpdates(0);
               end;
          end
          else
          begin
               for i := 1 to 10 do
               begin
                    if dm.CDSPlanoPgto.fieldbyname('PLA' + inttostr(i)).AsInteger <> 0 then
                    begin
                         dm.CDSOrdemServicoVcto.append;
                         dm.CDSOrdemServicoVctoORDVCTONUMERO.asinteger := dm.CDSOrdemServicoORDNUMERO.asinteger;
                         dm.CDSOrdemServicoVctoORDVCTODATA.asdatetime := date + dm.CDSPlanoPgto.fieldbyname('PLA' + inttostr(i)).AsInteger;
                         dm.CDSOrdemServicoVctoORDVCTOVALOR.asfloat := (dm.CDSOrdemServicoORDTOTAL.asfloat - dm.CDSOrdemServicoORDENTRADA.asfloat) / dm.CDSPlanoPgtoPLAVEZES.asinteger;
                         dm.CDSOrdemServicoVcto.post;
                         dm.CDSOrdemServicoVcto.ApplyUpdates(0);
                    end;
               end;
          end;
     end;
end;

procedure TFOrdemServico.btnvendedorClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         fcliente.txtpesquisa.text := txtvendedor.text;
         fcliente.BtnFiltro.click;
         fcliente.showmodal;
         dm.CDSOrdemServicoORDVENDEDOR.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

procedure TFOrdemServico.btnobsClick(Sender: TObject);
begin
     try
         FObservacoes := tFObservacoes.create(self);
         usuario('btnconsultar',FObservacoes.wsinformacao.programa);
         FObservacoes.BtnFiltro.click;
         FObservacoes.showmodal;
         dm.CDSNotaFiscNOTOBS.value := dm.CDSObservacoesOBSTEXTO.value;
     finally
         FObservacoes.release;
         FObservacoes:= nil;
         FObservacoes.free;
     end;
end;

procedure TFOrdemServico.txtprecoprodKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        btnsalvarprod.click;
end;

procedure TFOrdemServico.btnservicoClick(Sender: TObject);
begin
     try
         fservico := tfservico.create(self);
         usuario('btnconsultar',fservico.wsinformacao.programa);
         fservico.BtnFiltro.click;
         fservico.showmodal;
         txtservico.text := dm.CDSServicoSERCOD.asstring;
     finally
         fservico.release;
         fservico:= nil;
         fservico.free;
     end;
end;

procedure TFOrdemServico.txtprecoservKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
        btnsalvarserv.click;
end;

procedure TFOrdemServico.btnexcluirservClick(Sender: TObject);
begin
    if (dm.CDSOrdemServicoServico.Active = true) then
      if (dm.CDSOrdemServicoServico.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
             try
                  dm.CDSOrdemServicoServico.Delete;
                  dm.CDSOrdemServicoServico.ApplyUpdates(0);
                  total;
             except
                  ShowMessage('Impossível Excluir. Violação de Integridade.');
             end;
        end;
end;

procedure TFOrdemServico.btnsalvarservClick(Sender: TObject);
begin
     if (trim(txtservico.text) = '') and
        (trim(txtquantserv.text) = '') and
        (trim(txtprecoserv.text) = '') then
     begin
          btnsalvar.click;
          exit;
     end;
     try
          strtoint(txtnumero.text);
     except
          showmessage('Campo Número Inválido!');
          txtnumero.setfocus;
          exit;
     end;
     try
          strtoint(txtservico.text);
     except
          showmessage('Campo Serviço Inválido!');
          txtservico.setfocus;
          exit;      
     end;
     try
          strtofloat(txtquantserv.text);
     except
          showmessage('Campo Quantidade inválido!');
          txtquantserv.setfocus;
          exit;
     end;
     try
          strtofloat(txtprecoserv.text);
     except
          showmessage('Campo Preço inválido!');
          txtprecoserv.setfocus;
          exit;
     end;
     if not dm.cdsservico.Locate('SERCOD', txtservico.text, []) then
     begin
          showmessage('Serviço não cadastrado!');
          txtservico.setfocus;
          exit;
     end;
     dm.CDSOrdemServico.post
     ;
     dm.CDSOrdemServico.applyupdates(0);
     dm.CDSOrdemServico.edit;
     dm.CDSOrdemServicoServico.append;
     dm.CDSOrdemServicoServicoORDSERNUMERO.asinteger := dm.CDSOrdemServicoORDNUMERO.asinteger;
     dm.CDSOrdemServicoServicoORDSERSERVICO.asinteger := strtoint(txtservico.text);
     dm.CDSOrdemServicoServicoORDSERQUANT.asfloat := strtofloat(txtquantserv.text);
     dm.CDSOrdemServicoServicoORDSERVALOR.asfloat := strtofloat(txtprecoserv.text);
     dm.CDSOrdemServicoServicoORDSERTOTAL.asfloat := strtofloat(txtquantserv.text) * strtofloat(txtprecoserv.text);
     dm.CDSOrdemServicoServico.post;
     dm.CDSOrdemServicoServico.applyupdates(0);
     total;
     txtservico.clear;
     txtquantserv.clear;
     txtprecoserv.clear;
     txtservico.setfocus;
end;

procedure TFOrdemServico.txttotalExit(Sender: TObject);
begin
     total;
end;

procedure TFOrdemServico.btnbancoClick(Sender: TObject);
begin
     try
         FBanco := TFBanco.create(self);
         usuario('btnconsultar',FBanco.wsinformacao.programa);
         FBanco.txtpesquisa.text := txtbanco.text;
         FBanco.BtnFiltro.click;
         FBanco.showmodal;
         dm.CDSOrdemServicoORDBANCO.asinteger := dm.cdsbancobancod.asinteger;
     finally
         FPlanoPgto.release;
         FPlanoPgto:= nil;
         FPlanoPgto.free;
     end;
end;

procedure TFOrdemServico.txtservicoExit(Sender: TObject);
begin
     if trim(txtservico.text) <> '' then
          if dm.cdsservico.Locate('SERCOD', txtservico.text, []) then
               txtprecoserv.text := dm.CDSServicoSERVALOR.asstring;
end;

procedure TFOrdemServico.txtoperacaoExit(Sender: TObject);
begin
     if pagecontrolitem.ActivePageIndex = 0 then
     begin
          if txtproduto.Enabled then
               txtproduto.setfocus;
     end
     else
     begin
          if txtservico.Enabled then
               txtservico.setfocus;
     end;
end;

procedure TFOrdemServico.FormActivate(Sender: TObject);
begin
     PageControlCad.activepageindex := 0;
end;

procedure TFOrdemServico.txtprodutoExit(Sender: TObject);
begin
     if trim(txtproduto.text) <> '' then
     begin
          try
               strtoint(txtproduto.text);
          except
               showmessage('Código do Produto Inválido!');
               txtproduto.setfocus;
               exit;
          end;
          if dm.CDSProduto.locate('PROCOD', txtproduto.text ,[]) then
              txtprecoprod.Text := dm.CDSProdutoPROVALOR.asstring
          else
          begin
               showmessage('Produto não cadastrado!');
               txtproduto.setfocus;
               exit;
          end;
     end;
end;

procedure TFOrdemServico.btnfiltroprodutoClick(Sender: TObject);
begin
     try
         fclienteSimples := tfclienteSimples.create(self);
         usuario('btnconsultar',fclienteSimples.wsinformacao.programa);
         fclienteSimples.BtnFiltro.click;
         fclienteSimples.showmodal;
         txtfiltrocliente.text := dm.CDSClienteCLICOD.asstring;
     finally
         fclienteSimples.release;
         fclienteSimples := nil;
         fclienteSimples.free;
     end;
end;

procedure TFOrdemServico.txtcodclienteExit(Sender: TObject);
begin
     if txtcodcliente.text <> '' then
     begin
          if dm.CDSCliente.Locate('CLICOD', txtcodcliente.text, []) then
          begin
               if trim(dm.CDSOrdemServicoORDNOMECLIENTE.asstring) = '' then
                    dm.CDSOrdemServicoORDNOMECLIENTE.asstring := dm.CDSClienteCLINOME.asstring;
               if trim(dm.CDSClienteCLITELCOMERCIAL.asstring) = '' then
                    dm.CDSOrdemServicoORDTELEFONE.asstring := dm.CDSClienteCLITELCOMERCIAL.asstring;
          end;
     end;
end;

procedure TFOrdemServico.btngerarnotaClick(Sender: TObject);
var cod : integer;
begin
     if not dm.CDSNotaFisc.Active then
          dm.CDSNotaFisc.open;

     dm.CDSNotaFisc.last;
     cod := dm.CDSNotaFiscNOTNUMERO.asinteger + 1;
     dm.CDSNotaFisc.Append;
     DM.CDSNotaFiscNOTNUMERO.asinteger := cod;
     DM.CDSNotaFiscNOTEMISSAO.asdatetime := dm.CDSOrdemServicoORDDATAENT.AsDateTime;
     DM.CDSNotaFiscNOTSAIDA.asdatetime := dm.CDSOrdemServicoORDDATASAI.AsDateTime;
     DM.CDSNotaFiscNOTHORASAIDA.asstring := dm.CDSOrdemServicoORDHORASAI.asstring;
     dm.CDSCFOP.First;
     DM.CDSNotaFiscNOTCFOP.asstring := dm.CDSCFOPCFOPCOD.asstring;
     DM.CDSNotaFiscNOTCLIENTE.asinteger := dm.CDSOrdemServicoORDCLIENTE.asinteger;
     DM.CDSNotaFiscNOTOPERACAO.asstring := 'Venda';
     DM.CDSNotaFiscNOTSUBTOTAL.asfloat := dm.CDSOrdemServicoORDTOTALPRODUTOS.asfloat + dm.CDSOrdemServicoORDTOTALSERVICOS.asfloat;
     DM.CDSNotaFiscNOTDESCONTO.asfloat := dm.CDSOrdemServicoORDDESCONTO.asfloat;
     DM.CDSNotaFiscNOTFRETE.asfloat := 0;
     DM.CDSNotaFiscNOTFUNRURAL.asfloat := 0;
     DM.CDSNotaFiscNOTOUTRASDESP.asfloat := 0;
     DM.CDSNotaFiscNOTIPI.asfloat := 0;
     DM.CDSNotaFiscNOTTOTAL.asfloat := dm.CDSOrdemServicoORDTOTAL.asfloat;
     DM.CDSNotaFiscNOTBASECALC.asfloat := 0;
     DM.CDSNotaFiscNOTICMS.asfloat := 0;
     //DM.CDSNotaFiscNOTTRANSPORTADORA.asinteger := dm.cdsordemservicoord.asinteger;
     DM.CDSNotaFiscNOTPLACA.asstring := dm.CDSOrdemServicoORDPLACA.asstring;
     //DM.CDSNotaFiscNOTVOLESPECIE.asstring := '';
     //DM.CDSNotaFiscNOTVOLMARCA.asstring := dm.cdsordemservicoord.asstring;
     //DM.CDSNotaFiscNOTVOLNUMERO.asstring := dm.cdsordemservicoord.asstring;
     DM.CDSNotaFiscNOTENTRADA.asfloat := dm.CDSOrdemServicoORDENTRADA.asfloat;
     DM.CDSNotaFiscNOTPLANOPGTO.asinteger := dm.CDSOrdemServicoORDPLANOPGTO.asinteger;
     DM.CDSNotaFiscNOTCIDADE.asinteger := dm.CDSClienteCLICIDADE.asinteger;
     DM.CDSNotaFiscNOTBANCO.asinteger := dm.CDSOrdemServicoORDBANCO.asinteger;
     DM.CDSNotaFiscNOTVENDEDOR.asinteger := dm.CDSOrdemServicoORDVENDEDOR.asinteger;
     DM.CDSNotaFiscNOTATUCONTREC.asstring := dm.CDSOrdemServicoORDATUCONTREC.asstring;
     DM.CDSNotaFiscNOTCONTREC.asinteger := dm.CDSOrdemServicoORDCONTREC.asinteger;
     DM.CDSNotaFiscNOTOBS.AsString := dm.CDSOrdemServicoORDOBS.asstring;
     dm.CDSNotaFisc.post;
     dm.CDSNotaFisc.applyupdates(0);

     dm.CDSNotaFisc.edit;

     DM.CDSNotaFiscNOTVOLQUANT.asinteger := 0;
     DM.CDSNotaFiscNOTVOLPESOBRUTO.asfloat := 0;
     DM.CDSNotaFiscNOTVOLPESOLIQ.asfloat := 0;

     if not dm.CDSProduto.active then
           dm.CDSProduto.open;
     dm.CDSOrdemServicoProduto.First;
     while not dm.CDSOrdemServicoProduto.eof do
     begin
          dm.CDSProduto.Locate('PROCOD', dm.CDSOrdemServicoProdutoORDPROPRODUTO.AsInteger,[]);
          DM.CDSNotaFiscNOTVOLQUANT.asfloat := DM.CDSNotaFiscNOTVOLQUANT.asfloat + dm.CDSOrdemServicoProdutoORDPROQUANT.asfloat;
          DM.CDSNotaFiscNOTVOLPESOBRUTO.asfloat := DM.CDSNotaFiscNOTVOLPESOBRUTO.asfloat + dm.CDSOrdemServicoServicoORDSERQUANT.asfloat * dm.CDSProdutoPROPESOBRUTO.asfloat;
          DM.CDSNotaFiscNOTVOLPESOLIQ.asfloat := DM.CDSNotaFiscNOTVOLPESOLIQ.asfloat + dm.CDSOrdemServicoServicoORDSERQUANT.asfloat * dm.CDSProdutoPROPESOLIQ.asfloat;

          dm.CDSItemNotaFisc.Append;
          dm.CDSItemNotaFiscITENUMERO.asinteger := cod;
          dm.CDSItemNotaFiscITEPRODUTO.asinteger := dm.CDSOrdemServicoProdutoORDPROPRODUTO.AsInteger;
          dm.CDSItemNotaFiscITEQUANT.AsFloat := dm.CDSOrdemServicoProdutoORDPROPRODUTO.Asfloat;
          dm.CDSItemNotaFiscITEPRECO.AsFloat := dm.CDSOrdemServicoProdutoORDPROCUSTO.Asfloat;
          dm.CDSItemNotaFiscITEICMS.asfloat := 0;
          dm.CDSItemNotaFiscITECUSTO.AsFloat := dm.CDSOrdemServicoProdutoORDPROCUSTO.Asfloat;
          dm.CDSItemNotaFiscITEIPI.asfloat := 0;
          dm.CDSItemNotaFiscITETOTAL.AsFloat := dm.CDSOrdemServicoProdutoORDPROTOTAL.Asfloat;
          dm.CDSItemNotaFiscITECFOP.asstring := dm.CDSNotaFiscNOTCFOP.asstring;
          dm.CDSItemNotaFiscITEBASECALC.asfloat := 100;
          dm.CDSItemNotaFiscITEDESC.asfloat := 0;
          dm.CDSItemNotaFisc.post;
          dm.CDSItemNotaFisc.applyupdates(0);

          dm.CDSOrdemServicoProduto.Next;
     end;

     dm.CDSOrdemServicoVcto.First;
     while not dm.CDSOrdemServicoVcto.eof do
     begin
          dm.CDSVctoNotaFisc.Append;
          dm.CDSVctoNotaFiscVCTONUMERO.asinteger := cod;
          dm.CDSVctoNotaFiscVCTODATA.asdatetime := dm.CDSOrdemServicoVctoORDVCTODATA.AsDateTime;
          dm.CDSVctoNotaFiscVCTOVALOR.AsFloat := dm.CDSOrdemServicoVctoORDVCTOVALOR.Asfloat;
          dm.CDSVctoNotaFisc.post;
          dm.CDSVctoNotaFisc.applyupdates(0);
          dm.CDSOrdemServicoVcto.Next;
     end;

     dm.CDSNotaFisc.post;
     dm.CDSNotaFisc.applyupdates(0);
     dm.CDSNotaFisc.close;
     dm.CDSNotaFisc.open;
     dm.CDSNotaFisc.last;          
     try
          FNotaFisc := TFNotaFisc.create(self);
          Fnotafisc.showmodal;
     finally
          Fnotafisc.release;
          Fnotafisc := nil;
          Fnotafisc.free;
     end;
end;

end.
