unit princ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, ActnList, ImgList, Grids, DBGrids, StdCtrls,
  DBCtrls, Mask, ExtCtrls;

type
  TFmPrinc = class(TForm)
    MainMenu: TMainMenu;
    PageControl: TPageControl;
    TsClientes: TTabSheet;
    Opes1: TMenuItem;
    TbClientes: TToolBar;
    IlPrinc: TImageList;
    DbgClientes: TDBGrid;
    AcExit: TAction;
    AcCreateClient: TAction;
    AcEditClient: TAction;
    AcDeleteClient: TAction;
    AlClientes: TActionList;
    Sair1: TMenuItem;
    N1: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Cliente1: TMenuItem;
    Adicionar3: TMenuItem;
    Editar1: TMenuItem;
    AcDelete1: TMenuItem;
    Banco1: TMenuItem;
    TSBanco: TTabSheet;
    TbBancos: TToolBar;
    AlBancos: TActionList;
    DbgBancos: TDBGrid;
    PmBancos: TPopupMenu;
    AcCreateBank: TAction;
    AcEditBank: TAction;
    AcDeleteBank: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    AcCreateBank1: TMenuItem;
    Editar3: TMenuItem;
    Deletar1: TMenuItem;
    PmClientes: TPopupMenu;
    Adicionar2: TMenuItem;
    Editar2: TMenuItem;
    AcDelete2: TMenuItem;
    Adicionar1: TMenuItem;
    Editar4: TMenuItem;
    Remover1: TMenuItem;
    AcOpenCheques: TAction;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    N2: TMenuItem;
    Cheques1: TMenuItem;
    N3: TMenuItem;
    Cheques2: TMenuItem;
    TsConsCheques: TTabSheet;
    DbgConsCheques: TDBGrid;
    EdAgencia: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BtnBusca: TButton;
    DtpEmissaoInicio: TDateTimePicker;
    DtpEmissaoFim: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    DblcbBanco: TDBLookupComboBox;
    EdNome: TEdit;
    Label5: TLabel;
    EdCnpj: TEdit;
    Label6: TLabel;
    EdConta: TEdit;
    Label7: TLabel;
    EdNumCheque: TEdit;
    Label9: TLabel;
    EdValorFim: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    EdAlinea: TEdit;
    Label13: TLabel;
    DtpDPagInicio: TDateTimePicker;
    DtpDPagFim: TDateTimePicker;
    Label14: TLabel;
    Label15: TLabel;
    EdJurosPagosInicio: TEdit;
    EdJurosPagosFim: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    EdValorPagoInicio: TEdit;
    EdValorPagoFim: TEdit;
    Label8: TLabel;
    Label18: TLabel;
    PFilters: TPanel;
    CbEmissao: TCheckBox;
    CbPagamento: TCheckBox;
    RgStatus: TRadioGroup;
    EdValorInicio: TEdit;
    procedure AcExitExecute(Sender: TObject);
    procedure AcCreateClientExecute(Sender: TObject);
    procedure AcEditClientExecute(Sender: TObject);
    procedure AcDeleteClientExecute(Sender: TObject);
    procedure AcCreateBankExecute(Sender: TObject);
    procedure AcEditBankExecute(Sender: TObject);
    procedure AcDeleteBankExecute(Sender: TObject);
    procedure AcOpenChequesExecute(Sender: TObject);
    procedure AcBuscarExecute(Sender: TObject);
    procedure CbEmissaoClick(Sender: TObject);
    procedure CbPagamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPrinc: TFmPrinc;

implementation

uses Modulo, Cliente, Banco, Cheque;

{$R *.dfm}

var
  FmClientes: TFmClientes;
  FmCheques:  TFmCheques;
  FmBancos:   TFmBancos;

procedure TFmPrinc.AcBuscarExecute(Sender: TObject);
begin
  with DmWinBank, IbqConsulta do
  begin
    Active := False;
    Sql.Clear;
    Sql.Add('SELECT ');
    Sql.Add('cli.nome nomeCliente, ');
    Sql.Add('cli.cnpj, ');
    Sql.Add('ban.nome nomeBanco, ');
    Sql.Add('che.*, ');
    Sql.Add('(che.valor + che.jurosPagos) valorPago ');
    Sql.Add('FROM ');
    Sql.Add('CLIENTES cli, ');
    Sql.Add('CHEQUES che, ');
    Sql.Add('BANCOS ban ');
    Sql.Add('WHERE che.cnpj = cli.cnpj AND che.banco = ban.codigo ');

    // Wheres vindos do filtro

    // Nome do cliente
    if Trim(EdNome.Text) <> '' then
      Sql.Add('AND cli.nome LIKE ''%' + UpperCase(Trim(EdNome.Text)) + '%'' ');

    // CPF/CNPJ do cliente
    if Trim(EdCnpj.Text) <> '' then
      Sql.Add('AND cli.cnpj LIKE ''%' + UpperCase(Trim(EdCnpj.Text)) + '%'' ');

    // Código do Banco
    if Trim(DblcbBanco.Text) <> '' then
      Sql.Add('AND che.banco = ' + Trim(DblcbBanco.Text) + ' ');

    // Agência
    if Trim(EdAgencia.Text) <> '' then
      Sql.Add('AND che.agencia = ' + Trim(EdAgencia.Text) + ' ');

    // Conta
    if Trim(EdConta.Text) <> '' then
      Sql.Add('AND che.conta = ' + Trim(EdConta.Text) + ' ');

    // Alínea
    if Trim(EdAlinea.Text) <> '' then
      Sql.Add('AND che.alinea = ' + Trim(EdAlinea.Text) + ' ');

    // Número do Cheque
    if Trim(EdNumCheque.Text) <> '' then
      Sql.Add('AND che.numero = ' + Trim(EdNumCheque.Text) + ' ');

    // Valor do cheque
    if (Trim(EdValorInicio.Text) <> '') AND (Trim(EdValorFim.Text) = '') then
      begin
        Sql.Add('AND che.valor = :Valor ');
        ParamByName('Valor').AsFloat := StrToFloat(EdValorInicio.Text);
      end
    else
      if (Trim(EdValorInicio.Text) <> '') AND (Trim(EdValorFim.Text) <> '') then
        begin
          Sql.Add('AND che.valor BETWEEN :ValorInit AND :ValorEnd ');
          ParamByName('ValorInit').AsFloat := StrToFloat(EdValorInicio.Text);
          ParamByName('ValorEnd').AsFloat  := StrToFloat(EdValorFim.Text);
        end;
    
    // Juros pagos
    if (Trim(EdJurosPagosInicio.Text) <> '') AND (Trim(EdJurosPagosFim.Text) = '') then
      begin
        Sql.Add('AND che.jurospagos = :JurosPagos ');
        ParamByName('JurosPagos').AsFloat := StrToFloat(EdJurosPagosInicio.Text);
      end
    else
      if (Trim(EdJurosPagosInicio.Text) <> '') AND (Trim(EdJurosPagosFim.Text) <> '') then
        begin
          Sql.Add('AND che.jurospagos BETWEEN :JurPagInit AND :JurPagEnd ');
          ParamByName('JurPagInit').AsFloat := StrToFloat(EdJurosPagosInicio.Text);
          ParamByName('JurPagEnd').AsFloat := StrToFloat(EdJurosPagosFim.Text);
        end;

    // Valor pago
    if (Trim(EdValorPagoInicio.Text) <> '') AND (Trim(EdValorPagoFim.Text) = '') then
      begin
        Sql.Add('AND che.valor + che.jurospagos = :ValorPago ');
        ParamByName('ValorPago').AsFloat := StrToFloat(EdValorPagoInicio.Text);
      end
    else
      if (Trim(EdValorPagoInicio.Text) <> '') AND (Trim(EdValorPagoFim.Text) <> '') then
        begin
          Sql.Add('AND che.valor + che.jurospagos BETWEEN :ValPagInit AND :ValPagEnd ');
          ParamByName('ValPagInit').AsFloat := StrToFloat(EdValorPagoInicio.Text);
          ParamByName('ValPagEnd').AsFloat := StrToFloat(EdValorPagoFim.Text);
        end;
  
    // Data de emissão
    if CbEmissao.Checked then
    begin
      Sql.Add('AND che.emissao BETWEEN :DtEmInicio AND :DtEmFim');
      ParamByName('DtEmInicio').AsDate := DtpEmissaoInicio.Date;
      ParamByName('DtEmFim').AsDate := DtpEmissaoFim.Date;
    end;

    // Data de pagamento
    if CbPagamento.Checked then
    begin
      Sql.Add('AND che.datapgto BETWEEN :DtPgtoInicio AND :DtPgtoFim');
      ParamByName('DtPgtoInicio').AsDate := DtpDPagInicio.Date;
      ParamByName('DtPgtoFim').AsDate := DtpDPagFim.Date;
    end;

    if(RgStatus.ItemIndex = 1) then
      Sql.Add('AND che.datapgto IS NOT NULL')
    else
      if(RgStatus.ItemIndex = 2) then
        Sql.Add('AND che.datapgto IS NULL');

    // Cláusulas após o WHERE
    Sql.Add('ORDER BY emissao');
    
    Active := True;
  end;
end;

procedure TFmPrinc.AcCreateBankExecute(Sender: TObject);
begin
  FmBancos := TFmBancos.Create(Self);

  with FmBancos, DmWinBank do
  begin
    IbtBancos.Insert;
    Caption := 'Criação de banco';
    ShowModal;
  end;
end;

procedure TFmPrinc.AcCreateClientExecute(Sender: TObject);
begin
  // Abre o form de edit para criar um registro no banco de dados
  FmClientes := TFmClientes.Create(Self);

  with FmClientes, DmWinBank do
  begin
    IbtClientes.Insert;
    Caption := 'Criação de cliente';
    ShowModal;
  end;
end;

procedure TFmPrinc.AcDeleteBankExecute(Sender: TObject);
begin
  with DmWinBank do
  begin
    if(mrYes = MessageDlg('Tem certeza que deseja excluir o banco?', mtConfirmation, [mbYes,mbNo], 0)) then
    try
      IbtBancos.Delete;
    except
      on e: Exception do
      begin
        if (pos('FOREIGN', e.Message) <> 0) then
          ShowMessage('Já há cheques relacionados à este Banco')
        else
          ShowMessage('Erro no banco de dados:' + #13 + e.Message);
      end;
    end;
  end;
end;

procedure TFmPrinc.AcDeleteClientExecute(Sender: TObject);
begin
  with DmWinBank do
  begin
    if(mrYes = MessageDlg('Tem certeza que deseja excluir o cliente?', mtConfirmation, [mbYes,mbNo], 0)) then
    try
      IbtClientes.Delete;
    except
      on e: Exception do
      begin
        if (pos('FOREIGN', e.Message) <> 0) then
          ShowMessage('Já há cheques relacionados à este cliente')
        else
          ShowMessage('Erro no banco de dados:' + #13 + e.Message);
      end;
    end;
  end;
end;

procedure TFmPrinc.AcEditBankExecute(Sender: TObject);
begin
  FmBancos := TFmBancos.Create(Self);

  with FmBancos, DmWinBank do
  begin
    IbtBancos.Edit;
    Caption := 'Edição de cliente';
    ShowModal;
  end;
end;

procedure TFmPrinc.AcEditClientExecute(Sender: TObject);
begin
  // Abre o form para edição do registro selecionado
  FmClientes := TFmClientes.Create(Self);

  with FmClientes, DmWinBank do
  begin
    IbtClientes.Edit;
    Caption := 'Edição de cliente';
    ShowModal;
  end;
end;

procedure TFmPrinc.AcExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TFmPrinc.AcOpenChequesExecute(Sender: TObject);
begin

  FmCheques := TFmCheques.Create(self);

  with FmCheques, DmWinBank do
  begin
    Caption := 'Cheques de ' + IbtClientesNOME.Value +
      ' - CPF/CNPJ: ' + IbtClientesCNPJ.Value;
    ShowModal;
  end;

end;

procedure TFmPrinc.CbEmissaoClick(Sender: TObject);
begin
  DtpEmissaoInicio.Enabled := CbEmissao.Checked;
  DtpEmissaoFim.Enabled := CbEmissao.Checked;
end;

procedure TFmPrinc.CbPagamentoClick(Sender: TObject);
begin
  DtpDPagInicio.Enabled := CbPagamento.Checked;
  DtpDPagFim.Enabled := CbPagamento.Checked;
end;

end.
