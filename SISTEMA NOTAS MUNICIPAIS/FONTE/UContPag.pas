unit UContPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  WSDBComboBox, dateutils, FMTBcd, SqlExpr, Buttons, RXCtrls, WSMaskEdit;

type
  TFContPag = class(TForm)
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
    txtnumero: TWSDBEdit;
    WSDBEdit2: TWSDBEdit;
    WSInformacao: TWSInformacao;
    BtnCancelar: TToolButton;
    BtnSalvar: TToolButton;
    ToolButton4: TToolButton;
    DBGrid: TDBGrid;
    PanPesquisa: TPanel;
    Label4: TLabel;
    txtpesquisa: TWSEdit;
    WSDBEdit3: TWSDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtcodcliente: TWSDBEdit;
    Label7: TLabel;
    txtcliente: TWSDBEdit;
    txtfiltrocliente: TWSEdit;
    Label9: TLabel;
    txtfiltrosituacao: TWSEdit;
    Label10: TLabel;
    Label11: TLabel;
    txtcodbanco: TWSDBEdit;
    Label8: TLabel;
    txtbanco: TWSDBEdit;
    WSDBEdit6: TWSDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    WSDBEdit7: TWSDBEdit;
    WSDBEdit8: TWSDBEdit;
    Label14: TLabel;
    WSDBEdit9: TWSDBEdit;
    Label15: TLabel;
    WSDBEdit10: TWSDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBText1: TDBText;
    ToolBarItem: TToolBar;
    btnsalvaritemcontpag: TToolButton;
    btnexcluiritemcontpag: TToolButton;
    QContPag: TSQLQuery;
    QContPagTOTAL: TFMTBCDField;
    DBGridVcto: TDBGrid;
    btnmostrar: TToolButton;
    btncliente: TRxSpeedButton;
    btnbanco: TRxSpeedButton;
    btnfiltrocliente: TRxSpeedButton;
    Label19: TLabel;
    txtfiltro: TComboBox;
    Shape1: TShape;
    panimpressao: TPanel;
    Image1: TImage;
    btnvencimentos: TSpeedButton;
    btnsintetico: TSpeedButton;
    Label20: TLabel;
    txtfiltroinicial: TWSMaskEdit;
    txtfiltrofinal: TWSMaskEdit;
    Label18: TLabel;
    btnforma: TRxSpeedButton;
    txtcodforma: TWSDBEdit;
    txtforma: TWSDBEdit;
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
    procedure txtnumeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnexcelClick(Sender: TObject);
    procedure btnexcluiritemcontpagClick(Sender: TObject);
    procedure btnsalvaritemcontpagClick(Sender: TObject);
    procedure btnmostrarClick(Sender: TObject);
    procedure btnclienteClick(Sender: TObject);
    procedure btnbancoClick(Sender: TObject);
    procedure btnfiltroclienteClick(Sender: TObject);
    procedure DBGridVctoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnsinteticoClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnvencimentosClick(Sender: TObject);
    procedure WSDBEdit6Exit(Sender: TObject);
    procedure btnformaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure atualizacontpag;
  end;

var
  FContPag: TFContPag;

implementation

uses UDM, UMenu, UCliente, UBanco, UContPagRel, UPlanoPgto;

{$R *.dfm}

procedure TFContPag.atualizacontPAG;
begin
     qcontPAG.close;
     qcontPAG.params[0].asinteger := dm.cdscontPAGPAGdocumento.asinteger;
     qcontPAG.open;
     if dm.cdscontPAG.state = dsedit then
     begin
          dm.CDSContPAGPAGVALORPAGO.asfloat := qcontPAGtotal.asfloat;
          dm.cdscontPAGPAGtotal.asfloat := dm.cdscontPAGtotal.asfloat;
     end
     else
     begin
          dm.CDSContPAG.edit;
          dm.CDSContPAGPAGVALORPAGO.asfloat := qcontPAGtotal.asfloat;
          dm.cdscontPAGPAGtotal.asfloat := dm.cdscontPAGtotal.asfloat;
          dm.CDSContPAG.post;
          dm.CDSContPAG.applyupdates(0);                    
     end;
     qcontPAG.close;
end;

procedure TFContPag.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFContPag.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFContPag.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFContPag.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFContPag.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFContPag.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(FContPag, false);
     
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FContPag, true);
     DataSource.DataSet.append;
end;

procedure TFContPag.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(FContPag, false);
     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FContPag, true);
     end;
end;

procedure TFContPag.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   mostrarimpressao(FContPag, false);


   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.Edit;
     Editar(FContPag, false);     
   end;
end;

procedure TFContPag.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);
   
    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
             if executasqlretorno('SELECT NOTNOTA FROM TNOTAENT WHERE NOTCONTPAGAR = ' + txtnumero.text) <> '' then
             begin
                  showmessage('Impossível excluir, lançamento vinculado a uma nota de entrada!');
                  txtpesquisa.setfocus;
                  exit;
             end;

             try
                 DataSource.DataSet.Delete;
                 (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
             except
                 ShowMessage('Impossível Excluir. Violação de Integridade.');
             end;
        end;
end;

procedure TFContPag.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     dm.cdscontpagpagtotal.asfloat := dm.cdscontpagtotal.asfloat;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FContPag);
end;

procedure TFContPag.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FContPag);
end;

procedure TFContPag.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFContPag.BtnFiltroClick(Sender: TObject);
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
    if trim(txtfiltrocliente.text) <> '' then
    begin
       try
           strtoint(txtfiltrocliente.text);
       except
           showmessage('Campo Cliente Inválido!');
           txtfiltrocliente.setfocus;
           exit;
       end;
    end;
    if (trim(txtfiltrosituacao.text) <> 'A') and (trim(txtfiltrosituacao.text) <> 'F') and (trim(txtfiltrosituacao.text) <> '') then
    begin
        showmessage('Campo Situação Inválido!');
        txtfiltrosituacao.setfocus;
        exit;
    end;
    DataSource.DataSet.close;
    dm.qcontPAG.close;
    with dm.qcontPAG.sql do
    begin
         clear;
         add('SELECT PAGDOCUMENTO, PAGEMISSAO, PAGCLIENTE, PAGBANCO, PAGVALOR, CLINOME, BANNOME,');
         add('PAGACRESCIMO, PAGDESCONTO, PAGENTRADA, PAGTOTAL, PAGSITUACAO, PAGVALORPAGO, PAGPARCELAS, PAGPLANOPGTO');
         add('FROM TCONTPAG');
         add('    LEFT OUTER JOIN TCLIENTE ON CLICOD = PAGCLIENTE');
         add('    LEFT OUTER JOIN TBANCO ON BANCOD = PAGBANCO');
         add('WHERE PAGDOCUMENTO > 0');
         if trim(txtpesquisa.text) <> '' then
         begin
            case txtfiltro.itemindex of
               0 : add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
               1 : add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr(txtpesquisa.text+ '%') + ')');
               2 : add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text) + ')');
            end;
         end;
         if txtfiltroinicial.text <> '  /  /    ' then
            add('AND PAGEMISSAO >= :DATAINI');
         if txtfiltrofinal.text <> '  /  /    ' then
            add('AND PAGEMISSAO <= :DATAFIN');
         if trim(txtfiltrocliente.text) <> '' then
            add('AND PAGCLIENTE = ' + quotedstr(txtfiltrocliente.text));
         if trim(txtfiltrosituacao.text) = 'A' then
            add('AND UPPER(PAGSITUACAO) = ' + quotedstr('ABERTO'));
         if trim(txtfiltrosituacao.text) = 'F' then
            add('AND UPPER(PAGSITUACAO) = ' + quotedstr('FECHADO'));
         add('ORDER BY CLINOME, PAGDOCUMENTO');
    end;
    if txtfiltroinicial.text <> '  /  /    ' then
       dm.qcontPAG.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if txtfiltrofinal.text <> '  /  /    ' then
       dm.qcontPAG.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    dm.qcontPAG.open;
    DataSource.DataSet.open;
end;

procedure TFContPag.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFContPag.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFContPag.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFContPag.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFContPag.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFContPag.txtnumeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   passar : boolean;
begin
    if (key = 27) and (btncancelar.enabled = true) then
        btncancelar.click;
    if (Key = VK_F12) and (btnSalvar.enabled = true) then
        btnsalvar.Click;

    if (key = vk_f3) then
    begin
         if (sender = txtcodbanco) or (sender = txtbanco) then
            btnbanco.click;
         if (sender = txtcodcliente) or (sender = txtcliente) then
            btncliente.click;
         if (sender = txtcodforma) or (sender = txtforma) then
            btnforma.click;
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
        if sender is TWSDBComboBox then
        begin
            with sender as TWSDBComboBox do
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

procedure TFContPag.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = 38) and (not (sender is tcombobox)) then
    begin
         if (sender = txtpesquisa) and (btnanterior.enabled = true) and (datasource.dataset.active) then
         begin
             btnanterior.Click;
             key := 0;
         end
         else
             Perform (WM_nextDlgCtl,1,0);
    end;
    if (key = 40) and (not (sender is tcombobox)) then
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

procedure TFContPag.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFContPag.btnexcluiritemcontpagClick(Sender: TObject);
begin
    if (dm.cdsitemcontPAG.Active = true) then
      if (dm.cdsitemcontPAG.REcordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                deleta_caixa(dm.CDSItemContPagITELCTOCAIXA.asinteger);
                dm.cdsitemcontPAG.Delete;
                dm.cdsitemcontPAG.ApplyUpdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
        
     atualizacontPAG;
end;

procedure TFContPag.btnsalvaritemcontpagClick(Sender: TObject);
begin
    if (dm.cdsitemcontPAG.Active = true) then
      if (dm.cdsitemcontPAG.recordCount > 0) then
      begin
           dm.cdsitemcontPAG.edit;
           if dm.cdsitemcontPAGitesituacao.asstring = 'Aberto' then
           begin
              dm.CDSItemContPagITELCTOCAIXA.asinteger := atucaixa(dm.CDSItemContPagITELCTOCAIXA.asinteger, date, 'PAGAMENTO N. ' + txtnumero.text, 0 ,DM.CDSItemContPagITEVALOR.asfloat);
              dm.cdsitemcontPAGitesituacao.asstring := 'Fechado';
              dm.CDSItemContPAGITEPAGAMENTO.asdatetime := date;
           end
           else
           begin
              deleta_caixa(dm.CDSItemContPagITELCTOCAIXA.asinteger);
              dm.CDSItemContPagITELCTOCAIXA.asinteger := 0;
              dm.cdsitemcontPAGitesituacao.asstring := 'Aberto';
              dm.CDSItemContPAGITEPAGAMENTO.Clear;
           end;
           dm.cdsitemcontPAG.post;
           dm.cdsitemcontPAG.applyupdates(0);                      
      end;

      atualizacontPAG;
end;

procedure TFContPag.btnmostrarClick(Sender: TObject);
begin
     DBGridVcto.visible := not DBGridVcto.visible;
     btnsalvaritemcontPAG.enabled := DBGridVcto.visible;
     btnexcluiritemcontPAG.enabled := DBGridVcto.visible;
end;

procedure TFContPag.btnclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         fcliente.txtpesquisa.text := txtcliente.text;
         fcliente.BtnFiltro.click;
         fcliente.showmodal;
         dm.cdscontpagpagcliente.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

procedure TFContPag.btnbancoClick(Sender: TObject);
begin
     try
         fbanco := tfbanco.create(self);
         fbanco.txtpesquisa.text := txtbanco.text;
         fbanco.BtnFiltro.click;
         fbanco.showmodal;
         dm.cdscontpagpagbanco.asinteger := dm.cdsbancobancod.asinteger;
     finally
         fbanco.release;
         fbanco:= nil;
         fbanco.free;
     end;
end;

procedure TFContPag.btnfiltroclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         dm.cdscliente.open;
         fcliente.showmodal;
         txtfiltrocliente.text := dm.cdsclienteclicod.asstring;
     finally
         fcliente.release;
         fcliente := nil;
         fcliente.free;
     end;
end;

procedure TFContPag.DBGridVctoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key=vk_insert) and (btnIncluir.Enabled = True) then
        btnIncluir.Click;
    if (key=vk_f11) and (btnnovopadrao.Enabled = True) then
        btnnovopadrao.Click;
    if (key=vk_f10) and (btnAlterar.Enabled = True) then
        btnAlterar.Click;
    if tbKeyIsDown(VK_CONTROL) then
       if (key=vk_delete) and (btnexcluiritemcontpag.Enabled = True) then
           btnexcluiritemcontpag.Click;
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

procedure TFContPag.btnsinteticoClick(Sender: TObject);
begin
     FContPAGrel := tFContPAGrel.create(self);
     FContPAGrel.RLReport.PreviewModal;
end;

procedure TFContPag.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     PageControl.ActivePageIndex := 0;
     mostrarimpressao(FContPag, not panimpressao.visible);
end;

procedure TFContPag.btnvencimentosClick(Sender: TObject);
begin
     if trim(txtfiltroinicial.text) <> '' then
     begin
        try
            strtodate(txtfiltroinicial.text);
        except
            showmessage('Campo Data Inicial Inválido!');
            txtfiltroinicial.setfocus;
            exit;
        end;
     end;
     if trim(txtfiltrofinal.text) <> '' then
     begin
        try
            strtodate(txtfiltrofinal.text);
        except
            showmessage('Campo Data Final Inválido!');
            txtfiltrofinal.setfocus;
            exit;
        end;
     end;
     if trim(txtfiltrocliente.text) <> '' then
     begin
        try
            strtoint(txtfiltrocliente.text);
        except
            showmessage('Campo Cliente Inválido!');
            txtfiltrocliente.setfocus;
            exit;
        end;
     end;
     if (trim(txtfiltrosituacao.text) <> 'A') and (trim(txtfiltrosituacao.text) <> 'F') and (trim(txtfiltrosituacao.text) <> '') then
     begin
         showmessage('Campo Situação Inválido!');
         txtfiltrosituacao.setfocus;
         exit;
     end;
     FContPAGrel := tFContPAGrel.create(self);
     with FContPAGrel.qvcto.sql do
     begin
          clear;
          add('SELECT PAGDOCUMENTO, PAGEMISSAO, PAGVALOR, CLINOME, ITEDATA, ITEVALOR, ITEPAGAMENTO, ITESITUACAO');
          add('FROM TCONTPAG');
          add('    LEFT OUTER JOIN TCLIENTE ON CLICOD = PAGCLIENTE');
          add('    LEFT OUTER JOIN TBANCO ON BANCOD = PAGBANCO');
          add('    INNER JOIN TITEMCONTPAG ON ITEDOCUMENTO = PAGDOCUMENTO');
          add('WHERE PAGDOCUMENTO > 0');
          if trim(txtpesquisa.text) <> '' then
          begin
             case txtfiltro.itemindex of
                0 : add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
                1 : add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr(txtpesquisa.text+ '%') + ')');
                2 : add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text) + ')');
             end;
          end;
          if trim(txtfiltroinicial.text) <> '' then
             add('AND ITEDATA >= :DATAINI');
          if trim(txtfiltrofinal.text) <> '' then
             add('AND ITEDATA <= :DATAFIN');
          if trim(txtfiltrocliente.text) <> '' then
             add('AND PAGCLIENTE = ' + quotedstr(txtfiltrocliente.text));
          if trim(txtfiltrosituacao.text) = 'A' then
             add('AND UPPER(PAGSITUACAO) = ' + quotedstr('ABERTO'));
          if trim(txtfiltrosituacao.text) = 'F' then
             add('AND UPPER(PAGSITUACAO) = ' + quotedstr('FECHADO'));
          add('ORDER BY ITEDATA, CLINOME, PAGDOCUMENTO');
     end;
     if trim(txtfiltroinicial.text) <> '' then
        FContPAGrel.qvcto.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
     if trim(txtfiltrofinal.text) <> '' then
        FContPAGrel.qvcto.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
     FContPAGrel.qvcto.open;
     FContPAGrel.CDSVcto.open;
     FContPAGrel.RLReportvcto.PreviewModal;
end;

procedure TFContPag.WSDBEdit6Exit(Sender: TObject);
var  i : integer;
     texto : string;
     data : tdate;
begin
     texto := 'Gerar o Parcelamento?';
     if DM.CDSItemContPag.REcordcount > 0 then
     begin
          texto := 'Regerar o Parcelamento? Atenção: as parcelas serã todas geradas novamente.';
     end;
     if application.messagebox (pchar(texto), 'Atenção', mb_yesno +  MB_ICONQUESTION ) = mryes then
     begin
          DM.CDSContPag.post;
          DM.CDSContPag.applyupdates(0);
          DM.CDSContPag.edit;
          while DM.CDSItemContPag.REcordcount > 0 do
          begin
                deleta_caixa(dm.CDSItemContPagITELCTOCAIXA.asinteger);
                DM.CDSItemContPag.delete;
                DM.CDSItemContPag.applyupdates(0);
          end;

          if dm.CDSPlanoPgtoPLATIPO.asstring = 'D' then
          begin
               data := strtodate(dm.CDSPlanoPgtoPLADIA.asstring + '/' + inttostr(monthof(dm.CDSContPagPagEMISSAO.asdatetime)) + '/' + inttostr(yearof(dm.CDSContPagPagEMISSAO.asdatetime)));
               for i := 1 to dm.CDSPlanoPgtoPLAVEZES.asinteger do
               begin
                    DM.CDSItemContPag.append;
                    DM.CDSItemContPagITEDOCUMENTO.asinteger := dm.CDSContPagPAGDOCUMENTO.asinteger;
                    DM.CDSItemContPagITEDATA.asdatetime := data + (dm.CDSPlanoPgtoPLADIAS.asinteger * i);
                    DM.CDSItemContPagITEVALOR.asfloat := (dm.CDSContPagPagVALOR.asfloat + dm.CDSContPagPagACRESCIMO.asfloat - dm.CDSContPagPagDESCONTO.asfloat - dm.CDSContPagPagENTRADA.asfloat) / dm.CDSContPagPagPARCELAS.asinteger;
                    DM.CDSItemContPag.post;
                    DM.CDSItemContPag.applyupdates(0);
               end;
          end
          else
          begin
               for i := 1 to 10 do
               begin
                    if dm.CDSPlanoPgto.fieldbyname('PLA' + inttostr(i)).AsInteger <> 0 then
                    begin
                         DM.CDSItemContPag.append;
                         DM.CDSItemContPagITEDOCUMENTO.asinteger := dm.CDSContPagPAGDOCUMENTO.asinteger;
                         DM.CDSItemContPagITEDATA.asdatetime := dm.CDSContPagPagEMISSAO.asdatetime + dm.CDSPlanoPgto.fieldbyname('PLA' + inttostr(i)).AsInteger;
                         DM.CDSItemContPagITEVALOR.asfloat := (dm.CDSContPagPagVALOR.asfloat + dm.CDSContPagPagACRESCIMO.asfloat - dm.CDSContPagPagDESCONTO.asfloat - dm.CDSContPagPagENTRADA.asfloat) / dm.CDSContPagPagPARCELAS.asinteger;
                         DM.CDSItemContPag.post;
                         DM.CDSItemContPag.applyupdates(0);
                    end;
               end;
          end;
     end;

end;

procedure TFContPag.btnformaClick(Sender: TObject);
begin
     try
         fplanopgto := tfplanopgto.create(self);
         fplanopgto.txtpesquisa.text := txtforma.text;
         fplanopgto.BtnFiltro.click;
         fplanopgto.showmodal;
         dm.cdscontpagpagplanopgto.asinteger := dm.cdsplanopgtoplacod.asinteger;
     finally
         fplanopgto.release;
         fplanopgto:= nil;
         fplanopgto.free;
     end;
end;

end.
