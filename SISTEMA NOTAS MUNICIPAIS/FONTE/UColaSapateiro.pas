unit UColaSapateiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  WSDBMemo, Buttons, dateutils, RXCtrls;

type
  TFColaSapateiro = class(TForm)
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
    txtcodigo: TWSDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    txtdata: TWSEdit;
    ToolBarItem: TToolBar;
    btnsalvaritem: TToolButton;
    btnexcluiritem: TToolButton;
    txtobs: TWSEdit;
    DBGrid1: TDBGrid;
    txtcpf: TWSDBEdit;
    Label2: TLabel;
    txtendereco: TWSDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    txtcodbairro: TWSDBEdit;
    txtbairro: TWSDBEdit;
    WSDBEdit6: TWSDBEdit;
    Label10: TLabel;
    txtcodatividade: TWSDBEdit;
    Label9: TLabel;
    txtatividade: TWSDBEdit;
    Label15: TLabel;
    txtfiltroatividade: TWSEdit;
    txtfiltrobairro: TWSEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    panimpressao: TPanel;
    Image1: TImage;
    btncomprovante: TSpeedButton;
    btnsintetico: TSpeedButton;
    Label19: TLabel;
    txtnome: TWSDBEdit;
    btnfiltroatividade: TRxSpeedButton;
    btnfiltrobairro: TRxSpeedButton;
    btnbairro: TRxSpeedButton;
    btnatividade: TRxSpeedButton;
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
    procedure txtdataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnexcelClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnsalvaritemClick(Sender: TObject);
    procedure btnexcluiritemClick(Sender: TObject);
    procedure btnsinteticoClick(Sender: TObject);
    procedure btnfiltroatividadeClick(Sender: TObject);
    procedure btnfiltrobairroClick(Sender: TObject);
    procedure btnbairroClick(Sender: TObject);
    procedure btnatividadeClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  FColaSapateiro: TFColaSapateiro;

implementation

uses UDM, UMenu, UColaSapateiroRel, UBairro, UAtividade, SqlExpr;

{$R *.dfm}


procedure TFColaSapateiro.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFColaSapateiro.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFColaSapateiro.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFColaSapateiro.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFColaSapateiro.btnsairClick(Sender: TObject);
begin
     DataSource.DataSet.Active := false;
     close;
end;

procedure TFColaSapateiro.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fcolasapateiro, false);
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.append;
     Editar(FColaSapateiro, true);
end;

procedure TFColaSapateiro.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          Editar(FColaSapateiro, true);
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
     end;
end;

procedure TFColaSapateiro.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
    mostrarimpressao(fcolasapateiro, false);
   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.Edit;
     Editar(FColaSapateiro, false);
   end;
end;

procedure TFColaSapateiro.BtnExcluirClick(Sender: TObject);
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

procedure TFColaSapateiro.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FColaSapateiro);
end;

procedure TFColaSapateiro.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FColaSapateiro);
end;

procedure TFColaSapateiro.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFColaSapateiro.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    dm.qColaSapateiro.close;
    with dm.qColaSapateiro.sql do
    begin
         clear;
         add('SELECT COLCOD, COLNOME, COLCNPJCPF, COLENDERECO, COLBAIRRO, COLFONE, COLATIVIDADE');
         add('FROM TCOLASAPATEIRO');
         add('WHERE COLCOD <> 0');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(COLNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if trim(txtfiltroatividade.text) <> '' then
            add('AND COLATIVIDADE = ' + quotedstr(txtfiltroatividade.text));
         if trim(txtfiltrobairro.text) <> '' then
            add('AND COLBAIRRO = ' + quotedstr(txtfiltrobairro.text));
         add('ORDER BY COLNOME');
    end;
    dm.qColaSapateiro.open;
    DataSource.DataSet.open;
end;

procedure TFColaSapateiro.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFColaSapateiro.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFColaSapateiro.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFColaSapateiro.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFColaSapateiro.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
end;

procedure TFColaSapateiro.txtdataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   passar : boolean;
begin
    if key = vk_f3 then
    begin
         if (sender = txtcodbairro) or (sender = txtbairro) then
            btnbairro.Click;
         if (sender = txtcodatividade) or (sender = txtatividade) then
            btnatividade.Click;            
    end;
    if (key = 27) and (btncancelar.enabled = true) then
        btncancelar.click;
    if (Key = VK_F12) and (btnSalvar.enabled = true) then
        btnsalvar.Click;
    if (key = 40) and (not (sender is tdblookupcombobox)) then
    begin
        if sender is TWSEDit then
        begin
            with sender as TWSEdit do
            begin
                if (EnterClicar) and (sender = txtpesquisa)then
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
        if sender = txtobs then
        begin
             btnsalvaritem.click;
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
    if (key = 38) and (not (sender is tdblookupcombobox)) then
    begin
        if sender is TWSEDit then
        begin
            with sender as TWSEdit do
            begin
                if (EnterClicar) and (sender = txtpesquisa) then
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

procedure TFColaSapateiro.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
            btnfiltro.click
        else
            Perform (WM_nextDlgCtl,0,0);
    end;
    if key = vk_f3 then
    begin
         if (sender = txtfiltroatividade) then
            btnfiltroatividade.Click;
         if (sender = txtfiltrobairro) then
            btnfiltrobairro.Click;
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

procedure TFColaSapateiro.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFColaSapateiro.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     PageControl.ActivePageIndex := 0;
     mostrarimpressao(fcolasapateiro, not panimpressao.visible);
end;

procedure TFColaSapateiro.btnsalvaritemClick(Sender: TObject);
begin
     try
          strtodate(txtdata.text);
     except
          showmessage('Campo Data Inválido!');
          txtdata.setfocus;
          exit;
     end;
     if dm.CDSItemColaSapateiro.Locate('ITECOLA;ITEDATA', VarArrayOf([txtcodigo.text, txtdata.text]) , []) then
     begin
          showmessage('Data já cadastrada!');
          txtdata.setfocus;
          exit;
     end;
     dm.CDSColaSapateiro.post;
     dm.CDSColaSapateiro.applyupdates(-1);
     dm.CDSColaSapateiro.edit;
     dm.CDSItemColaSapateiro.append;
     dm.CDSItemColaSapateiroITECola.asinteger := strtoint(txtcodigo.text);
     dm.CDSItemColaSapateiroITEDATA.asdatetime := strtodate(txtdata.text);
     dm.CDSItemColaSapateiroITEObs.asstring := txtobs.text;
     dm.CDSItemColaSapateiro.post;
     dm.CDSItemColaSapateiro.applyupdates(-1);
     txtdata.clear;
     txtobs.clear;
     txtdata.setfocus;
end;

procedure TFColaSapateiro.btnexcluiritemClick(Sender: TObject);
begin
    if (dm.cdsitemColaSapateiro.Active = true) then
      if (dm.cdsitemColaSapateiro.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                dm.cdsitemColaSapateiro.Delete;
                dm.cdsitemColaSapateiro.ApplyUpdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFColaSapateiro.btnsinteticoClick(Sender: TObject);
begin
   FColaSapateirorel := tFColaSapateirorel.create(self);
   if sender = btnsintetico then
      FColaSapateirorel.RLReport.PreviewModal
   else
   begin
      FColaSapateirorel.lbldata.caption := inputbox('Sistema', 'Digite a data do comprovante:', datetostr(date));
      FColaSapateirorel.lblcod.caption := FColaSapateirorel.lblcod.caption + txtcodigo.text;
      FColaSapateirorel.lblendereco.caption := txtendereco.text + ', ' + txtbairro.text;      
      FColaSapateirorel.lblnome.caption := txtnome.text;
      FColaSapateirorel.lblcpf.caption := txtcpf.text;            
      FColaSapateirorel.RLReportCompro.PreviewModal;
   end;
end;

procedure TFColaSapateiro.btnfiltroatividadeClick(Sender: TObject);
begin
     try
         fatividade := tfatividade.create(self);
         dm.cdsatividade.open;
         fatividade.showmodal;
         txtfiltroatividade.text := dm.cdsatividadeaticod.asstring;
     finally
         fatividade.release;
         fatividade:= nil;
         fatividade.free;
     end;
end;


procedure TFColaSapateiro.btnfiltrobairroClick(Sender: TObject);
begin
     try
         fbairro := tfbairro.create(self);
         dm.cdsbairro.open;
         fbairro.showmodal;
         txtfiltrobairro.text := dm.cdsbairrobaicod.asstring;
     finally
         fbairro.release;
         fbairro:= nil;
         fbairro.free;
     end;
end;

procedure TFColaSapateiro.btnbairroClick(Sender: TObject);
begin
     try
         fbairro := tfbairro.create(self);
         fbairro.txtpesquisa.text := txtbairro.text;
         fbairro.BtnFiltro.click;
         dm.cdsbairro.open;
         fbairro.showmodal;
         dm.cdsColaSapateirocolbairro.asinteger := dm.cdsbairrobaicod.asinteger;
     finally
         fbairro.release;
         fbairro:= nil;
         fbairro.free;
     end;
end;

procedure TFColaSapateiro.btnatividadeClick(Sender: TObject);
begin
     try
         fatividade := tfatividade.create(self);
         fatividade.txtpesquisa.text := txtatividade.text;
         fatividade.BtnFiltro.click;
         dm.cdsatividade.open;
         fatividade.showmodal;
         dm.cdsColaSapateirocolatividade.asinteger := dm.cdsatividadeaticod.asinteger;
     finally
         fatividade.release;
         fatividade:= nil;
         fatividade.free;
     end;
end;

end.
