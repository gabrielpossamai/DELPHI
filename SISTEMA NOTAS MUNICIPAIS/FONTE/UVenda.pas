unit UVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, Buttons, WSMaskEdit;

type
  TFVenda = class(TForm)
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
    txtnomecliente: TWSDBEdit;
    txtpeso: TWSEdit;
    Label8: TLabel;
    Label9: TLabel;
    txtvalor: TWSEdit;
    btncliente: TRxSpeedButton;
    btnproduto: TRxSpeedButton;
    Panel2: TPanel;
    Label10: TLabel;
    WSDBEdit1: TWSDBEdit;
    panimpressao: TPanel;
    Image1: TImage;
    btncomprovante: TSpeedButton;
    btnsintetico: TSpeedButton;
    Label19: TLabel;
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
    procedure txtvalorKeyPress(Sender: TObject; var Key: Char);
    procedure btnclienteClick(Sender: TObject);
    procedure btnprodutoClick(Sender: TObject);
    procedure txtprodutoExit(Sender: TObject);
    procedure btnsinteticoClick(Sender: TObject);
    procedure btncomprovanteClick(Sender: TObject);
    procedure btncaixaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVenda: TFVenda;

implementation

uses UDM, UMenu, UUsuario, UCliente, UProduto, UVendaRel, UCaixa;

{$R *.dfm}

procedure TFVenda.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFVenda.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFVenda.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFVenda.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFVenda.btnsairClick(Sender: TObject);
begin
     if DataSource.DataSet.active = false then
        DataSource.DataSet.open;
     close;
end;

procedure TFVenda.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fvenda, false);
     if not datasource.dataset.active then
        btnfiltro.click;

     DataSource.DataSet.append;
     PageControl.ActivePage:=TabCadastro;
     Editar(fvenda, true);
     btncaixa.enabled := false;     
end;

procedure TFVenda.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fvenda, false);
     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(fvenda, true);
     end;
     btncaixa.enabled := false;     
end;

procedure TFVenda.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fvenda, false);
     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage:=TabCadastro;
          Editar(fvenda, false);
          DataSource.DataSet.Edit;
     end;
     btncaixa.enabled := false;
end;

procedure TFVenda.BtnExcluirClick(Sender: TObject);
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
                dm.qexiste.close;
                with dm.qexiste.sql do
                begin
                     clear;
                     add('DELETE FROM TCONTACLIENTE WHERE CONNUMERO = ' + inttostr(dm.CDSVendaVENLCTOCLIENTE.asinteger));
                end;
                dm.qexiste.execsql;
                dm.qexiste.close;

                deleta_caixa(dm.cdsvendavenlctocaixa.asinteger);                
                DataSource.DataSet.Delete;
                (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);

            {except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;}
        end;
end;

procedure TFVenda.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     dm.cdsvendavenlctocaixa.asinteger := atucaixa(dm.CDSVendaVenLCTOCAIXA.asinteger, dm.cdsvendavendata.asdatetime, 'VENDA N. ' + txtnumero.text, DM.QTotalVEndaSUM.asfloat, 0);
     dm.cdsvendavenlctocliente.asinteger := atucontacliente(dm.CDSVendaVenLCTOCLIENTE.asinteger, dm.cdsvendavendata.asdatetime, dm.CDSVendaVenCLIENTE.asinteger, DM.QTotalVEndaSUM.asfloat, 'VENDA N. ' + txtnumero.text);
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(fvenda);
     btncaixa.enabled := true;     
end;

procedure TFVenda.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(fvenda);
     btncaixa.enabled := true;     
end;

procedure TFVenda.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFVenda.BtnFiltroClick(Sender: TObject);
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
    DataSource.DataSet.close;
    dm.qvenda.close;
    with dm.qvenda.sql do
    begin
         clear;
         add('SELECT VENNUMERO, VENDATA, VENCLIENTE, CLINOME, VENLCTOCAIXA, VENLCTOCLIENTE');
         add('FROM TVENDA INNER JOIN TCLIENTE ON CLICOD = VENCLIENTE');
         add('WHERE CLICOD <> 0');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if trim(txtfiltroinicial.text) <> '' then
            add('AND VENDATA >= :DATAINI');
         if trim(txtfiltrofinal.text) <> '' then
            add('AND VENDATA <= :DATAFIN');
         add('ORDER BY CLINOME');
    end;
    if trim(txtfiltroinicial.text) <> '' then
       dm.qvenda.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if trim(txtfiltrofinal.text) <> '' then
       dm.qvenda.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    dm.qvenda.open;
    DataSource.DataSet.open;
end;

procedure TFVenda.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, DM.DSItemVenda);
end;

procedure TFVenda.btnimportarClick(Sender: TObject);
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

procedure TFVenda.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFVenda.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFVenda.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFVenda.txtclienteKeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtproduto) then
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

procedure TFVenda.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
         end
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

procedure TFVenda.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFVenda.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fvenda, not panimpressao.visible);
end;

procedure TFVenda.btnexcluiritemClick(Sender: TObject);
begin
    if (dm.cdsitemvenda.Active = true) then
      if (dm.cdsitemvenda.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                dm.cdsitemvenda.Delete;
                dm.cdsitemvenda.ApplyUpdates(-1);
                dm.qtotalvenda.close;
                dm.qtotalvenda.params[0].asinteger := dm.cdsvendavennumero.asinteger;
                dm.qtotalvenda.open;
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFVenda.btnsalvaritemClick(Sender: TObject);
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
          strtoint(txtproduto.text);
     except
          showmessage('Campo Produto Inválido!');
          txtproduto.setfocus;
          exit;
     end;
     try
          strtofloat(txtpeso.text);
     except
          showmessage('Campo peso Inválido!');
          txtpeso.setfocus;
          exit;
     end;
     try
          strtofloat(txtvalor.text);
     except
          showmessage('Campo Valor Inválido!');
          txtvalor.setfocus;
          exit;
     end;
     if not dm.cdsproduto.Locate('PROCOD', txtproduto.text, []) then
     begin
          showmessage('Produto não cadastrado!');
          txtproduto.setfocus;
          exit;
     end;
     {if dm.CDSItemVenda.Locate('ITECLIENTE;ITEDATA;ITEPRODUTO', VarArrayOf([txtcliente.text ,txtdata.text, txtproduto.text]) , []) then
     begin
          showmessage('Produto já cadastrado!');
          txtproduto.setfocus;
          exit;
     end;}
     dm.CDSVenda.post;
     dm.CDSVenda.applyupdates(-1);     
     dm.CDSVenda.edit;
     dm.CDSItemVenda.append;
     dm.CDSItemVendaITEnumero.asinteger := strtoint(txtnumero.text);
     dm.CDSItemVendaITEProduto.asinteger := strtoint(txtproduto.text);
     dm.CDSItemVendaITEPeso.asfloat := strtofloat(txtpeso.text);
     dm.CDSItemVendaITEValor.asfloat := strtofloat(txtvalor.text);
     dm.CDSItemVenda.post;
     dm.CDSItemVenda.applyupdates(0);

     dm.qtotalvenda.close;
     dm.qtotalvenda.params[0].asinteger := dm.cdsvendavennumero.asinteger;
     dm.qtotalvenda.open;

     txtpeso.clear;
     txtvalor.clear;               
     txtproduto.clear;
     txtproduto.setfocus;
end;

procedure TFVenda.txtvalorKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        btnsalvaritem.click;
end;

procedure TFVenda.btnclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         fcliente.txtpesquisa.text := txtnomecliente.text;
         fcliente.BtnFiltro.click;
         fcliente.showmodal;
         dm.cdsvendavencliente.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

procedure TFVenda.btnprodutoClick(Sender: TObject);
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

procedure TFVenda.txtprodutoExit(Sender: TObject);
begin
     if txtproduto.text <> '' then
          if dm.cdsproduto.locate('PROCOD', txtproduto.text ,[]) then
               txtvalor.text := floattostr(dm.cdsprodutoPROVALOR.asfloat);
end;

procedure TFVenda.btnsinteticoClick(Sender: TObject);
begin
   try
       fvendarel := tfvendarel.create(self);
       fvendarel.cdsrel.open;
       fvendarel.qrel.close;
       with fvendarel.qrel.sql do
       begin
            clear;
            add('SELECT CLINOME, VENDATA, VENNUMERO, PRONOME, ITESEQ, ITEPESO, ITEVALOR');
            add('FROM TVENDA');
            add('    INNER JOIN TCLIENTE ON CLICOD = VENCLIENTE,');
            add('TITEMVENDA');
            add('    INNER JOIN TPRODUTO ON PROCOD = ITEPRODUTO');
            add('WHERE ITENUMERO = VENNUMERO');
            if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
            if trim(txtfiltroinicial.text) <> '' then
               add('AND VENDATA >= :DATAINI');
            if trim(txtfiltrofinal.text) <> '' then
               add('AND VENDATA <= :DATAFIN');
            add('ORDER BY VENNUMERO, ITESEQ');
       end;
       if trim(txtfiltroinicial.text) <> '' then
          fvendarel.qrel.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
       if trim(txtfiltrofinal.text) <> '' then
          fvendarel.qrel.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
       fvendarel.qrel.open;
       fvendarel.cdsrel.open;
       //fvendarel.CDSRel.IndexFieldNames := 'CLINOME;VENDATA;GRUNOME;PRONOME';
       fvendarel.RLReport.PreviewModal;
   finally
       fvendarel.release;
       fvendarel := nil;
       fvendarel.free;
   end;
end;

procedure TFVenda.btncomprovanteClick(Sender: TObject);
begin
   try
       fvendarel := tfvendarel.create(self);
       fvendarel.cdsrel.open;
       fvendarel.qrel.close;
       with fvendarel.qproduto.sql do
       begin
            clear;
            add('SELECT PRONOME, SUM(ITEPESO) AS PESO, SUM(ITEPESO * ITEVALOR) AS VALOR');
            add('FROM TVENDA');
            add('    INNER JOIN TCLIENTE ON CLICOD = VENCLIENTE,');
            add('TITEMVENDA');
            add('    INNER JOIN TPRODUTO ON PROCOD = ITEPRODUTO');
            add('WHERE ITENUMERO = VENNUMERO');
            if trim(txtpesquisa.text) <> '' then
               add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
            if trim(txtfiltroinicial.text) <> '' then
               add('AND VENDATA >= :DATAINI');
            if trim(txtfiltrofinal.text) <> '' then
               add('AND VENDATA <= :DATAFIN');
            add('GROUP BY PRONOME');
            add('ORDER BY PRONOME');
       end;
       if trim(txtfiltroinicial.text) <> '' then
          fvendarel.qproduto.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
       if trim(txtfiltrofinal.text) <> '' then
          fvendarel.qproduto.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
       fvendarel.qproduto.open;
       fvendarel.cdsproduto.open;
       fvendarel.RLReportProduto.PreviewModal;
   finally
       fvendarel.release;
       fvendarel := nil;
       fvendarel.free;
   end;
end;

procedure TFVenda.btncaixaClick(Sender: TObject);
begin
     dm.cdscaixa.open;
     dm.cdscaixa.locate('CAINUMERO', dm.CDSVendaVENLCTOCAIXA.asinteger ,[]);
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
