unit UCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, FMTBcd, SqlExpr, Buttons, RLReport, RLRichText, WSMaskEdit,
  dateutils, WSDBMemo;

type
  TFCliente = class(TForm)
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
    Label4: TLabel;
    txtpesquisa: TWSEdit;
    Label23: TLabel;
    txtfiltrocidade: TWSEdit;
    txtfiltrogrupo: TWSEdit;
    Label24: TLabel;
    btnfiltrocidade: TRxSpeedButton;
    btnfiltrogrupo: TRxSpeedButton;
    Qnome: TSQLQuery;
    QnomeCLINOME: TStringField;
    PanPrincipal: TPanel;
    Label1: TLabel;
    txtcod: TWSDBEdit;
    Label5: TLabel;
    Label2: TLabel;
    WSDBEdit2: TWSDBEdit;
    txtnome: TWSDBEdit;
    Label3: TLabel;
    WSDBEdit4: TWSDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    WSDBEdit5: TWSDBEdit;
    WSDBEdit6: TWSDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    WSDBEdit7: TWSDBEdit;
    WSDBEdit8: TWSDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    txtcodcidade: TWSDBEdit;
    btncidade: TRxSpeedButton;
    txtcidade: TWSDBEdit;
    txtgrupo: TWSDBEdit;
    btngrupo: TRxSpeedButton;
    txtcodgrupo: TWSDBEdit;
    Label12: TLabel;
    PanConvenio: TPanel;
    txtconvenio: TWSDBEdit;
    btnconvenio: TRxSpeedButton;
    txtcodconvenio: TWSDBEdit;
    lblConvenio: TLabel;
    Panel1: TPanel;
    txtcpf: TWSDBEdit;
    Label22: TLabel;
    lblIdentidade: TLabel;
    txtidentidade: TWSDBEdit;
    WSDBEdit17: TWSDBEdit;
    Label18: TLabel;
    Label21: TLabel;
    WSDBEdit19: TWSDBEdit;
    pandadosfin: TPanel;
    Label19: TLabel;
    Label25: TLabel;
    txtagencia: TWSDBEdit;
    txtcodconta: TWSDBEdit;
    Label26: TLabel;
    txtconta: TWSDBEdit;
    btnconta: TRxSpeedButton;
    Label27: TLabel;
    WSDBEdit11: TWSDBEdit;
    Label28: TLabel;
    WSDBEdit16: TWSDBEdit;
    WSDBEdit21: TWSDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    WSDBEdit22: TWSDBEdit;
    Label31: TLabel;
    txtcodempresa: TWSDBEdit;
    txtempresa: TWSDBEdit;
    btnempresa: TRxSpeedButton;
    btndadosfinanceiros: TSpeedButton;
    WSDBEdit3: TWSDBEdit;
    Label32: TLabel;
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
    RLTitulo: TRLLabel;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    PanTelefones: TPanel;
    WSDBEdit13: TWSDBEdit;
    Label16: TLabel;
    WSDBEdit12: TWSDBEdit;
    Label17: TLabel;
    WSDBEdit14: TWSDBEdit;
    Label15: TLabel;
    Label14: TLabel;
    WSDBEdit15: TWSDBEdit;
    PanProfissao: TPanel;
    txtprofissao: TWSDBEdit;
    btnprofissao: TRxSpeedButton;
    txtcodprofissao: TWSDBEdit;
    Label13: TLabel;
    RGOrdem: TRadioGroup;
    panimpressao: TPanel;
    Image1: TImage;
    btnsintetico: TSpeedButton;
    Label20: TLabel;
    RLLabel7: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    Label33: TLabel;
    WSDBEdit1: TWSDBEdit;
    Label34: TLabel;
    WSDBMemo1: TWSDBMemo;
    lbltipoimob: TLabel;
    txttipoimob: TWSDBEdit;
    txtforn: TWSEdit;
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
    procedure btnfiltrocidadeClick(Sender: TObject);
    procedure btnfiltrogrupoClick(Sender: TObject);
    procedure btncidadeClick(Sender: TObject);
    procedure btngrupoClick(Sender: TObject);
    procedure btnprofissaoClick(Sender: TObject);
    procedure btnconvenioClick(Sender: TObject);
    procedure txtnomeExit(Sender: TObject);
    procedure btncontaClick(Sender: TObject);
    procedure btndadosfinanceirosClick(Sender: TObject);
    procedure btnempresaClick(Sender: TObject);
    procedure txtcodExit(Sender: TObject);
    procedure RGOrdemClick(Sender: TObject);
    procedure btnsinteticoClick(Sender: TObject);
    procedure txtcpfEnter(Sender: TObject);
    procedure txtcpfExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCliente: TFCliente;

implementation

uses UDM, UMenu, UCidade, UGrupo, UProfissao, UConvenio, UConta, UEmpresa;

{$R *.dfm}

procedure TFCliente.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFCliente.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFCliente.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFCliente.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFCliente.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFCliente.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FCliente, true);
     DataSource.DataSet.append;
end;

procedure TFCliente.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FCliente, true);
     end;
end;

procedure TFCliente.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);

   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     Editar(FCliente, false);
     DataSource.DataSet.Edit;
   end;
end;

procedure TFCliente.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);
   
    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            integridade('CONCLIENTE', 'TCONTACLIENTE', txtcod.text);
            integridade('VENCLIENTE', 'TVENDA', txtcod.text);
            integridade('FACDOCCLIENTE', 'TFACTORYDOCTO', txtcod.text);
            integridade('FACPROCLIENTE', 'TFACTORYDOCTOPROB', txtcod.text);
            integridade('PROFORNECEDOR', 'TPRODUTO', txtcod.text);
            integridade('VEIPROPRIETARIO', 'TVEICULO', txtcod.text);
            integridade('PAGCLIENTE', 'TCONTPAG', txtcod.text);
            integridade('RECCLIENTE', 'TCONTREC', txtcod.text);
            integridade('HISCLIENTE', 'THISTCLIENTE', txtcod.text);
            integridade('NOTFORNECEDOR', 'TNOTAENT', txtcod.text);
            integridade('NOTCLIENTE', 'TNOTAFISC', txtcod.text);
            integridade('IMOPROPRIETARIO', 'TIMOVEL', txtcod.text);
            try
                 DataSource.DataSet.Delete;
                 (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
            except
                 ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFCliente.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     if btnsalvar.enabled then
     begin
          dm.CDSClienteCLIFORNECEDOR.asstring := 'S';
          DataSource.DataSet.post;
          (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
          navegar(FCliente);
          if pandadosfin.visible then
               btndadosfinanceiros.click;
     end;
end;

procedure TFCliente.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FCliente);
     if pandadosfin.visible then
           btndadosfinanceiros.click;
end;

procedure TFCliente.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFCliente.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    with dm.qcliente.sql do
    begin
         clear;
         add('SELECT CLICOD, CLITIPO, CLINOME, CLIRAZAO, CLINASCIMENTO, CLIENDERECO,');
         add('CLIBAIRRO, CLINUMERO, CLICIDADE, CLIGRUPO, CLIPROFISSAO, CLITELRESIDENCIAL, CLITELCOMERCIAL,');
         add('CLITELFAX, CLITELCELULAR, CLIEMAIL, CLICONVENIO, CLIIDENTIDADE, CLIINSCRICAO, CLICPF,');
         add('CLIOBS, CLIAGENCIA, CLICONTA, CLIGERENTE, CLITAXAJUROANO, CLILIMITE, CLIVALORMAXDOCTO, CLIEMPRESA, CLICEP,');
         add('CLICOMPRADOR, CLITIPOIMOB, CLIFORNECEDOR');
         add('FROM TCLIENTE WHERE CLICOD <> 0');
         if txtforn.Text <> '' then
              add('AND CLIFORNECEDOR = ''S''');
         if trim(txtpesquisa.text) <> '' then
         begin
              case rgordem.itemindex of
               0 : add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
               1 : add('AND UPPER(CLICOD) LIKE UPPER(' + quotedstr(txtpesquisa.text+ '%') + ')');
              end;
         end;
         if trim(txtfiltrocidade.text) <> '' then
            add('AND CLICIDADE = ' + quotedstr(txtfiltrocidade.text));
         if trim(txtfiltrogrupo.text) <> '' then
            add('AND CLIGRUPO = ' + quotedstr(txtfiltrogrupo.text));
         case rgordem.itemindex of
           0 : add('ORDER BY CLINOME');
           1 : add('ORDER BY CLICOD');
         end;
    end;
    DataSource.DataSet.open;
end;

procedure TFCliente.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFCliente.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFCliente.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFCliente.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFCliente.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     //imobiliaria
     if uppercase(dm.cdsrechcenterrecsistema.asstring) = 'I' then
     begin
          lbltipoimob.visible := true;
          txttipoimob.visible := true;
          lbltitulo.Caption := 'Locadores e Locatários';
          RLTitulo.Caption := 'Locadores e Locatários';
          btndadosfinanceiros.visible := false;
     end;
     //hotel ou contas a receber
     if not (uppercase(dm.cdsrechcenterrecsistema.asstring) = 'M') then
     begin
          panconvenio.visible := false;
          (sender as tform).Height := (sender as tform).Height - 28;
     end;
     if (uppercase(dm.cdsrechcenterrecsistema.asstring) = 'S') or
        (uppercase(dm.cdsrechcenterrecsistema.asstring) = 'G') then
     begin
          btndadosfinanceiros.visible := false;
          {panconvenio.visible := false;
          (sender as tform).Height := (sender as tform).Height - panconvenio.Height;}
          panprofissao.visible := false;
          (sender as tform).Height := (sender as tform).Height - panprofissao.Height;
          lblidentidade.visible := false;
          txtidentidade.visible := false;
     end;
end;

procedure TFCliente.txtcodKeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtcodempresa) or (sender = txtempresa) then
             btnempresa.click;
         if (sender = txtcodconta) or (sender = txtconta) then
             btnconta.click;
         if (sender = txtcodcidade) or (sender = txtcidade) then
             btncidade.click;
         if (sender = txtcodgrupo) or (sender = txtgrupo) then
             btngrupo.click;
         if (sender = txtcodprofissao) or (sender = txtprofissao) then
             btnprofissao.click;
         if (sender = txtcodconvenio) or (sender = txtconvenio) then
             btnconvenio.click;
    end;

    if (key = 40) and (not (sender is twsdbmemo)) then
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
        if sender = txtempresa then
        begin
             btndadosfinanceiros.click;
             exit;
        end;
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
    if (key = 38) and (not (sender is twsdbmemo)) then
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

procedure TFCliente.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
        if (sender as twsedit).enterclicar then
        begin
             if sender = txtpesquisa then
                 btnfiltro.click;
        end
        else
            Perform (WM_nextDlgCtl,0,0);
    end;
    if key = vk_f3 then
    begin
         if sender = txtfiltrocidade then
            btnfiltrocidade.click;
         if sender = txtfiltrogrupo then
            btnfiltrogrupo.click;
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

procedure TFCliente.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFCliente.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fcliente, not panimpressao.visible);
end;

procedure TFCliente.btnfiltrocidadeClick(Sender: TObject);
begin
     try
         fcidade := tfcidade.create(self);
         usuario('btnconsultar',fcidade.wsinformacao.programa);
         dm.cdscidade.open;
         fcidade.showmodal;
         txtfiltrocidade.text := dm.cdscidadecidcod.asstring;
     finally
         fcidade.release;
         fcidade:= nil;
         fcidade.free;
     end;
end;

procedure TFCliente.btnfiltrogrupoClick(Sender: TObject);
begin
     try
         fgrupo := tfgrupo.create(self);
         usuario('btnconsultar',fgrupo.wsinformacao.programa);
         dm.cdsgrupo.open;
         fgrupo.showmodal;
         txtfiltrogrupo.text := dm.cdsgrupogrucod.asstring;
     finally
         fgrupo.release;
         fgrupo:= nil;
         fgrupo.free;
     end;
end;

procedure TFCliente.btncidadeClick(Sender: TObject);
begin
     try
         fcidade := tfcidade.create(self);
         usuario('btnconsultar',fcidade.wsinformacao.programa);
         fcidade.txtpesquisa.text := txtcidade.text;
         fcidade.BtnFiltro.click;
         dm.cdscidade.open;
         fcidade.showmodal;
         dm.cdsclienteclicidade.asinteger := dm.cdscidadecidcod.asinteger;
     finally
         fcidade.release;
         fcidade:= nil;
         fcidade.free;
     end;
end;

procedure TFCliente.btngrupoClick(Sender: TObject);
begin
     try
         fgrupo := tfgrupo.create(self);
         usuario('btnconsultar',fgrupo.wsinformacao.programa);
         dm.cdsgrupo.open;
         fgrupo.txtpesquisa.text := txtgrupo.text;
         fgrupo.BtnFiltro.click;
         fgrupo.showmodal;
         dm.cdsclientecligrupo.asinteger := dm.cdsgrupogrucod.asinteger;
     finally
         fgrupo.release;
         fgrupo:= nil;
         fgrupo.free;
     end;
end;

procedure TFCliente.btnprofissaoClick(Sender: TObject);
begin
     try
         fprofissao := tfprofissao.create(self);
         usuario('btnconsultar',fprofissao.wsinformacao.programa);
         fprofissao.txtpesquisa.text := txtprofissao.text;
         fprofissao.BtnFiltro.click;
         dm.cdsprofissao.open;
         fprofissao.showmodal;
         dm.cdsclientecliprofissao.asinteger := dm.cdsprofissaoprocod.asinteger;
     finally
         fprofissao.release;
         fprofissao:= nil;
         fprofissao.free;
     end;
end;

procedure TFCliente.btnconvenioClick(Sender: TObject);
begin
     try
         fconvenio := tfconvenio.create(self);
         usuario('btnconsultar',fconvenio.wsinformacao.programa);
         fconvenio.txtpesquisa.text := txtconvenio.text;
         fconvenio.BtnFiltro.click;
         dm.cdsconvenio.open;
         fconvenio.showmodal;
         dm.cdsclientecliconvenio.asinteger := dm.cdsconvenioconcod.asinteger;
     finally
         fconvenio.release;
         fconvenio:= nil;
         fconvenio.free;
     end;
end;

procedure TFCliente.txtnomeExit(Sender: TObject);
begin
     if dm.cdscliente.State = dsinsert then
     begin
          qnome.close;
          qnome.parambyname('NOME').asstring := txtnome.text;
          qnome.open;
          if qnomeclinome.AsString <> '' then
          begin
               btnsalvar.enabled := false;
               ShowMessage('Cliente já Cadastrado!');
               if txtnome.enabled then
                  txtnome.setfocus;
               exit;
          end;
          btnsalvar.enabled := true;
          qnome.close;
     end;
end;

procedure TFCliente.btncontaClick(Sender: TObject);
begin
     try
         fconta := tfconta.create(self);
         usuario('btnconsultar',fconta.wsinformacao.programa);
         fconta.txtpesquisa.text := txtconta.text;
         fconta.BtnFiltro.click;
         fconta.showmodal;
         dm.cdsclientecliconta.asinteger := dm.cdscontaconcod.asinteger;
     finally
         fconta.release;
         fconta:= nil;
         fconta.free;
     end;
end;

procedure TFCliente.btndadosfinanceirosClick(Sender: TObject);
var  i : byte;
begin
     if not pandadosfin.visible then
     begin
          pandadosfin.visible := true;
          for i := 0 to 176 do
          begin
               pandadosfin.height := i;
               application.processmessages;
          end;
          txtagencia.setfocus;
     end
     else
     begin
          for i := 176 downto 0 do
          begin
               pandadosfin.height := i;
               application.processmessages;
          end;
          pandadosfin.visible := false;
     end;
end;

procedure TFCliente.btnempresaClick(Sender: TObject);
begin
     try
         fempresa := tfempresa.create(self);
         usuario('btnconsultar',fempresa.wsinformacao.programa);
         fempresa.txtpesquisa.text := txtempresa.text;
         fempresa.BtnFiltro.click;
         fempresa.showmodal;
         dm.cdsclientecliempresa.asinteger := dm.cdsempresaempcod.asinteger;
     finally
         fempresa.release;
         fempresa:= nil;
         fempresa.free;
     end;
end;

procedure TFCliente.txtcodExit(Sender: TObject);
begin
     if dm.CDSCliente.state = dsinsert then
     begin
          if executasqlretorno('SELECT CLICOD FROM TCLIENTE WHERE CLICOD = ' + txtcod.text) <> '' then
          begin
               showmessage('Cliente já cadastrado!');
               txtcod.setfocus;
               exit;
          end;
     end;
end;

procedure TFCliente.RGOrdemClick(Sender: TObject);
begin
     btnfiltro.click;
     txtpesquisa.clear;
     txtpesquisa.setfocus;
end;

procedure TFCliente.btnsinteticoClick(Sender: TObject);
begin
     BtnFiltroClick(Sender);
     RLReport.PreviewModal;
end;

procedure TFCliente.txtcpfEnter(Sender: TObject);
begin
     if dm.CDSClienteCLITIPO.asstring = 'F' then
            dm.CDSClienteCLICPF.EditMask := '999.999.999-99';
     if dm.CDSClienteCLITIPO.asstring = 'J' then
            dm.CDSClienteCLICPF.EditMask := '99.999.999/9999-99';
end;

procedure TFCliente.txtcpfExit(Sender: TObject);
begin
     dm.CDSClienteCLICPF.EditMask := '';
end;

end.
