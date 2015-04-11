unit UImovel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RLReport, RLRichText, RXCtrls, WSDBMemo, Buttons, ExtDlgs, jpeg;

type
  TFImovel = class(TForm)
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
    Label7: TLabel;
    txtcodcliente: TWSDBEdit;
    btncliente: TRxSpeedButton;
    txtcliente: TWSDBEdit;
    WSDBEdit4: TWSDBEdit;
    Label5: TLabel;
    WSDBEdit5: TWSDBEdit;
    Label6: TLabel;
    WSDBEdit6: TWSDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    WSDBEdit7: TWSDBEdit;
    Label10: TLabel;
    WSDBEdit8: TWSDBEdit;
    Label11: TLabel;
    WSDBEdit9: TWSDBEdit;
    Label12: TLabel;
    WSDBEdit10: TWSDBEdit;
    Label13: TLabel;
    WSDBEdit11: TWSDBEdit;
    Label14: TLabel;
    WSDBEdit12: TWSDBEdit;
    Label15: TLabel;
    WSDBEdit13: TWSDBEdit;
    Label16: TLabel;
    WSDBEdit14: TWSDBEdit;
    Label17: TLabel;
    WSDBEdit15: TWSDBEdit;
    Label18: TLabel;
    WSDBEdit16: TWSDBEdit;
    Label19: TLabel;
    WSDBMemo1: TWSDBMemo;
    btnfotos: TSpeedButton;
    panfotos: TPanel;
    Label20: TLabel;
    txtfoto3: TWSDBEdit;
    txtfoto4: TWSDBEdit;
    txtfoto1: TWSDBEdit;
    txtfoto2: TWSDBEdit;
    txtfoto5: TWSDBEdit;
    RGFoto: TRadioGroup;
    btnaddfoto: TSpeedButton;
    OpenPictureDialog: TOpenPictureDialog;
    Image: TImage;
    ImageBranco: TImage;
    txtcidade: TWSDBEdit;
    btncidade: TRxSpeedButton;
    txtcodcidade: TWSDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    WSDBEdit17: TWSDBEdit;
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
    procedure WSDBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnclienteClick(Sender: TObject);
    procedure btnfotosClick(Sender: TObject);
    procedure RGFotoClick(Sender: TObject);
    procedure btnaddfotoClick(Sender: TObject);
    procedure btncidadeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure mostrafoto;
  end;

var
  FImovel: TFImovel;

implementation

uses UDM, UMenu, UCliente, UCidade;

{$R *.dfm}

procedure TFImovel.mostrafoto;
begin
     if RGFoto.itemindex < 0 then
          RGFoto.itemindex := 0;
     if trim(dm.CDSImovel.FieldByName('IMOFOTO' + inttostr(RGFoto.itemindex + 1)).asstring) <> '' then
          image.picture.LoadFromFile(dm.CDSImovel.FieldByName('IMOFOTO' + inttostr(RGFoto.itemindex + 1)).AsString)
     else
          image.picture := ImageBranco.Picture;     
end;

procedure TFImovel.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFImovel.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFImovel.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFImovel.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFImovel.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFImovel.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     
     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FImovel, true);
     DataSource.DataSet.append;
end;

procedure TFImovel.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FImovel, true);
     end;
end;

procedure TFImovel.BtnAlterarClick(Sender: TObject);
begin
   usuario((sender as TToolButton).name, wsinformacao.programa);

   if DataSource.DataSet.Active then
   begin
     PageControl.ActivePage:=TabCadastro;
     Editar(FImovel, false);
     DataSource.DataSet.Edit;
   end;
end;

procedure TFImovel.BtnExcluirClick(Sender: TObject);
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

procedure TFImovel.BtnSalvarClick(Sender: TObject);
begin
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(0);
     navegar(FImovel);
end;

procedure TFImovel.BtnCancelarClick(Sender: TObject);
begin
     DataSource.DataSet.Cancel;
     Navegar(FImovel);
end;

procedure TFImovel.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFImovel.BtnFiltroClick(Sender: TObject);
begin
    DataSource.DataSet.close;
    with dm.qImovel.sql do
    begin
         clear;
         add('select IMOCOD,IMOEMPREENDIMENTO,IMOPROPRIETARIO,IMOCONSTRUTORA,IMOENDERECO,IMONUMERO');
         add('      ,IMOBAIRRO,IMOCIDADE,IMOCEP,IMOREFERENCIA,IMOPAVIMENTO,IMOAREAUTIL,IMOAREACOMUM,IMOAREAGARAGEM');
         add('      ,IMODORMITORIOS,IMOSUITES,IMOBANHEIROS,IMOSALAS,IMOSACADAS,IMODESCRICAO,IMOFOTO1');
         add('      ,IMOFOTO2,IMOFOTO3,IMOFOTO4,IMOFOTO5,IMOALUGADO');
         add('from TIMOVEL');
         if trim(txtpesquisa.text) <> '' then
            add('WHERE UPPER(IMOEMPREENDIMENTO) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');
         add('ORDER BY IMOEMPREENDIMENTO');
    end;
    DataSource.DataSet.open;
end;

procedure TFImovel.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
end;

procedure TFImovel.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click; 
     importar(DataSource, Wsinformacao.Tabela);

     btndesconectar.click;
     btnfiltro.click;
     showmessage('Importação Concluída com Sucesso!');            
end;                                                

procedure TFImovel.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
end;

procedure TFImovel.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFImovel.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;     
end;

procedure TFImovel.WSDBEdit1KeyDown(Sender: TObject; var Key: Word;
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
         if (sender = txtcodcliente) or (sender = txtcliente) then
             btncliente.click;
         if (sender = txtcodcidade) or (sender = txtcidade) then
             btncidade.click;
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

procedure TFImovel.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFImovel.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
       
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);  
end;

procedure TFImovel.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     RLReport.PreviewModal;
end;

procedure TFImovel.WSDBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key = 27) and (btncancelar.enabled = true) then
        btncancelar.click;
    if (Key = VK_F12) and (btnSalvar.enabled = true) then
        btnsalvar.Click;
end;

procedure TFImovel.btnclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         fcliente.txtpesquisa.text := txtcliente.text;
         fcliente.BtnFiltro.click;
         fcliente.showmodal;
         dm.CDSImovelIMOPROPRIETARIO.asinteger := dm.cdsclienteclicod.asinteger;
     finally
         fcliente.release;
         fcliente:= nil;
         fcliente.free;
     end;
end;

procedure TFImovel.btnfotosClick(Sender: TObject);
var  i : byte;
begin
     if not panfotos.visible then
     begin
          panfotos.visible := true;
          for i := 0 to 230 do
          begin
               panfotos.height := i;
               application.processmessages;
          end;
          txtfoto1.setfocus;
     end
     else
     begin
          for i := 230 downto 0 do
          begin
               panfotos.height := i;
               application.processmessages;
          end;
          panfotos.visible := false;
     end;
end;

procedure TFImovel.RGFotoClick(Sender: TObject);
var campo : TWSDBEdit;
begin
     campo := FImovel.findcomponent('txtfoto' + inttostr(rgfoto.ItemIndex + 1)) as TWSDBEdit;
     campo.SetFocus;
     mostrafoto;
end;

procedure TFImovel.btnaddfotoClick(Sender: TObject);
begin
     if OpenPictureDialog.execute then
     begin
          dm.CDSImovel.FieldByName('IMOFOTO' + inttostr(rgfoto.itemindex + 1)).AsString := OpenPictureDialog.FileName;
          mostrafoto;
          rgfoto.itemindex := rgfoto.itemindex + 1;
          if rgfoto.itemindex >= 4 then
               rgfoto.itemindex := 4;
     end;
end;

procedure TFImovel.btncidadeClick(Sender: TObject);
begin
     try
         fcidade := tfcidade.create(self);
         fcidade.txtpesquisa.text := txtcidade.text;
         fcidade.BtnFiltro.click;
         fcidade.showmodal;
         dm.CDSImovelIMOCIDADE.asinteger := dm.cdscidadecidcod.asinteger;
     finally
         fcidade.release;
         fcidade := nil;
         fcidade.free;
     end;
end;

end.

