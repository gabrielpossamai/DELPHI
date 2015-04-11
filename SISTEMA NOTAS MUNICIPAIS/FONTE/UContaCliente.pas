unit UContaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, FMTBcd, Provider, SqlExpr, WSMaskEdit;

type
  TFContaCliente = class(TForm)
    lbltitulo: TLabel;
    PageControl: TPageControl;
    TabConsulta: TTabSheet;
    TabCadastro: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DataSource: TDataSource;
    txtcod: TWSDBEdit;
    WSDBEdit2: TWSDBEdit;
    WSInformacao: TWSInformacao;
    DBGrid: TDBGrid;
    PanPesquisa: TPanel;
    Label4: TLabel;
    txtpesquisa: TWSEdit;
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
    BtnSalvar: TToolButton;
    BtnCancelar: TToolButton;
    ToolButton4: TToolButton;
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
    Label3: TLabel;
    WSDBEdit3: TWSDBEdit;
    Label7: TLabel;
    txtcliente: TWSDBEdit;
    btncliente: TRxSpeedButton;
    txtcodcliente: TWSDBEdit;
    txttipo: TWSDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    txtfiltrocliente: TWSEdit;
    btnfiltrocliente: TRxSpeedButton;
    WSDBEdit5: TWSDBEdit;
    Label11: TLabel;
    txtfiltrofinal: TWSMaskEdit;
    txtfiltroinicial: TWSMaskEdit;
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
    procedure txtcodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnexcelClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnclienteClick(Sender: TObject);
    procedure btnfiltroclienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FContaCliente: TFContaCliente;

implementation

uses UDM, UMenu, UCOntaClienteRel, UCliente;

{$R *.dfm}

procedure TFContaCliente.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFContaCliente.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFContaCliente.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFContaCliente.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFContaCliente.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFContaCliente.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FContaCliente, true);

     DataSource.DataSet.append;
end;

procedure TFContaCliente.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FContaCliente, true);
     end;
end;

procedure TFContaCliente.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);

   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     Editar(FContaCliente, false);
     DataSource.DataSet.Edit;
   end;
end;

procedure TFContaCliente.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);

    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                deleta_caixa(dm.CDSContaClienteCONLCTOCAIXA.asinteger);
                DataSource.DataSet.Delete;
                (datasource.dataset as TClientDataSet).applyupdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFContaCliente.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     if DataSource.DataSet.state = dsinsert then
     begin
          if txttipo.text = 'D' then
               DM.CDSContaClienteConLctocaixa.asinteger := atucaixa(dm.CDSContaClienteConLctocaixa.asinteger, dm.CDSContaClienteCONDATA.asdatetime, 'CONTA CLIENTE N. ' + txtcod.text, 0 ,DM.CDSContaClienteCONVALOR.asfloat)
          else
               DM.CDSContaClienteConLctocaixa.asinteger := atucaixa(dm.CDSContaClienteConLctocaixa.asinteger, dm.CDSContaClienteCONDATA.asdatetime, 'CONTA CLIENTE N. ' + txtcod.text, DM.CDSContaClienteCONVALOR.asfloat, 0);
     end;
     DataSource.DataSet.post;
     (datasource.dataset as TClientDataSet).ApplyUpdates(-1);
     navegar(FContaCliente);
end;

procedure TFContaCliente.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FContaCliente);
end;

procedure TFContaCliente.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFContaCliente.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    dm.QContaCliente.close;
    with dm.QContaCliente.sql do
    begin
         clear;
         add('SELECT CONNUMERO, CONDATA, CONCLIENTE, CONVALOR, CONTIPO, CLINOME, CONOBS, CONLCTOCAIXA');
         add('FROM TCONTACLIENTE LEFT OUTER JOIN TCLIENTE ON CLICOD = CONCLIENTE');
         add('WHERE CONNUMERO <> 0');
         if trim(txtpesquisa.text) <> '' then
              add('AND UPPER(CONNUMERO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if txtfiltroinicial.text <> '  /  /    ' then
              add('AND CONDATA >= :DATAINI');
         if txtfiltrofinal.text <> '  /  /    ' then
              add('AND CONDATA <= :DATAFIN');
         if trim(txtfiltrocliente.text) <> '' then
              add('AND CONCLIENTE = ' + txtfiltrocliente.text);
         if sender = btnimprimir then
              add('ORDER BY CLINOME, CONDATA, CONNUMERO;')
         else
              add('ORDER BY CONNUMERO;');
    end;
    if txtfiltroinicial.text <> '  /  /    ' then
       dm.QContaCliente.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if txtfiltrofinal.text <> '  /  /    ' then
       dm.QContaCliente.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    dm.QContaCliente.open;
    DataSource.DataSet.open;
end;

procedure TFContaCliente.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(datasource, nil);
end;

procedure TFContaCliente.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFContaCliente.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFContaCliente.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFContaCliente.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFContaCliente.txtcodKeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtcodcliente) and (sender = txtcliente) then
              btncliente.click;
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

procedure TFContaCliente.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
             begin
                 btnfiltro.click
             end
             else
             begin
                 Perform (WM_nextDlgCtl,0,0);
             end;
         end
         else
             Perform (WM_nextDlgCtl,0,0);
    end;
    if key = vk_f3 then
    begin
       if sender = txtfiltrocliente then
          btnfiltrocliente.click;
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

procedure TFContaCliente.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFContaCliente.BtnImprimirClick(Sender: TObject);
var
   cliente : string;
   saldo : double;
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   btnfiltroclick(btnimprimir);
   FContaClienterel := tFContaClienterel.create(self);
   execsql('delete from ttmpcontacliente;');
   fcontaclienterel.CDSTmp.open;   
   cliente := 'aaa';   
   DM.CDSContaCliente.first;
   while not DM.CDSContaCliente.eof do
   begin
        fcontaclienterel.CDSTmp.append;
        if cliente <> DM.CDSContaClienteCLINOME.asstring then
        begin
            if txtfiltroinicial.text <> '' then
                 fcontaclienterel.qcredito.params[0].asdate := strtodate(txtfiltroinicial.text)
            else
                 fcontaclienterel.qcredito.params[0].asdate := strtodate('01/01/0001');
            fcontaclienterel.qcredito.params[1].asinteger := DM.CDSContaClienteCONCLIENTE.asinteger;
            fcontaclienterel.cdscredito.open;

            if txtfiltroinicial.text <> '' then
                 fcontaclienterel.qdebito.params[0].asdate := strtodate(txtfiltroinicial.text)
            else
                 fcontaclienterel.qdebito.params[0].asdate := strtodate('01/01/0001');
            fcontaclienterel.qdebito.params[1].asinteger := DM.CDSContaClienteCONCLIENTE.asinteger;
            fcontaclienterel.cdsdebito.open;
            saldo := fcontaclienterel.cdscreditosum.asfloat - fcontaclienterel.cdsdebitosum.asfloat;
        end;
        fcontaclienterel.CDSTmpTMPCLIENTE.asstring := dm.CDSContaClienteCLINOME.asstring;
        fcontaclienterel.CDSTmpTMPDATA.asdatetime := dm.CDSContaClienteCONDATA.asdatetime;
        fcontaclienterel.CDSTmpTMPCODIGO.asinteger := dm.CDSContaClienteCONNUMERO.asinteger;
        fcontaclienterel.CDSTmpTMPSALDOANT.asfloat := saldo;
        fcontaclienterel.CDSTmpTMPTIPO.asstring := dm.CDSContaClienteCONTIPO.asstring;
        fcontaclienterel.CDSTmpTMPVALOR.asfloat := dm.CDSContaClienteCONVALOR.asfloat;
        if dm.CDSContaClienteCONTIPO.asstring = 'D' then
             saldo := saldo - dm.CDSContaClienteCONVALOR.asfloat
        else
             saldo := saldo + dm.CDSContaClienteCONVALOR.asfloat;        
        fcontaclienterel.CDSTmpTMPSALDO.asfloat := saldo;
        fcontaclienterel.CDSTmpTMPOBS.asstring := dm.CDSContaClienteCONOBS.asstring;
        fcontaclienterel.CDSTmp.post;
        fcontaclienterel.CDSTmp.applyupdates(0);
        cliente := DM.CDSContaClienteCLINOME.asstring;
        DM.CDSContaCliente.next;        
   end;
   fcontaclienterel.CDSTmp.first;
   FContaClienterel.RLReport.PreviewModal;
   btnfiltroclick(btnfiltro);
end;

procedure TFContaCliente.btnclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         fcliente.txtpesquisa.text := txtcliente.text;
         fcliente.BtnFiltro.click;
         dm.cdscliente.open;
         fcliente.showmodal;
         dm.cdscontaclienteconcliente.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente := nil;
         fcliente.free;
     end;
end;

procedure TFContaCliente.btnfiltroclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         dm.cdscliente.open;
         fcliente.showmodal;
         txtfiltrocliente.text := dm.cdsclienteclicod.asstring;
     finally
         fcliente.release;
         fcliente := nil;
         fcliente.free;
     end;
end;

end.
