unit UPesagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, Mask, DBCtrls, DB,
  WSEdit, WSDBEdit, WSInformacao, shellapi, Grids, DBGrids, DBClient,
  RXCtrls, jpeg, RxGIF, Buttons, WSMaskEdit;

{  procedure _AlteraModeloBalanca(Modelo: integer); stdcall; external 'LePeso.dll';
  procedure _AlteraModoOperacao(Modo: integer); stdcall; external 'LePeso.dll';
  function _AbrePortaSerial(porta: Pchar): integer; stdcall; external 'LePeso.dll';
  function _FechaPortaSerial(): integer;  stdcall; external 'LePeso.dll';
  function _LePeso() :PCHAR; stdcall; external 'LePeso.dll';}
    
type
  TFPesagem = class(TForm)
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
    Label5: TLabel;
    txtoperador: TWSDBEdit;
    WSDBEdit5: TWSDBEdit;
    Label6: TLabel;
    txtcodoperador: TWSDBEdit;
    Label7: TLabel;
    txtfiltrooperador: TWSEdit;
    btnoperador: TRxSpeedButton;
    btnfiltrooperador: TRxSpeedButton;
    WSDBEdit4: TWSDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    txtcodmarca: TWSDBEdit;
    btnmarca: TRxSpeedButton;
    txtmarca: TWSDBEdit;
    Label11: TLabel;
    txtmodelo: TWSDBEdit;
    Label12: TLabel;
    txtcodcategoria: TWSDBEdit;
    btncategoria: TRxSpeedButton;
    txtcategoria: TWSDBEdit;
    Label14: TLabel;
    Label17: TLabel;
    WSDBEdit14: TWSDBEdit;
    WSDBEdit15: TWSDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Image: TImage;
    btnmodelo: TRxSpeedButton;
    txtpeso: TWSDBEdit;
    WSDBEdit8: TWSDBEdit;
    WSDBEdit10: TWSDBEdit;
    panpeso: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label21: TLabel;
    txtpeso1: TWSDBEdit;
    txtpeso2: TWSDBEdit;
    txtpeso4: TWSDBEdit;
    txtpeso3: TWSDBEdit;
    txtpeso7: TWSDBEdit;
    txtpeso6: TWSDBEdit;
    txtpeso5: TWSDBEdit;
    WSDBEdit6: TWSDBEdit;
    Label28: TLabel;
    txtobs: TWSDBEdit;
    WSDBEdit13: TWSDBEdit;
    Label29: TLabel;
    Shape1: TShape;
    WSDBEdit16: TWSDBEdit;
    Label30: TLabel;
    WSDBEdit1: TWSDBEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    ImageSem: TImage;
    Panel1: TPanel;
    WSDBEdit3: TWSDBEdit;
    Label3: TLabel;
    Label13: TLabel;
    WSDBEdit7: TWSDBEdit;
    WSDBEdit9: TWSDBEdit;
    WSDBEdit11: TWSDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    WSDBEdit12: TWSDBEdit;
    Label31: TLabel;
    panimpressao: TPanel;
    Image1: TImage;
    btnpesagens: TSpeedButton;
    btnficha: TSpeedButton;
    Label32: TLabel;
    SpeedButton1: TSpeedButton;
    Label33: TLabel;
    Label34: TLabel;
    txtfiltroinicial: TWSMaskEdit;
    txtfiltrofinal: TWSMaskEdit;
    imgpeso1: TImage;
    imgpeso2: TImage;
    imgpeso4: TImage;
    imgpeso3: TImage;
    imgpeso7: TImage;
    imgpeso6: TImage;
    imgpeso5: TImage;
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
    procedure btnfiltrooperadorClick(Sender: TObject);
    procedure btnoperadorClick(Sender: TObject);
    procedure btnmarcaClick(Sender: TObject);
    procedure btncategoriaClick(Sender: TObject);
    procedure btnmodeloClick(Sender: TObject);
    procedure txtpesoEnter(Sender: TObject);
    procedure txtcodcategoriaExit(Sender: TObject);
    procedure WSDBEdit13Enter(Sender: TObject);
    procedure WSDBEdit5Enter(Sender: TObject);
    procedure btnfichaClick(Sender: TObject);
    procedure btnpesagensClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure imgpeso1Click(Sender: TObject);
    procedure WSDBEdit8Enter(Sender: TObject);
  private
    { Private declarations }
    procedure Foto;
  public
    { Public declarations }
  end;

var
  FPesagem: TFPesagem;

implementation

uses UDM, UMenu, UGrupo, UPesagemRel, UUsuario, UMarca, UModelo,
  UCategoria;

{$R *.dfm}
procedure TFPesagem.Foto;
begin
     Image.picture := ImageSem.picture;
     if txtcodcategoria.text <> '' then
     begin
          if dm.cdscategoria.active then
          begin
               if dm.cdscategoria.locate('CATCOD', txtcodcategoria.text, []) then
               begin
                    if fileexists(dm.cdscategoriacatfoto.asstring) then
                    begin
                         image.picture.loadfromfile(dm.cdscategoriacatfoto.asstring);
                    end;
               end;
          end;
     end;
end;

procedure TFPesagem.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;

     foto;
end;

procedure TFPesagem.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;

     foto;
end;

procedure TFPesagem.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;

     foto;
end;

procedure TFPesagem.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;

     foto;
end;

procedure TFPesagem.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFPesagem.BtnIncluirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fpesagem, false);

     if not datasource.dataset.active then
        btnfiltro.click;

     PageControl.ActivePage:=TabCadastro;
     Editar(FPesagem, true);
     txtobs.enabled := false;
     DataSource.DataSet.append;

     foto;
end;

procedure TFPesagem.btnnovopadraoClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fpesagem, false);     
     if DataSource.DataSet.RecordCount > 0 then
     begin
          novo_padrao(DataSource, WSInformacao.Tabela);
          PageControl.ActivePage:=TabCadastro;
          Editar(FPesagem, true);
          txtobs.enabled := false;
     end;

     foto;
end;

procedure TFPesagem.BtnAlterarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     mostrarimpressao(fpesagem, false);
     if DataSource.DataSet.Active then
     begin
         PageControl.ActivePage:=TabCadastro;
         DataSource.DataSet.Edit;     
         Editar(FPesagem, false);
         txtobs.enabled := false;
     end;
     foto;
end;

procedure TFPesagem.BtnExcluirClick(Sender: TObject);
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
    foto;        
end;

procedure TFPesagem.BtnSalvarClick(Sender: TObject);
begin
     if txtcodoperador.text = '' then
     begin
          showmessage('Campo operador obrigatório!');
          txtcodoperador.setfocus;
          exit;
     end;
     ToolBarNavegacao.SetFocus;
     DataSource.DataSet.post;
     (DataSource.DataSet as TClientDataSet).ApplyUpdates(-1);
     navegar(FPesagem);
end;

procedure TFPesagem.BtnCancelarClick(Sender: TObject);
begin
     {DataSource.DataSet.Cancel;
     Navegar(FPesagem);}
     foto;
end;

procedure TFPesagem.btndesconectarClick(Sender: TObject);
begin
     DataSource.DataSet.Close;
     foto;     
end;

procedure TFPesagem.BtnFiltroClick(Sender: TObject);
begin
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
    DataSource.DataSet.close;
    dm.qPesagem.close;
    with dm.qPesagem.sql do
    begin
         clear;
         add('SELECT PESCOD, PESDATA, PESOPERADOR, PESMARCA, PESMODELO, PESCATEGORIA, PESRODADOS,');
         add('PESPESO, PESTARA, PESTOLERANCIA, PESLIMITE, PESPESOEXCEDENTE, PESPLACA, PESPROPRIETARIO,');
         add('PESCONDUTOR, PESCNH, PESNUMEROAET, PESPESOAET, PESHORA, PESPESOPERMITIDO,');
         add('PESPESO1, PESPESO2, PESPESO3, PESPESO4, PESPESO5, PESPESO6, PESPESO7');
         add('FROM TPESAGEM');
         add('WHERE PESCOD <> 0');
         if txtfiltroinicial.text <> '  /  /    ' then
            add('AND PESDATA >= :DATAINI');
         if txtfiltrofinal.text <> '  /  /    ' then
            add('AND PESDATA <= :DATAFIN');
         if trim(txtpesquisa.text) <> '' then
         begin
              add('AND UPPER(PESCOD) LIKE UPPER(' + quotedstr('%' + txtpesquisa.text+ '%') + ')');

         end;
         if trim(txtfiltrooperador.text) <> '' then
            add('AND PESOPERADOR = ' + quotedstr(txtfiltrooperador.text));
         add('ORDER BY PESCOD');
    end;
    if txtfiltroinicial.text <> '  /  /    ' then
       dm.qPesagem.parambyname('DATAINI').asdate := strtodate(txtfiltroinicial.text);
    if txtfiltrofinal.text <> '  /  /    ' then
       dm.qPesagem.parambyname('DATAFIN').asdate := strtodate(txtfiltrofinal.text);
    dm.qPesagem.open;
    DataSource.DataSet.open;
    foto;    
end;

procedure TFPesagem.btnexportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     exportar(Datasource, nil);
     foto;
end;

procedure TFPesagem.btnimportarClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);

     if not datasource.dataset.active then
        btnfiltro.click;
     importar(DataSource, Wsinformacao.Tabela);
     foto;     
end;                                                

procedure TFPesagem.btnhtmlClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     html(lbltitulo.caption, dbgrid , DataSource );
     ShellExecute(Handle, nil, pchar(dm.savedialoghtml.FileName), nil, nil, SW_SHOW);
     foto;
end;

procedure TFPesagem.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFPesagem.FormShow(Sender: TObject);
begin
     navegar(sender as tform);
     pagecontrol.activepageindex := 0;
     foto;     
end;

procedure TFPesagem.txtcodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   passar : boolean;
begin
    if key = vk_f3 then
    begin
         if sender = txtpeso1 then
              imgpeso1Click(sender);
         if sender = txtpeso2 then
              imgpeso1Click(imgpeso2);
         if sender = txtpeso3 then
              imgpeso1Click(imgpeso3);
         if sender = txtpeso4 then
              imgpeso1Click(imgpeso4);
         if sender = txtpeso5 then
              imgpeso1Click(imgpeso5);
         if sender = txtpeso6 then
              imgpeso1Click(imgpeso6);
         if sender = txtpeso7 then
              imgpeso1Click(imgpeso7);
         if (sender = txtcodoperador) or (sender = txtoperador) then
              btnoperador.click;
         if (sender = txtcodmarca) or (sender = txtmarca) then
              btnmarca.click;
         if (sender = txtcodcategoria) or (sender = txtcategoria) then
              btncategoria.click;
         if (sender = txtmodelo) then
              btnmodelo.click;
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

procedure TFPesagem.txtpesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_f3 then
       if sender = txtfiltrooperador then
          btnfiltrooperador.click;

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
         end;
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

procedure TFPesagem.btnexcelClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     if not datasource.dataset.active then
        btnfiltro.click;
     excel(lbltitulo.caption, dbgrid);
     foto;
end;

procedure TFPesagem.BtnImprimirClick(Sender: TObject);
begin
     usuario((sender as TToolButton).name, wsinformacao.programa);
     PageControl.ActivePageIndex := 0;
     mostrarimpressao(FPesagem, not panimpressao.visible);
     foto;
end;

procedure TFPesagem.btnfiltrooperadorClick(Sender: TObject);
begin
     try
         fusuario := tfusuario.create(self);
         usuario('btnconsultar',fusuario.wsinformacao.programa);
         dm.cdsusuario.open;
         fusuario.showmodal;
         txtfiltrooperador.text := dm.cdsusuariousulogin.asstring;
     finally
         fusuario.release;
         fusuario := nil;
         fusuario.free;
     end;
end;

procedure TFPesagem.btnoperadorClick(Sender: TObject);
begin
     try
         fusuario := tfusuario.create(self);
         usuario('btnconsultar',fusuario.wsinformacao.programa);
         dm.cdsusuario.open;
         fusuario.txtpesquisa.text := txtcodoperador.text;
         fusuario.BtnFiltro.click;
         fusuario.showmodal;
         dm.cdspesagempesoperador.asstring := dm.cdsusuariousulogin.asstring;
     finally
         fusuario.release;
         fusuario := nil;
         fusuario.free;
     end;
end;

procedure TFPesagem.btnmarcaClick(Sender: TObject);
begin
     try
         fmarca := tfmarca.create(self);
         usuario('btnconsultar',fmarca.wsinformacao.programa);
         dm.cdsmarca.open;
         fmarca.txtpesquisa.text := txtmarca.text;
         fmarca.BtnFiltro.click;
         fmarca.showmodal;
         dm.cdspesagempesmarca.asinteger := dm.cdsmarcamarcod.asinteger;
     finally
         fmarca.release;
         fmarca := nil;
         fmarca.free;
     end;
end;

procedure TFPesagem.btncategoriaClick(Sender: TObject);
begin
     try
         fcategoria := tfcategoria.create(self);
         usuario('btnconsultar',fcategoria.wsinformacao.programa);         
         dm.cdscategoria.open;
         fcategoria.txtpesquisa.text := txtcategoria.text;
         fcategoria.BtnFiltro.click;
         fcategoria.showmodal;
         dm.cdspesagempescategoria.asinteger := dm.cdscategoriacatcod.asinteger;
     finally
         fcategoria.release;
         fcategoria := nil;
         fcategoria.free;
     end; 
end;

procedure TFPesagem.btnmodeloClick(Sender: TObject);
begin
     try
         fmodelo := tfmodelo.create(self);
         usuario('btnconsultar',fmodelo.wsinformacao.programa);
         dm.cdsmodelo.open;
         fmodelo.txtfiltromarca.text := txtcodmarca.text;
         fmodelo.BtnFiltro.click;
         fmodelo.showmodal;
         dm.cdspesagempesmodelo.asstring := dm.cdsmodelomodnome.asstring;
     finally
         fmodelo.release;
         fmodelo := nil;
         fmodelo.free;
     end;
end;

procedure TFPesagem.txtpesoEnter(Sender: TObject);
var
     tamanho, i : integer;
begin
    if (dm.cdspesagemPESRODADOS.asinteger < 1) or
       (dm.cdspesagemPESRODADOS.asinteger > 7) then
    begin
         showmessage('Atenção,Numero de Rodados Inválido');
         WSDBEdit5.SetFocus;
    end
    else
    begin
             txtpeso2.enabled := false;
             txtpeso3.enabled := false;
             txtpeso4.enabled := false;
             txtpeso5.enabled := false;
             txtpeso6.enabled := false;
             txtpeso7.enabled := false;

             if dm.cdspesagemPESRODADOS.asinteger = 1 then
             begin
                  tamanho := 28;
             end;
             if dm.cdspesagemPESRODADOS.asinteger = 2 then
             begin
                  txtpeso2.enabled := true;
                  tamanho := 48;
             end;
             if dm.cdspesagemPESRODADOS.asinteger = 3 then
             begin
                  tamanho := 68;
                  txtpeso2.enabled := true;
                  txtpeso3.enabled := true;
             end;
             if dm.cdspesagemPESRODADOS.asinteger = 4 then
             begin
                  tamanho := 88;
                  txtpeso2.enabled := true;
                  txtpeso3.enabled := true;
                  txtpeso4.enabled := true;
             end;
             if dm.cdspesagemPESRODADOS.asinteger = 5 then
             begin
                  tamanho := 108;
                  txtpeso2.enabled := true;
                  txtpeso3.enabled := true;
                  txtpeso4.enabled := true;
                  txtpeso5.enabled := true;
             end;
             if dm.cdspesagemPESRODADOS.asinteger = 6 then
             begin
                  tamanho := 128;
                  txtpeso2.enabled := true;
                  txtpeso3.enabled := true;
                  txtpeso4.enabled := true;
                  txtpeso5.enabled := true;
                  txtpeso6.enabled := true;
             end;
             if dm.cdspesagemPESRODADOS.asinteger = 7 then
             begin
                  tamanho := 152;
                  txtpeso2.enabled := true;
                  txtpeso3.enabled := true;
                  txtpeso4.enabled := true;
                  txtpeso5.enabled := true;
                  txtpeso6.enabled := true;
                  txtpeso7.enabled := true;
             end;
             if not panpeso.visible then
             begin
                  panpeso.visible := true;
                  for i := 0 to tamanho do
                  begin
                       panpeso.height := i;
                       application.processmessages;
                  end;
                  txtpeso1.setfocus;
             end
             else
             begin
                  for i := tamanho downto 0 do
                  begin
                       panpeso.height := i;
                       application.processmessages;
                  end;
                  panpeso.visible := false;
             end;
             dm.cdspesagempespeso.asfloat := dm.cdspesagempespeso1.asfloat +
                                             dm.cdspesagempespeso2.asfloat +
                                             dm.cdspesagempespeso3.asfloat +
                                             dm.cdspesagempespeso4.asfloat +
                                             dm.cdspesagempespeso5.asfloat +
                                             dm.cdspesagempespeso6.asfloat +
                                             dm.cdspesagempespeso7.asfloat;
   end;
end;

procedure TFPesagem.txtcodcategoriaExit(Sender: TObject);
begin
     foto;
end;

procedure TFPesagem.WSDBEdit13Enter(Sender: TObject);
begin
     if dm.cdspesagemPESPESOPERMITIDO.asfloat = 0 then
     begin
          dm.cdspesagemPESPESOPERMITIDO.asfloat := dm.cdspesagemPESOPERMITIDO.asfloat;
     end;
end;

procedure TFPesagem.WSDBEdit5Enter(Sender: TObject);
begin
     if txtcodcategoria.text <> '' then
     begin
          if dm.cdscategoria.active then
          begin
               if dm.cdscategoria.locate('CATCOD', txtcodcategoria.text, []) then
               begin
                    if (dm.CDSPesagemPESRODADOS.asinteger = 0) and (dm.CDSCategoriaCATRODADOS.asinteger < 8) then
                         dm.CDSPesagemPESRODADOS.asinteger := dm.CDSCategoriaCATRODADOS.asinteger;
               end;
          end;
     end;
end;

procedure TFPesagem.btnfichaClick(Sender: TObject);
begin
     FPesagemrel := tFPesagemrel.create(self);
     dm.cdspesagem.filter := 'PESCOD = ' + txtcod.text;
     dm.cdspesagem.filtered := true;
     FPesagemrel.RLReport.PreviewModal;
     dm.cdspesagem.filtered := false;
end;

procedure TFPesagem.btnpesagensClick(Sender: TObject);
begin
     FPesagemrel := tFPesagemrel.create(self);
     BtnFiltro.click;
     FPesagemrel.RLReport2.PreviewModal;
end;

procedure TFPesagem.SpeedButton1Click(Sender: TObject);
     function executasql (textosql : string) : string;
     begin
          dm.QExiste.close;
          dm.QExiste.sql.text := textosql;
          dm.QExiste.sql.add('and pesdata >= :dataini and pesdata <= :datafin');
          dm.QExiste.parambyname('dataini').asdate := strtodate(txtfiltroinicial.text);
          dm.QExiste.parambyname('datafin').asdate := strtodate(txtfiltrofinal.text);
          dm.QExiste.open;
          result := dm.qexiste.fields[0].asstring;
          dm.QExiste.close;
     end;

     function executasqlestatistica (textosql : string) : string;
     begin
          dm.QExiste.close;
          dm.QExiste.sql.text := textosql;
          dm.QExiste.parambyname('dataini').asdate := strtodate(txtfiltroinicial.text);
          dm.QExiste.parambyname('datafin').asdate := strtodate(txtfiltrofinal.text);
          dm.QExiste.open;
          result := dm.qexiste.fields[0].asstring;
          dm.QExiste.close;
     end;

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

     FPesagemrel := tFPesagemrel.create(self);
     FPesagemrel.cdstmp.FieldDefs.Clear;
     FPesagemrel.cdstmp.FieldDefs.Add('TMPDataIni', ftDate, 0, false);
     FPesagemrel.cdstmp.FieldDefs.Add('TMPDataFin', ftDate, 0, false);
     FPesagemrel.cdstmp.FieldDefs.Add('TMPNumPesagens', ftFloat, 0, false);
     FPesagemrel.cdstmp.FieldDefs.Add('TMPPesoTotal', ftFloat, 0, false);
     FPesagemrel.cdstmp.FieldDefs.Add('TMPToleranciaMedia', ftFloat, 0, false);
     FPesagemrel.cdstmp.FieldDefs.Add('TMPTotaldeExcesso', ftFloat, 0, false);
     FPesagemrel.cdstmp.FieldDefs.Add('TMPExcesso', ftFloat, 0, false);
     FPesagemrel.cdstmp.FieldDefs.Add('TMPMarcaMaisPassou', ftString, 100, false);
     FPesagemrel.cdstmp.FieldDefs.Add('TMPMarcaMenosPassou', ftString, 100, false);
     FPesagemrel.cdstmp.FieldDefs.Add('TMPModeloMaisPassou', ftString, 100, false);
     FPesagemrel.cdstmp.FieldDefs.Add('TMPModeloMenosPassou', ftString, 100, false);
     FPesagemrel.cdstmp.FieldDefs.Add('TMPCategoriaMaisPassou', ftString, 100, false);
     FPesagemrel.cdstmp.FieldDefs.Add('TMPCategoriaMenosPassou', ftString, 100, false);
     FPesagemrel.cdstmp.CreateDataSet;
     FPesagemrel.cdstmp.open;
     FPesagemrel.cdstmp.append;
     FPesagemrel.cdstmp.FieldByName('TMPDataIni').AsDateTime := strtodate(txtfiltroinicial.text);
     FPesagemrel.cdstmp.FieldByName('TMPDataFin').AsDateTime := strtodate(txtfiltrofinal.text);
     FPesagemrel.cdstmp.FieldByName('TMPNumPesagens').asFloat := strtofloat(executasql('select count(pescod) as num from tpesagem where pescod <> 0'));
     FPesagemrel.cdstmp.FieldByName('TMPPesoTotal').asFloat := strtofloat(executasql('select sum(pespeso) as peso from tpesagem  where pescod <> 0'));
     FPesagemrel.cdstmp.FieldByName('TMPToleranciaMedia').asFloat := strtofloat(executasql('select avg(pestolerancia) as tolerancia from tpesagem where pescod <> 0'));
     FPesagemrel.cdstmp.FieldByName('TMPTotaldeExcesso').asFloat := strtofloat(executasql('select count(pescod) as excess from tpesagem where (pespeso - (pespesopermitido + (pespesopermitido * (PESTOLERANCIA / 100)))) > 0'));
     FPesagemrel.cdstmp.FieldByName('TMPExcesso').asFloat := strtofloat(executasql('select SUM(pespeso - (pespesopermitido + (pespesopermitido * (PESTOLERANCIA / 100)))) as excesso from tpesagem where (pespeso - (pespesopermitido + (pespesopermitido * (PESTOLERANCIA / 100)))) > 0'));

     FPesagemrel.cdstmp.FieldByName('TMPMarcaMaisPassou').asString := executasqlestatistica('select Marnome, count(PESCOD) from TPESAGEM inner join tmarca on marcod = pesmarca' +
                                                                                            ' where pesdata between :dataini and :datafin group by marnome order by 2 desc');
     FPesagemrel.cdstmp.FieldByName('TMPMarcaMenosPassou').asString := executasqlestatistica('select Marnome, count(PESCOD) from TPESAGEM inner join tmarca on marcod = pesmarca' +
                                                                                            ' where pesdata between :dataini and :datafin group by marnome order by 2 asc');

     FPesagemrel.cdstmp.FieldByName('TMPModeloMaisPassou').asString := executasqlestatistica('select pesmodelo, count(PESCOD) from TPESAGEM where pesdata between :dataini and :datafin group by pesmodelo order by 2 desc');
     FPesagemrel.cdstmp.FieldByName('TMPModeloMenosPassou').asString := executasqlestatistica('select pesmodelo, count(PESCOD) from TPESAGEM where pesdata between :dataini and :datafin group by pesmodelo order by 2 asc');

     FPesagemrel.cdstmp.FieldByName('TMPCategoriaMaisPassou').asString := executasqlestatistica('select catnome, count(PESCOD) from TPESAGEM inner join tcategoria on catcod = pescategoria' +
                                                                                            ' where pesdata between :dataini and :datafin group by catnome order by 2 desc');
     FPesagemrel.cdstmp.FieldByName('TMPCategoriaMenosPassou').asString := executasqlestatistica('select catnome, count(PESCOD) from TPESAGEM inner join tcategoria on catcod = pescategoria' +
                                                                                            ' where pesdata between :dataini and :datafin group by catnome order by 2 asc');
     FPesagemrel.cdstmp.post;
     FPesagemrel.RLReport1.PreviewModal;
end;

procedure TFPesagem.imgpeso1Click(Sender: TObject);
var
     i : byte;
     peso, texto : string;
begin
{     _AlteraModeloBalanca(2);
     _AlteraModooperacao(0);
     if _AbrePortaSerial('COM1') <> 1 then
          raise Exception.Create('Impossivel abrir porta serial, tente reiniciar o micro e ver os cabos de conexão com a balança.');

     peso := _LEPESO();
     texto := '';
     for i := 0 to length(peso) do
        if peso[i] in ['0','1','2','3','4','5','6','7','8','9'] then
             texto := texto + peso[i];

     if sender = imgpeso1 then
          dm.cdspesagemPESPESO1.asfloat := strtofloat(texto);
     if sender = imgpeso2 then
          dm.cdspesagemPESPESO2.asfloat := strtofloat(texto);
     if sender = imgpeso3 then
          dm.cdspesagemPESPESO3.asfloat := strtofloat(texto);
     if sender =imgpeso4 then
          dm.cdspesagemPESPESO4.asfloat := strtofloat(texto);
     if sender =imgpeso5 then
          dm.cdspesagemPESPESO5.asfloat := strtofloat(texto);
     if sender =imgpeso6 then
          dm.cdspesagemPESPESO6.asfloat := strtofloat(texto);
     if sender =imgpeso7 then
          dm.cdspesagemPESPESO7.asfloat := strtofloat(texto);
     if _fechaportaserial() <> 1 then
          raise Exception.Create('Impossivel fechar porta serial.');}
end;

procedure TFPesagem.WSDBEdit8Enter(Sender: TObject);
begin
     dm.cdspesagemPESTOLERANCIA.asfloat := strtofloat(valor_parametro(4));
end;

end.
