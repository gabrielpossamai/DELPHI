unit UCompraVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, FMTBcd, Provider, SqlExpr, WSMaskEdit, Buttons, RLReport,
  RLRichText;

type
  TFCompraVenda = class(TForm)
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
    txtvendedor: TWSDBEdit;
    btnvendedor: TRxSpeedButton;
    txtcodvendedor: TWSDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    txtfiltroimovel: TWSEdit;
    btnfiltroimovel: TRxSpeedButton;
    WSDBEdit5: TWSDBEdit;
    Label11: TLabel;
    txtfiltrofinal: TWSMaskEdit;
    txtfiltroinicial: TWSMaskEdit;
    Label12: TLabel;
    btncomprador: TRxSpeedButton;
    txtcomprador: TWSDBEdit;
    txtcodcomprador: TWSDBEdit;
    Label13: TLabel;
    btnimovel: TRxSpeedButton;
    txtimovel: TWSDBEdit;
    txtcodimovel: TWSDBEdit;
    panimpressao: TPanel;
    Image1: TImage;
    btncontrato: TSpeedButton;
    btnsintetico: TSpeedButton;
    Label19: TLabel;
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
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    Memohtml: TMemo;
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
    procedure btnvendedorClick(Sender: TObject);
    procedure btnfiltroimovelClick(Sender: TObject);
    procedure btncompradorClick(Sender: TObject);
    procedure btnimovelClick(Sender: TObject);
    procedure btnsinteticoClick(Sender: TObject);
    procedure btncontratoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCompraVenda: TFCompraVenda;

implementation

uses UDM, UMenu, UCliente, UImovel;

{$R *.dfm}

procedure TFCompraVenda.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFCompraVenda.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFCompraVenda.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFCompraVenda.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFCompraVenda.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFCompraVenda.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;

     mostrarimpressao(FCompraVenda, false);        
     PageControl.ActivePage:=TabCadastro;
     Editar(FCompraVenda, true);

     DataSource.DataSet.append;
end;

procedure TFCompraVenda.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(FCompraVenda, false);
     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FCompraVenda, true);
     end;
end;

procedure TFCompraVenda.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   mostrarimpressao(FCompraVenda, not panimpressao.visible);
   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     Editar(FCompraVenda, false);
     DataSource.DataSet.Edit;
   end;
end;

procedure TFCompraVenda.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);

    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                DataSource.DataSet.Delete;
                (datasource.dataset as TClientDataSet).applyupdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFCompraVenda.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (datasource.dataset as TClientDataSet).ApplyUpdates(-1);
     navegar(FCompraVenda);
end;

procedure TFCompraVenda.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FCompraVenda);
end;

procedure TFCompraVenda.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFCompraVenda.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    with dm.QCompraVenda.sql do
    begin
         clear;
         add('SELECT COMCOD,COMVENDEDOR,COMCOMPRADOR,COMIMOVEL,COMVALOR,COMDATA,COMOBS FROM TCOMPRAVENDA');
         add('WHERE COMCOD <> 0');
         if trim(txtpesquisa.text) <> '' then
              add('AND UPPER(COMCOD) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if txtfiltroinicial.text <> '  /  /    ' then
              add('AND COMDATA >= :DATAINI');
         if txtfiltrofinal.text <> '  /  /    ' then
              add('AND COMDATA <= :DATAFIN');
         if trim(txtfiltroimovel.text) <> '' then
              add('AND COMIMOVEL = ' + txtfiltroimovel.text);
         add('ORDER BY COMCOD;');
    end;
    if txtfiltroinicial.text <> '  /  /    ' then
       dm.QCompraVenda.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if txtfiltrofinal.text <> '  /  /    ' then
       dm.QCompraVenda.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    DataSource.DataSet.open;
end;

procedure TFCompraVenda.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(datasource, nil);
end;

procedure TFCompraVenda.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFCompraVenda.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFCompraVenda.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFCompraVenda.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFCompraVenda.txtcodKeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtcodimovel) or (sender = txtimovel) then
              btnimovel.click;
         if (sender = txtcodcomprador) or (sender = txtcomprador) then
              btncomprador.click;
         if (sender = txtcodvendedor) or (sender = txtvendedor) then
              btnvendedor.click;
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

procedure TFCompraVenda.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
       if sender = txtfiltroimovel then
          btnfiltroimovel.click;
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

procedure TFCompraVenda.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFCompraVenda.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(FCompraVenda, not panimpressao.visible);
end;

procedure TFCompraVenda.btnvendedorClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         fcliente.txtpesquisa.text := txtvendedor.text;
         fcliente.BtnFiltro.click;
         dm.cdscliente.open;
         fcliente.showmodal;
         dm.cdscompravendacomvendedor.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente := nil;
         fcliente.free;
     end;
end;

procedure TFCompraVenda.btnfiltroimovelClick(Sender: TObject);
begin
     try
         fimovel := tfimovel.create(self);
         usuario('btnconsultar', fimovel.wsinformacao.programa);
         fimovel.showmodal;
         txtfiltroimovel.text := dm.cdsimovelimocod.asstring;
     finally
         fimovel.release;
         fimovel := nil;
         fimovel.free;
     end;
end;

procedure TFCompraVenda.btncompradorClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         fcliente.txtpesquisa.text := txtcomprador.text;
         fcliente.BtnFiltro.click;
         dm.cdscliente.open;
         fcliente.showmodal;
         dm.cdscompravendacomcomprador.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente := nil;
         fcliente.free;
     end;
end;

procedure TFCompraVenda.btnimovelClick(Sender: TObject);
begin
     try
         fimovel := tfimovel.create(self);
         usuario('btnconsultar', fimovel.wsinformacao.programa);
         fimovel.txtpesquisa.text := txtimovel.text;
         fimovel.BtnFiltro.click;
         fimovel.showmodal;
         dm.cdscompravendacomimovel.asinteger := dm.cdsimovelimocod.asinteger;
     finally
         fimovel.release;
         fimovel := nil;
         fimovel.free;
     end;
end;

procedure TFCompraVenda.btnsinteticoClick(Sender: TObject);
begin
     RLReport.PreviewModal;      
end;

procedure TFCompraVenda.btncontratoClick(Sender: TObject);
begin
     dm.CDSCliente.Locate('CLICOD', dm.CDSCompraVendaCOMVENDEDOR.asinteger, []);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':nomevendedor', dm.CDSClienteClinome.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':cpfvendedor', dm.CDSClienteCLICPF.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':cidadevendedor', dm.CDSClientecidade.asstring);

     dm.CDSCliente.Locate('CLICOD', dm.CDSCompraVendaCOMCOMPRADOR.asinteger, []);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':nomecomprador', dm.CDSClienteClinome.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':cpfcomprador', dm.CDSClienteCliCPF.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':rgcomprador', dm.CDSClienteCLIIDENTIDADE.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':cidadevendedor', dm.CDSClientecidade.asstring);

     dm.CDSImovel.Locate('IMOCOD', dm.CDSCompraVendaCOMIMOVEL.asinteger, []);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':enderecoimovel', dm.CDSImovelIMOENDERECO.asstring + ', ' +
                                                                               dm.CDSImovelIMONUMERO.asstring + ', ' +
                                                                               dm.CDSImovelIMOBAIRRO.asstring + ', ' +
                                                                               dm.CDSImovelcidade.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':obsimovel', dm.CDSImovelIMODESCRICAO.asstring);

     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':valor', dm.CDSCompraVendaCOMValor.displaytext);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':formapgto', dm.CDSCompraVendaCOMOBS.asstring);
     memohtml.Lines.Text := BuscaTroca(memohtml.Lines.Text, ':data', dm.CDSCompraVendaCOMDATA.asstring);

     if dm.SaveDialogHTML.execute then
     begin
          memohtml.lines.SaveToFile(dm.SaveDialogHTML.FileName);
          ShellExecute(GetDesktopWindow, 'open', PChar(dm.SaveDialogHTML.FileName),'', '', SW_SHOWDEFAULT);
     end;
end;

end.
