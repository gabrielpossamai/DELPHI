unit UContRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  WSDBComboBox, dateutils, FMTBcd, SqlExpr, Buttons, RXCtrls, WSMaskEdit;

type
  TFContRec = class(TForm)
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
    btnsalvaritemcontrec: TToolButton;
    btnexcluiritemcontrec: TToolButton;
    QContRec: TSQLQuery;
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
    QContRecTOTAL: TFloatField;
    QSituacao: TSQLQuery;
    QSituacaoCONTA: TIntegerField;
    Label21: TLabel;
    WSDBEdit4: TWSDBEdit;
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
    procedure btnexcluiritemcontrecClick(Sender: TObject);
    procedure btnsalvaritemcontrecClick(Sender: TObject);
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
    procedure atualizacontrec;
  end;

var
  FContRec: TFContRec;

implementation

uses UDM, UMenu, UCliente, UBanco, UContRecRel, UPlanoPgto;

{$R *.dfm}

procedure TFContRec.atualizacontrec;
begin
     qcontrec.close;
     qcontrec.params[0].asinteger := dm.cdscontrecrecdocumento.asinteger;
     qcontrec.open;

     if dm.cdscontrec.state in [dsedit,dsinsert] then
     begin
          dm.CDSContRecRECVALORPAGO.asfloat := qcontrectotal.asfloat;
          dm.cdscontrecrectotal.asfloat := dm.cdscontrectotal.asfloat;
     end
     else
     begin
          dm.CDSContRec.edit;
          dm.CDSContRecRECVALORPAGO.asfloat := qcontrectotal.asfloat;
          dm.cdscontrecrectotal.asfloat := dm.cdscontrectotal.asfloat;
          dm.CDSContRec.post;
          dm.CDSContRec.applyupdates(0);
     end;

     QSituacao.close;
     QSituacao.params[0].asinteger := dm.cdscontrecrecdocumento.asinteger;
     QSituacao.open;
     if dm.cdscontrec.state in [dsedit,dsinsert] then
     begin
          if QSituacaoCONTA.asinteger = 0 then
              dm.CDSContRecRECSITUACAO.asstring := 'Fechado'
          else
              dm.CDSContRecRECSITUACAO.asstring := 'Aberto';
     end
     else
     begin
          dm.CDSContRec.edit;
          if QSituacaoCONTA.asinteger = 0 then
              dm.CDSContRecRECSITUACAO.asstring := 'Fechado'
          else
              dm.CDSContRecRECSITUACAO.asstring := 'Aberto';
          dm.CDSContRec.post;
          dm.CDSContRec.applyupdates(0);
     end;
     QSituacao.close;
     qcontrec.close;
end;

procedure TFContRec.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFContRec.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFContRec.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFContRec.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFContRec.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFContRec.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fcontrec, false);
     
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FContRec, true);
     DataSource.DataSet.append;
end;

procedure TFContRec.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fcontrec, false);
     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FContRec, true);
     end;
end;

procedure TFContRec.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   mostrarimpressao(fcontrec, false);


   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.Edit;
     Editar(FContRec, false);     
   end;
end;

procedure TFContRec.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);
   
    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
             if executasqlretorno('SELECT NOTNUMERO FROM TNOTAFISC WHERE NOTCONTREC = ' + txtnumero.text) <> '' then
             begin
                  showmessage('Impossível excluir, lançamento vinculado a uma nota fiscal de venda!');
                  txtpesquisa.setfocus;
                  exit;
             end;
             if executasqlretorno('SELECT ORDNUMERO FROM TORDEMSERVICO WHERE ORDCONTREC = ' + txtnumero.text) <> '' then
             begin
                  showmessage('Impossível excluir, lançamento vinculado a uma ordem de serviço!');
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

procedure TFContRec.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     dm.cdscontrecrectotal.asfloat := dm.cdscontrectotal.asfloat;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FContRec);
end;

procedure TFContRec.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FContRec);
end;

procedure TFContRec.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFContRec.BtnFiltroClick(Sender: TObject);
begin
    //tudo que fizer aqui tem que fazer no da apae também
    
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
    dm.qcontrec.close;
    with dm.qcontrec.sql do
    begin
         clear;
         add('SELECT RECDOCUMENTO, RECEMISSAO, RECCLIENTE, RECBANCO, RECVALOR, CLINOME, BANNOME, RECNUMBANCO,');
         add('RECACRESCIMO, RECDESCONTO, RECENTRADA, RECTOTAL, RECSITUACAO, RECVALORPAGO, RECPARCELAS, RECPAGAMENTO, RECPLANOPGTO');
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
         if txtfiltroinicial.text <> '  /  /    ' then
            add('AND RECEMISSAO >= :DATAINI');
         if txtfiltrofinal.text <> '  /  /    ' then
            add('AND RECEMISSAO <= :DATAFIN');
         if trim(txtfiltrocliente.text) <> '' then
            add('AND RECCLIENTE = ' + quotedstr(txtfiltrocliente.text));
         if trim(txtfiltrosituacao.text) = 'A' then
            add('AND UPPER(RECSITUACAO) = ' + quotedstr('ABERTO'));
         if trim(txtfiltrosituacao.text) = 'F' then
            add('AND UPPER(RECSITUACAO) = ' + quotedstr('FECHADO'));
         add('ORDER BY CLINOME, RECDOCUMENTO');
    end;
    if txtfiltroinicial.text <> '  /  /    ' then
       dm.qcontrec.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if txtfiltrofinal.text <> '  /  /    ' then
       dm.qcontrec.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    dm.qcontrec.open;
    DataSource.DataSet.open;

    dm.cdscontrec.first;
    while not dm.cdscontrec.eof do
    begin
         atualizacontrec;
         dm.cdscontrec.next;
    end;
end;

procedure TFContRec.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFContRec.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFContRec.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFContRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if (datasource.DataSet.State = dsinsert) or
        (datasource.DataSet.State = dsedit) then
     begin
          showmessage('Impossível sair, você esta em modo de edição!');
          action := canone;
          exit;
     end;
    // limpa_edits(sender as tform);
     action := cafree;
end;

procedure TFContRec.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
end;

procedure TFContRec.txtnumeroKeyDown(Sender: TObject; var Key: Word;
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

procedure TFContRec.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFContRec.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFContRec.btnexcluiritemcontrecClick(Sender: TObject);
begin
    if (dm.cdsitemcontrec.Active = true) then
      if (dm.cdsitemcontrec.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                dm.cdsitemcontrec.Delete;
                dm.cdsitemcontrec.ApplyUpdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
     atualizacontrec;
end;

procedure TFContRec.btnsalvaritemcontrecClick(Sender: TObject);
begin
    if (dm.cdsitemcontrec.Active = true) then
      if (dm.cdsitemcontrec.RecordCount > 0) then
      begin
           dm.cdsitemcontrec.edit;
           if dm.cdsitemcontrecitesituacao.asstring = 'Aberto' then
           begin
              dm.CDSItemContRecITELCTOCAIXA.asinteger := atucaixa(dm.CDSItemContRecITELCTOCAIXA.asinteger, date, 'RECEBIMENTO N. ' + txtnumero.text, 0 ,DM.CDSItemContRecITEVALOR.asfloat);
              dm.cdsitemcontrecitesituacao.asstring := 'Fechado';
              dm.CDSItemContRecITEPAGAMENTO.asdatetime := date;
           end
           else
           begin
              deleta_caixa(dm.CDSItemContRecITELCTOCAIXA.asinteger);
              dm.CDSItemContRecITELCTOCAIXA.asinteger := 0;
              dm.cdsitemcontrecitesituacao.asstring := 'Aberto';
              dm.CDSItemContRecITEPAGAMENTO.Clear;
           end;
           dm.cdsitemcontrec.post;
           dm.cdsitemcontrec.applyupdates(0);                      
      end;
      atualizacontrec;
end;

procedure TFContRec.btnmostrarClick(Sender: TObject);
begin
     DBGridVcto.visible := not DBGridVcto.visible;
     btnsalvaritemcontrec.enabled := DBGridVcto.visible;
     btnexcluiritemcontrec.enabled := DBGridVcto.visible;
end;

procedure TFContRec.btnclienteClick(Sender: TObject);
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

procedure TFContRec.btnbancoClick(Sender: TObject);
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

procedure TFContRec.btnfiltroclienteClick(Sender: TObject);
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

procedure TFContRec.DBGridVctoKeyDown(Sender: TObject; var Key: Word;
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

procedure TFContRec.btnsinteticoClick(Sender: TObject);
begin
     FContRecrel := tFContRecrel.create(self);
     FContRecrel.RLReport.PreviewModal;
end;

procedure TFContRec.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     PageControl.ActivePageIndex := 0;
     mostrarimpressao(fcontrec, not panimpressao.visible);
end;

procedure TFContRec.btnvencimentosClick(Sender: TObject);
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
     FContRecrel := tFContRecrel.create(self);
     with FContRecrel.qvcto.sql do
     begin
          clear;
          add('SELECT RECDOCUMENTO, RECEMISSAO, RECVALOR, CLINOME, ITEDATA, ITEVALOR, ITEPAGAMENTO, ITESITUACAO');
          add('FROM TCONTREC');
          add('    LEFT OUTER JOIN TCLIENTE ON CLICOD = RECCLIENTE');
          add('    LEFT OUTER JOIN TBANCO ON BANCOD = RECBANCO');
          add('    INNER JOIN TITEMCONTREC ON ITEDOCUMENTO = RECDOCUMENTO');
          add('WHERE RECDOCUMENTO > 0');
          if trim(txtpesquisa.text) <> '' then
          begin
             case txtfiltro.itemindex of
                0 : add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
                1 : add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr(txtpesquisa.text+ '%') + ')');
                2 : add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text) + ')');
             end;
          end;
          if txtfiltroinicial.text <> '  /  /    ' then
             add('AND ITEDATA >= :DATAINI');
          if txtfiltrofinal.text <> '  /  /    ' then
             add('AND ITEDATA <= :DATAFIN');
          if trim(txtfiltrocliente.text) <> '' then
             add('AND RECCLIENTE = ' + quotedstr(txtfiltrocliente.text));
          if trim(txtfiltrosituacao.text) = 'A' then
             add('AND UPPER(RECSITUACAO) = ' + quotedstr('ABERTO'));
          if trim(txtfiltrosituacao.text) = 'F' then
             add('AND UPPER(RECSITUACAO) = ' + quotedstr('FECHADO'));
          add('ORDER BY ITEDATA, CLINOME, RECDOCUMENTO');
     end;
     if txtfiltroinicial.text <> '  /  /    ' then
        FContRecrel.qvcto.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
     if txtfiltrofinal.Text <> '  /  /    ' then
        FContRecrel.qvcto.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
     FContRecrel.qvcto.open;
     FContRecrel.CDSVcto.open;
     FContRecrel.RLReportvcto.PreviewModal;
end;

procedure TFContRec.WSDBEdit6Exit(Sender: TObject);
var  i : integer;
     texto : string;
     data : tdate;
begin
     texto := 'Gerar o Parcelamento?';
     if DM.CDSItemContRec.recordcount > 0 then
     begin
          texto := 'Regerar o Parcelamento? Atenção: as parcelas serão todas geradas novamente!';
     end;
     if application.messagebox (pchar(texto), 'Atenção', mb_yesno +  MB_ICONQUESTION ) = mryes then
     begin
          DM.CDSContRec.post;
          DM.CDSContRec.applyupdates(0);
          DM.CDSContRec.edit;
          while DM.CDSItemContRec.recordcount > 0 do
          begin
                DM.CDSItemContRec.delete;
                DM.CDSItemContRec.applyupdates(0);
          end;

          if dm.CDSPlanoPgtoPLATIPO.asstring = 'D' then
          begin
               data := strtodate(dm.CDSPlanoPgtoPLADIA.asstring + '/' + inttostr(monthof(dm.CDSContRecRECEMISSAO.asdatetime)) + '/' + inttostr(yearof(dm.CDSContRecRECEMISSAO.asdatetime)));
               for i := 1 to dm.CDSPlanoPgtoPLAVEZES.asinteger do
               begin
                    DM.CDSItemContRec.append;
                    DM.CDSItemContRecITEDOCUMENTO.asinteger := dm.CDSContRecRECDOCUMENTO.asinteger;
                    DM.CDSItemContRecITEDATA.asdatetime := data + (dm.CDSPlanoPgtoPLADIAS.asinteger * i);
                    DM.CDSItemContRecITEVALOR.asfloat := (dm.CDSContRecRECVALOR.asfloat + dm.CDSContRecRECACRESCIMO.asfloat - dm.CDSContRecRECDESCONTO.asfloat - dm.CDSContRecRECENTRADA.asfloat) / dm.CDSContRecRECPARCELAS.asinteger;
                    DM.CDSItemContRec.post;
                    DM.CDSItemContRec.applyupdates(0);
               end;
          end
          else
          begin
               for i := 1 to 10 do
               begin
                    if dm.CDSPlanoPgto.fieldbyname('PLA' + inttostr(i)).AsInteger <> 0 then
                    begin
                         DM.CDSItemContRec.append;
                         DM.CDSItemContRecITEDOCUMENTO.asinteger := dm.CDSContRecRECDOCUMENTO.asinteger;
                         DM.CDSItemContRecITEDATA.asdatetime := date + dm.CDSPlanoPgto.fieldbyname('PLA' + inttostr(i)).AsInteger;
                         DM.CDSItemContRecITEVALOR.asfloat := (dm.CDSContRecRECVALOR.asfloat + dm.CDSContRecRECACRESCIMO.asfloat - dm.CDSContRecRECDESCONTO.asfloat - dm.CDSContRecRECENTRADA.asfloat) / dm.CDSContRecRECPARCELAS.asinteger;
                         DM.CDSItemContRec.post;
                         DM.CDSItemContRec.applyupdates(0);
                    end;
               end;
          end;
     end;

end;

procedure TFContRec.btnformaClick(Sender: TObject);
begin
     try
         fplanopgto := tfplanopgto.create(self);
         fplanopgto.txtpesquisa.text := txtforma.text;
         fplanopgto.BtnFiltro.click;
         fplanopgto.showmodal;
         dm.CDSContRecRECPLANOPGTO.asinteger := dm.CDSPlanoPgtoPLACOD.asinteger;
     finally
         fplanopgto.release;
         fplanopgto:= nil;
         fplanopgto.free;
     end;
end;

end.
