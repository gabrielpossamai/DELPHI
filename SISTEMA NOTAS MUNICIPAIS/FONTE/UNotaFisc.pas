unit UNotaFisc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, Buttons, WSMaskEdit, WSDBComboBox, dateutils, WSDBMemo,
  RLReport, RLRichText;

type
  TFNotaFisc = class(TForm)
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
    btncliente: TRxSpeedButton;
    btncfop: TRxSpeedButton;
    Label15: TLabel;
    Label16: TLabel;
    txtdata: TWSDBEdit;
    txtnumero: TWSDBEdit;
    txtcodcliente: TWSDBEdit;
    txtcliente: TWSDBEdit;
    txtcfop: TWSDBEdit;
    txtcodcfop: TWSDBEdit;
    txtoperacao: TWSDBComboBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label5: TLabel;
    btnproduto: TRxSpeedButton;
    txtproduto: TWSEdit;
    ToolBarItem: TToolBar;
    btnsalvaritem: TToolButton;
    btnexcluiritem: TToolButton;
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
    Label24: TLabel;
    WSDBEdit13: TWSDBEdit;
    Label25: TLabel;
    WSDBEdit14: TWSDBEdit;
    Label26: TLabel;
    WSDBEdit15: TWSDBEdit;
    WSDBEdit16: TWSDBEdit;
    Label27: TLabel;
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
    WSDBEdit1: TWSDBEdit;
    Label1: TLabel;
    WSDBEdit2: TWSDBEdit;
    Label8: TLabel;
    txtcodtransp: TWSDBEdit;
    btntransp: TRxSpeedButton;
    txttransp: TWSDBEdit;
    btnvendedor: TRxSpeedButton;
    Label9: TLabel;
    txtcodvendedor: TWSDBEdit;
    txtvendedor: TWSDBEdit;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label23: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    WSDBEdit4: TWSDBEdit;
    WSDBEdit5: TWSDBEdit;
    WSDBEdit6: TWSDBEdit;
    WSDBEdit17: TWSDBEdit;
    Label38: TLabel;
    txtobs: TWSDBMemo;
    WSInformacao: TWSInformacao;
    WSDBEdit3: TWSDBEdit;
    WSDBEdit12: TWSDBEdit;
    WSDBEdit18: TWSDBEdit;
    btnobs: TRxSpeedButton;
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
    RLDBText34: TRLDBText;
    RLLabel25: TRLLabel;
    RLBand5: TRLBand;
    RLDBText8: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLBand6: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
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
    RLDBText37: TRLDBText;
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
    procedure btnprodutoClick(Sender: TObject);
    procedure btnsinteticoClick(Sender: TObject);
    procedure btncomprovanteClick(Sender: TObject);
    procedure btnbancoClick(Sender: TObject);
    procedure btnformaClick(Sender: TObject);
    procedure btnclienteClick(Sender: TObject);
    procedure btncfopClick(Sender: TObject);
    procedure txtcodclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure WSDBEdit11Exit(Sender: TObject);
    procedure WSDBEdit21Exit(Sender: TObject);
    procedure txtipiKeyPress(Sender: TObject; var Key: Char);
    procedure btnvendedorClick(Sender: TObject);
    procedure btnobsClick(Sender: TObject);
    procedure btntranspClick(Sender: TObject);
  private
    { Private declarations }
    procedure total;
  public
    { Public declarations }
  end;

var
  FNotaFisc: TFNotaFisc;

implementation

uses UDM, UMenu, UProduto, UBanco, UCidade, UPlanoPgto,
  UCliente, UCfop, UObservacoes, UClienteSimples;

{$R *.dfm}

procedure TFNotaFisc.total;
begin
     dm.CDSNotaFiscNOTBASECALC.asfloat := sqltotal('select sum(itetotal * (itebasecalc/100)) from titemNotaFisc' +
                                                    ' where itenumero = ' + dm.CDSNotaFiscNOTNUMERO.asstring);

     dm.cdsNotaFiscNOTICMS.asfloat := sqltotal('select sum((IteTotal * (Itebasecalc/100) * IteIcms)/100) from TitemNotaFisc' +
                                                    ' where itenumero = ' + dm.CDSNotaFiscNOTNUMERO.asstring);

     dm.cdsNotaFiscNOTIPI.asfloat := sqltotal('select sum((IteTotal * IteIpi)/100) from TitemNotaFisc' +
                                                    ' where itenumero = ' + dm.CDSNotaFiscNOTNUMERO.asstring);

     dm.cdsNotaFiscNOTDESCONTO.asfloat := sqltotal('select sum((IteTotal * IteDesc)/100) from TitemNotaFisc' +
                                                    ' where itenumero = ' + dm.CDSNotaFiscNOTNUMERO.asstring);

     dm.cdsNotaFiscNOTSUBTOTAL.asfloat := sqltotal('select sum(IteQUANT * ItePreco) from TitemNotaFisc' +
                                                    ' where itenumero = ' + dm.CDSNotaFiscNOTNUMERO.asstring);

     dm.cdsNotaFiscNOTTOTAL.value :=  dm.CDSNotaFiscNotSubTotal.value +
                                      dm.CDSNotaFiscNOTFRETE.value -
                                      dm.CDSNotaFiscNOTDESCONTO.value +
                                      dm.CDSNotaFiscNOTIPI.value -
                                      dm.CDSNotaFiscNOTFUNRURAL.value +
                                      dm.CDSNotaFiscNOTOUTRASDESP.value;
end;

procedure TFNotaFisc.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFNotaFisc.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFNotaFisc.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFNotaFisc.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFNotaFisc.btnsairClick(Sender: TObject);
begin
     if DataSource.DataSet.active = false then
        DataSource.DataSet.open;
     close;
end;

procedure TFNotaFisc.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fnotafisc, false);

     if not datasource.dataset.active then
        btnfiltro.click;

     DataSource.DataSet.append;

     PageControl.ActivePage:=TabCadastro;
     Editar(fNotaFisc, true);
end;

procedure TFNotaFisc.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fNotaFisc, false);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(fNotaFisc, true);
     end;
end;

procedure TFNotaFisc.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fNotaFisc, false);
     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage:=TabCadastro;
          Editar(fNotaFisc, false);
          DataSource.DataSet.Edit;
     end;
end;

procedure TFNotaFisc.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);

    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
             if dm.CDSNotaFiscNOTCONTREC.asinteger <> 0 then
                 execsql('DELETE FROM TCONTREC WHERE RECDOCUMENTO = ' + dm.CDSNotaFiscNOTCONTREC.asstring);
             while dm.CDSItemNotaFisc.recordcount > 0 do
             begin
                  dm.CDSItemNotaFisc.delete;
                  dm.CDSItemNotaFisc.applyupdates(0);
             end;
             while dm.CDSVctoNotaFisc.recordcount > 0 do
             begin
                  dm.CDSVctoNotaFisc.delete;
                  dm.CDSVctoNotaFisc.applyupdates(0);
             end;
             DataSource.DataSet.Delete;
             (DataSource.DataSet as TClientDataSet).ApplyUpdates(0);
        end;
end;

procedure TFNotaFisc.BtnSalvarClick(Sender: TObject);
begin
     PageControlCad.ActivePageIndex := 0;
     if trim(txtcodcliente.text) = '' then
     begin
          showmessage('Campo Cliente Inválido!');
          txtcodcliente.setfocus;
          exit;
     end
     else
     begin
          if not dm.CDSCliente.Locate('CLICOD', txtcodcliente.text, []) then
          begin
               showmessage('Cliente não cadastrado!');
               txtcodcliente.setfocus;
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
     if dm.CDSNotaFiscNOTATUCONTREC.asstring = 'S' then
     begin
          dm.CDSContRec.open;
          if not dm.CDSContRec.Locate('RECDOCUMENTO', dm.CDSNotaFiscNOTCONTRec.asinteger ,[]) then
                dm.CDSContRec.append
          else
                dm.cdscontrec.edit;
          execsql('DELETE FROM TITEMCONTREC WHERE ITEDOCUMENTO = ' + dm.CDSContRECRECDOCUMENTO.asstring);
          dm.CDSContRecRecEMISSAO.asdatetime := dm.CDSNotaFiscNOTEMISSAO.asdatetime;
          dm.CDSContRecRecCLIENTE.asinteger := dm.CDSNotaFiscNOTCLIENTE.asinteger;
          dm.CDSContRecRecBANCO.asinteger := dm.CDSNotaFiscNOTBANCO.asinteger;


          dm.CDSContRecRecVALOR.asfloat := dm.CDSNotaFiscNOTSUBTOTAL.asfloat;
          dm.CDSContRecRecACRESCIMO.asfloat := dm.CDSNotaFiscNOtIpi.value +
                                               dm.CDSNotaFiscNOTOUTRASDESP.value;
          dm.CDSContRecRecDESCONTO.asfloat := dm.CDSNotaFiscNOTDESCONTO.asfloat;
          dm.CDSContRecRecENTRADA.asfloat := dm.CDSNotaFiscNOTENTRADA.asfloat;
          dm.CDSContRecRecTOTAL.asfloat := dm.CDSNotaFiscNOTTOTAL.asfloat;
          dm.CDSContRecRECVALORPAGO.asfloat := 0;
          dm.CDSContRecRecPARCELAS.asinteger := dm.CDSVctoNotaFisc.RecordCount;
          dm.CDSContRec.post;
          dm.CDSContRec.applyupdates(0);
          dm.CDSNotaFiscNOTCONTREC.asinteger := dm.CDSContRecRecDOCUMENTO.asinteger;
          DataSource.DataSet.post;
          (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);

          while dm.CDSItemContRec.recordcount > 0 do
               dm.CDSItemContRec.delete;
          dm.CDSItemContRec.applyupdates(0);
          dm.CDSVctoNotaFisc.first;
          while not dm.CDSVctoNotaFisc.eof do
          begin
               dm.CDSItemContRec.append;
               dm.CDSItemContRecITEDOCUMENTO.asinteger := dm.CDSContRecRecDOCUMENTO.asinteger;
               dm.CDSItemContRecITEDATA.asdatetime := dm.CDSVctoNotaFiscVCTODATA.asdatetime;
               dm.CDSItemContRecITEVALOR.asfloat := dm.CDSVctoNotaFiscVCTOVALOR.asfloat;
               dm.CDSItemContRec.post;
               dm.CDSItemContRec.applyupdates(0);
               dm.CDSVctoNotaFisc.next;
          end;
          dm.CDSContRec.close;
          dm.CDSContRecBeforeOpen(dm.CDSContrec);          
     end;
     navegar(fNotaFisc);
end;

procedure TFNotaFisc.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(fNotaFisc);
end;

procedure TFNotaFisc.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFNotaFisc.BtnFiltroClick(Sender: TObject);
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
    with dm.qnotafisc.sql do
    begin
         clear;
         add('SELECT NOTNUMERO,NOTEMISSAO,NOTSAIDA,NOTHORASAIDA,NOTCFOP,NOTCLIENTE,NOTOPERACAO,NOTSUBTOTAL,');
         add('       NOTDESCONTO,NOTFRETE,NOTFUNRURAL,NOTOUTRASDESP,NOTIPI,NOTTOTAL,NOTBASECALC,NOTICMS,NOTTRANSPORTADORA,');
         add('       NOTPLACA,NOTVOLQUANT,NOTVOLESPECIE,NOTVOLPESOBRUTO,NOTVOLPESOLIQ,NOTVOLMARCA,NOTVOLNUMERO,');
         add('       NOTPLANOPGTO,NOTCIDADE,NOTBANCO,NOTVENDEDOR,NOTATUCONTREC,NOTCONTREC,NOTOBS,CLINOME,CFOPNOME,NOTENTRADA');
         add('FROM TNOTAFISC');
         add('   LEFT OUTER JOIN TCFOP ON CFOPCOD = NOTCFOP');
         add('   INNER JOIN TCLIENTE ON CLICOD = NOTCLIENTE');
         add('WHERE NOTNUMERO <> 0');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(NOTNUMERO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if txtfiltroinicial.text <> '  /  /    ' then
            add('AND NOTEMISSAO >= :DATAINI');
         if txtfiltrofinal.text <> '  /  /    ' then
            add('AND NOTEMISSAO <= :DATAFIN');
         add('ORDER BY NOTNUMERO');
    end;
    if txtfiltroinicial.text <> '  /  /    ' then
       dm.qnotafisc.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if txtfiltrofinal.text <> '  /  /    ' then
       dm.qnotafisc.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    DataSource.DataSet.open;
end;

procedure TFNotaFisc.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, DM.DSItemVenda);
end;

procedure TFNotaFisc.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);

     btndesconectar.click;
     btnfiltro.click;
     showmessage('Importação Concluída com Sucesso!');           

end;

procedure TFNotaFisc.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFNotaFisc.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFNotaFisc.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFNotaFisc.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFNotaFisc.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFNotaFisc.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fNotaFisc, not panimpressao.visible);
end;

procedure TFNotaFisc.btnexcluiritemClick(Sender: TObject);
begin
    if (dm.cdsitemnotafisc.Active = true) then
      if (dm.cdsitemnotafisc.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
             try
                  dm.cdsitemnotafisc.Delete;
                  dm.cdsitemnotafisc.ApplyUpdates(0);
                  total;
             except
                  ShowMessage('Impossível Excluir. Violação de Integridade.');
             end;
        end;
end;

procedure TFNotaFisc.btnsalvaritemClick(Sender: TObject);
begin
     if (trim(txtproduto.text) = '') and
        (trim(txtquant.text) = '') and
        (trim(txtpreco.text) = '') and
        (trim(txticms.text) = '') and
        (trim(txtipi.text) = '') then
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
          strtofloat(txtquant.text);
     except
          showmessage('Campo Quantidade inválido!');
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
          strtofloat(txtipi.text);
     except
          showmessage('Campo IPI inválido!');
          txtipi.setfocus;
          exit;
     end;
     if not dm.cdsproduto.Locate('PROCOD', txtproduto.text, []) then
     begin
          showmessage('Produto não cadastrado!');
          txtproduto.setfocus;
          exit;
     end;
     if dm.CDSProdutoPROESTMIN.asfloat > 0 then     
     if dm.CDSProdutoPROESTOQUE.asfloat - strtofloat(txtquant.Text) < dm.CDSProdutoPROESTMIN.asfloat then
     begin
          if application.messagebox ('Essa saída ultrapassará o estoque mínimo permitido do produto, deseja continuar?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mrno then
          begin
               txtproduto.setfocus;
               exit;
          end;
     end;
     dm.CDSnotafisc.post;
     dm.CDSnotafisc.applyupdates(0);
     dm.CDSnotafisc.edit;
     dm.CDSItemnotaFisc.append;
     dm.CDSItemnotaFiscITENUMERO.asinteger := dm.CDSNotaFiscNOTNUMERO.asinteger;
     dm.CDSItemnotaFiscITEPRODUTO.asinteger := strtoint(txtproduto.text);
     dm.CDSItemnotaFiscITEQUANT.asfloat := strtofloat(txtquant.text);
     dm.CDSItemnotaFiscITEPRECO.asfloat := strtofloat(txtpreco.text);
     dm.CDSItemnotaFiscITEICMS.asfloat := strtofloat(txticms.text);
     dm.CDSItemnotaFiscITEIPI.asfloat := strtofloat(txtipi.text);
     dm.CDSItemnotaFiscITETOTAL.asfloat := strtofloat(txtpreco.text) * strtofloat(txtquant.text);
     dm.CDSItemnotaFiscITECFOP.asstring := txtcodcfop.text;
     dm.CDSItemnotaFisc.post;
     dm.CDSItemnotaFisc.applyupdates(0);
     total;
     txtproduto.clear;
     txtquant.clear;
     txtpreco.clear;
     txticms.clear;
     txtipi.clear;
     txtproduto.setfocus;
end;

procedure TFNotaFisc.btnprodutoClick(Sender: TObject);
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

procedure TFNotaFisc.btnsinteticoClick(Sender: TObject);
begin
     rlreport.PreviewModal;
   {try
       fNotaFiscrel := tfNotaFiscrel.create(self);
       fNotaFiscrel.cdsrel.open;
       fNotaFiscrel.qrel.close;
       with fNotaFiscrel.qrel.sql do
       begin
            clear;
            add('SELECT COMDESCRICAO, COMDATA, COMNUMERO, PRONOME, ITESEQ, ITEPESOINI, ITEPESOFIN, ITEPESOTOTAL, PROMULTIPLICADOR, PROVALOR, ITEPRECO');
            add('FROM TITEMNotaFisc');
            add('    INNER JOIN TPRODUTO ON PROCOD = ITEPRODUTO');
            add('    INNER JOIN TNotaFisc ON COMNUMERO = ITENUMERO');
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
          fNotaFiscrel.qrel.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
       if trim(txtfiltrofinal.text) <> '' then
          fNotaFiscrel.qrel.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
       fNotaFiscrel.qrel.open;
       fNotaFiscrel.cdsrel.open;
       //fNotaFiscrel.CDSRel.IndexFieldNames := 'CLINOME;VENDATA;GRUNOME;PRONOME';
       fNotaFiscrel.RLReport.PreviewModal;
   finally
       fNotaFiscrel.release;
       fNotaFiscrel := nil;
       fNotaFiscrel.free;
   end;}
end;

procedure TFNotaFisc.btncomprovanteClick(Sender: TObject);
begin
   {try
       fNotaFiscrel := tfNotaFiscrel.create(self);
       fNotaFiscrel.cdsrel.open;
       fNotaFiscrel.qrel.close;
       with fNotaFiscrel.qproduto.sql do
       begin
            clear;
            add('SELECT PRONOME, SUM(ITEPESOTOTAL) AS PESOLIQ');
            add('FROM TITEMNotaFisc');
            add('    INNER JOIN TNotaFisc ON COMNUMERO = ITENUMERO');
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
          fNotaFiscrel.qproduto.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
       if trim(txtfiltrofinal.text) <> '' then
          fNotaFiscrel.qproduto.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
       fNotaFiscrel.qproduto.open;
       fNotaFiscrel.cdsproduto.open;
       fNotaFiscrel.RLReportProduto.PreviewModal;
   finally
       fNotaFiscrel.release;
       fNotaFiscrel := nil;
       fNotaFiscrel.free;
   end;}
end;

procedure TFNotaFisc.btnbancoClick(Sender: TObject);
begin
     try
         fbanco := tfbanco.create(self);
         usuario('btnconsultar',fbanco.wsinformacao.programa);
         fbanco.txtpesquisa.text := txtbanco.text;
         fbanco.BtnFiltro.click;
         fbanco.showmodal;
         dm.cdsNotaFiscnotbanco.asinteger := dm.cdsbancobancod.asinteger;
     finally
         fbanco.release;
         fbanco:= nil;
         fbanco.free;
     end;
end;

procedure TFNotaFisc.btnformaClick(Sender: TObject);
begin
     try
         FPlanoPgto := TFPlanoPgto.create(self);
         usuario('btnconsultar',FPlanoPgto.wsinformacao.programa);
         FPlanoPgto.txtpesquisa.text := txtforma.text;
         FPlanoPgto.BtnFiltro.click;
         FPlanoPgto.showmodal;
         dm.cdsNotaFiscnotplanopgto.asinteger := dm.cdsplanopgtoplacod.asinteger;
     finally
         FPlanoPgto.release;
         FPlanoPgto:= nil;
         FPlanoPgto.free;
     end;
end;

procedure TFNotaFisc.btnclienteClick(Sender: TObject);
begin
     try
         FclienteSimples := TFclienteSimples.create(self);
         usuario('btnconsultar',FclienteSimples.wsinformacao.programa);
         FclienteSimples.txtpesquisa.text := txtcliente.text;
         FclienteSimples.BtnFiltro.click;
         FclienteSimples.showmodal;
         dm.cdsnotafiscnotcliente.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         FclienteSimples.release;
         FclienteSimples:= nil;
         FclienteSimples.free;
     end;
end;

procedure TFNotaFisc.btncfopClick(Sender: TObject);
begin
     try
         FCFOP := TFCFOP.create(self);
         usuario('btnconsultar',FCFOP.wsinformacao.programa);
         FCFOP.txtpesquisa.text := txtcfop.text;
         FCFOP.BtnFiltro.click;
         FCFOP.showmodal;
         dm.cdsnotafiscnotcfop.asstring := dm.cdscfopcfopcod.asstring;
     finally
         FCFOP.release;
         FCFOP:= nil;
         FCFOP.free;
     end;
end;

procedure TFNotaFisc.txtcodclienteKeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtcodcfop) or (sender = txtcfop) then
              btncfop.click;
         if (sender = txtcodcliente) or (sender = txtcliente) then
              btncliente.click;
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

procedure TFNotaFisc.WSDBEdit11Exit(Sender: TObject);
begin
     total;
end;

procedure TFNotaFisc.WSDBEdit21Exit(Sender: TObject);
var
     i : integer;
     data : tdate;
begin
     if dm.CDSPlanoPgto.locate('PLACOD', txtcodforma.text,[]) then
     begin
          dm.CDSNotaFisc.post;
          dm.CDSNotaFisc.ApplyUpdates(0);

          while dm.CDSVctoNotaFisc.recordcount > 0 do
          begin
               dm.CDSVctoNotaFisc.delete;
               dm.CDSVctoNotaFisc.ApplyUpdates(0);
          end;
          dm.CDSNotaFisc.edit;
          if dm.CDSPlanoPgtoPLATIPO.asstring = 'D' then
          begin
               data := strtodate(dm.CDSPlanoPgtoPLADIA.asstring + '/' + inttostr(monthof(dm.CDSNotaFiscNOTEmissao.asdatetime)) + '/' + inttostr(yearof(dm.CDSNotaFiscNOTEmissao.asdatetime)));
               for i := 1 to dm.CDSPlanoPgtoPLAVEZES.asinteger do
               begin
                    dm.CDSVctoNotaFisc.append;
                    dm.CDSVctoNotaFiscVCTONUMERO.asinteger := dm.CDSNotaFiscNOTNUMERO.asinteger;
                    dm.CDSVctoNotaFiscVCTODATA.asdatetime := data + (dm.CDSPlanoPgtoPLADIAS.asinteger * i);
                    dm.CDSVctoNotaFiscVCTOVALOR.asfloat := (dm.CDSNotaFiscNOTTOTAL.asfloat - dm.CDSNotaFiscNOTENTRADA.asfloat) / dm.CDSPlanoPgtoPLAVEZES.asinteger;
                    dm.CDSVctoNotaFisc.post;
                    dm.CDSVctoNotaFisc.ApplyUpdates(0);
               end;
          end
          else
          begin
               for i := 1 to 10 do
               begin
                    if dm.CDSPlanoPgto.fieldbyname('PLA' + inttostr(i)).AsInteger <> 0 then
                    begin
                         dm.CDSVctoNotaFisc.append;
                         dm.CDSVctoNotaFiscVCTONUMERO.asinteger := dm.CDSNotaFiscNOTNUMERO.asinteger;
                         dm.CDSVctoNotaFiscVCTODATA.asdatetime := date + dm.CDSPlanoPgto.fieldbyname('PLA' + inttostr(i)).AsInteger;
                         dm.CDSVctoNotaFiscVCTOVALOR.asfloat := (dm.CDSNotaFiscNOTTOTAL.asfloat - dm.CDSNotaFiscNOTENTRADA.asfloat) / dm.CDSPlanoPgtoPLAVEZES.asinteger;
                         dm.CDSVctoNotaFisc.post;
                         dm.CDSVctoNotaFisc.ApplyUpdates(0);
                    end;
               end;
          end;
     end;
end;

procedure TFNotaFisc.txtipiKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        btnsalvaritem.click;
end;

procedure TFNotaFisc.btnvendedorClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         fcliente.txtpesquisa.text := txtvendedor.text;
         fcliente.BtnFiltro.click;
         fcliente.showmodal;
         dm.cdsNotaFiscnotVendedor.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

procedure TFNotaFisc.btnobsClick(Sender: TObject);
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

procedure TFNotaFisc.btntranspClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         fcliente.txtpesquisa.text := txtcliente.text;
         fcliente.BtnFiltro.click;
         fcliente.showmodal;
         dm.CDSNotaFiscNOTTRANSPORTADORA.asinteger := dm.CDSClienteCLICOD.asinteger;
     finally
         fcliente.release;
         fcliente := nil;
         fcliente.free;
     end;
end;

end.
