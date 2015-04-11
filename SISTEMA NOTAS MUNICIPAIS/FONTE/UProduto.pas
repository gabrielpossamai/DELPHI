unit UProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, RLReport, RLRichText;

type
  TFProduto = class(TForm)
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
    txtcod: TWSDBEdit;
    WSDBEdit2: TWSDBEdit;
    WSInformacao: TWSInformacao;
    BtnCancelar: TToolButton;
    BtnSalvar: TToolButton;
    ToolButton4: TToolButton;
    DBGrid: TDBGrid;
    PanPesquisa: TPanel;
    Label4: TLabel;
    txtpesquisa: TWSEdit;
    txtcodmargem: TWSDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    txtgrupo: TWSDBEdit;
    txtcodgrupo: TWSDBEdit;
    Label7: TLabel;
    txtfiltrogrupo: TWSEdit;
    RGOrdem: TRadioGroup;
    btngrupo: TRxSpeedButton;
    btnfiltrogrupo: TRxSpeedButton;
    txtmultiplicador: TWSDBEdit;
    lblmultiplicador: TLabel;
    Label11: TLabel;
    WSDBEdit9: TWSDBEdit;
    WSDBEdit10: TWSDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    WSDBEdit11: TWSDBEdit;
    Label14: TLabel;
    txtcodcliente: TWSDBEdit;
    btncliente: TRxSpeedButton;
    txtcliente: TWSDBEdit;
    Label15: TLabel;
    WSDBEdit14: TWSDBEdit;
    Label16: TLabel;
    WSDBEdit15: TWSDBEdit;
    Label17: TLabel;
    WSDBEdit16: TWSDBEdit;
    Label18: TLabel;
    WSDBEdit17: TWSDBEdit;
    Label19: TLabel;
    WSDBEdit18: TWSDBEdit;
    Label20: TLabel;
    WSDBEdit19: TWSDBEdit;
    Label21: TLabel;
    WSDBEdit20: TWSDBEdit;
    txtcfnota: TWSDBEdit;
    Label9: TLabel;
    txtcfcupom: TWSDBEdit;
    Label22: TLabel;
    WSDBEdit22: TWSDBEdit;
    Label23: TLabel;
    btncfcupom: TRxSpeedButton;
    btncfnota: TRxSpeedButton;
    Label24: TLabel;
    WSDBEdit23: TWSDBEdit;
    Label25: TLabel;
    WSDBEdit24: TWSDBEdit;
    Label26: TLabel;
    WSDBEdit25: TWSDBEdit;
    Label27: TLabel;
    WSDBEdit26: TWSDBEdit;
    Label28: TLabel;
    WSDBEdit27: TWSDBEdit;
    Label29: TLabel;
    txtcustoatuuni: TWSDBEdit;
    Label30: TLabel;
    WSDBEdit29: TWSDBEdit;
    btnmargem: TRxSpeedButton;
    panpeso: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    txtpreco1: TWSDBEdit;
    txtpreco2: TWSDBEdit;
    txtpreco4: TWSDBEdit;
    txtpreco3: TWSDBEdit;
    txtpreco5: TWSDBEdit;
    Label35: TLabel;
    Label37: TLabel;
    txtprecousar: TWSDBEdit;
    txtmargem1: TWSDBEdit;
    txtmargem2: TWSDBEdit;
    txtmargem4: TWSDBEdit;
    txtmargem3: TWSDBEdit;
    txtmargem5: TWSDBEdit;
    Label6: TLabel;
    WSDBEdit3: TWSDBEdit;
    Label8: TLabel;
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
    procedure RGOrdemClick(Sender: TObject);
    procedure btnfiltrogrupoClick(Sender: TObject);
    procedure btngrupoClick(Sender: TObject);
    procedure btnclienteClick(Sender: TObject);
    procedure btnmargemClick(Sender: TObject);
    procedure btncfcupomClick(Sender: TObject);
    procedure txtmargem1Exit(Sender: TObject);
    procedure txtpreco1Exit(Sender: TObject);
    procedure txtcodmargemEnter(Sender: TObject);
    procedure txtcodmargemExit(Sender: TObject);
    procedure txtcodExit(Sender: TObject);
    procedure txtcustoatuuniExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProduto: TFProduto;
  margem_ant : integer;

implementation

uses UDM, UMenu, UGrupo, UMarca, UCliente, UMargem, UAliquota, UGrupoProd,
  UFProduto;

{$R *.dfm}
procedure calcula_margem;
begin
     if DM.CDSProdutoPROCUSTOATUUNI.Value > 0 then
     begin
          if dm.CDSProdutoPROPRECO1.Value <> 0 then
               DM.cdsprodutopromargem1.value:= ((DM.CDSProdutoPROPRECO1.asfloat / DM.CDSProdutoPROCUSTOATUUNI.Value) * 100) - 100;
          if dm.CDSProdutoPROPRECO2.Value <> 0 then
               DM.cdsprodutopromargem2.value:= ((DM.CDSProdutoPROPRECO2.asfloat / DM.CDSProdutoPROCUSTOATUUNI.Value) * 100) - 100;
          if dm.CDSProdutoPROPRECO3.Value <> 0 then
               DM.cdsprodutopromargem3.value:= ((DM.CDSProdutoPROPRECO3.asfloat / DM.CDSProdutoPROCUSTOATUUNI.Value) * 100) - 100;
          if dm.CDSProdutoPROPRECO4.Value <> 0 then
               DM.cdsprodutopromargem4.value:= ((DM.CDSProdutoPROPRECO4.asfloat / DM.CDSProdutoPROCUSTOATUUNI.Value) * 100) - 100;
          if dm.CDSProdutoPROPRECO5.Value <> 0 then
               DM.cdsprodutopromargem5.value:= ((DM.CDSProdutoPROPRECO5.asfloat / DM.CDSProdutoPROCUSTOATUUNI.Value) * 100) - 100;
     end;
end;

procedure calcula_precos;
begin
     if dm.cdsprodutopromargem1.Value <> 0 then
          DM.CDSProdutoPROPRECO1.value:= DM.CDSProdutoPROCUSTOATUUNI.Value *
                              (dm.cdsprodutopromargem1.Value / 100) + DM.CDSProdutoPROCUSTOATUUNI.value;
     if dm.cdsprodutopromargem2.Value <> 0 then
          DM.CDSProdutoPROPRECO2.value:= DM.CDSProdutoPROCUSTOATUUNI.Value *
                              (dm.cdsprodutopromargem2.Value / 100) + DM.CDSProdutoPROCUSTOATUUNI.value;
     if dm.cdsprodutopromargem3.Value <> 0 then
          DM.CDSProdutoPROPRECO3.value:= DM.CDSProdutoPROCUSTOATUUNI.Value *
                              (dm.cdsprodutopromargem3.Value / 100) + DM.CDSProdutoPROCUSTOATUUNI.value;
     if dm.cdsprodutopromargem4.Value <> 0 then
          DM.CDSProdutoPROPRECO4.value:= DM.CDSProdutoPROCUSTOATUUNI.Value *
                              (dm.cdsprodutopromargem4.Value / 100) + DM.CDSProdutoPROCUSTOATUUNI.value;
     if dm.cdsprodutopromargem5.Value <> 0 then
          DM.CDSProdutoPROPRECO5.value:= DM.CDSProdutoPROCUSTOATUUNI.Value *
                              (dm.cdsprodutopromargem5.Value / 100) + DM.CDSProdutoPROCUSTOATUUNI.value;
end;


procedure TFProduto.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFProduto.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFProduto.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFProduto.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFProduto.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFProduto.BtnIncluirClick(Sender: TObject);
var cont : integer;
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FProduto, true);

     cont := 1;
     while dm.cdsproduto.locate('PROCOD', cont ,[]) do
        inc(cont);
     DataSource.DataSet.append;
     dm.CDSProdutoPROCOD.asinteger := cont;
end;

procedure TFProduto.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FProduto, true);
     end;
end;

procedure TFProduto.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);

   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     DataSource.DataSet.Edit;     
     Editar(FProduto, false);;
   end;
end;

procedure TFProduto.BtnExcluirClick(Sender: TObject);
begin
    usuario((sender as TToolButton).name, wsinformacao.programa);
   
    if (DataSource.DataSet.Active = true) then
      if (DataSource.DataSet.RecordCount > 0) then
        if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
        begin
            integridade('ITEPRODUTO', 'TITEMVENDA', txtcod.text);
            integridade('ITEPRODUTO', 'TITEMNOTAENT', txtcod.text);
            integridade('ITEPRODUTO', 'TITEMNOTAFISC', txtcod.text);
            integridade('OUTPRODUTO', 'TOUTRASAIDA', txtcod.text);
            integridade('ORDPROPRODUTO', 'TORDEMSERVICOPRODUTO', txtcod.text);            
            try
                DataSource.DataSet.Delete;
                (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
            except
                ShowMessage('Impossível Excluir. Violação de Integridade.');
            end;
        end;
end;

procedure TFProduto.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     if trim(txtcodmargem.Text) = '' then
     begin
          showmessage('Campo Margem de Lucro Obrigatório!');
          txtcodmargem.SetFocus;
          exit;
     end;
     if (dm.CDSProdutoPROPRECOUSAR.asinteger < 1) or (dm.CDSProdutoPROPRECOUSAR.asinteger > 5) then
     begin
          showmessage('Campo Preço a Usar inválido, selecione de 1 a 5!');
          txtprecousar.setfocus;
          exit;
     end;

     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FProduto);
end;

procedure TFProduto.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     ToolBarNavegacao.SetFocus;
     Navegar(FProduto);
end;

procedure TFProduto.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFProduto.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    dm.qproduto.close;
    with dm.qproduto.sql do
    begin
         clear;
         add('SELECT PROCOD, PRONOME, PROVALOR, PROCUSTO, PROVENDAS, PROGRUPO, PROESTOQUE, PROMULTIPLICADOR, GRUNOME,');
         add('PROMARCA, PROUNIEMB, PROQUANTEMB, PROUNIVENDA, PROFORNECEDOR, PROPESOLIQ, PROPESOBRUTO, PROLOCALIZACAO,');
         add('PROREFERENCIA, PROESTMIN, PROESTMAX, PROIPI, PROCFCUPOM, PROCFNOTA, PROOBS, PROCODBAREMB, PROCODBARUNI,');
         add('PROCUSTOMEDIOEMB, PROCUSTOMEDIOUNI, PROCUSTOATUEMB, PROCUSTOATUUNI, PROULTATU, PROPRECOUSAR, PROMARGEM,');
         add('PROPRECO1, PROPRECO2, PROPRECO3, PROPRECO4, PROPRECO5,');
         add('PROMARGEM1, PROMARGEM2, PROMARGEM3, PROMARGEM4, PROMARGEM5, PROCODFORNECEDOR');
         add('FROM TPRODUTO LEFT OUTER JOIN TGRUPOPROD ON PROGRUPO = GRUCOD');
         add('WHERE PROCOD <> 0');
         if trim(txtpesquisa.text) <> '' then
         begin
            case rgordem.itemindex of
              0 : add('AND UPPER(PRONOME) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
              1 : add('AND UPPER(PROCOD) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
            end;
         end;
         if trim(txtfiltrogrupo.text) <> '' then
            add('AND PROGRUPO = ' + quotedstr(txtfiltrogrupo.text));
         case rgordem.itemindex of
           0 : add('ORDER BY PRONOME');
           1 : add('ORDER BY PROCOD');
         end;
    end;
    dm.qproduto.open;
    DataSource.DataSet.open;
end;

procedure TFProduto.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFProduto.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);
end;                                                

procedure TFProduto.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFProduto.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFProduto.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     try
         dm.CDSProduto.refresh;
     except
     end;
     txtmultiplicador.visible := dm.CDSRechCenterRECSISTEMA.asstring = 'F';
     lblmultiplicador.visible := dm.CDSRechCenterRECSISTEMA.asstring = 'F';     
end;

procedure TFProduto.txtcodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   passar : boolean;
begin
    if key = vk_f3 then
    begin
         if (sender = txtcodgrupo) or (sender = txtgrupo) then
              btngrupo.click;
         if (sender = txtcodmargem) then
              btnmargem.click;
         if (sender = txtcodcliente) or (sender = txtcliente) then
              btncliente.click;
         if (sender = txtcfcupom) then
              btncfcupomclick(txtcfcupom);
         if (sender = txtcfnota) then
              btncfcupomclick(txtcfnota);
         if (sender = txtcodmargem) then
              btnmargem.click;
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

procedure TFProduto.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_f3 then
       if sender = txtfiltrogrupo then
          btnfiltrogrupo.click;

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

procedure TFProduto.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFProduto.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     try
          ffproduto := tffproduto.create(self);
          ffproduto.showmodal;
     finally
          ffproduto.release;
          ffproduto:= nil;
          ffproduto.free;                         
     end;
end;

procedure TFProduto.RGOrdemClick(Sender: TObject);
begin
     btnfiltro.click;
     txtpesquisa.clear;
     txtpesquisa.setfocus;
end;

procedure TFProduto.btnfiltrogrupoClick(Sender: TObject);
begin
     try
         fgrupoprod := tfgrupoprod.create(self);
         usuario('btnconsultar',fgrupoprod.wsinformacao.programa);
         dm.cdsgrupo.open;
         fgrupoprod.showmodal;
         txtfiltrogrupo.text := dm.cdsgrupoprodgrucod.asstring;
     finally
         fgrupoprod.release;
         fgrupoprod:= nil;
         fgrupoprod.free;
     end;
end;

procedure TFProduto.btngrupoClick(Sender: TObject);
begin
     try
         fgrupoprod := tfgrupoprod.create(self);
         usuario('btnconsultar',fgrupoprod.wsinformacao.programa);
         fgrupoprod.txtpesquisa.text := txtgrupo.text;
         fgrupoprod.btndesconectar.click;
         fgrupoprod.BtnFiltro.click;
         fgrupoprod.showmodal;
         dm.cdsprodutoprogrupo.asinteger := dm.cdsgrupoprodgrucod.asinteger;
     finally
         fgrupoprod.release;
         fgrupoprod := nil;
         fgrupoprod.free;
     end;
end;

procedure TFProduto.btnclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         fcliente.txtpesquisa.text := txtcliente.text;
         fcliente.BtnFiltro.click;
         fcliente.showmodal;
         dm.CDSProdutoPROFORNECEDOR.asinteger := dm.CDSClienteCLICOD.asinteger;
     finally
         fcliente.release;
         fcliente := nil;
         fcliente.free;
     end;
end;

procedure TFProduto.btnmargemClick(Sender: TObject);
begin
     try
         fmargem := tfmargem.create(self);
         usuario('btnconsultar', fmargem.wsinformacao.programa);
         fmargem.txtpesquisa.text := dm.CDSProdutoPROMARGEM.asstring;
         fmargem.BtnFiltro.click;
         fmargem.showmodal;
         dm.CDSProdutoPROMARGEM.asinteger := dm.CDSMargemMARCOD.asinteger;
     finally
         fmargem.release;
         fmargem:= nil;
         fmargem.free;
     end;
end;

procedure TFProduto.btncfcupomClick(Sender: TObject);
begin
     try
         faliquota := tfaliquota.create(self);
         usuario('btnconsultar',faliquota.wsinformacao.programa);
         faliquota.txtpesquisa.text := (sender as twsdbedit).text;
         faliquota.BtnFiltro.click;
         faliquota.showmodal;
         dm.CDSProduto.fieldbyname((sender as twsdbedit).datafield).asinteger := dm.CDSAliquotaALICOD.asinteger;
     finally
         faliquota.release;
         faliquota := nil;
         faliquota.free;
     end;
end;

procedure TFProduto.txtmargem1Exit(Sender: TObject);
begin
     calcula_precos;
end;

procedure TFProduto.txtpreco1Exit(Sender: TObject);
begin
     calcula_margem;
end;

procedure TFProduto.txtcodmargemEnter(Sender: TObject);
begin
      margem_ant := dm.CDSProdutoPROMARGEM.asinteger;
end;

procedure TFProduto.txtcodmargemExit(Sender: TObject);
begin
     if dm.CDSProdutoPROMARGEM.asinteger <> margem_ant then
          if dm.CDSMargem.locate('MARCOD', dm.CDSProdutoPROMARGEM.asinteger ,[]) then
          begin
               dm.cdsprodutopromargem1.asfloat := dm.CDSMargemMAR1.asfloat;
               dm.cdsprodutopromargem2.asfloat := dm.CDSMargemMAR2.asfloat;
               dm.cdsprodutopromargem3.asfloat := dm.CDSMargemMAR3.asfloat;
               dm.cdsprodutopromargem4.asfloat := dm.CDSMargemMAR4.asfloat;
               dm.cdsprodutopromargem5.asfloat := dm.CDSMargemMAR5.asfloat;
               calcula_precos;
          end;
end;

procedure TFProduto.txtcodExit(Sender: TObject);
var cod : integer;
begin
     if dm.CDSProduto.state <> dsBrowse then
     begin
          if txtcod.text <> '' then
               if executasqlretorno('SELECT PROCOD FROM TPRODUTO WHERE PROCOD = ' + txtcod.text) <> '' then
               begin
                    if application.messagebox ('Produto já cadastrado, deseja alterá-lo?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
                    begin
                         cod := strtoint(txtcod.text);
                         dm.CDSProduto.cancel;
                         dm.cdsproduto.Locate('PROCOD', cod,[]);
                         dm.CDSProduto.Edit;
                    end
                    else
                    begin
                         txtcod.SetFocus;
                    end;
               end;
     end;
end;

procedure TFProduto.txtcustoatuuniExit(Sender: TObject);
begin
     if dm.CDSProduto.State <> dsBrowse then
     begin
          if trim(txtcustoatuuni.text) = '' then
          begin
               showmessage('Campo Custo Atual Unitário Obrigatório!');
               txtcustoatuuni.setfocus;
               exit;
          end;
     end;
end;

end.
