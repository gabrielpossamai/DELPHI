unit UGeraBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, ToolWin, RXCtrls, StdCtrls, WSEdit,
  ExtCtrls, Mask, WSMaskEdit, DB, DBClient, RLReport, Buttons, dateutils;

type
  TFGeraBoleto = class(TForm)
    lbltitulo: TLabel;
    PanPesquisa: TPanel;
    Label4: TLabel;
    txtboletoinicial: TWSEdit;
    ToolBarNavegacao: TToolBar;
    BtnPrimeiro: TToolButton;
    BtnAnterior: TToolButton;
    BtnProximo: TToolButton;
    BtnUltimo: TToolButton;
    ToolButton10: TToolButton;
    BtnExcluir: TToolButton;
    ToolButton14: TToolButton;
    BtnImprimir: TToolButton;
    ToolButton1: TToolButton;
    btnsair: TToolButton;
    DBGrid: TDBGrid;
    Label1: TLabel;
    txtboletofinal: TWSEdit;
    CDSTMP: TClientDataSet;
    DataSource: TDataSource;
    RLReport: TRLReport;
    RLBand5: TRLBand;
    RLDBText7: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    Label2: TLabel;
    txtfiltrobanco: TWSEdit;
    btnfiltrobanco: TSpeedButton;
    RLDBMemo1: TRLDBMemo;
    btnfiltrocliente: TSpeedButton;
    txtfiltrocli: TWSEdit;
    Label3: TLabel;
    Label5: TLabel;
    txtquant: TWSEdit;
    Label6: TLabel;
    txtiniciais: TWSEdit;
    RLDBText1: TRLDBText;
    Label7: TLabel;
    txtmes: TWSEdit;
    listcliente: TListBox;
    txtano: TWSEdit;
    Label8: TLabel;
    RLSystemInfo1: TRLSystemInfo;
    procedure txtfiltrobancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnsairClick(Sender: TObject);
    procedure BtnPrimeiroClick(Sender: TObject);
    procedure BtnAnteriorClick(Sender: TObject);
    procedure BtnProximoClick(Sender: TObject);
    procedure BtnUltimoClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure txtboletoinicialChange(Sender: TObject);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure btnfiltrobancoClick(Sender: TObject);
    procedure btnfiltroclienteClick(Sender: TObject);
    procedure txtmesEnter(Sender: TObject);
    procedure txtfiltrocliEnter(Sender: TObject);
    procedure txtfiltrocliExit(Sender: TObject);
    procedure txtanoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGeraBoleto: TFGeraBoleto;

implementation

uses UMenu, UDM, UBanco, UCliente;

{$R *.dfm}

procedure TFGeraBoleto.txtfiltrobancoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
     cont, boleto : integer;
     data : tdate;
     continuar : boolean;
begin
    if key = vk_f3 then
    begin
       if sender = txtfiltrobanco then
          btnfiltrobanco.click;
       if sender = txtfiltrocli then
          btnfiltrocliente.click;
    end;
    if (key = 38) then
    begin
         if (sender = txtboletofinal) and (btnanterior.enabled = true) and (datasource.dataset.active) then
         begin
             btnanterior.Click;
             key := 0;
         end
         else
             Perform (WM_nextDlgCtl,1,0);
    end;
    if (key = 40) then
    begin
         if (sender = txtboletofinal) and (btnproximo.enabled = true) and (datasource.dataset.active) then
         begin
            btnproximo.Click;
            key := 0;
         end
         else
            Perform (WM_nextDlgCtl,0,0);
    end;
    if key = (13) then
    begin
        if sender = txtfiltrocli then
        begin
             if txtfiltrocli.text = '' then
                  Perform (WM_nextDlgCtl,0,0)
             else
             begin
                  if not dm.cdscliente.active then
                       dm.cdscliente.open;
                  dm.cdscliente.locate('CLICOD', txtfiltrocli.text,[]);
                  listcliente.Items.add(formatfloat('00000000',strtoint(txtfiltrocli.text)) + ' - ' + dm.CDSClienteCLINOME.asstring);
                  txtfiltrocli.Clear;
                  txtfiltrocli.SetFocus;
             end;
        end
        else
        if (sender as twsedit).enterclicar then
        begin
             try
                  strtofloat(txtboletoinicial.text);
             except
                  showmessage('Campo Boleto Inicial Inválido!');
                  txtboletoinicial.setfocus;
                  exit;
             end;
             try
                  strtoint(txtmes.text);
             except
                  showmessage('Campo Mês Inválido!');
                  txtmes.setfocus;
                  exit;
             end;
             try
                  strtoint(txtano.text);
             except
                  showmessage('Campo Ano Inválido!');
                  txtano.setfocus;
                  exit;
             end;
             try
                  strtoint(txtquant.text);
             except
                  showmessage('Campo Quantidade Inválido!');
                  txtquant.setfocus;
                  exit;
             end;

             boleto := strtoint(txtboletoinicial.text);
             while cdstmp.recordcount > 0 do
                  cdstmp.delete;
             dm.CDSCliente.open;
             dm.CDSCliente.first;
             while not dm.CDSCliente.eof do
             begin
                  continuar := false;
                  if listcliente.items.count > 0 then
                  begin
                       listcliente.itemindex := -1;
                       while listcliente.itemindex <> listcliente.items.Count - 1 do
                       begin
                            listcliente.itemindex := listcliente.itemindex + 1;
                            if strtoint(copy(listcliente.items.strings[listcliente.itemindex],1,8)) = dm.CDSClienteCLICOD.asinteger then
                            begin
                                 continuar := true;
                                 break;
                            end;
                       end;
                  end;
                  if not continuar then
                  begin
                       dm.cdscliente.next;
                       continue;
                  end;
                  dm.CDSCidade.locate('CIDCOD', dm.CDSClienteCLICIDADE.asinteger ,[]);
                  data := strtodate(inttostr(dayof(date)) + '/' + txtmes.text + '/' + txtano.text);
                  cont := strtoint(txtquant.text);
                  while cont > 0 do
                  begin
                       inc(boleto);
                       cdstmp.append;
                       cdstmp.FieldByName('TMPCodCliente').asinteger := dm.CDSClienteCLICod.asinteger;
                       cdstmp.FieldByName('TMPCliente').asstring := dm.CDSClienteCLINome.asstring;
                       cdstmp.FieldByName('TMPEndereco').asstring := dm.CDSClienteCLIENDERECO.asstring + ' - ' + floattostr(dm.CDSClienteCLINUMERO.asfloat) + ',  ' + dm.CDSClienteCLIBAIRRO.asstring;
                       cdstmp.FieldByName('TMPCidade').asstring := dm.CDSCidadeCIDNOME.asstring + '  ' + dm.CDSCidadeCIDUF.asstring + ' - ' + dm.CDSClienteCLICEP.asstring;
                       cdstmp.FieldByName('TMPNumero').asinteger := boleto;
                       cdstmp.FieldByName('TMPEmissao').asdatetime := data;
                       cdstmp.FieldByName('TMPMes').asstring := FormatDateTime('mmmm', data) + '/' + inttostr(yearof(data));
                       cdstmp.post;
                       data := IncMonth(data,1);
                       dec(cont);
                       application.ProcessMessages;
                  end;
                  dm.CDSCliente.next;
             end;
             dm.CDSCliente.close;
        end
        else
            Perform (WM_nextDlgCtl,0,0);
    end;
    if tbKeyIsDown(VK_CONTROL) then
        if (key=vk_delete) and (BtnExcluir.Enabled = True) then
             BtnExcluir.Click;
    if (key=27) and (btnSair.Enabled = True) then
        btnSair.Click;
    if (key=vk_f8) and (btnImprimir.Enabled = True) then
        btnImprimir.Click;
end;

procedure TFGeraBoleto.btnsairClick(Sender: TObject);
begin
     close;
end;

procedure TFGeraBoleto.BtnPrimeiroClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.first;
end;

procedure TFGeraBoleto.BtnAnteriorClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.prior;
end;

procedure TFGeraBoleto.BtnProximoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.next;
end;

procedure TFGeraBoleto.BtnUltimoClick(Sender: TObject);
begin
     if DataSource.DataSet.Active then
        DataSource.DataSet.last;
end;

procedure TFGeraBoleto.BtnExcluirClick(Sender: TObject);
begin
    if (DataSource.DataSet.Active = true) then
       if (DataSource.DataSet.RecordCount > 0) then
           if application.messagebox ('Confirma Exclusão?', 'Atenção', mb_yesno +  MB_ICONQUESTION )= mryes  then
               DataSource.DataSet.Delete;
end;

procedure TFGeraBoleto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     cdstmp.close;
     action := cafree;
end;

procedure TFGeraBoleto.FormShow(Sender: TObject);
begin
     cdstmp.FieldDefs.Add('TMPNumero', ftinteger, 0);
     cdstmp.FieldDefs.Add('TMPCodCliente', ftinteger, 0);
     cdstmp.FieldDefs.Add('TMPCliente', ftstring, 50);
     cdstmp.FieldDefs.Add('TMPEndereco', ftstring, 150);
     cdstmp.FieldDefs.Add('TMPCidade', ftstring, 100);
     cdstmp.FieldDefs.Add('TMPEmissao', ftdate, 0);
     cdstmp.FieldDefs.Add('TMPMes', ftstring, 30);     
     cdstmp.CreateDataSet;
     cdstmp.open;
     txtfiltrobanco.setfocus;
end;

procedure TFGeraBoleto.BtnImprimirClick(Sender: TObject);
begin
     dm.cdsbanco.open;
     try
          strtoint(txtfiltrobanco.text);
     except
           showmessage('Campo Banco Inválido!');
           txtfiltrobanco.setfocus;
           exit;
     end;
     dm.cdsbanco.Locate('BANCOD', txtfiltrobanco.text ,[]);
     rlreport.PreviewModal;
     CDSTMP.first;
     dm.CDSContRec.open;
     while CDSTMP.recordcount > 0 do
     begin
          if not dm.CDSContRec.locate('RECDOCUMENTO', CDSTMP.fieldbyname('TMPNumero').asinteger, []) then
          begin
               dm.CDSContRec.append;
               dm.CDSContRecRECNUMBANCO.asstring := txtiniciais.text + CDSTMP.fieldbyname('TMPNumero').asstring;
               dm.CDSContRecRECEMISSAO.asdatetime := CDSTMP.fieldbyname('TMPEmissao').asdatetime;
               dm.CDSContRecRECCLIENTE.asinteger := CDSTMP.fieldbyname('TMPCodCliente').asinteger;
               dm.CDSContRecRECBANCO.asinteger := strtoint(txtfiltrobanco.text);
               dm.CDSContRec.post;
               dm.CDSContRec.ApplyUpdates(0);
          end;
          CDSTMP.delete;
     end;
     dm.CDSContRec.close;     
     dm.cdsbanco.close;
     txtboletoinicial.setfocus;
end;

procedure TFGeraBoleto.txtboletoinicialChange(Sender: TObject);
begin
     if trim(txtboletoinicial.text) <> '' then
     begin
          txtboletofinal.clear;     
          try
               txtboletofinal.text := inttostr(StrToInt(txtboletoinicial.text) + strtoint(txtquant.text) - 1);
          except
               txtboletofinal.clear;
          end;
     end;
end;

procedure TFGeraBoleto.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if tbKeyIsDown(VK_CONTROL) then
        if (key=vk_delete) and (BtnExcluir.Enabled = True) then
             BtnExcluir.Click;
    if (key=27) and (btnSair.Enabled = True) then
        btnSair.Click;
    if (key=vk_f8) and (btnImprimir.Enabled = True) then
        btnImprimir.Click;
end;

procedure TFGeraBoleto.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    // lblmensagem.caption := dm.CDSBancoBANMENSAGEM.asstring;
end;

procedure TFGeraBoleto.btnfiltrobancoClick(Sender: TObject);
begin
     try
         fbanco := tfbanco.create(self);
         usuario('btnconsultar',fbanco.wsinformacao.programa);
         dm.cdsbanco.open;
         fbanco.showmodal;
         txtfiltrobanco.text := dm.cdsbancobancod.asstring;
     finally
         fbanco.release;
         fbanco := nil;
         fbanco.free;
     end;
end;

procedure TFGeraBoleto.btnfiltroclienteClick(Sender: TObject);
begin
     try
         fcliente := tfcliente.create(self);
         usuario('btnconsultar',fcliente.wsinformacao.programa);
         dm.cdscliente.open;
         fcliente.showmodal;
         txtfiltrocli.text := dm.cdsclienteclicod.asstring;
     finally
         fcliente.release;
         fcliente := nil;
         fcliente.free;
     end;
end;

procedure TFGeraBoleto.txtmesEnter(Sender: TObject);
begin
     if txtmes.Text = '' then
          txtmes.Text := inttostr(monthof(date));
end;

procedure TFGeraBoleto.txtfiltrocliEnter(Sender: TObject);
begin
     listcliente.visible := true;
end;

procedure TFGeraBoleto.txtfiltrocliExit(Sender: TObject);
begin
     listcliente.visible := false;
end;

procedure TFGeraBoleto.txtanoEnter(Sender: TObject);
begin
     if txtano.Text = '' then
          txtano.Text := inttostr(yearof(date));
end;

end.
