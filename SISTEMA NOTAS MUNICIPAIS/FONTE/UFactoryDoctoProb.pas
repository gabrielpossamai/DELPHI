unit UFactoryDoctoProb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, FMTBcd, Provider, SqlExpr, WSMaskEdit;

type
  TFFactoryDoctoProb = class(TForm)
    lbltitulo: TLabel;
    PageControl: TPageControl;
    TabConsulta: TTabSheet;
    TabCadastro: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DataSource: TDataSource;
    txtnumero: TWSDBEdit;
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
    WSDBEdit3: TWSDBEdit;
    Label3: TLabel;
    WSDBEdit4: TWSDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    WSDBEdit5: TWSDBEdit;
    txtcodcliente: TWSDBEdit;
    Label7: TLabel;
    txtcliente: TWSDBEdit;
    btncliente: TRxSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    txtfiltrobanco: TWSEdit;
    btnfiltrobanco: TRxSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    txtcodbanco: TWSDBEdit;
    btnbanco: TRxSpeedButton;
    txtbanco: TWSDBEdit;
    Label12: TLabel;
    WSDBEdit7: TWSDBEdit;
    Label13: TLabel;
    WSDBEdit8: TWSDBEdit;
    Label14: TLabel;
    WSDBEdit9: TWSDBEdit;
    txtfiltrofinal: TWSMaskEdit;
    txtfiltroinicial: TWSMaskEdit;
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
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnclienteClick(Sender: TObject);
    procedure btnfiltrobancoClick(Sender: TObject);
    procedure btnbancoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFactoryDoctoProb: TFFactoryDoctoProb;

implementation

uses UDM, UMenu, UBanco, UFactoryDoctoProbRel, UCliente;

{$R *.dfm}

procedure TFFactoryDoctoProb.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFFactoryDoctoProb.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFFactoryDoctoProb.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFFactoryDoctoProb.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFFactoryDoctoProb.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFFactoryDoctoProb.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FFactoryDoctoProb, true);

     DataSource.DataSet.append;
end;

procedure TFFactoryDoctoProb.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FFactoryDoctoProb, true);
     end;
end;

procedure TFFactoryDoctoProb.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);

   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     Editar(FFactoryDoctoProb, false);
     DataSource.DataSet.Edit;
   end;
end;

procedure TFFactoryDoctoProb.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);
   
    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            {try}
                DataSource.DataSet.Delete;
                (datasource.dataset as TClientDataSet).applyupdates(-1);
            {except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;}
        end;
end;

procedure TFFactoryDoctoProb.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (datasource.dataset as TClientDataSet).ApplyUpdates(-1);
     navegar(FFactoryDoctoProb);
end;

procedure TFFactoryDoctoProb.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FFactoryDoctoProb);
end;

procedure TFFactoryDoctoProb.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFFactoryDoctoProb.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    dm.qFactoryDoctoProb.close;
    with dm.qFactoryDoctoProb.sql do
    begin
         clear;
         add('SELECT FACPROBANCO, FACPROCHEQUE, FACPROCPFCNPJ, FACPRODEVOLUCAO,');
         add('FACPROMOTIVO, FACPRODATA, FACPROVALOR, FACPROTAXAS, FACPROCLIENTE, FACPROOBS');
         add('FROM TFACTORYDOCTOPROB');
         add('WHERE FACPROCHEQUE <> 0');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(FACPROCHEQUE) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if trim(txtfiltrobanco.text) <> '' then
            add('AND FACPROBANCO = ' + txtfiltrobanco.text);
         if txtfiltroinicial.text <> '  /  /    ' then
            add('AND FACPRODATA >= :DATAINI');
         if txtfiltrofinal.text <> '  /  /    ' then
            add('AND FACPRODATA <= :DATAFIN');
         add('ORDER BY FACPROBANCO, FACPROCHEQUE');
    end;
    if txtfiltroinicial.text <> '  /  /    ' then
       dm.qFactoryDoctoProb.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if txtfiltrofinal.text <> '  /  /    ' then
       dm.qFactoryDoctoProb.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    dm.qFactoryDoctoProb.open;
    DataSource.DataSet.open;
end;

procedure TFFactoryDoctoProb.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(datasource, nil);
end;

procedure TFFactoryDoctoProb.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFFactoryDoctoProb.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFFactoryDoctoProb.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFFactoryDoctoProb.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFFactoryDoctoProb.txtnumeroKeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtcodcliente) and (sender = txtcliente) then
              btncliente.click;
         if (sender = txtcodbanco) and (sender = txtbanco) then
              btnbanco.click;
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

procedure TFFactoryDoctoProb.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
       if sender = txtfiltrobanco then
          btnfiltrobanco.click;
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

procedure TFFactoryDoctoProb.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFFactoryDoctoProb.BtnImprimirClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   FFactoryDoctoProbRel := TFFactoryDoctoProbRel.create(self);
   FFactoryDoctoProbRel.RLReport.PreviewModal;
end;

procedure TFFactoryDoctoProb.btnclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         fcliente.txtpesquisa.text := txtcliente.text;
         fcliente.BtnFiltro.click;
         fcliente.showmodal;
         dm.CDSFactoryDoctoProbFACPROCLIENTE.asinteger := dm.CDSClienteCLICOD.asinteger;
     finally
         fcliente.release;
         fcliente := nil;
         fcliente.free;
     end;
end;

procedure TFFactoryDoctoProb.btnfiltrobancoClick(Sender: TObject);
begin
     try
         fbanco := tfbanco.create(self);
         usuario('btnconsultar',fbanco.wsinformacao.programa);
         dm.cdsbanco.open;
         fbanco.showmodal;
         txtfiltrobanco.text := dm.cdsbancobancod.asstring;
     finally
         fbanco.release;
         fbanco := nil;
         fbanco.free;
     end;
end;

procedure TFFactoryDoctoProb.btnbancoClick(Sender: TObject);
begin
     try
         fbanco := tfbanco.create(self);
         usuario('btnconsultar',fbanco.wsinformacao.programa);
         fbanco.txtpesquisa.text := txtbanco.text;
         fbanco.BtnFiltro.click;
         fbanco.showmodal;
         dm.CDSFactoryDoctoProbFACPROBANCO.asinteger := dm.cdsbancobancod.asinteger;
     finally
         fbanco.release;
         fbanco := nil;
         fbanco.free;
     end;
end;

end.
