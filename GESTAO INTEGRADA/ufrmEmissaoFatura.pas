unit ufrmEmissaoFatura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, Buttons, StdCtrls, ComCtrls, Mask, DBCtrls,
  DB, DataSourceUrb, DBClient, ClientDataSetUrb, FMTBcd, Provider, SqlExpr;

type
  TfrmEmissaoFatura = class(TfrmModeloMDIChild)
    btnVisializar: TSpeedButton;
    gbxEmissao: TGroupBox;
    gbxDuplicata: TGroupBox;
    lblDtEmissao: TLabel;
    dtpDtEmissao: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    txtDupFatNum: TEdit;
    Label3: TLabel;
    txtDupNumOrdem: TEdit;
    txtDupFatValor: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    gbxNotaFiscal: TGroupBox;
    Label7: TLabel;
    txtNFNum: TEdit;
    txtNFValor: TMaskEdit;
    Label8: TLabel;
    chkColocar_S: TCheckBox;
    gbxObs: TGroupBox;
    cdsGerEmpresa: TClientDataSetUrb;
    cdsGerEmpresaID_Empresa: TIntegerField;
    cdsGerEmpresaRazaoSocial: TStringField;
    cdsGerEmpresaEndereco: TStringField;
    cdsGerEmpresaMunicipio: TStringField;
    cdsGerEmpresaUF: TStringField;
    cdsGerEmpresaTelefone: TStringField;
    dtsGerEmpresa: TDataSourceUrb;
    dblDupCliente: TDBLookupComboBox;
    gbxOutros: TGroupBox;
    Label9: TLabel;
    txtPracaPg: TEdit;
    cdsGerEmpresaCEP: TStringField;
    cdsGerEmpresaCNPJ: TStringField;
    cdsGerEmpresaInscEstado: TStringField;
    txtDtVencimento: TEdit;
    sqlGerEmpresa: TSQLDataSet;
    dspGerEmpresa: TDataSetProvider;
    sqlEmpresaEmissora: TSQLDataSet;
    dspEmpresaEmissora: TDataSetProvider;
    cdsEmpresaEmissora: TClientDataSetUrb;
    dtsEmpresaEmissora: TDataSourceUrb;
    dblEmpresaEmissora: TDBLookupComboBox;
    cdsEmpresaEmissoraID_Empresa: TIntegerField;
    cdsEmpresaEmissoraRazaoSocial: TStringField;
    cdsEmpresaEmissoraEndereco: TStringField;
    cdsEmpresaEmissoraMunicipio: TStringField;
    cdsEmpresaEmissoraUF: TStringField;
    cdsEmpresaEmissoraTelefone: TStringField;
    cdsEmpresaEmissoraCEP: TStringField;
    cdsEmpresaEmissoraCNPJ: TStringField;
    cdsEmpresaEmissoraInscEstado: TStringField;
    cdsEmpresaEmissoraInscMunic: TStringField;
    cdsEmpresaEmissoraTelefoneII: TStringField;
    cdsEmpresaEmissoraEmail: TStringField;
    procedure btnVisializarClick(Sender: TObject);
    procedure txtDupFatNumExit(Sender: TObject);
    procedure chkColocar_SClick(Sender: TObject);
    procedure txtNFValorExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmissaoFatura: TfrmEmissaoFatura;

implementation

uses ufrmPrincipal,
     Extensos;

{$R *.dfm}

procedure TfrmEmissaoFatura.btnVisializarClick(Sender: TObject);
var
  sValorExtenso: string;
  sTelefone:     string;
  sTelefoneII:   string;
  sCNPJ:         string;
  sInscEst:      string;
  sInscMun:      string;
  sCEP:          string;
begin
  inherited;
  sValorExtenso := Extenso(StrToFloat(txtNFValor.Text));


  sTelefone     := '(' +
                   Copy(cdsEmpresaEmissoraTelefone.Text,1,2) +
                   ')' +
                   Copy(cdsEmpresaEmissoraTelefone.Text,3,4) +
                   '-' +
//                   Copy(cdsEmpresaEmissoraTelefone.Text,6,4);
                   Copy(cdsEmpresaEmissoraTelefone.Text,7,4);


  sTelefoneII   := '(' +
                   Copy(cdsEmpresaEmissoraTelefoneII.Text,1,2) +
                   ')' +
                   Copy(cdsEmpresaEmissoraTelefoneII.Text,3,4) +
                   '-' +
//                   Copy(cdsEmpresaEmissoraTelefoneII.Text,6,4);
                   Copy(cdsEmpresaEmissoraTelefoneII.Text,7,4);

//34.143.693/0001-93 Insc. Estadual: 82.246.819
  sCNPJ         := Copy(cdsEmpresaEmissoraCNPJ.Text,1 ,2) +
                   '.' +
                   Copy(cdsEmpresaEmissoraCNPJ.Text,3 ,3) +
                   '.' +
                   Copy(cdsEmpresaEmissoraCNPJ.Text,6 ,3) +
                   '/' +
                   Copy(cdsEmpresaEmissoraCNPJ.Text,9 ,4) +
                   '-' +
                   Copy(cdsEmpresaEmissoraCNPJ.Text,13 ,2);

  sInscEst      := Copy(cdsEmpresaEmissoraInscEstado.Text,1 ,2) +
                   '.' +
                   Copy(cdsEmpresaEmissoraInscEstado.Text,3 ,3) +
                   '.' +
                   Copy(cdsEmpresaEmissoraInscEstado.Text,6 ,3);


  if cdsEmpresaEmissoraInscMunic.Text = 'Isento' then
  begin
    sInscMun := cdsEmpresaEmissoraInscMunic.Text;
  end
  else
  begin
    sInscMun := Copy(cdsEmpresaEmissoraInscMunic.Text,1 ,6) +
                '-' +
                Copy(cdsEmpresaEmissoraInscMunic.Text,7 ,1);
  end;

  sCEP          := Copy(cdsEmpresaEmissoraCEP.Text,1 ,5) +
                   '-' +
                   Copy(cdsEmpresaEmissoraCEP.Text,6 ,3);

  frmPrincipal.rvpGestao_Empresarial.SetParam('varDataEmissao', FormatDateTime('"Data de Emissão," dd "de" mmmm "de" yyyy', dtpDtEmissao.Date) );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varNFNumero', txtNFNum.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varNFValor', txtNFValor.Text);
  frmPrincipal.rvpGestao_Empresarial.SetParam('varFatNumero', txtDupFatNum.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varFatValor', txtDupFatValor.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varFatNumOrdem', txtDupNumOrdem.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varFatVencimento', txtDtVencimento.Text );
  // Sacado
  frmPrincipal.rvpGestao_Empresarial.SetParam('varSacadoNome', cdsGerEmpresaRazaoSocial.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varSacadoEnd', cdsGerEmpresaEndereco.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varSacadoMunicipio', cdsGerEmpresaMunicipio.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varSacadoEstado', cdsGerEmpresaUF.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varSacadoCEP', cdsGerEmpresaCEP.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varSacadoPracaPg', txtPracaPg.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varSacadoCNPJ', cdsGerEmpresaCNPJ.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varSacadoInscEstado', cdsGerEmpresaInscEstado.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varValorExtenso', sValorExtenso );
  // Empresa Emissora
  frmPrincipal.rvpGestao_Empresarial.SetParam('varEmissorNome', cdsEmpresaEmissoraRazaoSocial.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varEmissorEnd', cdsEmpresaEmissoraEndereco.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varEmissorMunicipio', cdsEmpresaEmissoraMunicipio.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varEmissorEstado', cdsEmpresaEmissoraUF.Text );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varEmissorCEP', sCEP );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varEmissorCNPJ', sCNPJ );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varEmissorInscEstado', sInscEst );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varEmissorInscMunic', sInscMun );
  frmPrincipal.rvpGestao_Empresarial.SetParam('varEmissorTelefone', 'Tel. ' + sTelefone + ' - ' + sTelefoneII );



//  Format(cdsEmpresaEmissoraTelefoneII.Text);
//  Format('%d %d %0:d %1:d', [10, 20])" produces the string '10 20 10 20'.





  frmPrincipal.rvpGestao_Empresarial.SetParam('varEmissorEmail', cdsEmpresaEmissoraEmail.Text );


  // VISUALIZA O RELATÓRIO.
  frmPrincipal.rvpGestao_Empresarial.ExecuteReport('rptFatura');

  // LIMPA OS CAMPOS PARA A PRÓXIMA IMPRESSÃO SE NECESSÁRIO.
  if MessageDlg('Você deseja limpar os campos para impressão de outra fatura ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    txtDtVencimento.Clear;
    txtDupFatNum.Clear;
    txtDupFatValor.Clear;
    txtDupNumOrdem.Clear;
    txtNFNum.Clear;
    txtNFValor.Clear;
    dblDupCliente.KeyValue := 0;
    dtpDtEmissao.SetFocus;
  end;

end;

procedure TfrmEmissaoFatura.txtDupFatNumExit(Sender: TObject);
begin
  inherited;

  if chkColocar_S.Checked then
  begin
    txtDupFatNum.Text   := txtNFNum.Text + '/S';
    txtDupNumOrdem.Text := txtNFNum.Text + '/S';
  end

  else
  begin
    txtDupFatNum.Text   := txtNFNum.Text;
    txtDupNumOrdem.Text := txtNFNum.Text;
  end;

end;

procedure TfrmEmissaoFatura.chkColocar_SClick(Sender: TObject);
begin
  inherited;

  if chkColocar_S.Checked then
  begin
    txtDupFatNum.Text   := txtNFNum.Text + '/S';
    txtDupNumOrdem.Text := txtNFNum.Text + '/S';
  end

  else
  begin
    txtDupFatNum.Text   := txtNFNum.Text;
    txtDupNumOrdem.Text := txtNFNum.Text;
  end;

end;

procedure TfrmEmissaoFatura.txtNFValorExit(Sender: TObject);
begin
  inherited;
  txtDupFatValor.Text := txtNFValor.Text;
end;

procedure TfrmEmissaoFatura.FormCreate(Sender: TObject);
begin
  inherited;
  cdsGerEmpresa.Active := False;
  sqlGerEmpresa.CommandText := ' SELECT ID_Empresa, '  +
                               '        RazaoSocial, ' +
                               '        Endereco, '    +
                               '        Municipio, '   +
                               '        UF, '          +
                               '        Telefone, '    +
                               '        CEP, '         +
                               '        CNPJ, '        +
                               '        InscEstado '   +
                               ' FROM   empresa '      +
                               ' ORDER BY RazaoSocial ';
  cdsGerEmpresa.Active := True;


  cdsEmpresaEmissora.Active := False;
  sqlEmpresaEmissora.CommandText :=  ' SELECT ID_Empresa, ' +
                                     '        concat(RazaoSocial, ' + QuotedStr(' - ') + ', Municipio) AS RazaoSocial, ' +
                                     '        Endereco, '   +
                                     '        Municipio, '  +
                                     '        UF, '         +
                                     '        Telefone, '   +
                                     '        TelefoneII, ' +
                                     '        CEP, '        +
                                     '        CNPJ, '       +
                                     '        Email, '      +
                                     '        InscMunic, '  +
                                     '        InscEstado '  +
                                     ' FROM   empresa '     +
                                     ' WHERE  (RazaoSocial = ' + QuotedStr('Ferpan Comercio de Metais Ltda') + ') ' +
                                     ' ORDER BY RazaoSocial ';
  cdsEmpresaEmissora.Active := True;

  dtpDtEmissao.Date := Date;

  // Posiciona o Lookup da Empresa Emissora na Macaé do Rio
  dblEmpresaEmissora.KeyValue := 57;
end;

procedure TfrmEmissaoFatura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsGerEmpresa.Active := False;
end;

end.

