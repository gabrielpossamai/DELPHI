unit UUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RLReport, RLRichText, RXCtrls;

type
  TFUsuario = class(TForm)
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
    txtlogin: TWSDBEdit;
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
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    txtprograma: TWSEdit;
    Label5: TLabel;
    chkacesso: TCheckBox;
    chkinsercao: TCheckBox;
    chkexclusao: TCheckBox;
    chkalteracao: TCheckBox;
    chkrelatorio: TCheckBox;
    DBGrid2: TDBGrid;
    ToolBarItem: TToolBar;
    btnsalvaritem: TToolButton;
    btnexcluiritem: TToolButton;
    WSDBEdit1: TWSDBEdit;
    Label6: TLabel;
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
    RLLabel4: TRLLabel;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    btnprograma: TRxSpeedButton;
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
    procedure txtloginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnexcelClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnexcluiritemClick(Sender: TObject);
    procedure btnsalvaritemClick(Sender: TObject);
    procedure chkrelatorioKeyPress(Sender: TObject; var Key: Char);
    procedure btnprogramaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuario: TFUsuario;

implementation

uses UDM, UMenu, UPrograma, USenha;

{$R *.dfm}

procedure TFUsuario.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFUsuario.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFUsuario.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFUsuario.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFUsuario.btnsairClick(Sender: TObject);
begin
     if DataSource.DataSet.active = false then
        DataSource.DataSet.open;
     close;
end;

procedure TFUsuario.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FUsuario, true);
     DataSource.DataSet.append;
end;

procedure TFUsuario.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FUsuario, true);
     end;
end;

procedure TFUsuario.BtnAlterarClick(Sender: TObject);
begin
//   usuario((sender as TToolButton).name, wsinformacao.programa);
   if (fsenha.txtusuario.items.strings[fsenha.txtusuario.itemindex] <> 'Master') and (txtlogin.text = 'Master') then
   begin
        raise exception.create('Impossível alterar o usuário Master!');
   end;
   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     Editar(FUsuario, false);
     DataSource.DataSet.Edit;
   end;
end;

procedure TFUsuario.BtnExcluirClick(Sender: TObject);
begin
//    usuario((sender as TToolButton).name, wsinformacao.programa);
    if (fsenha.txtusuario.items.strings[fsenha.txtusuario.itemindex] <> 'Master') and (txtlogin.text = 'Master') then
    begin
         raise exception.create('Impossível alterar o usuário Master!');
    end;
    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            integridade('PESOPERADOR', 'TPESAGEM', txtlogin.text);        
            try
                DataSource.DataSet.Delete;
                (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFUsuario.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FUsuario);
end;

procedure TFUsuario.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FUsuario);
end;

procedure TFUsuario.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFUsuario.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    dm.qusuario.close;
    with dm.qusuario.sql do
    begin
         clear;
         add('SELECT USULOGIN, USUNOME, USUSENHA, USUMATRICULA FROM TUSUARIO');
         if trim(txtpesquisa.text) <> '' then
            add('WHERE UPPER(USUNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         add('ORDER BY USULOGIN');
    end;
    dm.qusuario.open;
    DataSource.DataSet.open;
end;

procedure TFUsuario.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFUsuario.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     importar(DataSource, Wsinformacao.Tabela);
end;

procedure TFUsuario.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFUsuario.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFUsuario.txtloginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   passar : boolean;
begin
    if (key = 27) and (btncancelar.enabled = true) then
        btncancelar.click;
    if (Key = VK_F12) and (btnSalvar.enabled = true) then
        btnsalvar.Click;
    if key = vk_f3 then
         if sender = txtprograma then
             btnprograma.click;
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

procedure TFUsuario.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = 38) and (btnanterior.enabled = true) then
    begin
        btnanterior.Click;
        key := 0;
    end;
    if (key = 40) and (btnproximo.enabled = true) then
    begin
        btnproximo.Click;
        key := 0;        
    end;
    if (key = 13 ) then
        btnfiltro.click;
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

procedure TFUsuario.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFUsuario.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFUsuario.btnexcluiritemClick(Sender: TObject);
begin
    if (dm.cdsitemusuario.Active = true) then
      if (dm.cdsitemusuario.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                dm.cdsitemusuario.Delete;
                dm.cdsitemusuario.ApplyUpdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFUsuario.btnsalvaritemClick(Sender: TObject);
begin
     try
          strtoint(txtprograma.text);
     except
          showmessage('Campo Programa Inválido!');
          txtprograma.setfocus;
          exit;
     end;
     if not dm.cdsprograma.Locate('PROCOD', txtprograma.text, []) then
     begin
          showmessage('Programa não cadastrado!');
          txtprograma.setfocus;
          exit;
     end;
     if dm.CDSItemusuario.Locate('ITEUSUARIO;ITEPROGRAMA', VarArrayOf([txtlogin.text ,txtprograma.text]) , []) then
     begin
          showmessage('Programa já cadastrado!');
          txtprograma.setfocus;
          exit;
     end;
     dm.CDSUsuario.post;
     dm.CDSUsuario.applyupdates(-1);
     dm.CDSUsuario.edit;
     dm.CDSItemusuario.append;
     dm.CDSItemUsuarioITEUSUARIO.asstring := txtlogin.text;
     dm.CDSItemUsuarioITEPROGRAMA.asinteger := strtoint(txtprograma.text);
     if chkacesso.Checked then
        dm.CDSItemUsuarioITEACESSO.asstring := 'S'
     else
        dm.CDSItemUsuarioITEACESSO.asstring := 'N';
     if chkinsercao.Checked then
        dm.CDSItemUsuarioITEINSERCAO.asstring := 'S'
     else
        dm.CDSItemUsuarioITEINSERCAO.asstring := 'N';
     if chkalteracao.Checked then
        dm.CDSItemUsuarioITEALTERACAO.asstring := 'S'
     else
        dm.CDSItemUsuarioITEALTERACAO.asstring := 'N';
     if chkexclusao.Checked then
        dm.CDSItemUsuarioITEEXCLUSAO.asstring := 'S'
     else
        dm.CDSItemUsuarioITEEXCLUSAO.asstring := 'N';
     if chkrelatorio.Checked then
        dm.CDSItemUsuarioITERELATORIO.asstring := 'S'
     else
        dm.CDSItemUsuarioITERELATORIO.asstring := 'N';
     dm.CDSItemusuario.post;
     dm.CDSItemusuario.applyupdates(-1);
     chkacesso.checked := false;
     chkinsercao.checked := false;
     chkalteracao.checked := false;
     chkexclusao.checked := false;
     chkrelatorio.checked := false;                    
     txtprograma.clear;
     txtprograma.setfocus;        
end;

procedure TFUsuario.chkrelatorioKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
        btnsalvaritem.click;
end;

procedure TFUsuario.btnprogramaClick(Sender: TObject);
begin
     try
         fprograma := tfprograma.create(self);
         fprograma.BtnFiltro.click;
         dm.cdsprograma.open;
         fprograma.showmodal;
         txtprograma.text := dm.cdsprogramaprocod.asstring;
     finally
         fprograma.release;
         fprograma:= nil;
         fprograma.free;
     end;
end;

end.
