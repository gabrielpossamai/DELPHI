unit UContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  WSDBComboBox, dateutils, FMTBcd, SqlExpr, Buttons, RXCtrls, WSMaskEdit,
  RLReport, RLRichText;

type
  TFContrato = class(TForm)
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
    txtnumero: TWSDBEdit;
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
    Label5: TLabel;
    Label6: TLabel;
    txtcodlocador: TWSDBEdit;
    Label7: TLabel;
    txtlocador: TWSDBEdit;
    txtfiltrolocador: TWSEdit;
    Label9: TLabel;
    txtfiltrosituacao: TWSEdit;
    Label10: TLabel;
    Label11: TLabel;
    txtcodlocatario: TWSDBEdit;
    Label8: TLabel;
    txtlocatario: TWSDBEdit;
    WSDBEdit6: TWSDBEdit;
    Label12: TLabel;
    WSDBEdit8: TWSDBEdit;
    Label14: TLabel;
    WSDBEdit9: TWSDBEdit;
    Label15: TLabel;
    WSDBEdit10: TWSDBEdit;
    Label16: TLabel;
    ToolBarItem: TToolBar;
    btnsalvaritem: TToolButton;
    btnexcluiritem: TToolButton;
    QContrato: TSQLQuery;
    DBGridVcto: TDBGrid;
    btnmostrar: TToolButton;
    btnlocador: TRxSpeedButton;
    btnlocatario: TRxSpeedButton;
    btnfiltroLocador: TRxSpeedButton;
    Label19: TLabel;
    txtfiltro: TComboBox;
    Shape1: TShape;
    panimpressao: TPanel;
    Image1: TImage;
    btncontratolocador: TSpeedButton;
    btnanual: TSpeedButton;
    Label20: TLabel;
    QContratoTOTAL: TFloatField;
    QSituacao: TSQLQuery;
    QSituacaoCONTA: TIntegerField;
    Label21: TLabel;
    WSDBEdit4: TWSDBEdit;
    txtfiltroinicial: TWSMaskEdit;
    txtfiltrofinal: TWSMaskEdit;
    Label18: TLabel;
    btnimovel: TRxSpeedButton;
    txtcodimovel: TWSDBEdit;
    txtimovel: TWSDBEdit;
    WSDBEdit1: TWSDBEdit;
    Label17: TLabel;
    Label22: TLabel;
    Label13: TLabel;
    txtcpffiador: TWSDBEdit;
    txtnomefiador: TWSDBEdit;
    WSDBEdit5: TWSDBEdit;
    Label23: TLabel;
    DBText1: TDBText;
    Label24: TLabel;
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
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel6: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLLabel13: TRLLabel;
    Label25: TLabel;
    WSDBEdit7: TWSDBEdit;
    MemoLocador: TMemo;
    btncontratocomfiador: TSpeedButton;
    btncontratosemfiador: TSpeedButton;
    MemoComFiador: TMemo;
    Label26: TLabel;
    WSDBEdit11: TWSDBEdit;
    MemoSemFiador: TMemo;
    btnrecibo: TToolButton;
    RLReportRecibo: TRLReport;
    RLBand9: TRLBand;
    RLDBText36: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
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
    lblmes: TRLLabel;
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
    procedure btnexcluiritemClick(Sender: TObject);
    procedure btnsalvaritemClick(Sender: TObject);
    procedure btnmostrarClick(Sender: TObject);
    procedure btnlocadorClick(Sender: TObject);
    procedure btnlocatarioClick(Sender: TObject);
    procedure btnfiltroLocadorClick(Sender: TObject);
    procedure DBGridVctoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnanualClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure WSDBEdit6Exit(Sender: TObject);
    procedure btnimovelClick(Sender: TObject);
    procedure btncontratolocadorClick(Sender: TObject);
    procedure btncontratocomfiadorClick(Sender: TObject);
    procedure btncontratosemfiadorClick(Sender: TObject);
    procedure btnreciboClick(Sender: TObject);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure atualizacontrato;
  end;

var
  FContrato: TFContrato;

implementation

uses UDM, UMenu, UCliente, UImovel, UContratoRel;

{$R *.dfm}

procedure TFContrato.atualizacontrato;
begin
     qcontrato.close;
     qcontrato.params[0].asinteger := dm.CDSContratoCONCOD.asinteger;
     qcontrato.open;

     if dm.cdscontrato.state in [dsedit,dsinsert] then
     begin
          dm.CDSContratoCONVALORPAGO.asfloat := qcontratototal.asfloat;
          dm.CDSContratoCONLIQUIDO.asfloat := dm.CDSContratototal.asfloat;
     end
     else
     begin
          dm.CDSContRato.edit;
          dm.CDSContratoCONVALORPAGO.asfloat := qcontratototal.asfloat;
          dm.CDSContratoCONLIQUIDO.asfloat := dm.CDSContratototal.asfloat;
          dm.CDSContrato.post;
          dm.CDSContrato.applyupdates(0);
     end;

     QSituacao.close;
     QSituacao.params[0].asinteger := dm.CDSContratoCONCOD.asinteger;
     QSituacao.open;
     if dm.cdscontrato.state in [dsedit,dsinsert] then
     begin
          if QSituacaoCONTA.asinteger = 0 then
              dm.CDSContratoCONSITUACAO.asstring := 'Fechado'
          else
              dm.CDSContratoCONSITUACAO.asstring := 'Aberto';
     end
     else
     begin
          dm.CDSContrato.edit;
          if QSituacaoCONTA.asinteger = 0 then
              dm.CDSContratoCONSITUACAO.asstring := 'Fechado'
          else
              dm.CDSContratoCONSITUACAO.asstring := 'Aberto';
          dm.CDSContrato.post;
          dm.CDSContrato.applyupdates(0);
     end;
     QSituacao.close;
     qcontrato.close;
end;

procedure TFContrato.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFContrato.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFContrato.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFContrato.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFContrato.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFContrato.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fcontrato, false);
     
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FContrato, true);
     DataSource.DataSet.append;
end;

procedure TFContrato.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fcontrato, false);
     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FContrato, true);
     end;
end;

procedure TFContrato.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
   mostrarimpressao(fcontrato, false);


   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.Edit;
     Editar(FContrato, false);     
   end;
end;

procedure TFContrato.BtnExcluirClick(Sender: TObject);
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

procedure TFContrato.BtnSalvarClick(Sender: TObject);
begin
     if DM.CDSItemContrato.state = dsedit then
          DM.CDSItemContrato.post;
     if DM.CDSItemContrato.state = dsinsert then
          DM.CDSItemContrato.cancel;
     DM.CDSItemContrato.applyupdates(0);
     ToolBarNavegacao.SetFocus;
     dm.CDSContratoCONLIQUIDO.asfloat := dm.cdscontratototal.asfloat;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FContrato);
end;

procedure TFContrato.BtnCancelarClick(Sender: TObject);
begin

     DataSource.DataSet.Cancel;
     Navegar(FContrato);
end;

procedure TFContrato.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFContrato.BtnFiltroClick(Sender: TObject);
begin
    if (txtfiltroinicial.text <> '  /  /    ') or (txtfiltrofinal.text <> '  /  /    ') then
    begin
       try
           strtodate(txtfiltroinicial.text);
       except
           showmessage('Campo Data Inicial Inválido!');
           txtfiltroinicial.setfocus;
           exit;
       end;
       try
           strtodate(txtfiltrofinal.text);
       except
           showmessage('Campo Data Final Inválido!');
           txtfiltrofinal.setfocus;
           exit;
       end;
    end;
    if trim(txtfiltrolocador.text) <> '' then
    begin
       try
           strtoint(txtfiltrolocador.text);
       except
           showmessage('Campo Locator Inválido!');
           txtfiltrolocador.setfocus;
           exit;
       end;
    end;
    if (trim(txtfiltrosituacao.text) <> 'A') and (trim(txtfiltrosituacao.text) <> 'F') and (trim(txtfiltrosituacao.text) <> '') then
    begin
        showmessage('Campo Situação Inválido!');
        txtfiltrosituacao.setfocus;
        exit;
    end;
    DataSource.DataSet.close;
    with dm.qcontrato.sql do
    begin
         clear;
         add('select CONCOD,CONLOCADOR,CONLOCATARIO,CONIMOVEL,CONINICIO,CONFIM,CONESPECIE,CONFIADORNOME, CONFIADORCPF,');
         add('CONVALOR,CONOUTROS,CONENTRADA,CONLIQUIDO,CONFIADO,CONOBS,CONSITUACAO,CONVALORPAGO,CONCOMISSAO,CONTIPO,');
         add('LOCATARIO.CLINOME AS LOCATARIO, LOCATARIO.CLICPF AS LOCATARIO_CPF, ');
         add('LOCADOR.CLINOME AS LOCADOR, LOCADOR.CLICPF AS LOCADOR_CPF,');
         add('IMOENDERECO, IMOBAIRRO, IMONUMERO, IMOCEP, CIDNOME');
         add('FROM TCONTRATO');
         add('  LEFT OUTER JOIN TCLIENTE LOCATARIO ON LOCATARIO.CLICOD = CONLOCATARIO');
         add('  LEFT OUTER JOIN TCLIENTE LOCADOR ON LOCADOR.CLICOD = CONLOCADOR,');
         add('TIMOVEL');
         add('  LEFT OUTER JOIN TCIDADE ON TIMOVEL.IMOCIDADE = CIDCOD');
         add('WHERE IMOCOD = CONIMOVEL');
         if trim(txtpesquisa.text) <> '' then
         begin
              case txtfiltro.itemindex of
                 0 : add('AND UPPER(LOCATARIO.CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
                 1 : add('AND UPPER(LOCATARIO.CLINOME) LIKE UPPER(' + quotedstr(txtpesquisa.text+ '%') + ')');
                 2 : add('AND UPPER(LOCATARIO.CLINOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text) + ')');
              end;
         end;
         if (txtfiltroinicial.text <> '  /  /    ') or (txtfiltrofinal.text <> '  /  /    ') then
         begin
              add('AND CONINICIO BETWEEN :DATAINIINI AND :DATAINIFIM');
              add('AND CONFIM BETWEEN :DATAFIMINI AND :DATAFIMFIM');
         end;
         if trim(txtfiltrolocador.text) <> '' then
            add('AND CONLOCADOR = ' + quotedstr(txtfiltrolocador.text));
         if trim(txtfiltrosituacao.text) = 'A' then
            add('AND UPPER(CONSITUACAO) = ' + quotedstr('ABERTO'));
         if trim(txtfiltrosituacao.text) = 'F' then
            add('AND UPPER(CONSITUACAO) = ' + quotedstr('FECHADO'));
         add('ORDER BY CONCOD');
    end;
    if (txtfiltroinicial.text <> '  /  /    ') or (txtfiltrofinal.text <> '  /  /    ') then
    begin
         dm.qcontrato.parambyname('DATAINIINI').asdate := strtodate(txtfiltroinicial.text);
         dm.qcontrato.parambyname('DATAINIFIM').asdate := strtodate(txtfiltrofinal.text);
         dm.qcontrato.parambyname('DATAFIMINI').asdate := strtodate(txtfiltroinicial.text);
         dm.qcontrato.parambyname('DATAFIMFIM').asdate := strtodate(txtfiltrofinal.text);
    end;
    DataSource.DataSet.open;
end;

procedure TFContrato.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFContrato.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
          btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFContrato.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFContrato.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFContrato.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
end;

procedure TFContrato.txtnumeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   passar : boolean;
begin
    if (key = 27) and (btncancelar.enabled = true) then
        btncancelar.click;
    if (Key = VK_F12) and (btnSalvar.enabled = true) then
        btnsalvar.Click;

    if (key = vk_f3) then
    begin
         if (sender = txtcodlocador) or (sender = txtlocador) then
            btnlocador.click;
         if (sender = txtcodlocatario) or (sender = txtlocatario) then
            btnlocatario.click;
         if (sender = txtcodimovel) or (sender = txtimovel) then
            btnimovel.click;
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
        if sender is TWSDBComboBox then
        begin
            with sender as TWSDBComboBox do
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

procedure TFContrato.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = 38) and (not (sender is tcombobox)) then
    begin
         if (sender = txtpesquisa) and (btnanterior.enabled = true) and (datasource.dataset.active) then
         begin
             btnanterior.Click;
             key := 0;
         end
         else
             Perform (WM_nextDlgCtl,1,0);
    end;
    if (key = 40) and (not (sender is tcombobox)) then
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
                btnfiltro.click
            else
                Perform (WM_nextDlgCtl,0,0);
         end
         else
            Perform (WM_nextDlgCtl,0,0);         
    end;
    if key = vk_f3 then
    begin
       if sender = txtfiltrolocador then
          btnfiltrolocador.click;
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

procedure TFContrato.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFContrato.btnexcluiritemClick(Sender: TObject);
begin
    if (dm.CDSItemContrato.Active = true) then
      if (dm.CDSItemContrato.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                dm.CDSItemContrato.Delete;
                dm.CDSItemContrato.ApplyUpdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
     atualizacontrato;
end;

procedure TFContrato.btnsalvaritemClick(Sender: TObject);
begin
    if (dm.CDSItemContrato.Active = true) then
      if (dm.CDSItemContrato.RecordCount > 0) then
      begin
           dm.CDSItemContrato.edit;
           if dm.CDSItemContratoITEVALORPAGO.AsFloat = 0 then
           begin
              dm.CDSItemContratoITEPGTO.asdatetime := date;
              dm.CDSItemContratoITEVALORPAGO.asfloat := dm.CDSItemContratoITEVALOR.asfloat;
           end
           else
           begin
              dm.CDSItemContratoITEPGTO.clear;
              dm.CDSItemContratoITEVALORPAGO.asfloat := 0;
           end;
           dm.CDSItemContrato.post;
           dm.CDSItemContrato.applyupdates(0);
      end;
      atualizacontrato;
end;

procedure TFContrato.btnmostrarClick(Sender: TObject);
begin
     DBGridVcto.visible := not DBGridVcto.visible;
     btnsalvaritem.enabled := DBGridVcto.visible;
     btnexcluiritem.enabled := DBGridVcto.visible;
end;

procedure TFContrato.btnlocadorClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         fcliente.txtpesquisa.text := txtlocador.text;
         fcliente.BtnFiltro.click;
         fcliente.showmodal;
         dm.CDSContratoCONLOCADOR.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

procedure TFContrato.btnlocatarioClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         fcliente.txtpesquisa.text := txtlocatario.text;
         fcliente.BtnFiltro.click;
         fcliente.showmodal;
         dm.CDSContratoCONLOCATARIO.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

procedure TFContrato.btnfiltroLocadorClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         dm.cdscliente.open;
         fcliente.showmodal;
         txtfiltrolocador.text := dm.cdsclienteclicod.asstring;
     finally
         fcliente.release;
         fcliente := nil;
         fcliente.free;
     end;
end;

procedure TFContrato.DBGridVctoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key=vk_insert) and (btnIncluir.Enabled = True) then
        btnIncluir.Click;
    if (key=vk_f11) and (btnnovopadrao.Enabled = True) then
        btnnovopadrao.Click;
    if (key=vk_f10) and (btnAlterar.Enabled = True) then
        btnAlterar.Click;
    if tbKeyIsDown(VK_CONTROL) then
       if (key=vk_delete) and (btnexcluiritem.Enabled = True) then
           btnexcluiritem.Click;
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

procedure TFContrato.btnanualClick(Sender: TObject);
begin
     RLReport.PreviewModal;
end;

procedure TFContrato.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     PageControl.ActivePageIndex := 0;
     mostrarimpressao(fcontrato, not panimpressao.visible);
end;

procedure TFContrato.WSDBEdit6Exit(Sender: TObject);
var
     texto : string;
     data : tdate;
begin
     texto := 'Gerar o Parcelamento?';
     if DM.CDSItemContrato.recordcount > 0 then
     begin
          texto := 'Regerar o Parcelamento? Atenção: as parcelas serão todas geradas novamente!';
     end;
     if application.messagebox (pchar(texto), 'Atenção', mb_yesno +  MB_ICONQUESTION ) = mryes then
     begin
          DM.CDSContrato.post;
          DM.CDSContrato.applyupdates(0);
          DM.CDSContrato.edit;
          while DM.CDSItemContrato.recordcount > 0 do
          begin
                DM.CDSItemContrato.delete;
                DM.CDSItemContrato.applyupdates(0);
          end;
          data := dm.CDSContratoCONINICIO.asdatetime;
          while data <= dm.CDSContratoCONFIM.asdatetime do
          begin
               data := incmonth(data);          
               DM.CDSItemContrato.append;
               DM.CDSItemContratoITECONTRATO.asinteger := dm.CDSContratoCONCOD.asinteger;
               DM.CDSItemContratoITEVCTO.asdatetime := data;
               DM.CDSItemContratoITEVALOR.asfloat := (dm.CDSContratoCONVALOR.asfloat + dm.CDSContratoCONOUTROS.asfloat - dm.CDSContratoCONENTRADA.asfloat) / (MonthsBetween(dm.CDSContratoCONINICIO.asdatetime, dm.CDSContratoCONFIM.asdatetime) + 2);
               DM.CDSItemContratoITECONALUGUEL.asfloat := dm.CDSItemContratoITEVALOR.asfloat;
               dm.CDSItemContratoITEVALORPAGO.asfloat := 0;
               DM.CDSItemContrato.post;
               DM.CDSItemContrato.applyupdates(0);
          end;
     end;

end;

procedure TFContrato.btnimovelClick(Sender: TObject);
begin
     try
         fimovel := tfimovel.create(self);
         fimovel.txtpesquisa.text := txtimovel.text;
         fimovel.BtnFiltro.click;
         fimovel.showmodal;
         dm.CDSContratoCONIMOVEL.asinteger := dm.CDSImovelIMOCOD.asinteger;
     finally
         fimovel.release;
         fimovel := nil;
         fimovel.free;
     end;
end;

procedure TFContrato.btncontratolocadorClick(Sender: TObject);
begin

     memolocador.Lines.Text := BuscaTroca(memolocador.Lines.Text, ':nomeempresa', dm.CDSParamEmpEMPNOME.asstring);
     memolocador.Lines.Text := BuscaTroca(memolocador.Lines.Text, ':enderecoempresa', dm.CDSParamEmpEMPENDERECO.asstring + ', ' +
                                                                            dm.CDSParamEmpEMPBAIRRO.asstring + ', ' +
                                                                            dm.CDSParamEmpEMPNUMERO.asstring + ', ' +
                                                                            dm.CDSParamEmpCidade.asstring);

     memolocador.Lines.Text := BuscaTroca(memolocador.Lines.Text, ':cnpjempresa', dm.CDSParamEmpEMPCPFCNPJ.asstring);
     memolocador.Lines.Text := BuscaTroca(memolocador.Lines.Text, ':cidadeempresa', dm.CDSParamEmpCidade.asstring);
     memolocador.Lines.Text := BuscaTroca(memolocador.Lines.Text, ':emailempresa', dm.CDSParamEmpEMPEMAIL.asstring);
     memolocador.Lines.Text := BuscaTroca(memolocador.Lines.Text, ':foneempresa', dm.CDSParamEmpEMPTELEFONE.asstring);

     dm.cdscliente.Locate('CLICOD', dm.CDSContratoCONLOCADOR.asinteger, []);
     memolocador.Lines.Text := BuscaTroca(memolocador.Lines.Text, ':nomelocador', dm.CDSClienteCLINOME.displaytext);
     memolocador.Lines.Text := BuscaTroca(memolocador.Lines.Text, ':cpflocador', dm.CDSClienteCLICPF.asstring);
     memolocador.Lines.Text := BuscaTroca(memolocador.Lines.Text, ':rglocador', dm.CDSClienteCLIIDENTIDADE.asstring);

     memolocador.Lines.Text := BuscaTroca(memolocador.Lines.Text, ':imovel', dm.CDSContratoimovel.asstring);
     memolocador.Lines.Text := BuscaTroca(memolocador.Lines.Text, ':data', dm.CDSContratoCONINICIO.asstring);

     if dm.SaveDialogHTML.execute then
     begin
          memolocador.lines.SaveToFile(dm.SaveDialogHTML.FileName);
          ShellExecute(GetDesktopWindow, 'open', PChar(dm.SaveDialogHTML.FileName),'', '', SW_SHOWDEFAULT);
     end;


end;

procedure TFContrato.btncontratocomfiadorClick(Sender: TObject);
begin
     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':empresa', dm.CDSParamEmpEMPNOME.asstring);
     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':enderecoempresa', dm.CDSParamEmpEMPENDERECO.asstring + ', ' +
                                                                            dm.CDSParamEmpEMPBAIRRO.asstring + ', ' +
                                                                            dm.CDSParamEmpEMPNUMERO.asstring + ', ' +
                                                                            dm.CDSParamEmpCidade.asstring);

     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':cgcempresa', dm.CDSParamEmpEMPCPFCNPJ.asstring);
     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':cidadeempresa', dm.CDSParamEmpCidade.asstring);

     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':dataini', dm.CDSContratoCONINICIO.asstring);
     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':datafim', dm.CDSContratoCONFIM.asstring);

     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':locatario', dm.CDSContratolocatario.asstring);
     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':locador', dm.CDSContratolocador.asstring);
     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':imovel', dm.CDSContratoimovel.asstring);

     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':valor', dm.CDSContratoCONVALOR.displaytext);
     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':extenso', extenso(dm.CDSContratoCONVALOR.asfloat));

     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':fiador', dm.CDSContratoCONFIADORNOME.asstring);
     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':tipoaluguel', dm.CDSContratocontipo.asstring);
     memocomfiador.Lines.Text := BuscaTroca(memocomfiador.Lines.Text, ':data', datetostr(date));

     if dm.SaveDialogHTML.execute then
     begin
          memocomfiador.lines.SaveToFile(dm.SaveDialogHTML.FileName);
          ShellExecute(GetDesktopWindow, 'open', PChar(dm.SaveDialogHTML.FileName),'', '', SW_SHOWDEFAULT);
     end;
end;

procedure TFContrato.btncontratosemfiadorClick(Sender: TObject);
begin
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':empresa', dm.CDSParamEmpEMPNOME.asstring);
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':enderecoempresa', dm.CDSParamEmpEMPENDERECO.asstring + ', ' +
                                                                            dm.CDSParamEmpEMPBAIRRO.asstring + ', ' +
                                                                            dm.CDSParamEmpEMPNUMERO.asstring + ', ' +
                                                                            dm.CDSParamEmpCidade.asstring);
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':cidadeempresa', dm.CDSParamEmpCidade.asstring);
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':cgcempresa', dm.CDSParamEmpEMPCPFCNPJ.asstring);

     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':locador', dm.CDSContratolocador.asstring);
     dm.cdscliente.Locate('CLICOD', dm.CDSContratoCONLOCADOR.asinteger,[]);
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':cidadelocador', dm.CDSClienteCidade.asstring);

     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':locatario', dm.CDSContratolocatario.asstring);
     dm.cdscliente.Locate('CLICOD', dm.CDSContratoCONLOCADOR.asinteger,[]);
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':cpflocatario', dm.CDSContratoLOCATARIO_CPF.asstring);
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':rglocatario', dm.CDSClienteCLIIDENTIDADE.asstring);
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':enderecolocatario', dm.CDSClienteCLIENDERECO.asstring + ', ' +
                                                                                            dm.CDSClienteCLIBAIRRO.asstring + ', ' +
                                                                                            dm.CDSClienteCLINUMERO.AsString + ', ' +
                                                                                            dm.CDSClienteCidade.asstring);

     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':imovel', dm.CDSContratoimovel.asstring);
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':dataini', dm.CDSContratoCONINICIO.asstring);
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':datafim', dm.CDSContratoCONFIM.asstring);
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':valor', dm.CDSContratoCONVALOR.displaytext);
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':extenso', extenso(dm.CDSContratoCONVALOR.asfloat));
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':tipoaluguel', dm.CDSContratocontipo.asstring);
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':data', datetostr(date));
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':entrada', dm.CDSContratoCONENTRADA.displaytext);
     memosemfiador.Lines.Text := BuscaTroca(memosemfiador.Lines.Text, ':extensentrada', extenso(dm.CDSContratoCONENTRADA.asfloat));

     if dm.SaveDialogHTML.execute then
     begin
          memosemfiador.lines.SaveToFile(dm.SaveDialogHTML.FileName);
          ShellExecute(GetDesktopWindow, 'open', PChar(dm.SaveDialogHTML.FileName),'', '', SW_SHOWDEFAULT);
     end;

end;

procedure TFContrato.btnreciboClick(Sender: TObject);
begin
     dm.cdscontrato.Filter := 'CONCOD = ' + txtnumero.text;
     dm.cdscontrato.Filtered := true;
     rlreportrecibo.PreviewModal;
     dm.cdscontrato.Filtered := false;     
end;

procedure TFContrato.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
     lblmes.caption := FormatDateTime('mmmm', dm.CDSItemContratoITEVCTO.asdatetime);
end;

end.

