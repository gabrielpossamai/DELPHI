unit UVeiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, RLReport, RLRichText, WSDBMemo;

type
  TFVeiculo = class(TForm)
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
    txtcodmodelo: TWSDBEdit;
    Label7: TLabel;
    txtmodelo: TWSDBEdit;
    txtfiltromodelo: TWSEdit;
    Label9: TLabel;
    btnmodelo: TRxSpeedButton;
    btnfiltromodelo: TRxSpeedButton;
    RLReport: TRLReport;
    RLBand1: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBImage1: TRLDBImage;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand2: TRLBand;
    RLDBImage2: TRLDBImage;
    RLDBRichText1: TRLDBRichText;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    Label5: TLabel;
    WSDBEdit5: TWSDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    WSDBEdit6: TWSDBEdit;
    WSDBEdit7: TWSDBEdit;
    RLLabel13: TRLLabel;
    ColorDialog: TColorDialog;
    Label11: TLabel;
    btncli: TRxSpeedButton;
    txtcli: TWSDBEdit;
    txtcodcli: TWSDBEdit;
    Label13: TLabel;
    WSDBEdit8: TWSDBEdit;
    Label14: TLabel;
    WSDBEdit9: TWSDBEdit;
    Label16: TLabel;
    txtcor: TWSDBEdit;
    WSDBMemo1: TWSDBMemo;
    RLLabel6: TRLLabel;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    btncor: TRxSpeedButton;
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
    procedure btnmodeloClick(Sender: TObject);
    procedure btnfiltromodeloClick(Sender: TObject);
    procedure btncliClick(Sender: TObject);
    procedure btncidClick(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure btncorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVeiculo: TFVeiculo;

implementation

uses UDM, UMenu, UModelo, UCliente, UCidade;

{$R *.dfm}

procedure TFVeiculo.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFVeiculo.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFVeiculo.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFVeiculo.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFVeiculo.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFVeiculo.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FVeiculo, true);
     DataSource.DataSet.append;
end;

procedure TFVeiculo.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FVeiculo, true);
     end;
end;

procedure TFVeiculo.BtnAlterarClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);

   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.Edit;
     Editar(FVeiculo, false);
   end;
end;

procedure TFVeiculo.BtnExcluirClick(Sender: TObject);
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

procedure TFVeiculo.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FVeiculo);
end;

procedure TFVeiculo.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FVeiculo);
end;

procedure TFVeiculo.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFVeiculo.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    with dm.qveiculo.sql do
    begin
         clear;
         add('SELECT VEICOD, VEIPLACA, VEICHASSI, VEICIDADE, VEIMODELO, VEIDESCRICAO, VEIANOFAB, VEIANOMOD,');
         add('VEIPROPRIETARIO, VEIDATAVENDA, VEICONCVENDA, VEIULTIMACONC, VEICOR, VEICAPACTANQUE, VEIOBS');
         add('FROM TVEICULO');
         add('WHERE VEICOD <> 0 ');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(VEIPLACA) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if trim(txtfiltromodelo.text) <> '' then
            add('AND VEIMODELO = ' + quotedstr(txtfiltromodelo.text));
         add('ORDER BY VEIPLACA');
    end;
    DataSource.DataSet.open;
end;

procedure TFVeiculo.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFVeiculo.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFVeiculo.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFVeiculo.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFVeiculo.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFVeiculo.WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtcodmodelo) or (sender = txtmodelo) then
              btnmodelo.click;
         if (sender = txtcodcli) or (sender = txtcli) then
              btncli.click;
//         if (sender = txtcodcid) or (sender = txtcid) then
//              btncid.click;
         if (sender = txtcor) then
              btncor.click;
    end;
    if (key = 40) and (not (sender is TWSDBMemo)) then
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
    if (key = 13) and (not (sender is TWSDBMemo)) then
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
    if (key = 38) and (not (sender is TWSDBMemo)) then
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

procedure TFVeiculo.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
    if key = vk_f3 then
    begin
       if sender = txtfiltromodelo then
          btnfiltromodelo.click;
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

procedure TFVeiculo.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFVeiculo.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFVeiculo.btnmodeloClick(Sender: TObject);
begin
     try
         fmodelo := tfmodelo.create(self);
         usuario('btnconsultar',fmodelo.wsinformacao.programa);
         fmodelo.txtpesquisa.text := txtmodelo.text;
         fmodelo.BtnFiltro.click;
         fmodelo.showmodal;
         dm.CDSVeiculoVEIMODELO.asinteger := dm.CDSModeloMODCOD.asinteger;
     finally
         fmodelo.release;
         fmodelo:= nil;
         fmodelo.free;
     end;
end;

procedure TFVeiculo.btnfiltromodeloClick(Sender: TObject);
begin
     try
         fmodelo := tfmodelo.create(self);
         usuario('btnconsultar',fmodelo.wsinformacao.programa);
         dm.cdsmodelo.open;
         fmodelo.showmodal;
         txtfiltromodelo.text := dm.cdsmodelomodcod.asstring;
     finally
         fmodelo.release;
         fmodelo := nil;
         fmodelo.free;
     end;
end;

procedure TFVeiculo.btncliClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         fcliente.txtpesquisa.text := txtcli.text;
         fcliente.BtnFiltro.click;
         fcliente.showmodal;
         dm.cdsveiculoveiproprietario.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

procedure TFVeiculo.btncidClick(Sender: TObject);
begin
     {try
         fcidade := tfcidade.create(self);
         usuario('btnconsultar',fcidade.wsinformacao.programa);
         fcidade.txtpesquisa.text := txtcid.text;
         fcidade.BtnFiltro.click;
         fcidade.showmodal;
         dm.CDSVeiculoVEICIDADE.asinteger := dm.CDSCIDADECIDCOD.asinteger;
     finally
         fcidade.release;
         fcidade:= nil;
         fcidade.free;
     end;}
end;

procedure TFVeiculo.DataSourceDataChange(Sender: TObject; Field: TField);
begin
     try
          txtcor.Color :=  StringToColor(dm.CDSVeiculoVEICOR.asstring);
     except
          txtcor.Color := clwhite;
     end;
end;

procedure TFVeiculo.btncorClick(Sender: TObject);
begin
     if ColorDialog.Execute then
         dm.CDSVeiculoVEICOR.asstring := ColorToString(ColorDialog.color);
end;

end.
