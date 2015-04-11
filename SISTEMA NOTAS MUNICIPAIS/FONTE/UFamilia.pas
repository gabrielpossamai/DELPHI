unit UFamilia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, Buttons, WSMaskEdit, RLReport, RLRichText, FMTBcd, Provider,
  SqlExpr;

type
  TFFamilia = class(TForm)
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
    WSInformacao: TWSInformacao;
    BtnCancelar: TToolButton;
    BtnSalvar: TToolButton;
    ToolButton4: TToolButton;
    DBGrid: TDBGrid;
    PanPesquisa: TPanel;
    Label4: TLabel;
    txtpesquisa: TWSEdit;
    txtnumero: TWSDBEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label6: TLabel;
    Label7: TLabel;
    txtnomecliente: TWSDBEdit;
    txtfiltrofinal: TWSMaskEdit;
    txtfiltroinicial: TWSMaskEdit;
    WSDBEdit1: TWSDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    WSDBEdit2: TWSDBEdit;
    WSDBEdit3: TWSDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    WSDBEdit4: TWSDBEdit;
    WSDBEdit5: TWSDBEdit;
    Label14: TLabel;
    WSDBEdit7: TWSDBEdit;
    Label16: TLabel;
    WSDBEdit6: TWSDBEdit;
    Label15: TLabel;
    WSDBEdit8: TWSDBEdit;
    Label17: TLabel;
    ToolBarItem: TToolBar;
    btnexcluiritem: TToolButton;
    Label5: TLabel;
    txtrendafin: TWSEdit;
    Label8: TLabel;
    txtrendaini: TWSEdit;
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
    RLBand5: TRLBand;
    RLLabel1: TRLLabel;
    Label9: TLabel;
    WSDBEdit9: TWSDBEdit;
    Label18: TLabel;
    txtlocalidade: TWSEdit;
    Label19: TLabel;
    txtescolaridade: TWSEdit;
    Label20: TLabel;
    txtenergia: TWSEdit;
    Label21: TLabel;
    RLBand8: TRLBand;
    RLLabel24: TRLLabel;
    lbltotalpopulacao: TRLLabel;
    RLDraw4: TRLDraw;
    RLGroup1: TRLGroup;
    RLBand10: TRLBand;
    RLBand12: TRLBand;
    RLBand9: TRLBand;
    RLDBText7: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText13: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText20: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel17: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel5: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel6: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLBand4: TRLBand;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLBand6: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel16: TRLLabel;
    RLBand7: TRLBand;
    RLSystemInfo_TotalFamilia: TRLSystemInfo;
    lbltotalfamilia: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel7: TRLLabel;
    lbltotallocalidade: TRLLabel;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    panimpressao: TPanel;
    Image1: TImage;
    btncomprovante: TSpeedButton;
    btnsintetico: TSpeedButton;
    Label22: TLabel;
    QRelSintetico: TSQLQuery;
    DSPRelSintetico: TDataSetProvider;
    CDSRelSintetico: TClientDataSet;
    QRelSinteticoFANLOCALIDADE: TStringField;
    QRelSinteticoFAMCOD: TIntegerField;
    CDSRelSinteticoFANLOCALIDADE: TStringField;
    CDSRelSinteticoFAMCOD: TIntegerField;
    DSRelSintetico: TDataSource;
    RLReportSint: TRLReport;
    RLBand11: TRLBand;
    RLDBText9: TRLDBText;
    RLDBImage3: TRLDBImage;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLBand13: TRLBand;
    RLDBImage4: TRLDBImage;
    RLDBRichText2: TRLDBRichText;
    RLBand14: TRLBand;
    RLLabel8: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand15: TRLBand;
    RLDBText28: TRLDBText;
    RLLabel18: TRLLabel;
    RLDraw7: TRLDraw;
    RLBand16: TRLBand;
    RLLabel25: TRLLabel;
    RLBand17: TRLBand;
    RLLabel27: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDBResult1: TRLDBResult;
    RLBand18: TRLBand;
    RLLabel39: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel41: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLDBResult2: TRLDBResult;
    QRelSinteticoPESSOAS: TFloatField;
    CDSRelSinteticoPESSOAS: TFloatField;
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
    procedure txtclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtpesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnexcelClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure btnexcluiritemClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLSystemInfo_TotalFamiliaAfterPrint(Sender: TObject);
    procedure RLLabel24BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLLabel7BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure btncomprovanteClick(Sender: TObject);
    procedure btnsinteticoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFamilia: TFFamilia;
  total : double = 0;
  totallocalidade : double = 0;

implementation

uses UDM, UMenu;

{$R *.dfm}

procedure TFFamilia.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFFamilia.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFFamilia.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFFamilia.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFFamilia.btnsairClick(Sender: TObject);
begin
     if DataSource.DataSet.active = false then
        DataSource.DataSet.open;
     close;
end;

procedure TFFamilia.BtnIncluirClick(Sender: TObject);
begin
     mostrarimpressao(ffamilia, false);
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;

     DataSource.DataSet.append;
     PageControl.ActivePage:=TabCadastro;
     Editar(FFamilia, true);
end;

procedure TFFamilia.btnnovopadraoClick(Sender: TObject);
begin
     mostrarimpressao(ffamilia, false);
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FFamilia, true);
     end;
end;

procedure TFFamilia.BtnAlterarClick(Sender: TObject);
begin
     mostrarimpressao(ffamilia, false);
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if DataSource.DataSet.Active then
     begin
          PageControl.ActivePage:=TabCadastro;
          Editar(FFamilia, false);
          DataSource.DataSet.Edit;
     end;
end;

procedure TFFamilia.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);

    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
             DataSource.DataSet.Delete;
            (DataSource.DataSet as TClientDataSet).ApplyUpdates(0);
        end;
end;

procedure TFFamilia.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FFamilia);
end;

procedure TFFamilia.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FFamilia);
end;

procedure TFFamilia.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFFamilia.BtnFiltroClick(Sender: TObject);
begin
    if trim(txtfiltroinicial.text) <> '/  /' then
    begin
       try
           strtodate(txtfiltroinicial.text);
       except
           showmessage('Campo Data Inicial Inválido!');
           txtfiltroinicial.setfocus;
           exit;
       end;
    end;
    if trim(txtfiltrofinal.text) <> '/  /' then
    begin
       try
           strtodate(txtfiltrofinal.text);
       except
           showmessage('Campo Data Final Inválido!');
           txtfiltrofinal.setfocus;
           exit;
       end;
    end;

    if trim(txtrendaini.text) <> '' then
    begin
       try
           StrToFloat(txtrendaini.text);
       except
           showmessage('Campo Renda Inicial Inválido!');
           txtrendaini.setfocus;
           exit;
       end;
    end;
    if trim(txtrendafin.text) <> '' then
    begin
       try
           StrToFloat(txtrendafin.text);
       except
           showmessage('Campo Renda Final Inválido!');
           txtrendafin.setfocus;
           exit;
       end;
    end;

    DataSource.DataSet.close;
    with dm.qfamilia.sql do
    begin
         clear;
         add('select FAMCOD,FAMNOME,FAMNASCIMENTO,FANENDERECO,FANNUMERO,FANLOCALIDADE,');
         add('FANESCOLARIDADE,FANRENDA,FANZONA,FANLATITUDE,FANLONGITUDE,FANENERGIA');
         add('FROM TFAMILIA');
         add('WHERE FAMCOD <> 0');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(FAMNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if (trim(txtenergia.text) <> 'A') and (trim(txtenergia.text) <> '') then
            add('AND UPPER(FANENERGIA) = UPPER(' + quotedstr(txtenergia.text) + ')');
         if trim(txtlocalidade.text) <> '' then
            add('AND UPPER(FAMLOCALIDADE) LIKE UPPER(' + quotedstr('%' + txtlocalidade.text+ '%') + ')');
         if trim(txtescolaridade.text) <> '' then
            add('AND UPPER(FANESCOLARIDADE) LIKE UPPER(' + quotedstr('%' + txtescolaridade.text+ '%') + ')');
         if trim(txtfiltroinicial.text) <> '/  /' then
            add('AND FAMNASCIMENTO >= :DATAINI');
         if trim(txtfiltrofinal.text) <> '/  /' then
            add('AND FAMNASCIMENTO <= :DATAFIN');
         if trim(txtrendaini.text) <> '' then
            add('AND FANRENDA >= ' + buscatroca(txtrendaini.text, ',', '.'));
         if trim(txtrendafin.text) <> '' then
            add('AND FANRENDA <= ' + buscatroca(txtrendafin.text, ',', '.'));
         add('ORDER BY FANLOCALIDADE,FAMNOME');
    end;
    if trim(txtfiltroinicial.text) <> '/  /' then
       dm.QFamilia.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if trim(txtfiltrofinal.text) <> '/  /' then
       dm.QFamilia.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    DataSource.DataSet.open;
end;

procedure TFFamilia.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, DM.DSFamiliaSubordinado);
end;

procedure TFFamilia.btnimportarClick(Sender: TObject);
var
   i : byte;
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);

    if not datasource.dataset.active then
       btnfiltro.click;
    importar(DataSource, Wsinformacao.Tabela);

    dm.cdsnovo.close;
    if dm.OpenDialog.execute then
       dm.cdsnovo.LoadFromFile(dm.opendialog.filename);
    try
        dm.cdsnovo.open;
    except
        showmessage('Problemas ao carregar o arquivo!');
        exit;
    end;
    dm.cdsnovo.first;
    while not dm.cdsnovo.eof do
    begin
         dm.CDSFamilia.locate('FAMCOD', dm.cdsnovo.fields[0].value, []);
         DM.DSFamiliaSubordinado.DataSet.append;
         for i := 0 to dm.cdsnovo.fields.count - 1 do
         begin
             DM.DSFamiliaSubordinado.DataSet.fields[i].value := dm.cdsnovo.fields[i].value;
         end;
         DM.DSFamiliaSubordinado.DataSet.post;
         (DM.DSFamiliaSubordinado.dataset as tclientdataset).applyupdates(0);
         dm.cdsnovo.next;
    end;
    dm.cdsnovo.close;
end;

procedure TFFamilia.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFFamilia.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFFamilia.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFFamilia.txtclienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TFFamilia.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
                 btnfiltro.click
             else
                 Perform (WM_nextDlgCtl,0,0);
         end
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

procedure TFFamilia.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFFamilia.BtnImprimirClick(Sender: TObject);
begin
     mostrarimpressao(ffamilia, not panimpressao.visible);
     usuario((sender as TToolButton).name, wsinformacao.programa);
end;

procedure TFFamilia.btnexcluiritemClick(Sender: TObject);
begin
    if (dm.CDSFamiliaSubordinado.Active = true) then
      if (dm.CDSFamiliaSubordinado.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            try
                dm.CDSFamiliaSubordinado.Delete;
                dm.CDSFamiliaSubordinado.ApplyUpdates(0);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFFamilia.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key = VK_F12) and (btnSalvar.enabled = true) then
        btnsalvar.Click;
    if (key=27) and (btnSair.Enabled = True) then
        btnSair.Click;
    if (key=27) and (btncancelar.enabled = true) then
        btncancelar.click;

end;

procedure TFFamilia.RLSystemInfo_TotalFamiliaAfterPrint(Sender: TObject);
var
     valor : integer;
begin
     valor := StrToInt(RLSystemInfo_TotalFamilia.Caption) + 1;
     lbltotalfamilia.Caption := FOrmatFloat('00', valor);
     totallocalidade := totallocalidade + valor;
     total := total + valor;
end;

procedure TFFamilia.RLLabel24BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
     lbltotalpopulacao.caption := formatfloat('00', total);
     total := 0;
end;

procedure TFFamilia.RLLabel7BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
     lbltotallocalidade.caption := formatfloat('00', totallocalidade);
     totallocalidade := 0;
end;

procedure TFFamilia.btncomprovanteClick(Sender: TObject);
begin
     total := 0;
     totallocalidade := 0;
     RLReport.PreviewModal;
end;

procedure TFFamilia.btnsinteticoClick(Sender: TObject);
begin
    if trim(txtfiltroinicial.text) <> '/  /' then
    begin
       try
           strtodate(txtfiltroinicial.text);
       except
           showmessage('Campo Data Inicial Inválido!');
           txtfiltroinicial.setfocus;
           exit;
       end;
    end;
    if trim(txtfiltrofinal.text) <> '/  /' then
    begin
       try
           strtodate(txtfiltrofinal.text);
       except
           showmessage('Campo Data Final Inválido!');
           txtfiltrofinal.setfocus;
           exit;
       end;
    end;

    if trim(txtrendaini.text) <> '' then
    begin
       try
           StrToFloat(txtrendaini.text);
       except
           showmessage('Campo Renda Inicial Inválido!');
           txtrendaini.setfocus;
           exit;
       end;
    end;
    if trim(txtrendafin.text) <> '' then
    begin
       try
           StrToFloat(txtrendafin.text);
       except
           showmessage('Campo Renda Final Inválido!');
           txtrendafin.setfocus;
           exit;
       end;
    end;

    DSRelSintetico.DataSet.close;
    with QRelSintetico.sql do
    begin
         clear;
         add('select tfamilia.fanlocalidade, tfamilia.famcod, cast(count(tfamiliasubordinado.famsubcod) + 1 as double precision) as pessoas');
         add('from tfamilia left outer join tfamiliasubordinado on tfamilia.famcod = tfamiliasubordinado.famsubfamilia');
         add('WHERE FAMCOD <> 0');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(FAMNOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if (trim(txtenergia.text) <> 'A') and (trim(txtenergia.text) <> '') then
            add('AND UPPER(FANENERGIA) = UPPER(' + quotedstr(txtenergia.text) + ')');
         if trim(txtlocalidade.text) <> '' then
            add('AND UPPER(FAMLOCALIDADE) LIKE UPPER(' + quotedstr('%' + txtlocalidade.text+ '%') + ')');
         if trim(txtescolaridade.text) <> '' then
            add('AND UPPER(FANESCOLARIDADE) LIKE UPPER(' + quotedstr('%' + txtescolaridade.text+ '%') + ')');
         if trim(txtfiltroinicial.text) <> '/  /' then
            add('AND FAMNASCIMENTO >= :DATAINI');
         if trim(txtfiltrofinal.text) <> '/  /' then
            add('AND FAMNASCIMENTO <= :DATAFIN');
         if trim(txtrendaini.text) <> '' then
            add('AND FANRENDA >= ' + buscatroca(txtrendaini.text, ',', '.'));
         if trim(txtrendafin.text) <> '' then
            add('AND FANRENDA <= ' + buscatroca(txtrendafin.text, ',', '.'));
         add('group by tfamilia.fanlocalidade, tfamilia.famcod');
         add('order by tfamilia.fanlocalidade, tfamilia.famcod');         
    end;
    if trim(txtfiltroinicial.text) <> '/  /' then
       QRelSintetico.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if trim(txtfiltrofinal.text) <> '/  /' then
       QRelSintetico.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    DSRelSintetico.DataSet.open;
     RLReportSint.PreviewModal;
    DSRelSintetico.DataSet.close;
end;

end.
