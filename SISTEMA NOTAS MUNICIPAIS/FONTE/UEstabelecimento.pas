unit UEstabelecimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  WSDBMemo, Buttons, dateutils, RXCtrls;

type
  TFEstabelecimento = class(TForm)
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
    WSDBEdit13: TWSDBEdit;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    txtano: TWSEdit;
    ToolBarItem: TToolBar;
    btnsalvaritem: TToolButton;
    btnexcluiritem: TToolButton;
    txtobs: TWSEdit;
    DBGrid1: TDBGrid;
    WSDBEdit1: TWSDBEdit;
    Label2: TLabel;
    WSDBEdit2: TWSDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    txtcodbairro: TWSDBEdit;
    txtbairro: TWSDBEdit;
    WSDBEdit6: TWSDBEdit;
    Label10: TLabel;
    txtcodatividade: TWSDBEdit;
    Label9: TLabel;
    txtatividade: TWSDBEdit;
    WSDBEdit8: TWSDBEdit;
    Label11: TLabel;
    WSDBEdit9: TWSDBEdit;
    Label12: TLabel;
    txtcodescritorio: TWSDBEdit;
    Label13: TLabel;
    txtescritorio: TWSDBEdit;
    WSDBEdit12: TWSDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    txtfiltroatividade: TWSEdit;
    txtfiltrobairro: TWSEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    panimpressao: TPanel;
    Image1: TImage;
    btnatividade: TSpeedButton;
    btnrenovados: TSpeedButton;
    btnarenovar: TSpeedButton;
    Label19: TLabel;
    btnfiltroatividade: TRxSpeedButton;
    btnfiltrobairro: TRxSpeedButton;
    btnbairro: TRxSpeedButton;
    btnatividadec: TRxSpeedButton;
    btnescritorio: TRxSpeedButton;
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
    procedure txtanoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnexcelClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnsalvaritemClick(Sender: TObject);
    procedure btnexcluiritemClick(Sender: TObject);
    procedure btnatividadeClick(Sender: TObject);
    procedure btnfiltroatividadeClick(Sender: TObject);
    procedure btnfiltrobairroClick(Sender: TObject);
    procedure btnbairroClick(Sender: TObject);
    procedure btnatividadecClick(Sender: TObject);
    procedure btnescritorioClick(Sender: TObject);
  private
    procedure mostrarimpressao(mostrar : boolean);
  public
    { Public declarations }
  end;

var
  FEstabelecimento: TFEstabelecimento;

implementation

uses UDM, UMenu, UCliente, UEstabelecimentoRel, UBairro, UAtividade,
  UEscritorioContabil, SqlExpr;

{$R *.dfm}

procedure TFEstabelecimento.mostrarimpressao(mostrar : boolean);
var i : integer;
begin
     if mostrar then
     begin
          panimpressao.visible := true;
          for i := 0 to 140 do
          begin
               panimpressao.height := i;
               application.processmessages;
          end;
     end
     else
     begin
          for i := 140 downto 0 do
          begin
               panimpressao.height := i;
               application.processmessages;
          end;
          panimpressao.visible := false;
     end;
end;

procedure TFEstabelecimento.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFEstabelecimento.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFEstabelecimento.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFEstabelecimento.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFEstabelecimento.btnsairClick(Sender: TObject);
begin
     DataSource.DataSet.Active := false;
     close;
end;

procedure TFEstabelecimento.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(false);     
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.append;
     Editar(FEstabelecimento, true);     
end;

procedure TFEstabelecimento.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          Editar(FEstabelecimento, true);     
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
     end;
end;

procedure TFEstabelecimento.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
    mostrarimpressao(false);
   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.Edit;
     Editar(FEstabelecimento, false);     
   end;
end;

procedure TFEstabelecimento.BtnExcluirClick(Sender: TObject);
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

procedure TFEstabelecimento.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FEstabelecimento);
end;

procedure TFEstabelecimento.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FEstabelecimento);
end;

procedure TFEstabelecimento.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFEstabelecimento.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    dm.qEstabelecimento.close;
    with dm.qEstabelecimento.sql do
    begin
         clear;
         add('SELECT ESTCOD, ESTNOME, ESTCNPJCPF, ESTENDERECO, ESTBAIRRO, ESTFONE,');
         add('ESTATIVIDADE, ESTDATA, ESTENQUADRAMENTO, ESTESCRITORIOCONTABIL, ESTRENOVACAO');
         add('FROM TESTABELECIMENTO');
         add('WHERE ESTCOD <> 0');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(ESTNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if trim(txtfiltroatividade.text) <> '' then
            add('AND ESTATIVIDADE = ' + quotedstr(txtfiltroatividade.text));
         if trim(txtfiltrobairro.text) <> '' then
            add('AND ESTBAIRRO = ' + quotedstr(txtfiltrobairro.text));
         add('ORDER BY ESTNOME');
    end;
    dm.qEstabelecimento.open;
    DataSource.DataSet.open;
end;

procedure TFEstabelecimento.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFEstabelecimento.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFEstabelecimento.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFEstabelecimento.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFEstabelecimento.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
end;

procedure TFEstabelecimento.txtanoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   passar : boolean;
begin
    if key = vk_f3 then
    begin
         if (sender = txtcodbairro) or (sender = txtbairro) then
            btnbairro.click;
         if (sender = txtcodatividade) or (sender = txtatividade) then
            btnatividade.click;
         if (sender = txtcodescritorio) or (sender = txtescritorio) then
            btnescritorio.click;            
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

procedure TFEstabelecimento.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_f3 then
    begin
         if sender = txtfiltroatividade then
            btnfiltroatividade.click;
         if sender = txtfiltrobairro then
            btnfiltrobairro.click;
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

procedure TFEstabelecimento.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFEstabelecimento.BtnImprimirClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   PageControl.ActivePageIndex := 0;
   mostrarimpressao(not panimpressao.visible);
end;

procedure TFEstabelecimento.btnsalvaritemClick(Sender: TObject);
begin
     try
          strtoint(txtano.text);
     except
          showmessage('Campo Ano Inválido!');
          txtano.setfocus;
          exit;
     end;
     if dm.CDSItemEstabelecimento.Locate('ITEESTABELECIMENTO;ITEANO', VarArrayOf([txtcodigo.text, txtano.text]) , []) then
     begin
          showmessage('Ano já cadastrado!');
          txtano.setfocus;
          exit;
     end;
     dm.CDSEstabelecimento.post;
     dm.CDSEstabelecimento.applyupdates(-1);
     dm.CDSEstabelecimento.edit;
     dm.CDSItemEstabelecimento.append;
     dm.CDSItemEstabelecimentoITEEstabelecimento.asinteger := strtoint(txtcodigo.text);     
     dm.CDSItemEstabelecimentoITEANO.asinteger := strtoint(txtano.text);
     dm.CDSItemEstabelecimentoITEObs.asstring := txtobs.text;
     dm.CDSItemEstabelecimento.post;
     dm.CDSItemEstabelecimento.applyupdates(-1);
     txtano.clear;
     txtobs.clear;
     txtano.setfocus;
end;

procedure TFEstabelecimento.btnexcluiritemClick(Sender: TObject);
begin
    if (dm.cdsitemEstabelecimento.Active = true) then
      if (dm.cdsitemEstabelecimento.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                dm.cdsitemEstabelecimento.Delete;
                dm.cdsitemEstabelecimento.ApplyUpdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFEstabelecimento.btnatividadeClick(Sender: TObject);
begin
   FEstabelecimentorel := tFEstabelecimentorel.create(self);
   with FEstabelecimentorel.qrel.sql do
   begin
        clear;
        add('SELECT ESTCOD, ESTNOME, ESTFONE, ESTRENOVACAO, ESTCNPJCPF, ATINOME');
        add('FROM TESTABELECIMENTO ');
        add('   LEFT OUTER JOIN TATIVIDADE ON ATICOD = ESTATIVIDADE');
        add('WHERE ESTCOD <> 0');
        if trim(txtpesquisa.text) <> '' then
           add('AND UPPER(ESTNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
        if trim(txtfiltroatividade.text) <> '' then
           add('AND ESTATIVIDADE = ' + quotedstr(txtfiltroatividade.text));
        if trim(txtfiltrobairro.text) <> '' then
           add('AND ESTBAIRRO = ' + quotedstr(txtfiltrobairro.text));
        if sender = btnatividade then
           add('ORDER BY ATINOME, ESTNOME');
        if sender = btnrenovados then
        begin
           add('AND ESTRENOVACAO >= ' + inttostr(yearof(date)));
           add('ORDER BY ESTNOME');
        end;
        if sender = btnarenovar then
        begin
           add('AND ESTRENOVACAO < ' + inttostr(yearof(date)));
           add('ORDER BY ESTNOME');
        end;
   end;
   FEstabelecimentorel.qrel.open;
   FEstabelecimentorel.cdsrel.open;
   if sender = btnatividade then
      FEstabelecimentorel.RLReportAti.PreviewModal
   else
      FEstabelecimentorel.RLReport.PreviewModal;
   btnfiltro.click;
end;

procedure TFEstabelecimento.btnfiltroatividadeClick(Sender: TObject);
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

procedure TFEstabelecimento.btnfiltrobairroClick(Sender: TObject);
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

procedure TFEstabelecimento.btnbairroClick(Sender: TObject);
begin
     try
         fbairro := tfbairro.create(self);
         fbairro.txtpesquisa.text := txtbairro.text;
         fbairro.BtnFiltro.click;
         dm.cdsbairro.open;
         fbairro.showmodal;
         dm.cdsEstabelecimentoestbairro.asinteger := dm.cdsbairrobaicod.asinteger;
     finally
         fbairro.release;
         fbairro:= nil;
         fbairro.free;
     end;
end;

procedure TFEstabelecimento.btnatividadecClick(Sender: TObject);
begin
     try
         fatividade := tfatividade.create(self);
         fatividade.txtpesquisa.text := txtatividade.text;
         fatividade.BtnFiltro.click;
         dm.cdsatividade.open;
         fatividade.showmodal;
         dm.cdsEstabelecimentoestatividade.asinteger := dm.cdsatividadeaticod.asinteger;
     finally
         fatividade.release;
         fatividade:= nil;
         fatividade.free;
     end;
end;

procedure TFEstabelecimento.btnescritorioClick(Sender: TObject);
begin
     try
         FEscritorioContabil := tFEscritorioContabil.create(self);
         FEscritorioContabil.txtpesquisa.text := txtescritorio.text;
         FEscritorioContabil.BtnFiltro.click;
         dm.cdsescritoriocontabil.open;
         FEscritorioContabil.showmodal;
         dm.cdsEstabelecimentoestescritoriocontabil.asinteger := dm.cdsescritoriocontabilesccod.asinteger;
     finally
         FEscritorioContabil.release;
         FEscritorioContabil:= nil;
         FEscritorioContabil.free;
     end;
end;

end.
