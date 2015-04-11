unit UContRecApae;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  WSDBComboBox, dateutils, FMTBcd, SqlExpr, Buttons, RXCtrls;

type
  TFContRecApae = class(TForm)
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
    WSDBEdit1: TWSDBEdit;
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
    txtfiltroinicial: TWSEdit;
    Label5: TLabel;
    txtfiltrofinal: TWSEdit;
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
    Label18: TLabel;
    txtpagamento: TWSDBEdit;
    DBText1: TDBText;
    ToolBarItem: TToolBar;
    btnsalvaritemcontrec: TToolButton;
    btnexcluiritemcontrec: TToolButton;
    btncliente: TRxSpeedButton;
    btnbanco: TRxSpeedButton;
    btnfiltrocliente: TRxSpeedButton;
    Label19: TLabel;
    txtfiltro: TComboBox;
    Shape1: TShape;
    panimpressao: TPanel;
    Image1: TImage;
    btnpagamentos: TSpeedButton;
    btnsintetico: TSpeedButton;
    Label20: TLabel;
    WSDBEdit4: TWSDBEdit;
    Label21: TLabel;
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
    procedure WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnexcelClick(Sender: TObject);
    procedure btnexcluiritemcontrecClick(Sender: TObject);
    procedure btnsalvaritemcontrecClick(Sender: TObject);
    procedure btnclienteClick(Sender: TObject);
    procedure btnbancoClick(Sender: TObject);
    procedure btnfiltroclienteClick(Sender: TObject);
    procedure DBGridVctoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnsinteticoClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnpagamentosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FContRecApae: TFContRecApae;

implementation

uses UDM, UMenu, UCliente, UBanco, UContRecApaeRel;

{$R *.dfm}

procedure TFContRecApae.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFContRecApae.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFContRecApae.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFContRecApae.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFContRecApae.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFContRecApae.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fcontrecapae, false);
     
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FContRecapae, true);
     DataSource.DataSet.append;
end;

procedure TFContRecApae.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fcontrecapae, false);
     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FContRecapae, true);
     end;
end;

procedure TFContRecApae.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   mostrarimpressao(fcontrecapae, false);
   if DataSource.DataSet.Active then
   begin
        PageControl.ActivePage:=TabCadastro;
        DataSource.DataSet.Edit;
        Editar(FContRecapae, false);
   end;
end;

procedure TFContRecApae.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);
   
    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                DataSource.DataSet.Delete;
                (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);                
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFContRecApae.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     dm.cdscontrecrectotal.asfloat := dm.CDSContRecRECVALOR.asfloat + dm.CDSContRecRECACRESCIMO.asfloat -
                                dm.CDSContRecRECDESCONTO.asfloat - dm.CDSContRecRECENTRADA.asfloat -
                                dm.CDSContRecRECVALORPAGO.asfloat;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FContRecapae);
end;

procedure TFContRecApae.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FContRecapae);
end;

procedure TFContRecApae.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFContRecApae.BtnFiltroClick(Sender: TObject);
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
    DataSource.DataSet.close;
    with dm.qcontrec.sql do
    begin
         clear;
         add('SELECT RECDOCUMENTO, RECEMISSAO, RECCLIENTE, RECBANCO, RECVALOR, CLINOME, BANNOME, RECNUMBANCO,');
         add('RECACRESCIMO, RECDESCONTO, RECENTRADA, RECTOTAL, RECSITUACAO, RECVALORPAGO, RECPARCELAS, RECPAGAMENTO,RECPLANOPGTO');
         add('FROM TCONTREC');
         add('    LEFT OUTER JOIN TCLIENTE ON CLICOD = RECCLIENTE');
         add('    LEFT OUTER JOIN TBANCO ON BANCOD = RECBANCO');
         add('WHERE RECDOCUMENTO > 0');
         if trim(txtpesquisa.text) <> '' then
         begin
            case txtfiltro.itemindex of
               0 : add('AND UPPER(RECNUMBANCO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
               1 : add('AND UPPER(RECNUMBANCO) LIKE UPPER(' + quotedstr(txtpesquisa.text+ '%') + ')');
               2 : add('AND UPPER(RECNUMBANCO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text) + ')');
            end;
         end;
         if trim(txtfiltroinicial.text) <> '' then
            add('AND RECEMISSAO >= :DATAINI');
         if trim(txtfiltrofinal.text) <> '' then
            add('AND RECEMISSAO <= :DATAFIN');
         if trim(txtfiltrocliente.text) <> '' then
            add('AND RECCLIENTE = ' + quotedstr(txtfiltrocliente.text));
         if trim(txtfiltrosituacao.text) = 'A' then
            add('AND UPPER(RECSITUACAO) = ' + quotedstr('ABERTO'));
         if trim(txtfiltrosituacao.text) = 'F' then
            add('AND UPPER(RECSITUACAO) = ' + quotedstr('FECHADO'));
         add('ORDER BY CLINOME, RECDOCUMENTO');
    end;
    if trim(txtfiltroinicial.text) <> '' then
       dm.qcontrec.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if trim(txtfiltrofinal.text) <> '' then
       dm.qcontrec.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    DataSource.DataSet.open;
end;

procedure TFContRecApae.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFContRecApae.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFContRecApae.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFContRecApae.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFContRecApae.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
end;

procedure TFContRecApae.WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFContRecApae.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFContRecApae.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFContRecApae.btnexcluiritemcontrecClick(Sender: TObject);
begin
    if (dm.cdscontrec.Active = true) then
      if (dm.cdscontrec.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão da baixa do Título?', 'Atnção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
             dm.cdscontrec.edit;
             dm.cdscontrecrecsituacao.asstring := 'Aberto';             
             dm.CDSContRecRECVALORPAGO.asfloat := 0;
             dm.CDSContRecRECPAGAMENTO.clear;
             dm.cdscontrecrectotal.asfloat := dm.CDSContRecRECVALOR.asfloat + dm.CDSContRecRECACRESCIMO.asfloat -
                                        dm.CDSContRecRECDESCONTO.asfloat - dm.CDSContRecRECENTRADA.asfloat -
                                        dm.CDSContRecRECVALORPAGO.asfloat;
             dm.cdscontrec.post;
             dm.cdscontrec.ApplyUpdates(0);
        end;
end;

procedure TFContRecApae.btnsalvaritemcontrecClick(Sender: TObject);
begin
    if (dm.cdscontrec.Active = true) then
      if (dm.cdscontrec.RecordCount > 0) then
      begin
           BtnAlterar.click;
           dm.cdscontrecrecsituacao.asstring := 'Fechado'; 
           txtpagamento.setfocus;
      end;
end;

procedure TFContRecApae.btnclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         fcliente.txtpesquisa.text := txtcliente.text;
         fcliente.BtnFiltro.click;
         fcliente.showmodal;
         dm.cdscontrecreccliente.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

procedure TFContRecApae.btnbancoClick(Sender: TObject);
begin
     try
         fbanco := tfbanco.create(self);
         fbanco.txtpesquisa.text := txtbanco.text;
         fbanco.BtnFiltro.click;
         fbanco.showmodal;
         dm.cdscontrecrecbanco.asinteger := dm.cdsbancobancod.asinteger;
     finally
         fbanco.release;
         fbanco:= nil;
         fbanco.free;
     end;
end;

procedure TFContRecApae.btnfiltroclienteClick(Sender: TObject);
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

procedure TFContRecApae.DBGridVctoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key=vk_insert) and (btnIncluir.Enabled = True) then
        btnIncluir.Click;
    if (key=vk_f11) and (btnnovopadrao.Enabled = True) then
        btnnovopadrao.Click;
    if (key=vk_f10) and (btnAlterar.Enabled = True) then
        btnAlterar.Click;
    if tbKeyIsDown(VK_CONTROL) then
       if (key=vk_delete) and (btnexcluiritemcontrec.Enabled = True) then
           btnexcluiritemcontrec.Click;
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

procedure TFContRecApae.btnsinteticoClick(Sender: TObject);
begin
     FContRecApaeRel := tFContRecApaeRel.create(self);
     FContRecApaeRel.RLReport.PreviewModal;
end;

procedure TFContRecApae.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     PageControl.ActivePageIndex := 0;
     mostrarimpressao(fcontrecapae, not panimpressao.visible);
end;

procedure TFContRecApae.btnpagamentosClick(Sender: TObject);
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
     FContRecApaeRel := tFContRecApaeRel.create(self);
     with FContRecApaeRel.qvcto.sql do
     begin
          clear;
          add('SELECT RECDOCUMENTO, RECEMISSAO, RECVALOR, RECTOTAL, CLINOME, RECVALORPAGO, RECPAGAMENTO, RECSITUACAO, RECACRESCIMO, RECDESCONTO, RECENTRADA');
          add('FROM TCONTREC');
          add('    LEFT OUTER JOIN TCLIENTE ON CLICOD = RECCLIENTE');
          add('    LEFT OUTER JOIN TBANCO ON BANCOD = RECBANCO');
          add('WHERE RECDOCUMENTO > 0');
          if trim(txtpesquisa.text) <> '' then
          begin
             case txtfiltro.itemindex of
                0 : add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
                1 : add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr(txtpesquisa.text+ '%') + ')');
                2 : add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text) + ')');
             end;
          end;
          if trim(txtfiltroinicial.text) <> '' then
             add('AND RECPAGAMENTO >= :DATAINI');
          if trim(txtfiltrofinal.text) <> '' then
             add('AND RECPAGAMENTO <= :DATAFIN');
          if trim(txtfiltrocliente.text) <> '' then
             add('AND RECCLIENTE = ' + quotedstr(txtfiltrocliente.text));
          if trim(txtfiltrosituacao.text) = 'A' then
             add('AND UPPER(RECSITUACAO) = ' + quotedstr('ABERTO'));
          if trim(txtfiltrosituacao.text) = 'F' then
             add('AND UPPER(RECSITUACAO) = ' + quotedstr('FECHADO'));
          add('ORDER BY RECPAGAMENTO, CLINOME, RECDOCUMENTO');
     end;
     if trim(txtfiltroinicial.text) <> '' then
        FContRecApaeRel.qvcto.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
     if trim(txtfiltrofinal.text) <> '' then
        FContRecApaeRel.qvcto.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
     FContRecApaeRel.qvcto.open;
     FContRecApaeRel.CDSVcto.open;
     FContRecApaeRel.RLReportvcto.PreviewModal;
end;

end.
