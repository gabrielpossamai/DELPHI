unit UCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, FMTBcd, Provider, SqlExpr, WSMaskEdit, RxCalc;

type
  TFCaixa = class(TForm)
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
    txtentrada: TWSDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    txtsaida: TWSDBEdit;
    txtcodgrupocaixa: TWSDBEdit;
    Label7: TLabel;
    txtgrupocaixa: TWSDBEdit;
    btngrupo: TRxSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    txtfiltrogrupocaixa: TWSEdit;
    btnfiltrogrupocaixa: TRxSpeedButton;
    Label10: TLabel;
    QSaldoAnt: TSQLQuery;
    QSaldoAntSUM: TFMTBCDField;
    DSPSaldoAnt: TDataSetProvider;
    CDSSaldoAnt: TClientDataSet;
    CDSSaldoAntSUM: TFMTBCDField;
    txtfiltroinicial: TWSMaskEdit;
    txtfiltrofinal: TWSMaskEdit;
    txtbaixado: TWSDBEdit;
    Label11: TLabel;
    RGBaixados: TRadioGroup;
    RxCalculator: TRxCalculator;
    btnCalculadoraEntrada: TRxSpeedButton;
    btnCalculadoraSaida: TRxSpeedButton;
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
    procedure btngrupoClick(Sender: TObject);
    procedure btnfiltrogrupocaixaClick(Sender: TObject);
    procedure txtfiltrogrupocaixaExit(Sender: TObject);
    procedure RGBaixadosClick(Sender: TObject);
    procedure btnCalculadoraEntradaClick(Sender: TObject);
    procedure btnCalculadoraSaidaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCaixa: TFCaixa;

implementation

uses UDM, UMenu, UCaixaRel, UGrupoCaixa;

{$R *.dfm}

procedure TFCaixa.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFCaixa.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFCaixa.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFCaixa.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFCaixa.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFCaixa.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FCaixa, true);
     DataSource.DataSet.append;
end;

procedure TFCaixa.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FCaixa, true);
     end;
end;

procedure TFCaixa.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);

   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     Editar(FCaixa, false);
     DataSource.DataSet.Edit;
   end;
end;

procedure TFCaixa.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);
   
    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
             if executasqlretorno('SELECT COMLCTOCAIXA FROM TCOMPRA WHERE COMLCTOCAIXA = ' + txtnumero.text) <> '' then
             begin
                  showmessage('Impossível excluir, lançamento vinculado a uma compra!');
                  txtpesquisa.setfocus;
                  exit;
             end;
             if executasqlretorno('SELECT VENLCTOCAIXA FROM TVENDA WHERE VENLCTOCAIXA = ' + txtnumero.text) <> '' then
             begin
                  showmessage('Impossível excluir, lançamento vinculado a uma venda!');
                  txtpesquisa.setfocus;
                  exit;
             end;
             if executasqlretorno('SELECT ITELCTOCAIXA FROM TITEMFACTORYDOCTO WHERE ITELCTOCAIXA = ' + txtnumero.text) <> '' then
             begin
                  showmessage('Impossível excluir, lançamento vinculado a uma lançamento do factory!');
                  txtpesquisa.setfocus;
                  exit;
             end;
             if executasqlretorno('SELECT ITELCTOCAIXA FROM TITEMCONTPAG WHERE ITELCTOCAIXA = ' + txtnumero.text) <> '' then
             begin
                  showmessage('Impossível excluir, lançamento vinculado a um lançamento do contas a pagar!');
                  txtpesquisa.setfocus;
                  exit;
             end;
             if executasqlretorno('SELECT ITELCTOCAIXA FROM TITEMCONTREC WHERE ITELCTOCAIXA = ' + txtnumero.text) <> '' then
             begin
                  showmessage('Impossível excluir, lançamento vinculado a um lançamento do contas a receber!');
                  txtpesquisa.setfocus;
                  exit;
             end;
             if executasqlretorno('SELECT OUTLCTOCAIXA FROM TOUTRASAIDA WHERE OUTLCTOCAIXA = ' + txtnumero.text) <> '' then
             begin
                  showmessage('Impossível excluir, lançamento vinculado a uma outra saída!');
                  txtpesquisa.setfocus;
                  exit;
             end;

             DataSource.DataSet.Delete;
             (datasource.dataset as TClientDataSet).applyupdates(-1);
        end;
end;

procedure TFCaixa.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     {if (txtbaixado.text <> 'S') and (txtbaixado.text <> 'N') then
     begin
          showmessage('');
          asd
     end;}
     DataSource.DataSet.post;
     (datasource.dataset as TClientDataSet).ApplyUpdates(-1);
     navegar(FCaixa);
end;

procedure TFCaixa.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FCaixa);
end;

procedure TFCaixa.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFCaixa.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    if txtfiltroinicial.text <> '  /  /    ' then
    begin
       try
           strtodate(txtfiltroinicial.text);
       except
           showmessage('Campo Data Inicial Inválido!');
           txtfiltroinicial.setfocus;
           exit;
       end;
    end;
    if txtfiltrofinal.text <> '  /  /    ' then
    begin
       try
           strtodate(txtfiltrofinal.text);
       except
           showmessage('Campo Data Final Inválido!');
           txtfiltrofinal.setfocus;
           exit;
       end;
    end;

    execsql('UPDATE TCAIXA SET CAIENTRADA = 0 WHERE CAIENTRADA IS NULL');
    execsql('UPDATE TCAIXA SET CAISAIDA = 0 WHERE CAISAIDA IS NULL');

    dm.cdscaixa.close;
    with dm.qcaixa.sql do
    begin
         clear;
         add('SELECT CAINUMERO, CAIDATA, CAIHISTORICO, CAIENTRADA, CAISAIDA, CAIGRUPO, GRUCAINOME, CAIBAIXADO');
         add('FROM TCAIXA LEFT OUTER JOIN TGRUPOCAIXA ON CAIGRUPO = GRUCAICOD');
         add('WHERE CAINUMERO <> 0');
         if trim(txtpesquisa.text) <> '' then
            add('AND UPPER(CAINUMERO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         if trim(txtfiltrogrupocaixa.text) <> '' then
            add('AND CAIGRUPO = ' + txtfiltrogrupocaixa.text);
         if txtfiltroinicial.text <> '  /  /    ' then
            add('AND CAIDATA >= :DATAINI');
         if txtfiltrofinal.text <> '  /  /    ' then
            add('AND CAIDATA <= :DATAFIN');
         case RGBaixados.itemindex of
            0 : add('AND CAIBAIXADO = ' + quotedstr('S'));
            1 : add('AND CAIBAIXADO = ' + quotedstr('N'));
         end;
         add('ORDER BY CAIDATA, CAINUMERO')
    end;
    if txtfiltroinicial.text <> '  /  /    ' then
       dm.qcaixa.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if txtfiltrofinal.text <> '  /  /    ' then
       dm.qcaixa.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    DataSource.DataSet.open;
end;

procedure TFCaixa.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(datasource, nil);
end;

procedure TFCaixa.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFCaixa.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFCaixa.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFCaixa.txtnumeroKeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtcodgrupocaixa) or (sender = txtgrupocaixa) then
              btngrupo.click;
         if (sender = txtentrada) then
              btnCalculadoraEntrada.click;
         if (sender = txtsaida) then
              btnCalculadorasaida.click;
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

procedure TFCaixa.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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
       if sender = txtfiltrogrupocaixa then
          btnfiltrogrupocaixa.click;
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

procedure TFCaixa.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
end;

procedure TFCaixa.BtnImprimirClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);
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
   BtnFiltroClick(btnimprimir);
   FCaixarel := tFCaixarel.create(self);
   cdssaldoant.close;
   if txtfiltroinicial.text <> '' then
        qsaldoant.params[0].asdate := strtodate(txtfiltroinicial.text)
   else
        qsaldoant.params[0].asdate := strtodate('01/01/0001');
   cdssaldoant.open;
   saldo := cdssaldoantsum.asfloat;
   FCaixarel.RLReport.PreviewModal;
end;

procedure TFCaixa.btngrupoClick(Sender: TObject);
begin
     try
         fgrupocaixa := tfgrupocaixa.create(self);
         usuario('btnconsultar',fgrupocaixa.wsinformacao.programa);         
         fgrupocaixa.txtpesquisa.text := txtgrupocaixa.text;
         fgrupocaixa.BtnFiltro.click;
         dm.cdsgrupocaixa.open;
         fgrupocaixa.showmodal;
         dm.cdscaixacaigrupo.asinteger := dm.cdsgrupocaixagrucaicod.asinteger;
     finally
         fgrupocaixa.release;
         fgrupocaixa := nil;
         fgrupocaixa.free;
     end;
end;

procedure TFCaixa.btnfiltrogrupocaixaClick(Sender: TObject);
begin
     try
         fgrupocaixa := tfgrupocaixa.create(self);
         usuario('btnconsultar',fgrupocaixa.wsinformacao.programa);
         dm.cdscliente.open;
         fgrupocaixa.showmodal;
         txtfiltrogrupocaixa.text := dm.cdsgrupocaixagrucaicod.asstring;
     finally
         fgrupocaixa.release;
         fgrupocaixa := nil;
         fgrupocaixa.free;
     end;
end;

procedure TFCaixa.txtfiltrogrupocaixaExit(Sender: TObject);
begin
     if txtpesquisa.enabled then
          txtpesquisa.setfocus;
end;

procedure TFCaixa.RGBaixadosClick(Sender: TObject);
begin
     if txtpesquisa.enabled then
          txtpesquisa.setfocus;
     btndesconectar.click;
     btnfiltro.click;     
end;

procedure TFCaixa.btnCalculadoraEntradaClick(Sender: TObject);
begin
     if RxCalculator.Execute then
          DM.CDSCaixaCAIENTRADA.asFloat := RxCalculator.Value;
end;

procedure TFCaixa.btnCalculadoraSaidaClick(Sender: TObject);
begin
     if RxCalculator.Execute then
           DM.CDSCaixaCAISAIDA.asFloat := RxCalculator.Value;
end;

end.
