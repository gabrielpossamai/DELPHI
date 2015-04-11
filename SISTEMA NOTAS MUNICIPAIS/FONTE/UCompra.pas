unit UCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, Buttons, WSMaskEdit;

type
  TFCompra = class(TForm)
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
    txtproduto: TWSEdit;
    Label5: TLabel;
    DBGrid2: TDBGrid;
    ToolBarItem: TToolBar;
    btnsalvaritem: TToolButton;
    btnexcluiritem: TToolButton;
    Label6: TLabel;
    Label7: TLabel;
    txtpesoini: TWSEdit;
    Label8: TLabel;
    Label9: TLabel;
    txtpesofin: TWSEdit;
    btnproduto: TRxSpeedButton;
    btnbaixar: TSpeedButton;
    Panel2: TPanel;
    Label10: TLabel;
    WSDBEdit1: TWSDBEdit;
    panimpressao: TPanel;
    Image1: TImage;
    btncomprovante: TSpeedButton;
    btnsintetico: TSpeedButton;
    Label19: TLabel;
    txtpreco: TWSEdit;
    Label11: TLabel;
    txtfiltrofinal: TWSMaskEdit;
    txtfiltroinicial: TWSMaskEdit;
    btncaixa: TSpeedButton;
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
    procedure txtpesofinKeyPress(Sender: TObject; var Key: Char);
    procedure btnprodutoClick(Sender: TObject);
    procedure btnsinteticoClick(Sender: TObject);
    procedure btncomprovanteClick(Sender: TObject);
    procedure btnbaixarClick(Sender: TObject);
    procedure btncaixaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCompra: TFCompra;

implementation

uses UDM, UMenu, UUsuario, UProduto, UCompraRel, UCompraBaixar, UCaixa;

{$R *.dfm}

procedure TFCompra.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFCompra.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFCompra.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFCompra.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFCompra.btnsairClick(Sender: TObject);
begin
     if DataSource.DataSet.active = false then
        DataSource.DataSet.open;
     close;
end;

procedure TFCompra.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fcompra, false);

     if not datasource.dataset.active then
        btnfiltro.click;

     DataSource.DataSet.append;

     PageControl.ActivePage:=TabCadastro;
     Editar(FCompra, true);
     btnbaixar.enabled := false;
     btncaixa.enabled := false;
end;

procedure TFCompra.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fcompra, false);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FCompra, true);
          btnbaixar.enabled := false;
          btncaixa.enabled := false;
     end;
end;

procedure TFCompra.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fcompra, false);
     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage:=TabCadastro;
          Editar(FCompra, false);
          btnbaixar.enabled := false;
          btncaixa.enabled := false;          
          DataSource.DataSet.Edit;
     end;
end;

procedure TFCompra.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);

    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            {try
                while dm.cdsitemvenda.recordcount > 0 do
                  dm.cdsitemvenda.delete;
                dm.cdsitemvenda.applyupdates(0);}
                deleta_caixa(dm.cdscompracomlctocaixa.asinteger);
                DataSource.DataSet.Delete;
                (DataSource.DataSet as TClientDataSet).ApplyUpdates(0);
            {except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;}
        end;
end;

procedure TFCompra.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     dm.cdscompracomlctocaixa.asinteger := atucaixa(dm.CDSCompraCOMLCTOCAIXA.asinteger, dm.cdscompracomdata.asdatetime, 'COMPRA N. ' + txtnumero.text, 0 ,DM.QTotalCompraSUM.asfloat);     
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FCompra);
     btnbaixar.enabled := true;
     btncaixa.enabled := true;
end;

procedure TFCompra.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FCompra);
     btnbaixar.enabled := true;
     btncaixa.enabled := true;
end;

procedure TFCompra.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFCompra.BtnFiltroClick(Sender: TObject);
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
    with dm.qcompra.sql do
    begin
         clear;
         add('SELECT COMNUMERO, COMDATA, COMDESCRICAO, COMLCTOCAIXA');
         add('FROM TCOMPRA');
         add('WHERE COMNUMERO <> 0');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(COMDESCRICAO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if trim(txtfiltroinicial.text) <> '' then
            add('AND COMDATA >= :DATAINI');
         if trim(txtfiltrofinal.text) <> '' then
            add('AND COMDATA <= :DATAFIN');
         add('ORDER BY COMDESCRICAO');
    end;
    if trim(txtfiltroinicial.text) <> '' then
       dm.qcompra.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if trim(txtfiltrofinal.text) <> '' then
       dm.qcompra.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    DataSource.DataSet.open;
end;

procedure TFCompra.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, DM.DSItemVenda);
end;

procedure TFCompra.btnimportarClick(Sender: TObject);
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

procedure TFCompra.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFCompra.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFCompra.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFCompra.txtclienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TFCompra.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFCompra.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFCompra.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fcompra, not panimpressao.visible);
end;

procedure TFCompra.btnexcluiritemClick(Sender: TObject);
begin
    if (dm.cdsitemcompra.Active = true) then
      if (dm.cdsitemcompra.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                 dm.cdsitemcompra.Delete;
                 dm.cdsitemcompra.ApplyUpdates(-1);
                 dm.qtotalcompra.close;
                 dm.qtotalcompra.params[0].asinteger := dm.CDSCompraComNumero.asinteger;
                 dm.qtotalcompra.open;
            except
                 ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFCompra.btnsalvaritemClick(Sender: TObject);
begin
     if (trim(txtproduto.text) = '') and
        (trim(txtpreco.text) = '') and     
        (trim(txtpesoini.text) = '') and
        (trim(txtpesofin.text) = '') then
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
          strtofloat(txtpreco.text);
     except
          showmessage('Campo preço inválido!');
          txtpreco.setfocus;
          exit;
     end;
     try
          strtofloat(txtpesoini.text);
     except
          showmessage('Campo peso inicial inválido!');
          txtpesoini.setfocus;
          exit;
     end;
     try
          strtofloat(txtpesofin.text);
     except
          showmessage('Campo peso final inválido!');
          txtpesofin.setfocus;
          exit;
     end;
     if not dm.cdsproduto.Locate('PROCOD', txtproduto.text, []) then
     begin
          showmessage('Produto não cadastrado!');
          txtproduto.setfocus;
          exit;
     end;
     dm.CDSCompra.post;
     dm.CDSCompra.applyupdates(-1);
     dm.CDSCompra.edit;
     dm.CDSItemCompra.append;
     dm.CDSItemCompraITEnumero.asinteger := strtoint(txtnumero.text);
     dm.CDSItemCompraITEProduto.asinteger := strtoint(txtproduto.text);
     dm.CDSItemCompraITEPesoini.asfloat := strtofloat(txtpesoini.text);
     dm.CDSItemCompraITEpesoFin.asfloat := strtofloat(txtpesofin.text);
     dm.CDSItemCompraITEpreco.asfloat := strtofloat(txtpreco.text);     
     dm.CDSItemCompra.post;
     dm.CDSItemCompra.applyupdates(-1);

     dm.qtotalcompra.close;
     dm.qtotalcompra.params[0].asinteger := dm.CDSCompraComNumero.asinteger;
     dm.qtotalcompra.open;
          
     txtpesoini.clear;
     txtpesofin.clear;
     txtproduto.clear;
     txtproduto.setfocus;
end;

procedure TFCompra.txtpesofinKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        btnsalvaritem.click;
end;

procedure TFCompra.btnprodutoClick(Sender: TObject);
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

procedure TFCompra.btnsinteticoClick(Sender: TObject);
begin
   try
       fcomprarel := tfcomprarel.create(self);
       fcomprarel.cdsrel.open;
       fcomprarel.qrel.close;
       with fcomprarel.qrel.sql do
       begin
            clear;
            add('SELECT COMDESCRICAO, COMDATA, COMNUMERO, PRONOME, ITESEQ, ITEPESOINI, ITEPESOFIN, ITEPESOTOTAL, PROMULTIPLICADOR, PROVALOR, ITEPRECO');
            add('FROM TITEMCOMPRA');
            add('    INNER JOIN TPRODUTO ON PROCOD = ITEPRODUTO');
            add('    INNER JOIN TCOMPRA ON COMNUMERO = ITENUMERO');
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
          fcomprarel.qrel.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
       if trim(txtfiltrofinal.text) <> '' then
          fcomprarel.qrel.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
       fcomprarel.qrel.open;
       fcomprarel.cdsrel.open;
       //FComprarel.CDSRel.IndexFieldNames := 'CLINOME;VENDATA;GRUNOME;PRONOME';
       fcomprarel.RLReport.PreviewModal;
   finally
       fcomprarel.release;
       fcomprarel := nil;
       fcomprarel.free;
   end;
end;

procedure TFCompra.btncomprovanteClick(Sender: TObject);
begin
   try
       fcomprarel := tfcomprarel.create(self);
       fcomprarel.cdsrel.open;
       fcomprarel.qrel.close;
       with fcomprarel.qproduto.sql do
       begin
            clear;
            add('SELECT PRONOME, SUM(ITEPESOTOTAL) AS PESOLIQ');
            add('FROM TITEMCOMPRA');
            add('    INNER JOIN TCOMPRA ON COMNUMERO = ITENUMERO');
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
          fcomprarel.qproduto.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
       if trim(txtfiltrofinal.text) <> '' then
          fcomprarel.qproduto.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
       fcomprarel.qproduto.open;
       fcomprarel.cdsproduto.open;
       fcomprarel.RLReportProduto.PreviewModal;
   finally
       fcomprarel.release;
       fcomprarel := nil;
       fcomprarel.free;
   end;
end;

procedure TFCompra.btnbaixarClick(Sender: TObject);
begin
     try
           fcomprabaixar := tfcomprabaixar.create(self);
           fcomprabaixar.showmodal;
     finally
           fcomprabaixar.release;
           fcomprabaixar := nil;
           fcomprabaixar.free;
     end;
     btnfiltro.click;
end;

procedure TFCompra.btncaixaClick(Sender: TObject);
begin
     dm.cdscaixa.open;
     dm.cdscaixa.locate('CAINUMERO', dm.CDSCompraCOMLCTOCAIXA.asinteger ,[]);
     try
           fcaixa := tfcaixa.create(self);
           fcaixa.showmodal;
     finally
           fcaixa.release;
           fcaixa := nil;
           fcaixa.free;
     end;
end;

end.
