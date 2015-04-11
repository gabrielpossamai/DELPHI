unit UAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  WSDBMemo, RXCtrls;

type
  TFAgenda = class(TForm)
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
    txtdata: TWSDBEdit;
    txthora: TWSDBEdit;
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
    Label23: TLabel;
    txtfiltroinicial: TWSEdit;
    Label24: TLabel;
    txtfiltrofinal: TWSEdit;
    Label6: TLabel;
    txtcodexame: TWSDBEdit;
    txtexame: TWSDBEdit;
    Panel1: TPanel;
    Label7: TLabel;
    txtamb: TWSEdit;
    ToolBarItem: TToolBar;
    btnsalvaritem: TToolButton;
    btnexcluiritem: TToolButton;
    DBGrid1: TDBGrid;
    btncliente: TRxSpeedButton;
    btnexame: TRxSpeedButton;
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
    procedure txtambEnter(Sender: TObject);
    procedure btnclienteClick(Sender: TObject);
    procedure btnexameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAgenda: TFAgenda;

implementation

uses UDM, UMenu, UCliente, UExame, UAMB, UAgendaRel;

{$R *.dfm}

procedure TFAgenda.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFAgenda.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFAgenda.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFAgenda.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFAgenda.btnsairClick(Sender: TObject);
begin
     DataSource.DataSet.Active := false;
     close;
end;

procedure TFAgenda.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FAgenda, true);
     DataSource.DataSet.append;
end;

procedure TFAgenda.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FAgenda, true);
     end;
end;

procedure TFAgenda.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);

   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.Edit;
     Editar(FAgenda, false);     
   end;
end;

procedure TFAgenda.BtnExcluirClick(Sender: TObject);
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

procedure TFAgenda.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FAgenda);
end;

procedure TFAgenda.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FAgenda);
end;

procedure TFAgenda.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFAgenda.BtnFiltroClick(Sender: TObject);
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
    dm.qAgenda.close;
    with dm.qAgenda.sql do
    begin
         clear;
         add('SELECT AGEDATA, AGEHORA, AGECLIENTE, AGEEXAME, AGEOBS, CLINOME');
         add('FROM TAGENDA');
         add('    LEFT OUTER JOIN TCLIENTE ON CLICOD = AGECLIENTE');         
         add('WHERE AGECLIENTE <> 0');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if trim(txtfiltroinicial.text) <> '' then
            add('AND AGEDATA >= :DATAINI');
         if trim(txtfiltrofinal.text) <> '' then
            add('AND AGEDATA <= :DATAFIN');
         add('ORDER BY CLINOME');
    end;
    if trim(txtfiltroinicial.text) <> '' then
       dm.qagenda.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if trim(txtfiltrofinal.text) <> '' then
       dm.qagenda.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    dm.qAgenda.open;
    DataSource.DataSet.open;
end;

procedure TFAgenda.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFAgenda.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFAgenda.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFAgenda.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
end;

procedure TFAgenda.txtdataKeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtcodcliente) or (sender = txtcliente) then
            btncliente.click;
         if (sender = txtcodexame) or (sender = txtexame) then
            btnexame.click;
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
        if sender = txtamb then
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

procedure TFAgenda.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAgenda.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFAgenda.BtnImprimirClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   fagendarel := tfagendarel.create(self);
   fagendarel.RLReport.PreviewModal;
end;

procedure TFAgenda.btnsalvaritemClick(Sender: TObject);
begin
     if not dm.cdsamb.Locate('AMBCOD', txtamb.text, []) then
     begin
          showmessage('Procedimento não cadastrado!');
          txtamb.setfocus;
          exit;
     end;
     if dm.CDSItemAgenda.Locate('ITEDATA;ITEHORA;ITEAMB', VarArrayOf([txtdata.text ,txthora.text, txtamb.text]) , []) then
     begin
          showmessage('Procedimento AMB já cadastrado!');
          txtamb.setfocus;
          exit;
     end;
     dm.CDSAgenda.post;
     dm.CDSAgenda.applyupdates(-1);
     dm.CDSAgenda.edit;
     dm.CDSItemAgenda.append;
     dm.CDSItemAgendaITEData.asdatetime := strtodate(txtdata.text);
     dm.CDSItemAgendaITEhora.asdatetime := strtotime(txthora.text);
     dm.CDSItemAgendaITEamb.asstring := txtamb.text;
     dm.CDSItemAgenda.post;
     dm.CDSItemAgenda.applyupdates(-1);
     txtamb.clear;
     txtamb.setfocus;
end;

procedure TFAgenda.btnexcluiritemClick(Sender: TObject);
begin
    if (dm.cdsitemagenda.Active = true) then
      if (dm.cdsitemagenda.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                dm.cdsitemagenda.Delete;
                dm.cdsitemagenda.ApplyUpdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFAgenda.txtambEnter(Sender: TObject);
begin
     if application.messagebox ('Abrir cadastro?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
     begin
         try
             famb := Tfamb.create(self);
             famb.showmodal;
             txtamb.text := dm.CDSAmbAMBCOD.asstring;
         finally
             famb.release;
             famb:= nil;
             famb.free;
         end;
     end;
end;

procedure TFAgenda.btnclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         fcliente.txtpesquisa.text := txtcliente.text;
         fcliente.BtnFiltro.click;
         dm.cdscliente.open;
         fcliente.showmodal;
         dm.cdsagendaagecliente.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

procedure TFAgenda.btnexameClick(Sender: TObject);
begin
     try
         fexame := Tfexame.create(self);
         fexame.txtpesquisa.text := txtexame.text;
         fexame.BtnFiltro.click;
         dm.cdsexame.open;
         fexame.showmodal;
         dm.cdsagendaageexame.asinteger := dm.CDSExameEXACOD.asinteger;
     finally
         fexame.release;
         fexame:= nil;
         fexame.free;
     end;
end;

end.
