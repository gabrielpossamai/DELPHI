unit UNotaEnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, Buttons, WSMaskEdit, WSDBComboBox, dateutils, RLReport,
  RLRichText;

type
  TFNotaEnt = class(TForm)
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
    WSInformacao: TWSInformacao;
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
    btncomprovante: TSpeedButton;
    btnsintetico: TSpeedButton;
    Label19: TLabel;
    txtfiltrofinal: TWSMaskEdit;
    txtfiltroinicial: TWSMaskEdit;
    PageControlCad: TPageControl;
    TabPrincipal: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    btnfornecedor: TRxSpeedButton;
    Label13: TLabel;
    btncfop: TRxSpeedButton;
    Label15: TLabel;
    Label16: TLabel;
    txtdata: TWSDBEdit;
    txtnumero: TWSDBEdit;
    txtcodfornecedor: TWSDBEdit;
    txtfornecedor: TWSDBEdit;
    WSDBEdit2: TWSDBEdit;
    txtcfop: TWSDBEdit;
    txtcodcfop: TWSDBEdit;
    txtoperacao: TWSDBComboBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    btnproduto: TRxSpeedButton;
    txtproduto: TWSEdit;
    ToolBarItem: TToolBar;
    btnsalvaritem: TToolButton;
    btnexcluiritem: TToolButton;
    txtsittrib: TWSEdit;
    txtdesc: TWSEdit;
    TabSheet1: TTabSheet;
    WSDBEdit7: TWSDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    WSDBEdit8: TWSDBEdit;
    Label20: TLabel;
    WSDBEdit9: TWSDBEdit;
    WSDBEdit10: TWSDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    WSDBEdit11: TWSDBEdit;
    Label23: TLabel;
    WSDBEdit12: TWSDBEdit;
    Label24: TLabel;
    WSDBEdit13: TWSDBEdit;
    Label25: TLabel;
    WSDBEdit14: TWSDBEdit;
    Label26: TLabel;
    WSDBEdit15: TWSDBEdit;
    WSDBEdit16: TWSDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    WSDBEdit17: TWSDBEdit;
    Label29: TLabel;
    WSDBEdit18: TWSDBEdit;
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
    txtdados: TWSDBEdit;
    DBGrid3: TDBGrid;
    DBGrid2: TDBGrid;
    txtbasecalc: TWSEdit;
    Label1: TLabel;
    txtpreco: TWSEdit;
    Label10: TLabel;
    Label34: TLabel;
    txtquant: TWSEdit;
    Label35: TLabel;
    txtipi: TWSEdit;
    txticms: TWSEdit;
    Label36: TLabel;
    Label37: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    txtatucontpag: TWSDBEdit;
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
    RLLabel5: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText17: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand8: TRLBand;
    RLBand5: TRLBand;
    RLDBText8: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText18: TRLDBText;
    RLBand6: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLLabel16: TRLLabel;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel19: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel25: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand9: TRLBand;
    RLDBText53: TRLDBText;
    RLDBText54: TRLDBText;
    RLBand10: TRLBand;
    RLLabel36: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBText35: TRLDBText;
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
    procedure btnexcluiritemClick(Sender: TObject);
    procedure btnsalvaritemClick(Sender: TObject);
    procedure txtdescKeyPress(Sender: TObject; var Key: Char);
    procedure btnprodutoClick(Sender: TObject);
    procedure btnsinteticoClick(Sender: TObject);
    procedure btncomprovanteClick(Sender: TObject);
    procedure btnbancoClick(Sender: TObject);
    procedure btnformaClick(Sender: TObject);
    procedure btnfornecedorClick(Sender: TObject);
    procedure btncfopClick(Sender: TObject);
    procedure txtcodfornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtcodfornecedorExit(Sender: TObject);
    procedure txtsittribExit(Sender: TObject);
    procedure txtbasecalcEnter(Sender: TObject);
    procedure WSDBEdit11Exit(Sender: TObject);
    procedure WSDBEdit21Exit(Sender: TObject);
  private
    { Private declarations }
    procedure total;
  public
    { Public declarations }
  end;

var
  FNotaEnt: TFNotaEnt;

implementation

uses UDM, UMenu, UUsuario, UProduto, UBanco, UCidade, UPlanoPgto,
  UCliente, UDeposito, UCfop, UClienteSimples;

{$R *.dfm}

procedure TFNotaEnt.total;
begin
     {if not (cdsnotaent.state in [dsedit, dsinsert]) then
     begin
           cdsnotaent.edit;
           edicao := false;
     end;}
     dm.cdsnotaentNOTVALORBASECALC.asfloat := sqltotal('select sum(itetotal * (itebasecalc/100)) from titemnotaent' +
                                                    ' where itefornecedor = ' + dm.CDSNotaEntNOTFORNECEDOR.asstring +
                                                    ' and itenota = ' + dm.CDSNotaEntNOTNOTA.asstring);

     dm.cdsnotaentNOTICMS.asfloat := sqltotal('select sum(((IteTotal * (iteipi/100) + itetotal) * IteIcms)/100) from TitemNotaEnt' +
     //dm.cdsnotaentNOTICMS.asfloat := sqltotal('select sum((IteTotal * IteIcms)/100) from TitemNotaEnt' +
                                                    ' where itefornecedor = ' + dm.CDSNotaEntNOTFORNECEDOR.asstring +
                                                    ' and itenota = ' + dm.CDSNotaEntNOTNOTA.asstring);

     dm.cdsnotaentNOTIPI.asfloat := sqltotal('select sum((IteTotal * IteIpi)/100) from TitemNotaEnt' +
                                                    ' where itefornecedor = ' + dm.CDSNotaEntNOTFORNECEDOR.asstring +
                                                    ' and itenota = ' + dm.CDSNotaEntNOTNOTA.asstring);

     dm.cdsnotaentNOTDESCONTO.asfloat := sqltotal('select sum((IteTotal * IteDesc)/100) from TitemNotaEnt' +
                                                    ' where itefornecedor = ' + dm.CDSNotaEntNOTFORNECEDOR.asstring +
                                                    ' and itenota = ' + dm.CDSNotaEntNOTNOTA.asstring);

     dm.cdsnotaentNOTSUBTOTAL.asfloat := sqltotal('select sum(IteQUANT * ItePreco) from TitemNotaEnt' +
                                                    ' where itefornecedor = ' + dm.CDSNotaEntNOTFORNECEDOR.asstring +
                                                    ' and itenota = ' + dm.CDSNotaEntNOTNOTA.asstring);

     dm.cdsNotaEntNOTTOTAL.value :=   dm.CDSNotaEntNotSubTotal.value +
                                      dm.CDSNotaEntNOtICMS.Value +
                                      dm.CDSNotaEntNOtIpi.value +
                                      dm.CDSNotaEntNotIcmsFrete.value +
                                      dm.CDSNotaEntNotSeguro.value +
                                      dm.CDSNotaEntNOTICMSSUBST.value +
                                      dm.CDSNotaEntNOTOUTRASDESP.value -
                                      dm.CDSNotaEntNotDesconto.value;

     {if edicao then
     begin
          cdsnotaent.post;
          cdsnotaent.applyupdates(0);
     end;}
end;

procedure TFNotaEnt.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFNotaEnt.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFNotaEnt.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFNotaEnt.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFNotaEnt.btnsairClick(Sender: TObject);
begin
     if DataSource.DataSet.active = false then
        DataSource.DataSet.open;
     close;
end;

procedure TFNotaEnt.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fnotaent, false);

     if not datasource.dataset.active then
        btnfiltro.click;

     DataSource.DataSet.append;

     PageControl.ActivePage:=TabCadastro;
     Editar(fnotaent, true);
end;

procedure TFNotaEnt.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fnotaent, false);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(fnotaent, true);
     end;
end;

procedure TFNotaEnt.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fnotaent, false);
     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage:=TabCadastro;
          Editar(fnotaent, false);
          DataSource.DataSet.Edit;
     end;
end;

procedure TFNotaEnt.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);

    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
             if dm.CDSNotaEntNOTCONTPAGAR.asinteger <> 0 then
                 execsql('DELETE FROM TCONTPAG WHERE PAGDOCUMENTO = ' + dm.CDSNotaEntNOTCONTPAGAR.asstring);
             DataSource.DataSet.Delete;
             (DataSource.DataSet as TClientDataSet).ApplyUpdates(0);
        end;
end;

procedure TFNotaEnt.BtnSalvarClick(Sender: TObject);
begin
     PageControlCad.ActivePageIndex := 0;
     if trim(txtcodfornecedor.text) = '' then
     begin
          showmessage('Campo Fornecedor Inválido!');
          txtcodfornecedor.setfocus;
          exit;
     end
     else
     begin
          if not dm.CDSCliente.Locate('CLICOD', txtcodfornecedor.text, []) then
          begin
               showmessage('Fornecedor não cadastrado!');
               txtcodfornecedor.setfocus;
               exit;
          end;
     end;

     {if trim(txtcoddeposito.text) = '' then
     begin
          showmessage('Campo Depósito Inválido!');
          txtcoddeposito.setfocus;
          exit;
     end
     else
     begin
          if not dm.CDSDeposito.Locate('DEPCOD', txtcoddeposito.text, []) then
          begin
               showmessage('Depósito não cadastrado!');
               txtcoddeposito.setfocus;
               exit;
          end;
     end;

     if not dm.CDSCFOP.Locate('CFOPCOD', txtcodcfop.text, []) then
     begin
          showmessage('CFOP não cadastrado!');
          txtcodcfop.setfocus;
          exit;
     end;}

     if trim(txtoperacao.text) = '' then
     begin
          showmessage('Selecione uma Operação!');
          txtcodcfop.setfocus;
          exit;
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
     DataSource.DataSet.edit;
     if dm.CDSNotaEntNOTATUCONTPAGAR.asstring = 'S' then
     begin
          dm.CDSContPag.open;
          if not dm.CDSContPag.Locate('PAGDOCUMENTO', dm.CDSNotaEntNOTCONTPAGAR.asinteger ,[]) then
                dm.cdscontpag.append
          else
                dm.cdscontpag.edit;
          execsql('DELETE FROM TITEMCONTPAG WHERE ITEDOCUMENTO = ' + dm.CDSContPagPAGDOCUMENTO.asstring);
          dm.CDSContPagPAGEMISSAO.asdatetime := dm.cdsnotaentNOTDATA.asdatetime;
          dm.CDSContPagPAGCLIENTE.asinteger := dm.CDSNotaEntNOTFORNECEDOR.asinteger;
          dm.CDSContPagPAGBANCO.asinteger := dm.CDSNotaEntNOTBANCO.asinteger;


          dm.CDSContPagPAGVALOR.asfloat := dm.CDSNotaEntNOTSUBTOTAL.asfloat;
          dm.CDSContPagPAGACRESCIMO.asfloat := dm.CDSNotaEntNOtIpi.value +
                                               dm.CDSNotaEntNotIcmsFrete.value +
                                               dm.CDSNotaEntNotSeguro.value +
                                               dm.CDSNotaEntNOTICMSSUBST.value +
                                               dm.CDSNotaEntNOTOUTRASDESP.value;
          dm.CDSContPagPAGDESCONTO.asfloat := dm.CDSNotaEntNOTDESCONTO.asfloat;
          dm.CDSContPagPAGENTRADA.asfloat := dm.CDSNotaEntNOTENTRADA.asfloat;
          dm.CDSContPagPAGTOTAL.asfloat := dm.CDSNotaEntNOTTOTAL.asfloat;
          dm.CDSContPagPAGVALORPAGO.asfloat := 0;
          dm.CDSContPagPAGPARCELAS.asinteger := dm.CDSVctoNotaEnt.RecordCount;
          dm.CDSContPag.post;
          dm.CDSContPag.applyupdates(0);
          dm.CDSNotaEntNOTCONTPAGAR.asinteger := dm.CDSContPagPAGDOCUMENTO.asinteger;
          DataSource.DataSet.post;
          (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);

          dm.CDSVctoNotaEnt.first;
          while not dm.CDSVctoNotaEnt.eof do
          begin
               dm.CDSItemContPag.append;
               dm.CDSItemContPagITEDOCUMENTO.asinteger := dm.CDSContPagPAGDOCUMENTO.asinteger;
               dm.CDSItemContPagITEDATA.asdatetime := dm.CDSVctoNotaEntVCTODATA.asdatetime;
               dm.CDSItemContPagITEVALOR.asfloat := dm.CDSVctoNotaEntVCTOVALOR.asfloat;
               dm.CDSItemContPag.post;
               dm.CDSItemContPag.applyupdates(0);
               dm.CDSVctoNotaEnt.next;
          end;
          dm.CDSContPag.close;
          dm.CDSContPagBeforeOpen(dm.CDSContPag);
     end;
     navegar(fnotaent);
end;

procedure TFNotaEnt.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(fnotaent);
end;

procedure TFNotaEnt.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFNotaEnt.BtnFiltroClick(Sender: TObject);
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
    with dm.qnotaent.sql do                             
    begin
         clear;
         add('select NOTFORNECEDOR,NOTNOTA,NOTPEDIDO,NOTDATA,NOTDATALCTO,NOTDEPOSITO,NOTCFOP,');
         add('NOTOPERACAO,NOTSUBTOTAL,NOTICMS,NOTIPI,NOTICMSSUBST,NOTFRETE,NOTICMSFRETE,NOTSEGURO,');
         add('NOTOUTRASDESP,NOTDESCONTO,NOTVALORBASECALC,NOTTAXAJURO,NOTTOTAL,NOTPLANOPGTO,NOTATUCONTPAGAR,');
         add('NOTCONTPAGAR,NOTENTRADA,NOTBANCO,NOTCIDADE,DEPNOME,CLINOME,CFOPNOME,NOTDATASTR');
         add('FROM TNOTAENT');
         add('   INNER JOIN TCLIENTE ON CLICOD = NOTFORNECEDOR');
         add('   LEFT OUTER JOIN TDEPOSITO ON DEPCOD = NOTDEPOSITO');
         add('   LEFT OUTER JOIN TCFOP ON CFOPCOD = NOTCFOP');                  
         add('WHERE NOTNOTA <> 0');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(NOTNOTA) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if txtfiltroinicial.text <> '  /  /    ' then
            add('AND NOTDATA >= :DATAINI');
         if txtfiltrofinal.text <> '  /  /    ' then
            add('AND NOTDATA <= :DATAFIN');
         add('order by NOTFORNECEDOR, NOTNOTA');
    end;
    if txtfiltroinicial.text <> '  /  /    ' then
       dm.qnotaent.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if txtfiltrofinal.text <> '  /  /    ' then
       dm.qnotaent.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    DataSource.DataSet.open;
end;

procedure TFNotaEnt.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, DM.DSItemVenda);
end;

procedure TFNotaEnt.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);

     btndesconectar.click;
     btnfiltro.click;
     showmessage('Importação Concluída com Sucesso!');           

end;

procedure TFNotaEnt.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFNotaEnt.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFNotaEnt.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     dm.cdscliente.open;    
end;

procedure TFNotaEnt.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
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

procedure TFNotaEnt.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFNotaEnt.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fnotaent, not panimpressao.visible);
end;

procedure TFNotaEnt.btnexcluiritemClick(Sender: TObject);
begin
    if (dm.cdsitemnotaent.Active = true) then
      if (dm.cdsitemnotaent.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
             if dm.CDSProdutoPROESTMIN.asfloat > 0 then        
             if dm.CDSProdutoPROESTOQUE.asfloat - dm.CDSItemNotaEntITEQUANT.asfloat < dm.CDSProdutoPROESTMIN.asfloat then
             begin
                  if application.messagebox ('Essa entrada ultrapassará o estoque mínimo permitido do produto, deseja continuar?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mrno then
                  begin
                       txtproduto.setfocus;
                       exit;
                  end;
             end;
             try
                  dm.cdsitemnotaent.Delete;
                  dm.cdsitemnotaent.ApplyUpdates(0);
                  total;
             except
                  ShowMessage('Impossível Excluir. Violação de Integridade.');
             end;
        end;
end;

procedure TFNotaEnt.btnsalvaritemClick(Sender: TObject);
var
     quant, valor, valor2 : double;
begin
     if (trim(txtproduto.text) = '') and
        (trim(txtsittrib.text) = '') and
        (trim(txtbasecalc.text) = '') and
        (trim(txtquant.text) = '') and
        (trim(txtpreco.text) = '') and
        (trim(txticms.text) = '') and
        (trim(txtipi.text) = '') and
        (trim(txtdesc.text) = '') then
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
          strtoint(txtsittrib.text);
     except
          showmessage('Campo Situação Tributária inválido!');
          txtsittrib.setfocus;
          exit;
     end;
     try
          strtoint(txtbasecalc.text);
     except
          showmessage('Campo Base de Cálculo inválido!');
          txtbasecalc.setfocus;
          exit;
     end;
     try
          strtofloat(txtquant.text);
     except
          showmessage('Campo quantidade inválido!');
          txtquant.setfocus;
          exit;
     end;
     try
          strtofloat(txtpreco.text);
     except
          showmessage('Campo Preço inválido!');
          txtpreco.setfocus;
          exit;
     end;
     try                                                                                   
          strtofloat(txticms.text);
     except
          showmessage('Campo ICMS inválido!');
          txticms.setfocus;
          exit;
     end;
     try
          strtofloat(txtipi.text);
     except
          showmessage('Campo IPI inválido!');
          txtipi.setfocus;
          exit;
     end;
     try
          strtofloat(txtdesc.text);
     except
          showmessage('Campo Desconto inválido!');
          txtdesc.setfocus;
          exit;
     end;
     if not dm.cdsproduto.Locate('PROCOD', txtproduto.text, []) then
     begin
          showmessage('Produto não cadastrado!');
          txtproduto.setfocus;
          exit;
     end;
     if dm.CDSProdutoPROESTMAX.asfloat > 0 then
     if dm.CDSProdutoPROESTOQUE.asfloat + strtofloat(txtquant.Text) > dm.CDSProdutoPROESTMAX.asfloat then
     begin
          if application.messagebox ('Essa entrada ultrapassará o estoque máximo permitido do produto, deseja continuar?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mrno then
          begin
               txtproduto.setfocus;
               exit;
          end;
     end;
     dm.CDSnotaent.post;
     dm.CDSnotaent.applyupdates(0);
     dm.CDSnotaent.edit;
     dm.CDSItemnotaent.append;
     dm.CDSItemNotaEntITEFORNECEDOR.asinteger := dm.CDSNotaEntNOTFORNECEDOR.asinteger;
     dm.CDSItemNotaEntITENOTA.asinteger := dm.CDSNotaEntNOTNOTA.asinteger;
     dm.CDSItemNotaEntITEPRODUTO.asinteger := strtoint(txtproduto.text);
     dm.CDSItemNotaEntITECFOP.asstring := txtcodcfop.text;
     dm.CDSItemNotaEntITESITTRIB.asinteger := strtoint(txtsittrib.text);
     dm.CDSItemNotaEntITEBASECALC.asinteger := strtoint(txtbasecalc.text);
     dm.CDSItemNotaEntITEQUANT.asfloat := strtofloat(txtquant.text);
     dm.CDSItemNotaEntITEPRECO.asfloat := strtofloat(txtpreco.text);
     dm.CDSItemNotaEntITEICMS.asfloat := strtofloat(txticms.text);
     dm.CDSItemNotaEntITEIPI.asfloat := strtofloat(txtipi.text);
     dm.CDSItemNotaEntITEDESC.asfloat := strtofloat(txtdesc.text);
     dm.CDSItemNotaEntITETOTAL.asfloat := strtofloat(txtquant.text) * strtofloat(txtpreco.text);
     dm.CDSItemnotaent.post;
     dm.CDSItemnotaent.applyupdates(0);
     total;


{             DM.TBProdutos.open;
             DM.TBProdutos.edit;
             if DM.TBProdutosProCustoEmb.Value = 0 then
             begin
                DM.TBProdutosProCustoEmb.Value:= strtofloat(TxtPreco.text);
                DM.TBProdutosProCustoUni.Value:= strtofloat(TxtPreco.text) + (strtofloat(txtpreco.text) * (strtofloat(txtipi2.text)) / 100) -  ((strtofloat(txtpreco.text) * (strtofloat(txticms2.text)) / 100));
                DM.TBProdutosProPPL.Value:= strtofloat(TxtPreco.text) + (strtofloat(txtpreco.text) * (strtofloat(txtipi2.text)) / 100);
             end
             else
             begin
                quant:= strtofloat(txtquant.text);
                valor:= strtofloat(txtpreco.text) + (strtofloat(txtpreco.text) * (strtofloat(txtipi2.text)) / 100) -  ((strtofloat(txtpreco.text) * (strtofloat(txticms2.text)) / 100));
                DM.TBProdutosProPPL.Value:= strtofloat(txtpreco.text) + (strtofloat(txtpreco.text) * ((strtofloat(txtipi2.text)) / 100));
                valor2:= strtofloat(txtpreco.text);
                if DM.TBProdutosProEstAtu.Value > 0 then
                begin
                   DM.TBProdutosProCustoEmb.Value:= ((DM.TBProdutosProEstAtu.Value * DM.TBProdutosProCustoEmb.Value) + (quant * valor2))/ (DM.TBProdutosProEstAtu.Value + quant);
                   DM.TBProdutosProCustoUni.Value:= ((DM.TBProdutosProEstAtu.Value * DM.TBProdutosProCustoUni.Value) + (quant * valor))/ (DM.TBProdutosProEstAtu.Value + quant);
                end;
             end;
             DM.TBProdutosProUltEmb.value:= DM.TBNotaEntEntData.Value;
             DM.TBProdutosProUltUni.value:= DM.TBNotaEntEntData.Value;
             DM.TBProdutosProCustoUni.Value:= strtofloat(TxtPreco.text) + (strtofloat(txtpreco.text) * (strtofloat(txtipi2.text)) / 100) -  ((strtofloat(txtpreco.text) * (strtofloat(txticms2.text)) / 100));
             DM2.TBParametro.FindKey([2]);
             if (dm2.tbparametroParValor.value= '0') then // duplicata do nereu
                DM.TBProdutosProCustoAtuUni.value:= strtofloat(TxtPreco.text) + (strtofloat(TxtPreco.text) * (strtofloat(txtipi2.text)/100))
             else
                DM.TBProdutosProCustoAtuUni.value:= strtofloat(TxtPreco.text) + (strtofloat(TxtPreco.text) * (strtofloat(txtipi2.text)/100))  -  ((strtofloat(txtpreco.text) * (strtofloat(txticms2.text)) / 100));

             DM.TBProdutosProCustoAtuEmb.value:= strtofloat(TxtPreco.text);
             dm2.tbparametro.findkey([1]);
             if dm2.TBParametroParValor.value = '27' then
             begin
                 dm.TBCliente.findkey(['F', txtcodfor.text]);
                 DM.TBProdutosProLocaliza.Value:= DM.TBClienteCliNome.value;
             end;
             DM2.TBNumero.first;
        //     showmessage(DM2.TBNumeroNumAtualizap.Value);
             IF DM2.TBNumeroNumAtualizap.Value = 'S' then
             begin
               DM.TBProdutosProPrecoVd1.value:=DM.TBProdutosProCustoAtuUni.Value *
                                 (DM.TBProdutosProPreco1.value / 100) + DM.TBProdutosProCustoAtuUni.value ;
               DM.TBProdutosProPrecoVd2.value:=DM.TBProdutosProCustoAtuUni.Value *
                                 (DM.TBProdutosProPreco2.value / 100) + DM.TBProdutosProCustoAtuUni.value ;
             end;
             DM.TBProdutos.post;
             DM.TBProdutos.refresh;}


     DM.CDSProduto.edit;
     if DM.CDSProdutoPROCUSTOMEDIOEMB.Value = 0 then
     begin
          DM.CDSProdutoPROCUSTOMEDIOEMB.Value:= strtofloat(TxtPreco.text);
          DM.CDSProdutoPROCUSTOMEDIOUNI.Value:= strtofloat(TxtPreco.text) + (strtofloat(txtpreco.text) * (strtofloat(txtipi.text)) / 100) + ((strtofloat(txtpreco.text) * (strtofloat(txticms.text)) / 100));
     end
     else
     begin
          quant:= strtofloat(txtquant.text);
          valor:= strtofloat(txtpreco.text) + (strtofloat(txtpreco.text) * (strtofloat(txtipi.text)) / 100) + ((strtofloat(txtpreco.text) * (strtofloat(txticms.text)) / 100));
          valor2:= strtofloat(txtpreco.text);
          if DM.CDSProdutoPROESTOQUE.AsFloat > 0 then
          begin
               DM.CDSProdutoPROCUSTOMEDIOEMB.Value:= ((DM.CDSProdutoPROESTOQUE.AsFloat * DM.CDSProdutoPROCUSTOMEDIOEMB.AsFloat) + (quant * valor2))/ (DM.CDSProdutoPROESTOQUE.AsFloat + quant);
               DM.CDSProdutoPROCUSTOMEDIOUNI.Value:= ((DM.CDSProdutoPROESTOQUE.AsFloat * DM.CDSProdutoPROCUSTOMEDIOUNI.AsFloat) + (quant * valor))/ (DM.CDSProdutoPROESTOQUE.AsFloat + quant);
          end;
     end;
     DM.CDSProdutoPROULTATU.value:= DM.CDSNotaEntNOTDATA.asdatetime;

     DM.CDSProdutoPROCUSTOATUUNI.value:= strtofloat(TxtPreco.text) + (strtofloat(TxtPreco.text) * (strtofloat(txtipi.text)/100))  +  ((strtofloat(txtpreco.text) * (strtofloat(txticms.text)) / 100));
     DM.CDSProdutoPROCUSTOATUEMB.value:= strtofloat(TxtPreco.text);

     DM.CDSProdutoPROPRECO1.value:=DM.CDSProdutoPROCUSTOATUUNI.Value *
                       (DM.CDSProdutoPROMARGEM1.value / 100) + DM.CDSProdutoPROCUSTOATUUNI.value;
     DM.CDSProdutoPROPRECO2.value:=DM.CDSProdutoPROCUSTOATUUNI.Value *
                       (DM.CDSProdutoPROMARGEM2.value / 100) + DM.CDSProdutoPROCUSTOATUUNI.value;
     DM.CDSProdutoPROPRECO3.value:=DM.CDSProdutoPROCUSTOATUUNI.Value *
                       (DM.CDSProdutoPROMARGEM3.value / 100) + DM.CDSProdutoPROCUSTOATUUNI.value;
     DM.CDSProdutoPROPRECO4.value:=DM.CDSProdutoPROCUSTOATUUNI.Value *
                       (DM.CDSProdutoPROMARGEM4.value / 100) + DM.CDSProdutoPROCUSTOATUUNI.value;
     DM.CDSProdutoPROPRECO5.value:=DM.CDSProdutoPROCUSTOATUUNI.Value *
                       (DM.CDSProdutoPROMARGEM5.value / 100) + DM.CDSProdutoPROCUSTOATUUNI.value;
                       
     DM.CDSProduto.post;
     DM.CDSProduto.applyupdates(0);
     
     txtproduto.clear;
     txtsittrib.clear;
     txtbasecalc.clear;
     txtquant.clear;
     txtpreco.clear;
     txticms.clear;
     txtipi.clear;
     txtdesc.clear;
     txtproduto.setfocus;
end;

procedure TFNotaEnt.txtdescKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        btnsalvaritem.click;
end;

procedure TFNotaEnt.btnprodutoClick(Sender: TObject);
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

procedure TFNotaEnt.btnsinteticoClick(Sender: TObject);
begin
     RLReport.PreviewModal;
   {try
       fnotaentrel := tfnotaentrel.create(self);
       fnotaentrel.cdsrel.open;
       fnotaentrel.qrel.close;
       with fnotaentrel.qrel.sql do
       begin
            clear;
            add('SELECT COMDESCRICAO, COMDATA, COMNUMERO, PRONOME, ITESEQ, ITEPESOINI, ITEPESOFIN, ITEPESOTOTAL, PROMULTIPLICADOR, PROVALOR, ITEPRECO');
            add('FROM TITEMnotaent');
            add('    INNER JOIN TPRODUTO ON PROCOD = ITEPRODUTO');
            add('    INNER JOIN Tnotaent ON COMNUMERO = ITENUMERO');
            add('WHERE ITENUMERO <> 0');
            if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
            if trim(txtfiltroinicial.text) <> '' then
               add('AND VENDATA >= :DATAINI');
            if trim(txtfiltrofinal.text) <> '' then
               add('AND VENDATA <= :DATAFIN');
            add('ORDER BY COMNUMERO, ITESEQ');
       end;
       if trim(txtfiltroinicial.text) <> '' then
          fnotaentrel.qrel.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
       if trim(txtfiltrofinal.text) <> '' then
          fnotaentrel.qrel.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
       fnotaentrel.qrel.open;
       fnotaentrel.cdsrel.open;
       //fnotaentrel.CDSRel.IndexFieldNames := 'CLINOME;VENDATA;GRUNOME;PRONOME';
       fnotaentrel.RLReport.PreviewModal;
   finally
       fnotaentrel.release;
       fnotaentrel := nil;
       fnotaentrel.free;
   end;}
end;

procedure TFNotaEnt.btncomprovanteClick(Sender: TObject);
begin
   {try
       fnotaentrel := tfnotaentrel.create(self);
       fnotaentrel.cdsrel.open;
       fnotaentrel.qrel.close;
       with fnotaentrel.qproduto.sql do
       begin
            clear;
            add('SELECT PRONOME, SUM(ITEPESOTOTAL) AS PESOLIQ');
            add('FROM TITEMnotaent');
            add('    INNER JOIN Tnotaent ON COMNUMERO = ITENUMERO');
            add('    INNER JOIN TPRODUTO ON PROCOD = ITEPRODUTO');
            add('WHERE COMNUMERO > 0');
            if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(COMDESCRICAO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
            if trim(txtfiltroinicial.text) <> '' then
               add('AND COMDATA >= :DATAINI');
            if trim(txtfiltrofinal.text) <> '' then
               add('AND COMDATA <= :DATAFIN');
            add('GROUP BY PRONOME');
            add('ORDER BY PRONOME');
       end;
       if trim(txtfiltroinicial.text) <> '' then
          fnotaentrel.qproduto.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
       if trim(txtfiltrofinal.text) <> '' then
          fnotaentrel.qproduto.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
       fnotaentrel.qproduto.open;
       fnotaentrel.cdsproduto.open;
       fnotaentrel.RLReportProduto.PreviewModal;
   finally
       fnotaentrel.release;
       fnotaentrel := nil;
       fnotaentrel.free;
   end;}
end;

procedure TFNotaEnt.btnbancoClick(Sender: TObject);
begin
     try
         fbanco := tfbanco.create(self);
         usuario('btnconsultar',fbanco.wsinformacao.programa);
         fbanco.txtpesquisa.text := txtbanco.text;
         fbanco.BtnFiltro.click;
         fbanco.showmodal;
         dm.cdsnotaentnotbanco.asinteger := dm.cdsbancobancod.asinteger;
     finally
         fbanco.release;
         fbanco:= nil;
         fbanco.free;
     end;
end;

procedure TFNotaEnt.btnformaClick(Sender: TObject);
begin
     try
         FPlanoPgto := TFPlanoPgto.create(self);
         usuario('btnconsultar',FPlanoPgto.wsinformacao.programa);
         FPlanoPgto.txtpesquisa.text := txtforma.text;
         FPlanoPgto.BtnFiltro.click;
         FPlanoPgto.showmodal;
         dm.cdsnotaentnotplanopgto.asinteger := dm.cdsplanopgtoplacod.asinteger;
     finally
         FPlanoPgto.release;
         FPlanoPgto:= nil;
         FPlanoPgto.free;
     end;
end;

procedure TFNotaEnt.btnfornecedorClick(Sender: TObject);
begin
     try
         Fcliente := TFcliente.create(self);
         usuario('btnconsultar',Fcliente.wsinformacao.programa);
         Fcliente.txtpesquisa.text := txtfornecedor.text;
         Fcliente.BtnFiltro.click;
         Fcliente.showmodal;
         dm.cdsnotaentnotfornecedor.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         Fcliente.release;
         Fcliente:= nil;
         Fcliente.free;
     end;
end;

procedure TFNotaEnt.btncfopClick(Sender: TObject);
begin
     try
         FCFOP := TFCFOP.create(self);
         usuario('btnconsultar',FCFOP.wsinformacao.programa);
         FCFOP.txtpesquisa.text := txtcfop.text;
         FCFOP.BtnFiltro.click;
         FCFOP.showmodal;
         dm.cdsnotaentnotcfop.asstring := dm.cdscfopcfopcod.asstring;
     finally
         FCFOP.release;
         FCFOP:= nil;
         FCFOP.free;
     end;
end;

procedure TFNotaEnt.txtcodfornecedorKeyDown(Sender: TObject; var Key: Word;
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
         if sender = txtproduto then
              btnproduto.click;
         if (sender = txtcodcfop) or (sender = txtcfop) then
              btncfop.click;
         if (sender = txtcodfornecedor) or (sender = txtfornecedor) then
              btnfornecedor.click;
         if (sender = txtcodbanco) or (sender = txtbanco) then
              btnbanco.click;
         if (sender = txtcodforma) or (sender = txtforma) then
              btnforma.click;
    end;
    if (key = 40) and (not (sender is twsdbcombobox)) then
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
    if (key = 13) then
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
    if (key = 38) and (not (sender is twsdbcombobox)) then
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

procedure TFNotaEnt.txtcodfornecedorExit(Sender: TObject);
begin
     {if trim(txtcodfornecedor.text) <> '' then
     begin
          dm.CDSNotaEntNOTNOTA.asinteger := trunc(sqltotal('SELECT MAX(NOTNOTA) AS NOTA FROM TNOTAENT WHERE ' +
                            'NOTFORNECEDOR = ' + txtcodfornecedor.text)) + 1;
     end;}
end;

procedure TFNotaEnt.txtsittribExit(Sender: TObject);
begin
     if (sender as twsedit).text = '' then
          (sender as twsedit).text := '0';
end;

procedure TFNotaEnt.txtbasecalcEnter(Sender: TObject);
begin
     if (sender as twsedit).text = '' then
          (sender as twsedit).text := '100';
end;

procedure TFNotaEnt.WSDBEdit11Exit(Sender: TObject);
begin
     total;
end;

procedure TFNotaEnt.WSDBEdit21Exit(Sender: TObject);
var
     i : integer;
     data : tdate;
begin
     if dm.CDSPlanoPgto.locate('PLACOD', txtcodforma.text,[]) then
     begin
          dm.CDSNotaEnt.post;
          dm.CDSNotaEnt.ApplyUpdates(0);

          while dm.CDSVctoNotaEnt.recordcount > 0 do
          begin
               dm.CDSVctoNotaEnt.delete;
               dm.CDSVctoNotaEnt.ApplyUpdates(0);
          end;
          dm.CDSNotaEnt.edit;
          if dm.CDSPlanoPgtoPLATIPO.asstring = 'D' then
          begin
               data := strtodate(dm.CDSPlanoPgtoPLADIA.asstring + '/' + inttostr(monthof(dm.CDSNotaEntNOTDATA.asdatetime)) + '/' + inttostr(yearof(dm.CDSNotaEntNOTDATA.asdatetime)));
               for i := 1 to dm.CDSPlanoPgtoPLAVEZES.asinteger do
               begin
                    dm.CDSVctoNotaEnt.append;
                    dm.CDSVctoNotaEntVCTOFORNECEDOR.asinteger := dm.CDSNotaEntNOTFORNECEDOR.asinteger;
                    dm.CDSVctoNotaEntVCTONOTA.asinteger := dm.CDSNotaEntNOTNOTA.asinteger;
                    dm.CDSVctoNotaEntVCTODATA.asdatetime := data + (dm.CDSPlanoPgtoPLADIAS.asinteger * i);
                    dm.CDSVctoNotaEntVCTOVALOR.asfloat := (dm.CDSNotaEntNOTTOTAL.asfloat - dm.CDSNotaEntNOTENTRADA.asfloat) / dm.CDSPlanoPgtoPLAVEZES.asinteger;
                    dm.CDSVctoNotaEnt.post;
                    dm.CDSVctoNotaEnt.ApplyUpdates(0);
               end;
          end
          else
          begin
               for i := 1 to 10 do
               begin
                    if dm.CDSPlanoPgto.fieldbyname('PLA' + inttostr(i)).AsInteger <> 0 then
                    begin
                         dm.CDSVctoNotaEnt.append;
                         dm.CDSVctoNotaEntVCTOFORNECEDOR.asinteger := dm.CDSNotaEntNOTFORNECEDOR.asinteger;
                         dm.CDSVctoNotaEntVCTONOTA.asinteger := dm.CDSNotaEntNOTNOTA.asinteger;
                         dm.CDSVctoNotaEntVCTODATA.asdatetime := date + dm.CDSPlanoPgto.fieldbyname('PLA' + inttostr(i)).AsInteger;
                         dm.CDSVctoNotaEntVCTOVALOR.asfloat := (dm.CDSNotaEntNOTTOTAL.asfloat - dm.CDSNotaEntNOTENTRADA.asfloat) / dm.CDSPlanoPgtoPLAVEZES.asinteger;
                         dm.CDSVctoNotaEnt.post;
                         dm.CDSVctoNotaEnt.ApplyUpdates(0);
                    end;
               end;
          end;
     end;
end;

end.
