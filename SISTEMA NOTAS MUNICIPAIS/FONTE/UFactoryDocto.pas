unit UFactoryDocto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, Buttons, WSMaskEdit;

type
  TFFactoryDocto = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    DataSource: TDataSource;
    txtcliente: TWSDBEdit;
    txtdata: TWSDBEdit;
    WSInformacao: TWSInformacao;
    BtnCancelar: TToolButton;
    BtnSalvar: TToolButton;
    ToolButton4: TToolButton;
    DBGrid: TDBGrid;
    PanPesquisa: TPanel;
    Label4: TLabel;
    txtpesquisa: TWSEdit;
    txtnumero: TWSDBEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    txtbanco: TWSEdit;
    Label5: TLabel;
    DBGrid2: TDBGrid;
    ToolBarItem: TToolBar;
    btnsalvaritem: TToolButton;
    btnexcluiritem: TToolButton;
    Label6: TLabel;
    Label7: TLabel;
    txtnomecliente: TWSDBEdit;
    txtcheque: TWSEdit;
    Label8: TLabel;
    Label9: TLabel;
    txtcpfcnpj: TWSEdit;
    btncliente: TRxSpeedButton;
    btnbanco: TRxSpeedButton;
    panimpressao: TPanel;
    Image1: TImage;
    btnsintetico: TSpeedButton;
    Label19: TLabel;
    Label10: TLabel;
    txttaxa: TWSDBEdit;
    Label11: TLabel;
    txtvalor: TWSEdit;
    Label12: TLabel;
    btncarta: TSpeedButton;
    memohtml: TMemo;
    btncontrato: TSpeedButton;
    WSDBEdit2: TWSDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    WSDBEdit3: TWSDBEdit;
    Label16: TLabel;
    WSDBEdit4: TWSDBEdit;
    Label17: TLabel;
    txtsacado: TWSEdit;
    btnficha: TSpeedButton;
    ToolBar1: TToolBar;
    btnsalvaritemcontpag: TToolButton;
    txtitetaxa: TWSEdit;
    Label13: TLabel;
    txtvcto: TWSMaskEdit;
    txtfiltroinicial: TWSMaskEdit;
    txtfiltrofinal: TWSMaskEdit;
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
    procedure BtnFiltroClick(Sender: TObject);
    procedure btnexportarClick(Sender: TObject);
    procedure btnimportarClick(Sender: TObject);
    procedure btnhtmlClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure txtclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnexcelClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnexcluiritemClick(Sender: TObject);
    procedure btnsalvaritemClick(Sender: TObject);
    procedure btnclienteClick(Sender: TObject);
    procedure btnbancoClick(Sender: TObject);
    procedure btnsinteticoClick(Sender: TObject);
    procedure btncartaClick(Sender: TObject);
    procedure btncontratoClick(Sender: TObject);
    procedure btnfichaClick(Sender: TObject);
    procedure btnsalvaritemcontpagClick(Sender: TObject);
    procedure txtvalorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFactoryDocto: TFFactoryDocto;

implementation

uses UDM, UMenu, UUsuario, UCliente, UProduto, UFactoryDoctoRel, UBanco,
  Math;

{$R *.dfm}

procedure TFFactoryDocto.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFFactoryDocto.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFFactoryDocto.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFFactoryDocto.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFFactoryDocto.btnsairClick(Sender: TObject);
begin
     if DataSource.DataSet.active = false then
        DataSource.DataSet.open;
     close;
end;

procedure TFFactoryDocto.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(FFactoryDocto, false);
     if not datasource.dataset.active then
        btnfiltro.click;

     DataSource.DataSet.append;
     PageControl.ActivePage:=TabCadastro;
     Editar(FFactoryDocto, true);
end;

procedure TFFactoryDocto.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(FFactoryDocto, false);
     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FFactoryDocto, true);
     end;
end;

procedure TFFactoryDocto.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   mostrarimpressao(FFactoryDocto, false);
   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     Editar(FFactoryDocto, false);
     DataSource.DataSet.Edit;
   end;
end;

procedure TFFactoryDocto.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);

    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            {try}
                DataSource.DataSet.Delete;
                (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
            {except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;}
        end;
end;

procedure TFFactoryDocto.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FFactoryDocto);
end;

procedure TFFactoryDocto.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FFactoryDocto);
end;

procedure TFFactoryDocto.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFFactoryDocto.BtnFiltroClick(Sender: TObject);
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
    with dm.qFactoryDocto.sql do
    begin
         clear;
         add('SELECT FACDOCCOD, FACDOCCLIENTE, FACDOCTAXA, FACDOCDATA, FACDOCAVALISTA, FACDOCAVALISTACPF, FACDOCVALORIOF');
         add('FROM TFACTORYDOCTO INNER JOIN TCLIENTE ON CLICOD = FACDOCCLIENTE');
         add('WHERE FACDOCCOD <> 0');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(CLIRAZAO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if trim(txtfiltroinicial.text) <> '' then
            add('AND FACDOCDATA >= :DATAINI');
         if trim(txtfiltrofinal.text) <> '' then
            add('AND FACDOCDATA <= :DATAFIN');
         add('ORDER BY FACDOCCOD');
    end;
    if trim(txtfiltroinicial.text) <> '' then
       dm.qFactoryDocto.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if trim(txtfiltrofinal.text) <> '' then
       dm.qFactoryDocto.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    DataSource.DataSet.open;
end;

procedure TFFactoryDocto.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, DM.DSItemVenda);
end;

procedure TFFactoryDocto.btnimportarClick(Sender: TObject);
var
   i : byte;
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);

    if not datasource.dataset.active then
       btnfiltro.click;
    importar(DataSource, Wsinformacao.Tabela);

    dm.cdsnovo.close;
    if dm.OpenDialog.execute then
       dm.cdsnovo.LoadFromFile(dm.opendialog.filename);
    try
        dm.cdsnovo.open;
    except
        showmessage('Problemas ao carregar o arquivo!');
        exit;
    end;
    dm.cdsnovo.first;
    while not dm.cdsnovo.eof do
    begin
         dm.cdsvenda.locate('VENNUMERO', dm.cdsnovo.fields[0].value, []);
         DM.DSItemVenda.DataSet.append;
         for i := 0 to dm.cdsnovo.fields.count - 1 do
         begin
             DM.DSItemVenda.DataSet.fields[i].value := dm.cdsnovo.fields[i].value;
         end;
         DM.DSItemVenda.DataSet.post;
         (DM.DSItemVenda.dataset as tclientdataset).applyupdates(-1);
         dm.cdsnovo.next;
    end;
    dm.cdsnovo.close;
end;

procedure TFFactoryDocto.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFFactoryDocto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if (datasource.DataSet.State = dsinsert) or
        (datasource.DataSet.State = dsedit) then
     begin
          showmessage('Impossível sair, você esta em modo de edição!');
          action := canone; 
          exit;
     end;
     limpa_edits(sender as tform);     
     action := cafree;
end;

procedure TFFactoryDocto.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFFactoryDocto.txtclienteKeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtnomecliente) or (sender = txtcliente) then
              btncliente.click;
         if (sender = txtbanco) then
              btnbanco.click;
    end;
    if (key = 40) and (not (sender is tdblookupcombobox)) then
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
    if (key = 38) and (not (sender is tdblookupcombobox)) then
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

procedure TFFactoryDocto.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFFactoryDocto.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFFactoryDocto.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(FFactoryDocto, not panimpressao.visible);
end;

procedure TFFactoryDocto.btnexcluiritemClick(Sender: TObject);
begin
    if (dm.CDSItemFactoryDocto.Active = true) then
      if (dm.CDSItemFactoryDocto.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                deleta_caixa(dm.CDSItemFactoryDoctoITELCTOCAIXA.asinteger);
                dm.CDSItemFactoryDocto.Delete;
                dm.CDSItemFactoryDocto.ApplyUpdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFFactoryDocto.btnsalvaritemClick(Sender: TObject);
begin
     try
          strtoint(txtnumero.text);
     except
          showmessage('Campo Número Inválido!');
          txtnumero.setfocus;
          exit;
     end;
     {try
          strtodate(txtdata.text);
     except
          showmessage('Campo Data Inválido!');
          txtdata.setfocus;
          exit;
     end;}
     try
          strtoint(txtbanco.text);
     except
          showmessage('Campo Banco Inválido!');
          txtbanco.setfocus;
          exit;
     end;
     try
          strtoint(txtcheque.text);
     except
          showmessage('Campo Cheque Inválido!');
          txtcheque.setfocus;
          exit;
     end;
     try
          strtodate(txtvcto.text);
     except
          showmessage('Campo Vencimento Inválido!');
          txtvcto.setfocus;
          exit;
     end;
     try
          strtofloat(txtvalor.text);
     except
          showmessage('Campo Valor Inválido!');
          txtvalor.setfocus;
          exit;
     end;
     try
          strtofloat(txtitetaxa.text);
     except
          showmessage('Campo Taxa Inválido!');
          txtitetaxa.setfocus;
          exit;
     end;
     if not dm.cdsbanco.Locate('BANCOD', txtbanco.text, []) then
     begin
          showmessage('Banco não cadastrado!');
          txtbanco.setfocus;
          exit;
     end;
     if dm.CDSItemFactoryDocto.Locate('ITECOD;ITEBANCO;ITECHEQUE', VarArrayOf([txtnumero.text ,txtbanco.text, txtcheque.text]) , []) then
     begin
          showmessage('Cheque já cadastrado!');
          txtbanco.setfocus;
          exit;
     end;
     dm.cdscliente.locate('CLICOD', txtcliente.text,[]);
     if dm.CDSClienteCLIVALORMAXDOCTO.asfloat < strtofloat(txtvalor.text) then
     begin
          showmessage('Valor do documento maior que o máximo permitido!');
          txtvalor.setfocus;
          exit;
     end;
     dm.CDSFactoryDocto.post;
     dm.CDSFactoryDocto.applyupdates(-1);
     dm.CDSFactoryDocto.edit;

     dm.CDSItemFactoryDocto.append;
     dm.CDSItemFactoryDoctoITECOD.asinteger := strtoint(txtnumero.text);
     dm.CDSItemFactoryDoctoITEBANCO.asinteger := strtoint(txtbanco.text);
     dm.CDSItemFactoryDoctoITECHEQUE.asinteger := strtoint(txtcheque.text);
     dm.CDSItemFactoryDoctoITESACADO.asstring := txtsacado.text;
     dm.CDSItemFactoryDoctoITECPFCPNJ.asstring := txtcpfcnpj.text;
     dm.CDSItemFactoryDoctoITEVCTO.AsDateTime := strtodate(txtvcto.text);
     dm.CDSItemFactoryDoctoITEBAIXADO.asstring := 'N';
     dm.CDSItemFactoryDoctoITEVALOR.asfloat := strtofloat(txtvalor.text);
     dm.CDSItemFactoryDoctoITETAXA.asfloat := strtofloat(txtitetaxa.text);
     dm.CDSItemFactoryDoctoITEDESC.asfloat := Arredonda((((dm.cdsclienteCLITAXAJUROANO.asfloat/30/12/100)* (strtodate(txtvcto.text) - date))* (strtofloat(txtvalor.text))),2);
     if dm.CDSItemFactoryDoctoITEDESC.asfloat < 0 then
         dm.CDSItemFactoryDoctoITEDESC.asfloat := 0;
     dm.CDSItemFactoryDoctoITEIOF.asfloat := Arredonda((strtofloat(valor_parametro(2)) /100) * dm.CDSItemFactoryDoctoITEDESC.asfloat,2);
     dm.CDSItemFactoryDoctoITELIQ.asfloat := Arredonda(strtofloat(txtvalor.text) - dm.CDSItemFactoryDoctoITEDESC.asfloat - dm.CDSItemFactoryDoctoITEIOF.asfloat - dm.CDSItemFactoryDoctoITETAXA.asfloat,2);
     dm.CDSItemFactoryDocto.post;
     dm.CDSItemFactoryDocto.applyupdates(0);
     txtbanco.clear;
     txtcheque.clear;
     txtcpfcnpj.clear;
     txtsacado.clear;
     txtvcto.clear;
     txtvalor.clear;
     txtbanco.setfocus;
end;

procedure TFFactoryDocto.btnclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         fcliente.txtpesquisa.text := txtnomecliente.text;
         fcliente.BtnFiltro.click;
         fcliente.showmodal;
         dm.CDSFactoryDoctoFACDOCCLIENTE.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

procedure TFFactoryDocto.btnbancoClick(Sender: TObject);
begin
     try
         fbanco := tfbanco.create(self);
         usuario('btnconsultar',fbanco.wsinformacao.programa);
         fbanco.BtnFiltro.click;
         dm.cdsbanco.open;
         fbanco.showmodal;
         txtbanco.text := dm.CDSBancoBanCOD.asstring;
     finally
         fbanco.release;
         fbanco:= nil;
         fbanco.free;
     end;
end;

procedure TFFactoryDocto.btnsinteticoClick(Sender: TObject);
begin
   try
       FFactoryDoctorel := tFFactoryDoctorel.create(self);
       FFactoryDoctorel.cdsrel.close;                                                                                     
       with FFactoryDoctorel.qrel.sql do
       begin
            clear;
            add('SELECT CLIRAZAO, FACDOCDATA, BANNOME, ITECHEQUE, ITESACADO, ITECPFCPNJ, ITEVCTO, ITEVALOR, ITEIOF, ITEDESC, ITELIQ, ITETAXA');
            add('FROM TFACTORYDOCTO');
            add('    INNER JOIN TCLIENTE ON CLICOD = FACDOCCLIENTE,');
            add('TITEMFACTORYDOCTO');
            add('    INNER JOIN TBANCO ON BANCOD = ITEBANCO');
            add('WHERE ITECOD = FACDOCCOD');
            if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(CLIRAZAO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
            if trim(txtfiltroinicial.text) <> '' then
               add('AND ITEVCTO >= :DATAINI');
            if trim(txtfiltrofinal.text) <> '' then
               add('AND ITEVCTO <= :DATAFIN');
            add('ORDER BY CLIRAZAO, ITEVCTO, BANNOME, ITECHEQUE');
       end;
       if trim(txtfiltroinicial.text) <> '' then
          FFactoryDoctorel.qrel.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
       if trim(txtfiltrofinal.text) <> '' then
          FFactoryDoctorel.qrel.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
       memohtml.lines.text := FFactoryDoctorel.qrel.sql.text;
       FFactoryDoctorel.cdsrel.open;
       FFactoryDoctorel.RLReport.PreviewModal;
   finally
       FFactoryDoctorel.release;
       FFactoryDoctorel := nil;
       FFactoryDoctorel.free;
   end;
end;

procedure TFFactoryDocto.btncartaClick(Sender: TObject);
begin
     memohtml.Lines.LoadFromFile(ExtractFilePath(application.ExeName) + 'carta.txt');
     dm.cdscidade.locate('CIDCOD', dm.cdsparamempempcidade.asinteger , []);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':cidade', dm.CDSParamEmpCidade.asstring + ' - ' + dm.cdscidadeciduf.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':empcidade', dm.CDSParamEmpcidade.asstring + ' - ' + dm.cdscidadeciduf.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':data', FormatDateTime('dd "de" mmmm "de" yyyy', date));
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':clientenome', dm.CDSFactoryDoctoCliente.asstring);
     dm.cdscliente.Locate('CLICOD', dm.CDSFactoryDoctoFACDOCCLIENTE.asinteger, []);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':clienteendereco', dm.CDSClienteCLIENDERECO.asstring + ', ' + dm.cdsclienteclibairro.asstring + ' - '+ dm.CDSClienteCLINUMERO.DisplayText);
     dm.cdscidade.locate('CIDCOD', dm.cdsclienteclicidade.asinteger , []);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':clientecidade', dm.CDSClienteCidade.asstring + ' - ' + dm.cdscidadeciduf.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':clicpf', 'CNPJ: ' + dm.CDSClienteCLICPF.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':empendereco', dm.CDSParamEmpEMPENDERECO.asstring + ' - ' + dm.CDSParamEmpEMPNUMERO.DisplayText);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':empbairro', dm.CDSParamEmpEMPBAIRRO.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':empcnpj', dm.CDSParamEmpEMPCPFCNPJ.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':empnome', dm.CDSParamEmpEMPNOME.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':empie', dm.CDSParamEmpempie.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':numero',dm.CDSFactoryDoctoFACDOCCOD.DisplayText);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':banco',dm.CDSItemFactoryDoctobanco.asstring);     
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':cheque', dm.CDSItemFactoryDoctoITECHEQUE.DisplayText);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':valor', dm.CDSItemFactoryDoctoITEVALOR.DisplayText);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':vencimento', dm.CDSItemFactoryDoctoITEVCTO.asstring);

     if dm.SaveDialogHTML.execute then
     begin
          memohtml.lines.SaveToFile(dm.SaveDialogHTML.FileName);
          ShellExecute(GetDesktopWindow, 'open', PChar(dm.SaveDialogHTML.FileName),'', '', SW_SHOWDEFAULT);
     end;
end;

procedure TFFactoryDocto.btncontratoClick(Sender: TObject);
var
     ajudastr : string;
begin
     memohtml.Lines.LoadFromFile(ExtractFilePath(application.ExeName) + 'contrato.txt');
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':data', formatdatetime('dd "de" mmmm "de" yyyy', date));

     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':avalista', dm.CDSFactoryDoctoFACDOCAVALISTA.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':cpfavalista', dm.CDSFactoryDoctoFACDOCAVALISTACPF.asstring);

     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':empnome', dm.CDSParamEmpEmpNome.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':empendereco', dm.CDSParamEmpEmpEndereco.asstring + ' - ' + dm.CDSParamEmpEMPNUMERO.DisplayText);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':empbairro', dm.CDSParamEmpEmpbairro.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':empcgc', dm.CDSParamEmpEmpCPFCNPJ.asstring);
     dm.cdscidade.locate('CIDCOD', dm.cdsparamempempcidade.asinteger ,[]);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':empcidade', dm.CDScidadecidNome.asstring + ' - ' + dm.CDSCidadeCIDUF.asstring);

     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':numero', dm.cdsfactorydoctoFACDOCCOD.displaytext);
     dm.cdscliente.locate('CLICOD', dm.cdsfactorydoctoFACDOCCLIENTE.asinteger,[]);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':clinome', dm.cdsclienteclirazao.displaytext);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':cliendereco', dm.cdsclientecliendereco.asstring + ', ' + dm.cdsclienteclibairro.asstring + ' - ' + dm.CDSClienteCLINUMERO.displaytext);
     dm.cdscidade.locate('CIDCOD', dm.cdsclienteclicidade.asinteger,[]);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':clicidade', 'CNPJ: ' + dm.CDSClienteCLICPF.asstring + '   <br>' + dm.cdscidadecidnome.asstring + ' - ' + dm.CDSCidadeCIDUF.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':valor', executasqlretorno('SELECT SUM(ITELIQ) AS VALOR FROM TITEMFACTORYDOCTO WHERE ITECOD = ' + DM.CDSFACTORYDOCTOFACDOCCOD.asstring));
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':extenso', extenso(strtofloat(executasqlretorno('SELECT SUM(ITELIQ) AS VALOR FROM TITEMFACTORYDOCTO WHERE ITECOD = ' + DM.CDSFACTORYDOCTOFACDOCCOD.asstring))));
     dm.cdsitemfactorydocto.first;

     ajudastr := ' ';
     while not dm.cdsitemfactorydocto.eof do
     begin
          ajudastr := ajudastr + '   ' + dm.cdsitemfactorydoctoITECHEQUE.displaytext;
          dm.cdsitemfactorydocto.next;
     end;
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':cheque', ajudastr);

     ajudastr := ' ';
     dm.cdsitemfactorydocto.first;
     while not dm.cdsitemfactorydocto.eof do
     begin
          ajudastr := ajudastr +
              ' <tr>' +
              '  <td><div align="center">' + dm.cdsitemfactorydoctoITECHEQUE.displaytext + '</div></td>' +
              '  <td>' + dm.cdsfactorydoctocliente.asstring + '</td>' +
              '  <td><div align="center">' + dm.cdsitemfactorydoctoITEVCTO.displaytext + '</div></td>' +
              '  <td><div align="right">' + dm.CDSItemFactoryDoctoITEVALOR.displaytext + '</div></td>' +
              ' </tr>';
          dm.cdsitemfactorydocto.next;
     end;
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':item', ajudastr);

     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':bruto', formatfloat('#,###,###0.00', strtofloat(executasqlretorno('SELECT SUM(ITEVALOR) AS VALOR FROM TITEMFACTORYDOCTO WHERE ITECOD = ' + DM.CDSFACTORYDOCTOFACDOCCOD.asstring))));
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':desagio', formatfloat('#,###,###0.00', strtofloat(executasqlretorno('SELECT SUM(ITEDESC) AS VALOR FROM TITEMFACTORYDOCTO WHERE ITECOD = ' + DM.CDSFACTORYDOCTOFACDOCCOD.asstring))));
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':taxa', formatfloat('#,###,###0.00', strtofloat(executasqlretorno('SELECT SUM(ITETAXA) AS VALOR FROM TITEMFACTORYDOCTO WHERE ITECOD = ' + DM.CDSFACTORYDOCTOFACDOCCOD.asstring))));
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':iof', formatfloat('#,###,###0.000', strtofloat(executasqlretorno('SELECT SUM(ITEIOF) AS VALOR FROM TITEMFACTORYDOCTO WHERE ITECOD = ' + DM.CDSFACTORYDOCTOFACDOCCOD.asstring))));

     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':liquido',
         formatfloat('#,###,###0.00',
              strtofloat(executasqlretorno('SELECT SUM(ITEVALOR) AS VALOR FROM TITEMFACTORYDOCTO WHERE ITECOD = ' + DM.CDSFACTORYDOCTOFACDOCCOD.asstring))
            - strtofloat(executasqlretorno('SELECT SUM(ITEDESC) AS VALOR FROM TITEMFACTORYDOCTO WHERE ITECOD = ' + DM.CDSFACTORYDOCTOFACDOCCOD.asstring))
            - strtofloat(executasqlretorno('SELECT SUM(ITETAXA) AS VALOR FROM TITEMFACTORYDOCTO WHERE ITECOD = ' + DM.CDSFACTORYDOCTOFACDOCCOD.asstring))
            - strtofloat(executasqlretorno('SELECT SUM(ITEIOF) AS VALOR FROM TITEMFACTORYDOCTO WHERE ITECOD = ' + DM.CDSFACTORYDOCTOFACDOCCOD.asstring))));

     if dm.SaveDialogHTML.execute then
     begin
          memohtml.lines.SaveToFile(dm.SaveDialogHTML.FileName);
          ShellExecute(GetDesktopWindow, 'open', PChar(dm.SaveDialogHTML.FileName),'', '', SW_SHOWDEFAULT);
     end;
end;

procedure TFFactoryDocto.btnfichaClick(Sender: TObject);
begin
     try
         FFactoryDoctorel := tFFactoryDoctorel.create(self);
         DM.CDSFactoryDocto.filter := 'FACDOCCOD = ' + txtnumero.text;
         DM.CDSFactoryDocto.filtered := true;
         FFactoryDoctorel.RLReportFicha.PreviewModal;
         DM.CDSFactoryDocto.filtered := false;
     finally
         FFactoryDoctorel.release;
         FFactoryDoctorel := nil;
         FFactoryDoctorel.free;
     end;
end;

procedure TFFactoryDocto.btnsalvaritemcontpagClick(Sender: TObject);
begin
    if (DM.CDSItemFactoryDocto.Active = true) then
      if (DM.CDSItemFactoryDocto.recordCount > 0) then
      begin
           dm.CDSItemFactoryDocto.edit;
           dm.CDSItemFactoryDoctoITELCTOCAIXA.asinteger := atucaixa(dm.CDSItemFactoryDoctoITELCTOCAIXA.asinteger, date, 'CHEQUE N. ' + txtnumero.text + ' - ' + dm.CDSItemFactoryDoctoITECHEQUE.DisplayText, DM.CDSItemFactoryDoctoITEVALOR.asfloat ,0);
           if dm.CDSItemFactoryDoctoITEBAIXADO.asstring = 'S' then
           begin
              dm.CDSItemFactoryDoctoITEBAIXADO.asstring := 'N';
              dm.CDSItemFactoryDoctoITEDATABAIXA.asdatetime := date;
           end
           else
           begin
              dm.CDSItemFactoryDoctoITEBAIXADO.asstring := 'S';
              dm.CDSItemFactoryDoctoITEDATABAIXA.Clear;
           end;
           DM.CDSItemFactoryDocto.post;
           DM.CDSItemFactoryDocto.applyupdates(0);                      
      end;
end;

procedure TFFactoryDocto.txtvalorKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        btnsalvaritem.click;
end;

end.
