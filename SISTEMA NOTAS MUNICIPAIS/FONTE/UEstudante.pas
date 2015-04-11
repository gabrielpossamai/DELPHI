unit UEstudante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, FMTBcd, SqlExpr, Buttons, RLReport, RLRichText, WSMaskEdit,
  dateutils, WSDBMemo;

type
  TFEstudante = class(TForm)
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
    Label23: TLabel;
    txtfiltronivel: TWSEdit;
    txtfiltrocurso: TWSEdit;
    Label24: TLabel;
    btnfiltronivel: TRxSpeedButton;
    btnfiltrocurso: TRxSpeedButton;
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
    RLTitulo: TRLLabel;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RGOrdem: TRadioGroup;
    RLLabel7: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel9: TRLLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    btncidade: TRxSpeedButton;
    Label32: TLabel;
    Label17: TLabel;
    Label14: TLabel;
    Label22: TLabel;
    Label18: TLabel;
    txtcod: TWSDBEdit;
    WSDBEdit5: TWSDBEdit;
    WSDBEdit6: TWSDBEdit;
    WSDBEdit7: TWSDBEdit;
    txtcodcidade: TWSDBEdit;
    txtcidade: TWSDBEdit;
    WSDBEdit3: TWSDBEdit;
    txtnome: TWSDBEdit;
    WSDBEdit12: TWSDBEdit;
    WSDBEdit15: TWSDBEdit;
    txtcpf: TWSDBEdit;
    WSDBEdit17: TWSDBEdit;
    Label2: TLabel;
    WSDBEdit1: TWSDBEdit;
    Label5: TLabel;
    WSDBEdit2: TWSDBEdit;
    Label6: TLabel;
    Label12: TLabel;
    WSDBEdit4: TWSDBEdit;
    WSDBEdit9: TWSDBEdit;
    Label13: TLabel;
    Label15: TLabel;
    WSDBEdit10: TWSDBEdit;
    txtuni: TWSDBEdit;
    btnuni: TRxSpeedButton;
    txtcoduni: TWSDBEdit;
    Label16: TLabel;
    txtcurso: TWSDBEdit;
    btncurso: TRxSpeedButton;
    txtcodcurso: TWSDBEdit;
    Label19: TLabel;
    txtnivel: TWSDBEdit;
    btnnivel: TRxSpeedButton;
    txtcodnivel: TWSDBEdit;
    Label20: TLabel;
    txtprofissao: TWSDBEdit;
    btnprofissao: TRxSpeedButton;
    txtcodprofissao: TWSDBEdit;
    Label21: TLabel;
    txtsituacao: TDBRadioGroup;
    Label25: TLabel;
    panimpressao: TPanel;
    Image1: TImage;
    btnanalitico: TSpeedButton;
    btnsintetico: TSpeedButton;
    Label10: TLabel;
    RLReportAnalitico: TRLReport;
    RLBand6: TRLBand;
    RLDBText13: TRLDBText;
    RLDBImage3: TRLDBImage;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLBand7: TRLBand;
    RLDBImage4: TRLDBImage;
    RLDBRichText2: TRLDBRichText;
    RLBand8: TRLBand;
    RLLabel1: TRLLabel;
    RLBand10: TRLBand;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    btnestudantesporcurso: TSpeedButton;
    RGSituacao: TRadioGroup;
    RLLabel11: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLReportPorCurso: TRLReport;
    RLBand9: TRLBand;
    RLDBText41: TRLDBText;
    RLDBImage5: TRLDBImage;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLBand11: TRLBand;
    RLDBImage6: TRLDBImage;
    RLDBRichText3: TRLDBRichText;
    RLBand12: TRLBand;
    RLLabel30: TRLLabel;
    RLBand13: TRLBand;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand14: TRLBand;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText54: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText51: TRLDBText;
    RLBand15: TRLBand;
    RLLabel36: TRLLabel;
    RLDBText52: TRLDBText;
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
    procedure txtcodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnexcelClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnfiltronivelClick(Sender: TObject);
    procedure btnfiltrocursoClick(Sender: TObject);
    procedure btncidadeClick(Sender: TObject);
    procedure RGOrdemClick(Sender: TObject);
    procedure txtcpfExit(Sender: TObject);
    procedure btnuniClick(Sender: TObject);
    procedure btncursoClick(Sender: TObject);
    procedure btnnivelClick(Sender: TObject);
    procedure btnprofissaoClick(Sender: TObject);
    procedure btnsinteticoClick(Sender: TObject);
    procedure btnanaliticoClick(Sender: TObject);
    procedure btnformadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstudante: TFEstudante;

implementation

uses UDM, UMenu, UCidade, UGrupo, UNivel, UCurso, UUniversidade,
  UProfissao;

{$R *.dfm}

procedure TFEstudante.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFEstudante.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFEstudante.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFEstudante.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFEstudante.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFEstudante.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(festudante, false);

     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FEstudante, true);
     DataSource.DataSet.append;
end;

procedure TFEstudante.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(festudante, false);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FEstudante, true);
     end;
end;

procedure TFEstudante.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   mostrarimpressao(festudante, false);

   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     Editar(FEstudante, false);
     DataSource.DataSet.Edit;
   end;
end;

procedure TFEstudante.BtnExcluirClick(Sender: TObject);
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

procedure TFEstudante.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     if btnsalvar.enabled then
     begin
          DataSource.DataSet.post;
          (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
          navegar(FEstudante);
     end;
end;

procedure TFEstudante.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FEstudante);
end;

procedure TFEstudante.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFEstudante.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    with dm.qestudante.sql do
    begin
         clear;
         add('select ESTCOD,ESTNOME,ESTCPF,ESTSEXO,ESTMAE,ESTDATANASC,ESTENDERECO,ESTBAIRRO,');
         add('ESTCIDADE,ESTCEP,ESTFONE,ESTCELULAR,ESTVOIP,ESTMSN,ESTEMAIL,ESTSITE,ESTCURSO,');
         add('ESTPROFISSAO,ESTOBS,ESTDATAINCLUSAO,ESTNIVEL,ESTUNIVERSIDADE,ESTSITUACAO,CURNOME');
         add('from TESTUDANTE inner join TCURSO on CURCOD = ESTCURSO WHERE ESTCOD <> 0');
         if trim(txtpesquisa.text) <> '' then
         begin
             case rgordem.itemindex of
               0 : add('AND UPPER(ESTNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
               1 : add('AND UPPER(ESTCOD) LIKE UPPER(' + quotedstr(txtpesquisa.text+ '%') + ')');
             end;
         end;
         case rgordem.itemindex of
           1 : add('AND ESTSITUACAO = ''Formado''');
           2 : add('AND ESTSITUACAO = ''Cursando''');
           3 : add('AND ESTSITUACAO = ''Cancelado''');
         end;
         if trim(txtfiltronivel.text) <> '' then
            add('AND ESTNIVEL = ' + quotedstr(txtfiltronivel.text));
         if trim(txtfiltrocurso.text) <> '' then
            add('AND ESTCURSO = ' + quotedstr(txtfiltrocurso.text));
         if sender <> BtnEstudantesPorCurso then
         begin
              case rgordem.itemindex of
                0 : add('ORDER BY ESTNOME');
                1 : add('ORDER BY ESTCOD');
              end;
         end
         else
         begin
              case rgordem.itemindex of
                0 : add('ORDER BY CURNOME, ESTNOME');
                1 : add('ORDER BY CURNOME, ESTCOD');
              end;
         end;
    end;
    DataSource.DataSet.open;
end;

procedure TFEstudante.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFEstudante.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFEstudante.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFEstudante.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFEstudante.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
end;

procedure TFEstudante.txtcodKeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtcodcidade) or (sender = txtcidade) then
             btncidade.click;
         if (sender = txtcoduni) or (sender = txtuni) then
             btnuni.click;
         if (sender = txtcodcurso) or (sender = txtcurso) then
             btncurso.click;
         if (sender = txtcodnivel) or (sender = txtnivel) then
             btnnivel.click;
         if (sender = txtcodprofissao) or (sender = txtprofissao) then
             btnprofissao.click;
    end;

    if (key = 40) and (not (sender is twsdbmemo)) then
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
    if (key = 13) and (not (sender is twsdbmemo)) then
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
    if (key = 38) and (not (sender is twsdbmemo)) then
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

procedure TFEstudante.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
        begin
             if sender = txtpesquisa then
                 btnfiltro.click;
        end
        else
            Perform (WM_nextDlgCtl,0,0);
    end;
    if key = vk_f3 then
    begin
         if sender = txtfiltronivel then
            btnfiltronivel.click;
         if sender = txtfiltrocurso then
            btnfiltrocurso.click;
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

procedure TFEstudante.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFEstudante.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(festudante, not panimpressao.visible);
end;

procedure TFEstudante.btnfiltronivelClick(Sender: TObject);
begin
     try
         fnivel := tfnivel.create(self);
         usuario('btnconsultar',fnivel.wsinformacao.programa);
         dm.cdsnivel.open;
         fnivel.showmodal;
         txtfiltronivel.text := dm.cdsnivelnivcod.asstring;
     finally
         fnivel.release;
         fnivel := nil;
         fnivel.free;
     end;
end;

procedure TFEstudante.btnfiltrocursoClick(Sender: TObject);
begin
     try
         fcurso := tfcurso.create(self);
         usuario('btnconsultar',fcurso.wsinformacao.programa);
         dm.cdscurso.open;
         fcurso.showmodal;
         txtfiltrocurso.text := dm.cdscursocurcod.asstring;
     finally
         fcurso.release;
         fcurso:= nil;
         fcurso.free;
     end;
end;

procedure TFEstudante.btncidadeClick(Sender: TObject);
begin
     try
         fcidade := tfcidade.create(self);
         usuario('btnconsultar',fcidade.wsinformacao.programa);
         fcidade.txtpesquisa.text := txtcidade.text;
         fcidade.BtnFiltro.click;
         dm.cdscidade.open;
         fcidade.showmodal;
         dm.cdsestudanteestcidade.asinteger := dm.cdscidadecidcod.asinteger;
     finally
         fcidade.release;
         fcidade:= nil;
         fcidade.free;
     end;
end;

procedure TFEstudante.RGOrdemClick(Sender: TObject);
begin
     btnfiltro.click;
     txtpesquisa.clear;
     txtpesquisa.setfocus;
end;

procedure TFEstudante.txtcpfExit(Sender: TObject);
begin
     dm.CDSClienteCLICPF.EditMask := '';
end;

procedure TFEstudante.btnuniClick(Sender: TObject);
begin
     try
         funiversidade := tfuniversidade.create(self);
         usuario('btnconsultar',funiversidade.wsinformacao.programa);
         funiversidade.txtpesquisa.text := txtuni.text;
         funiversidade.BtnFiltro.click;
         dm.cdsuniversidade.open;
         funiversidade.showmodal;
         dm.cdsestudanteestuniversidade.asinteger := dm.cdsuniversidadeunicod.asinteger;
     finally
         funiversidade.release;
         funiversidade := nil;
         funiversidade.free;
     end;
end;

procedure TFEstudante.btncursoClick(Sender: TObject);
begin
     try
         fcurso := tfcurso.create(self);
         usuario('btnconsultar',fcurso.wsinformacao.programa);
         fcurso.txtpesquisa.text := txtcurso.text;
         fcurso.BtnFiltro.click;
         dm.cdscurso.open;
         fcurso.showmodal;
         dm.cdsestudanteestcurso.asinteger := dm.cdscursocurcod.asinteger;
     finally
         fcurso.release;
         fcurso := nil;
         fcurso.free;
     end;
end;

procedure TFEstudante.btnnivelClick(Sender: TObject);
begin
     try
         fnivel := tfnivel.create(self);
         usuario('btnconsultar',fnivel.wsinformacao.programa);
         fnivel.txtpesquisa.text := txtnivel.text;
         fnivel.BtnFiltro.click;
         dm.cdsnivel.open;
         fnivel.showmodal;
         dm.cdsestudanteestnivel.asinteger := dm.cdsnivelnivcod.asinteger;
     finally
         fnivel.release;
         fnivel:= nil;
         fnivel.free;
     end;
end;

procedure TFEstudante.btnprofissaoClick(Sender: TObject);
begin
     try
         fprofissao := tfprofissao.create(self);
         usuario('btnconsultar',fprofissao.wsinformacao.programa);
         fprofissao.txtpesquisa.text := txtprofissao.text;
         fprofissao.BtnFiltro.click;
         dm.cdsprofissao.open;
         fprofissao.showmodal;
         dm.cdsestudanteestprofissao.asinteger := dm.cdsprofissaoprocod.asinteger;
     finally
         fprofissao.release;
         fprofissao := nil;
         fprofissao.free;
     end;
end;

procedure TFEstudante.btnsinteticoClick(Sender: TObject);
begin
     BtnFiltroClick(Sender);
     RLReport.PreviewModal;
end;

procedure TFEstudante.btnanaliticoClick(Sender: TObject);
begin
     BtnFiltroClick(Sender);
     RLReportAnalitico.PreviewModal;
end;

procedure TFEstudante.btnformadosClick(Sender: TObject);
begin
     BtnFiltroClick(Sender);
     RLReportPorCurso.PreviewModal;
end;

end.
