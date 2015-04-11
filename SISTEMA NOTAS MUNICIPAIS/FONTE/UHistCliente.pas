unit UHistCliente;
            
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  WSDBMemo, RXCtrls;

type
  TFHistCliente = class(TForm)
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
    txtcodcliente: TWSDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    WSDBMemo1: TWSDBMemo;
    txtcliente: TWSDBEdit;
    Panel1: TPanel;
    Label7: TLabel;
    txtdata: TWSEdit;
    ToolBarItem: TToolBar;
    btnsalvaritem: TToolButton;
    btnexcluiritem: TToolButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    txtobs: TWSEdit;
    btncliente: TRxSpeedButton;
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
    procedure btnclienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FHistCliente: TFHistCliente;

implementation

uses UDM, UMenu, UCliente, UHistClienteRel;

{$R *.dfm}

procedure TFHistCliente.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFHistCliente.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFHistCliente.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFHistCliente.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFHistCliente.btnsairClick(Sender: TObject);
begin
     DataSource.DataSet.Active := false;
     close;
end;

procedure TFHistCliente.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.append;
     Editar(FHistCliente, true);     
end;

procedure TFHistCliente.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          Editar(FHistCliente, true);     
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
     end;
end;

procedure TFHistCliente.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);

   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.Edit;
     Editar(FHistCliente, false);     
   end;
end;

procedure TFHistCliente.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);
   
    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                DataSource.DataSet.Delete;
                (DataSource.DataSet as TClientDataSet).ApplyUpdates(0);                
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFHistCliente.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FHistCliente);
end;

procedure TFHistCliente.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FHistCliente);
end;

procedure TFHistCliente.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFHistCliente.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    dm.qHistCliente.close;
    with dm.qHistCliente.sql do
    begin
         clear;
         add('SELECT HISCLIENTE, HISOBS, CLINOME');
         add('FROM THISTCLIENTE');
         add('    LEFT OUTER JOIN TCLIENTE ON CLICOD = HISCLIENTE');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         add('ORDER BY CLINOME');
    end;
    dm.qHistCliente.open;
    DataSource.DataSet.open;
end;

procedure TFHistCliente.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFHistCliente.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFHistCliente.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFHistCliente.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFHistCliente.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
end;

procedure TFHistCliente.txtdataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   passar : boolean;
begin
    if (key = 27) and (btncancelar.enabled = true) then
        btncancelar.click;
    if (Key = VK_F12) and (btnSalvar.enabled = true) then
        btnsalvar.Click;
    if key = vk_f3 then
       if (sender = txtcodcliente) or (sender = txtcliente) then
           btncliente.click;
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

procedure TFHistCliente.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFHistCliente.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFHistCliente.BtnImprimirClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   FHistClienterel := tFHistClienterel.create(self);
   FHistClienterel.RLReport.PreviewModal;
end;

procedure TFHistCliente.btnsalvaritemClick(Sender: TObject);
begin
     try
          strtodate(txtdata.text);
     except
          showmessage('Campo Data Inválido!');
          txtdata.setfocus;
          exit;
     end;
     if dm.CDSItemHistCliente.Locate('ITECLIENTE;ITEDATA', VarArrayOf([txtcodcliente.text, txtdata.text]) , []) then
     begin
          showmessage('Data já cadastrada!');
          txtdata.setfocus;
          exit;
     end;
     dm.CDSHistCliente.post;
     dm.CDSHistCliente.applyupdates(-1);
     dm.CDSHistCliente.edit;
     dm.CDSItemHistCliente.append;
     dm.CDSItemHistClienteITECliente.asinteger := strtoint(txtcodcliente.text);     
     dm.CDSItemHistClienteITEData.asdatetime := strtodate(txtdata.text);
     dm.CDSItemHistClienteITEObs.asstring := txtobs.text;
     dm.CDSItemHistCliente.post;
     dm.CDSItemHistCliente.applyupdates(-1);
     txtdata.clear;
     txtobs.clear;     
     txtdata.setfocus;
end;

procedure TFHistCliente.btnexcluiritemClick(Sender: TObject);
begin
    if (dm.cdsitemhistcliente.Active = true) then
      if (dm.cdsitemhistcliente.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                dm.cdsitemhistcliente.Delete;
                dm.cdsitemhistcliente.ApplyUpdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFHistCliente.btnclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         fcliente.txtpesquisa.text := txtcliente.text;
         fcliente.BtnFiltro.click;
         dm.cdscliente.open;
         fcliente.showmodal;
         dm.cdshistclientehiscliente.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

end.
