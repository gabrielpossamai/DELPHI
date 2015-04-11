unit UAtividade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient;

type
  TFAtividade = class(TForm)
    lbltitulo: TLabel;
    PageControl: TPageControl;
    TabConsulta: TTabSheet;
    TabCadastro: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DataSource: TDataSource;
    WSDBEdit1: TWSDBEdit;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAtividade: TFAtividade;

implementation

uses UDM, UMenu, UAtividadeRel;

{$R *.dfm}

procedure TFAtividade.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFAtividade.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFAtividade.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFAtividade.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFAtividade.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFAtividade.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FAtividade, true);

     DataSource.DataSet.append;
end;

procedure TFAtividade.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(fAtividade, true);
     end;
end;

procedure TFAtividade.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);

   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     Editar(fAtividade, false);
     DataSource.DataSet.Edit;
   end;
end;

procedure TFAtividade.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);
   
    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclus�o?', 'Aten��o', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            integridade('ESTATIVIDADE', 'TESTABELECIMENTO', WSDBEdit1.text);
            try
                DataSource.DataSet.Delete;
                (datasource.dataset as TClientDataSet).applyupdates(-1);
            except
                ShowMessage('Imposs�vel Excluir. Viola��o de Integridade.');
            end;
        end;
end;

procedure TFAtividade.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (datasource.dataset as TClientDataSet).ApplyUpdates(-1);
     navegar(fAtividade);
end;

procedure TFAtividade.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(fAtividade);
end;

procedure TFAtividade.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFAtividade.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    dm.qAtividade.close;
    with dm.qAtividade.sql do
    begin
         clear;
         add('SELECT ATICOD, ATINOME FROM TATIVIDADE');
         if trim(txtpesquisa.text) <> '' then
            add('WHERE UPPER(ATINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         add('ORDER BY ATINOME');
    end;
    dm.qAtividade.open;
    DataSource.DataSet.open;
end;

procedure TFAtividade.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(datasource, nil);
end;

procedure TFAtividade.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFAtividade.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFAtividade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if (datasource.DataSet.State = dsinsert) or
        (datasource.DataSet.State = dsedit) then
     begin
          showmessage('Imposs�vel sair, voc� esta em modo de edi��o!');
          action := canone; 
          exit;
     end;
     action := cafree;
end;

procedure TFAtividade.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFAtividade.WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   passar : boolean;
begin
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

procedure TFAtividade.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFAtividade.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFAtividade.BtnImprimirClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   fAtividaderel := tfAtividaderel.create(self);
   fAtividaderel.RLReport.PreviewModal;
end;

end.
