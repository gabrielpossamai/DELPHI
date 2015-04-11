unit UDiasViajados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, FMTBcd, SqlExpr, Buttons, RLReport, RLRichText, WSMaskEdit,
  dateutils, WSDBMemo, WSComboBox;

type
  TFDiasViajados = class(TForm)
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
    txtfiltroestudante: TWSEdit;
    btnfiltroestudante: TRxSpeedButton;
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
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RGOrdem: TRadioGroup;
    RLLabel7: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel9: TRLLabel;
    Label1: TLabel;
    Label3: TLabel;
    btnestudante: TRxSpeedButton;
    txtcodestudante: TWSDBEdit;
    txtestudante: TWSDBEdit;
    txtdata: TWSDBEdit;
    txttotal: TWSDBEdit;
    Label16: TLabel;
    txtsegunda: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup9: TDBRadioGroup;
    panimpressao: TPanel;
    Image1: TImage;
    btnaniversarios: TSpeedButton;
    btnsintetico: TSpeedButton;
    Label10: TLabel;
    RLDBText13: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    v: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDBText24: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLReportDiaSemana: TRLReport;
    RLBand6: TRLBand;
    RLDBText25: TRLDBText;
    RLDBImage3: TRLDBImage;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLBand7: TRLBand;
    RLDBImage4: TRLDBImage;
    RLDBRichText2: TRLDBRichText;
    RLBand8: TRLBand;
    RLLabel13: TRLLabel;
    RLBand9: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLBand10: TRLBand;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLLabel14: TRLLabel;
    txtviagem: TRLDBText;
    txtdiadasemana: TWSComboBox;
    Label5: TLabel;
    RLLabel17: TRLLabel;
    lbldiadasemana: TRLLabel;
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
    procedure btnfiltroestudanteClick(Sender: TObject);
    procedure btnestudanteClick(Sender: TObject);
    procedure RGOrdemClick(Sender: TObject);
    procedure btnsinteticoClick(Sender: TObject);
    procedure btnaniversariosClick(Sender: TObject);
    procedure txtsegundaClick(Sender: TObject);
    procedure RLLabel17BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDiasViajados: TFDiasViajados;

implementation

uses UDM, UMenu, UEstudante;

{$R *.dfm}

procedure TFDiasViajados.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFDiasViajados.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFDiasViajados.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFDiasViajados.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFDiasViajados.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFDiasViajados.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fDiasViajados, false);

     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FDiasViajados, true);
     DataSource.DataSet.append;
end;

procedure TFDiasViajados.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fDiasViajados, false);
     
     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FDiasViajados, true);
     end;
end;

procedure TFDiasViajados.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   mostrarimpressao(fDiasViajados, false);
   
   if DataSource.DataSet.Active then
   begin
        PageControl.ActivePage:=TabCadastro;
        Editar(FDiasViajados, false);
        DataSource.DataSet.Edit;
   end;
end;

procedure TFDiasViajados.BtnExcluirClick(Sender: TObject);
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

procedure TFDiasViajados.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     if btnsalvar.enabled then
     begin
          txtsegundaClick(Sender);
          DataSource.DataSet.post;
          (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
          navegar(FDiasViajados);
     end;
end;

procedure TFDiasViajados.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FDiasViajados);
end;

procedure TFDiasViajados.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFDiasViajados.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    with dm.QDiasViajados.sql do
    begin
         clear;
         add('SELECT DIAALUNO,ESTNOME,DIADATA,DIAVAISEGUNDA,DIAVAITERCA,DIAVAIQUARTA,DIAVAIQUINTA,DIAVAISEXTA,');
         add('DIAVIAGEMSEGUNDA,DIAVIAGEMTERCA,DIAVIAGEMQUARTA,DIAVIAGEMQUINTA,DIAVIAGEMSEXTA,');
         add('DIAVALORSEGUNDA,DIAVALORTERCA,DIAVALORQUARTA,DIAVALORQUINTA,DIAVALORSEXTA,DIAVALORTOTAL');
         add('FROM TDIASVIAJADOS INNER JOIN TESTUDANTE ON ESTCOD = DIAALUNO WHERE DIAALUNO <> 0');
         if trim(txtpesquisa.text) <> '' then
         begin
             case rgordem.itemindex of
               0 : add('AND UPPER(ESTNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
               1 : add('AND UPPER(DIAALUNO) LIKE UPPER(' + quotedstr(txtpesquisa.text+ '%') + ')');
             end;
         end;
         if trim(txtfiltroestudante.text) <> '' then
            add('AND DAIALUNO = ' + quotedstr(txtfiltroestudante.text));

         case txtdiadasemana.itemindex of
           1 : add('AND DIAVAISEGUNDA = ''Sim''');
           2 : add('AND DIAVAITERCA = ''Sim''');
           3 : add('AND DIAVAIQUARTA = ''Sim''');
           4 : add('AND DIAVAIQUINTA = ''Sim''');
           5 : add('AND DIAVAISEXTA = ''Sim''');                      
         end;
         
         case rgordem.itemindex of
           0 : add('ORDER BY ESTNOME');
           1 : add('ORDER BY DIAALUNO');
         end;
    end;
    DataSource.DataSet.open;
end;

procedure TFDiasViajados.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFDiasViajados.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFDiasViajados.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFDiasViajados.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFDiasViajados.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
end;

procedure TFDiasViajados.txtcodKeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtcodestudante) or (sender = txtestudante) then
             btnestudante.click;
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

procedure TFDiasViajados.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = 38) and (Sender <> txtdiadasemana) then
    begin
         if (sender = txtpesquisa) and (btnanterior.enabled = true) and (datasource.dataset.active) then
         begin
             btnanterior.Click;
             key := 0;
         end
         else
             Perform (WM_nextDlgCtl,1,0);
    end;
    if (key = 40) and (Sender <> txtdiadasemana) then
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
        if (Sender = txtdiadasemana) then
             btnfiltro.click
        else
        begin
             if (sender as twsedit).enterclicar then
             begin
                  if sender = txtpesquisa then
                      btnfiltro.click;
             end
             else
                 Perform (WM_nextDlgCtl,0,0);
        end;
    end;
    if key = vk_f3 then
    begin
         if sender = txtfiltroestudante then
            btnfiltroestudante.click;
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

procedure TFDiasViajados.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFDiasViajados.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fDiasViajados, not panimpressao.visible);     
end;

procedure TFDiasViajados.btnfiltroestudanteClick(Sender: TObject);
begin
     try
         festudante := tfestudante.create(self);
         usuario('btnconsultar',festudante.wsinformacao.programa);
         dm.cdsestudante.open;
         festudante.showmodal;
         txtfiltroestudante.text := dm.cdsestudanteestcod.asstring;
     finally
         festudante.release;
         festudante := nil;
         festudante.free;
     end;
end;

procedure TFDiasViajados.btnestudanteClick(Sender: TObject);
begin
     try
         festudante := tfestudante.create(self);
         usuario('btnconsultar',festudante.wsinformacao.programa);
         festudante.txtpesquisa.text := txtestudante.text;
         festudante.BtnFiltro.click;
         dm.cdsestudante.open;
         festudante.showmodal;
         dm.CDSDiasViajadosDIAALUNO.asinteger := dm.cdsestudanteestcod.asinteger;
     finally
         festudante.release;
         festudante := nil;
         festudante.free;
     end;
end;

procedure TFDiasViajados.RGOrdemClick(Sender: TObject);
begin
     txtpesquisa.clear;
     btnfiltro.click;
     txtpesquisa.setfocus;
end;

procedure TFDiasViajados.btnsinteticoClick(Sender: TObject);
begin
     BtnFiltroClick(Sender);
     RLReport.PreviewModal;
end;

procedure TFDiasViajados.btnaniversariosClick(Sender: TObject);
begin
     if txtdiadasemana.ItemIndex = 0 then
     begin
          showmessage('Selecione o Dia da Semana!');
          txtdiadasemana.SetFocus;
          exit;
     end;
     BtnFiltroClick(Sender);
     RLReportDiaSemana.PreviewModal;
end;                                                                        

procedure TFDiasViajados.txtsegundaClick(Sender: TObject);
begin
     if DM.CDSDiasViajadosDIAVAISEGUNDA.asstring = 'Não' then
     begin
          DM.CDSDiasViajadosDIAVIAGEMSEGUNDA.asstring := '';
          DM.CDSDiasViajadosDIAVALORSEGUNDA.asfloat := 0;
     end;
     if DM.CDSDiasViajadosDIAVAITERCA.asstring = 'Não' then
     begin
          DM.CDSDiasViajadosDIAVIAGEMTERCA.asstring := '';
          DM.CDSDiasViajadosDIAVALORTERCA.asfloat := 0;
     end;
     if DM.CDSDiasViajadosDIAVAIQUARTA.asstring = 'Não' then
     begin
          DM.CDSDiasViajadosDIAVIAGEMQUARTA.asstring := '';
          DM.CDSDiasViajadosDIAVALORQUARTA.asfloat := 0;
     end;
     if DM.CDSDiasViajadosDIAVAIQUINTA.asstring = 'Não' then
     begin
          DM.CDSDiasViajadosDIAVIAGEMQUINTA.asstring := '';
          DM.CDSDiasViajadosDIAVALORQUINTA.asfloat := 0;
     end;
     if DM.CDSDiasViajadosDIAVAISEXTA.asstring = 'Não' then
     begin
          DM.CDSDiasViajadosDIAVIAGEMSEXTA.asstring := '';
          DM.CDSDiasViajadosDIAVALORSEXTA.asfloat := 0;
     end;
end;

procedure TFDiasViajados.RLLabel17BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
     lbldiadasemana.caption := txtdiadasemana.Text;
     txtviagem.DataField := 'DIAVIAGEM' + txtdiadasemana.Text;
end;

end.
