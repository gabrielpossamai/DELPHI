unit UOutraSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, RLReport, RLRichText;

type
  TFOutraSaida = class(TForm)
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
    txtcodigo: TWSDBEdit;
    txttipo: TWSDBEdit;
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
    txtcodproduto: TWSDBEdit;
    Label7: TLabel;
    txtproduto: TWSDBEdit;
    txtfiltroproduto: TWSEdit;
    Label9: TLabel;
    btnproduto: TRxSpeedButton;
    btnfiltroproduto: TRxSpeedButton;
    RLReport: TRLReport;
    RLBand1: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBImage1: TRLDBImage;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
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
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    Label5: TLabel;
    WSDBEdit4: TWSDBEdit;
    txtquant: TWSDBEdit;
    Label6: TLabel;
    RLLabel6: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText14: TRLDBText;
    Label11: TLabel;
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
    procedure txtcodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnexcelClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnprodutoClick(Sender: TObject);
    procedure btnfiltroprodutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOutraSaida: TFOutraSaida;

implementation

uses UDM, UMenu, UProduto;

{$R *.dfm}

procedure TFOutraSaida.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFOutraSaida.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFOutraSaida.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFOutraSaida.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFOutraSaida.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFOutraSaida.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FOutraSaida, true);
     DataSource.DataSet.append;
end;

procedure TFOutraSaida.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FOutraSaida, true);
     end;
end;

procedure TFOutraSaida.BtnAlterarClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);

   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.Edit;
     Editar(FOutraSaida, false);
   end;
end;

procedure TFOutraSaida.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);
   
    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            if txttipo.text = 'S' then
            begin
                 if dm.CDSProdutoPROESTMAX.asfloat > 0 then
                 if dm.CDSProdutoPROESTOQUE.asfloat + dm.CDSOutraSaidaOUTQUANT.asfloat > dm.CDSProdutoPROESTMAX.asfloat then
                 begin
                      if application.messagebox ('Essa entrada ultrapassará o estoque máximo permitido do produto, deseja continuar?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mrno then
                      begin
                           txtpesquisa.setfocus;
                           exit;
                      end;
                 end;
            end;
            if txttipo.text = 'E' then
            begin
                 if dm.CDSProdutoPROESTMIN.asfloat > 0 then            
                 if dm.CDSProdutoPROESTOQUE.asfloat - dm.CDSOutraSaidaOUTQUANT.asfloat < dm.CDSProdutoPROESTMIN.asfloat then
                 begin
                      if application.messagebox ('Essa entrada ultrapassará o estoque mínimo permitido do produto, deseja continuar?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mrno then
                      begin
                           txtpesquisa.setfocus;
                           exit;
                      end;
                 end;
            end;
            try
                DataSource.DataSet.Delete;
                (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
            deleta_caixa(dm.CDSOutraSaidaOUTLCTOCAIXA.asinteger);
        end;
end;

procedure TFOutraSaida.BtnSalvarClick(Sender: TObject);
begin
     if not dm.cdsproduto.active then
           dm.cdsproduto.open;
     dm.cdsproduto.Locate('PROCOD', txtcodproduto.text, []);
     if txttipo.text = 'S' then
     begin
          if dm.CDSProdutoPROESTMIN.asfloat > 0 then
          if dm.CDSProdutoPROESTOQUE.asfloat - strtofloat(txtquant.Text) < dm.CDSProdutoPROESTMIN.asfloat then
          begin
               if application.messagebox ('Essa entrada ultrapassará o estoque mínimo permitido do produto, deseja continuar?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mrno then
               begin
                    txtproduto.setfocus;
                    exit;
               end;
          end;
     end;
     if txttipo.text = 'E' then
     begin
          if dm.CDSProdutoPROESTMAX.asfloat > 0 then     
          if dm.CDSProdutoPROESTOQUE.asfloat + strtofloat(txtquant.Text) > dm.CDSProdutoPROESTMAX.asfloat then
          begin
               if application.messagebox ('Essa entrada ultrapassará o estoque máximo permitido do produto, deseja continuar?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mrno then
               begin
                    txtproduto.setfocus;
                    exit;
               end;
          end;
     end;
     ToolBarNavegacao.SetFocus;
     dm.CDSOutraSaidaOUTLCTOCAIXA.asinteger := atucaixa(dm.CDSOutraSaidaOUTLCTOCAIXA.asinteger, dm.CDSOutraSaidaOUTDATA.asdatetime, 'OUTRA SAIDA N. ' + txtcodigo.text, 0 ,DM.CDSOutraSaidaOUTQUANT.asfloat * dm.CDSProdutoPROVALOR.asfloat);
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FOutraSaida);
end;

procedure TFOutraSaida.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FOutraSaida);
end;

procedure TFOutraSaida.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFOutraSaida.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    with dm.QOutraSaida.sql do
    begin
         clear;
         add('SELECT OUTCOD, OUTTIPO, OUTDATA, OUTPRODUTO, OUTQUANT, OUTMOTIVO, OUTLCTOCAIXA');
         add('FROM TOUTRASAIDA');
         add('WHERE OUTCOD <> 0 ');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(OUTCOD) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if trim(txtfiltroproduto.text) <> '' then
            add('AND OUTPRODUTO = ' + quotedstr(txtfiltroproduto.text));
         add('ORDER BY OUTCOD');
    end;
    DataSource.DataSet.open;
end;

procedure TFOutraSaida.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFOutraSaida.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFOutraSaida.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFOutraSaida.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFOutraSaida.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFOutraSaida.txtcodigoKeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtcodproduto) or (sender = txtproduto) then
            btnproduto.click;
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

procedure TFOutraSaida.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
    if key = vk_f3 then
    begin
       if sender = txtfiltroproduto then
          btnfiltroproduto.click;
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
        if (sender as twsedit).enterclicar then
            btnfiltro.click
        else
            Perform (WM_nextDlgCtl,0,0);
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

procedure TFOutraSaida.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFOutraSaida.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFOutraSaida.btnprodutoClick(Sender: TObject);
begin
     try
         fproduto := tfproduto.create(self);
         usuario('btnconsultar',fproduto.wsinformacao.programa);
         fproduto.txtpesquisa.text := txtproduto.text;
         fproduto.BtnFiltro.click;
         fproduto.showmodal;
         dm.cdsoutrasaidaoutproduto.asinteger := dm.cdsprodutoprocod.asinteger;
     finally
         fproduto.release;
         fproduto := nil;
         fproduto.free;
     end;
     if not dm.CDSProduto.Active then
           dm.CDSProduto.open;
end;

procedure TFOutraSaida.btnfiltroprodutoClick(Sender: TObject);
begin
     try
         fproduto := tfproduto.create(self);
         usuario('btnconsultar',fproduto.wsinformacao.programa);
         dm.cdsproduto.open;
         fproduto.showmodal;
         txtfiltroproduto.text := dm.cdsprodutoprocod.asstring;
     finally
         fproduto.release;
         fproduto := nil;
         fproduto.free;
     end;
end;

end.
