unit UReserva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls;

type
  TFReserva = class(TForm)
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
    WSDBEdit5: TWSDBEdit;
    Label8: TLabel;
    txtcliente: TWSDBEdit;
    txtfiltrocliente: TWSEdit;
    Label9: TLabel;
    btnfiltrocliente: TRxSpeedButton;
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
    procedure WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnexcelClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnfiltroclienteClick(Sender: TObject);
    procedure btnclienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReserva: TFReserva;

implementation

uses UDM, UMenu, UCliente, UReservaRel;

{$R *.dfm}

procedure TFReserva.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFReserva.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFReserva.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFReserva.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFReserva.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFReserva.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FReserva, true);
     DataSource.DataSet.append;
end;

procedure TFReserva.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FReserva, true);
     end;
end;

procedure TFReserva.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);

   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.Edit;
     Editar(FReserva, false);     
   end;
end;

procedure TFReserva.BtnExcluirClick(Sender: TObject);
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

procedure TFReserva.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FReserva);
end;

procedure TFReserva.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FReserva);
end;

procedure TFReserva.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFReserva.BtnFiltroClick(Sender: TObject);
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
    dm.qReserva.close;
    with dm.qReserva.sql do
    begin
         clear;
         add('SELECT RESDATA, RESQUARTO, RESCLIENTE, RESDATAENTRADA, RESDATASAIDA FROM');
         add('TRESERVA');
         add('WHERE RESQUARTO <> 0');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(RESQUARTO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if trim(txtfiltroinicial.text) <> '' then
            add('AND RESDATA >= :DATAINI');
         if trim(txtfiltrofinal.text) <> '' then
            add('AND RESDATA <= :DATAFIN');
         if trim(txtfiltrocliente.text) <> '' then
            add('AND RESCLIENTE = ' + quotedstr(txtfiltrocliente.text));
         add('ORDER BY RESDATA, RESQUARTO');
    end;
    if trim(txtfiltroinicial.text) <> '' then
       dm.qreserva.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if trim(txtfiltrofinal.text) <> '' then
       dm.qreserva.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    dm.qReserva.open;
    DataSource.DataSet.open;
end;

procedure TFReserva.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFReserva.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFReserva.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFReserva.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFReserva.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFReserva.WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   passar : boolean;
begin
    if key = vk_f3 then
    begin
       if (sender = txtcodcliente) or (sender = txtcliente) then
       begin
            btncliente.click;
       end;
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

procedure TFReserva.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_f3 then
    begin
       if (sender = txtfiltrocliente) then
       begin
            btncliente.click;
       end;
    end;
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

procedure TFReserva.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFReserva.BtnImprimirClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   fReservarel := tfReservarel.create(self);
   fReservarel.RLReport.PreviewModal;
end;

procedure TFReserva.btnfiltroclienteClick(Sender: TObject);
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

procedure TFReserva.btnclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         fcliente.txtpesquisa.text := txtcliente.text;
         fcliente.BtnFiltro.click;
         dm.cdscliente.open;
         fcliente.showmodal;
         dm.cdsreservarescliente.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

end.
