unit ufrmFerramentasOpcoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmModeloMDIChild, ExtCtrls, StdCtrls, ComCtrls, Buttons, IniFiles,
  uVariaveisGlobais;

type
  TfrmFerramentasOpcoes = class(TfrmModeloMDIChild)
    pgcOpcoes: TPageControl;
    tshDadosEmpresa: TTabSheet;
    gbxEmpresaPrincipal: TGroupBox;
    lblRazaoSocial: TLabel;
    txtRazaoSocial: TEdit;
    btnCancelar: TSpeedButton;
    btnAplicar: TSpeedButton;
    btnOk: TSpeedButton;
    lblNomeFantasia: TLabel;
    txtNomeFantasia: TEdit;
    lblCNPJ: TLabel;
    txtCNPJ: TEdit;
    txtInscEst: TEdit;
    lblInscEst: TLabel;
    gbxLogradouro: TGroupBox;
    lblEndereco: TLabel;
    lblTelefone: TLabel;
    txtEndereco: TEdit;
    txtTelefone: TEdit;
    tshDadosSistema: TTabSheet;
    gbxSistemaPrincipal: TGroupBox;
    lblDescriao: TLabel;
    txtDescriao: TEdit;
    lblSite: TLabel;
    txtSite: TEdit;
    lblInscMun: TLabel;
    txtInscMun: TEdit;
    lblVersao: TLabel;
    txtVersao: TEdit;
    procedure rgpAssinaturaDigitalizadaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnTestarConexaoRadiusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFerramentasOpcoes: TfrmFerramentasOpcoes;
  sBDRadiusNome:   String;
  sBDRadiusDriver: String;

implementation

uses ufrmPrincipal;

{$R *.dfm}

procedure TfrmFerramentasOpcoes.rgpAssinaturaDigitalizadaClick(
  Sender: TObject);
begin
  inherited;
{
  if rgpAssinaturaDigitalizada.ItemIndex = 0 then
   begin
     lblCaminhoArqAssDig.Visible := True;
     txtCaminhoArqAssDig.Visible := True;
     btnLocalizar.Visible        := True;
   end
  else if rgpAssinaturaDigitalizada.ItemIndex = 1 then
   begin
     lblCaminhoArqAssDig.Visible := False;
     txtCaminhoArqAssDig.Visible := False;
     btnLocalizar.Visible        := False;
   end;
}
end;

procedure TfrmFerramentasOpcoes.FormCreate(Sender: TObject);
begin
 inherited;

 // RECUPERA INFORMAÇÕES DA EMPRESA USUÁRIA DO SISTEMA.
 txtRazaoSocial.Text  := iniSistemaArquivoIni.ReadString('EMPRESA', 'RazaoSocial',   '' );
 txtNomeFantasia.Text := iniSistemaArquivoIni.ReadString('EMPRESA', 'NomeFantasia',  '' );
 txtCNPJ.Text         := iniSistemaArquivoIni.ReadString('EMPRESA', 'CNPJ',          '' );
 txtInscEst.Text      := iniSistemaArquivoIni.ReadString('EMPRESA', 'InscEstadual',  '' );
 txtSite.Text         := iniSistemaArquivoIni.ReadString('EMPRESA', 'Site',          '' );
 txtInscMun.Text      := iniSistemaArquivoIni.ReadString('EMPRESA', 'InscMunicipal', '' );
 txtEndereco.Text     := iniSistemaArquivoIni.ReadString('EMPRESA', 'Endereco',      '' );
 txtTelefone.Text     := iniSistemaArquivoIni.ReadString('EMPRESA', 'Telefone',      '' );

 // RECUPERA INFORMAÇÕES DO SISTEMA.
 txtDescriao.Text     :=  iniSistemaArquivoIni.ReadString('SISTEMA', 'Descricao', '' );
 txtVersao.Text       :=  iniSistemaArquivoIni.ReadString('SISTEMA', 'Versao', '' );

 //
 pgcOpcoes.ActivePage := tshDadosEmpresa;
end;

procedure TfrmFerramentasOpcoes.btnAplicarClick(Sender: TObject);
begin
 inherited;
 ///////////////////////////////////////////////////////////////////////////////
 // GRAVA INFORMAÇÕES DA EMPRESA USUÁRIA DO SISTEMA.                          //
 ///////////////////////////////////////////////////////////////////////////////
 iniSistemaArquivoIni.WriteString('EMPRESA', 'RazaoSocial',   txtRazaoSocial.Text );
 iniSistemaArquivoIni.WriteString('EMPRESA', 'NomeFantasia',  txtNomeFantasia.Text );
 iniSistemaArquivoIni.WriteString('EMPRESA', 'CNPJ',          txtCNPJ.Text );
 iniSistemaArquivoIni.WriteString('EMPRESA', 'InscEstadual',  txtInscEst.Text );
 iniSistemaArquivoIni.WriteString('EMPRESA', 'InscMunicipal', txtInscMun.Text );
 iniSistemaArquivoIni.WriteString('EMPRESA', 'Endereco',      txtEndereco.Text );
 iniSistemaArquivoIni.WriteString('EMPRESA', 'Telefone',      txtTelefone.Text );
 iniSistemaArquivoIni.WriteString('EMPRESA', 'Site',          txtSite.Text );
 ///////////////////////////////////////////////////////////////////////////////
 // GRAVA INFORMAÇÕES DO SISTEMA.                                             //
 ///////////////////////////////////////////////////////////////////////////////
 iniSistemaArquivoIni.WriteString('SISTEMA', 'Descricao',   txtDescriao.Text );
 iniSistemaArquivoIni.WriteString('SISTEMA', 'Versao',   txtVersao.Text );

 ///////////////////////////////////////////////////////////////////////////////
 // ATUALIZA AS VARIÁVEIS DO SISTEMA.                                         //
 ///////////////////////////////////////////////////////////////////////////////
 sSistemaEmpresaRazaoSocial   := iniSistemaArquivoIni.ReadString('EMPRESA', 'RazaoSocial', '');
 sSistemaEmpresaNomeFantasia  := iniSistemaArquivoIni.ReadString('EMPRESA', 'NomeFantasia', '');
 sSistemaEmpresaCNPJ          := iniSistemaArquivoIni.ReadString('EMPRESA', 'CNPJ', '');
 sSistemaEmpresaInscEstadual  := iniSistemaArquivoIni.ReadString('EMPRESA', 'InscEstadual', '');
 sSistemaEmpresaInscMunicipal := iniSistemaArquivoIni.ReadString('EMPRESA', 'InscMunicipal', '');
 sSistemaEmpresaEndereco      := iniSistemaArquivoIni.ReadString('EMPRESA', 'Endereco', '');
 sSistemaEmpresaTelefone      := iniSistemaArquivoIni.ReadString('EMPRESA', 'Telefone', '');
 sSistemaEmpresaSite          := iniSistemaArquivoIni.ReadString('EMPRESA', 'Site', '');
 sSistemaDescricao            := iniSistemaArquivoIni.ReadString('SISTEMA', 'Descricao', '');
end;

procedure TfrmFerramentasOpcoes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TfrmFerramentasOpcoes.btnOkClick(Sender: TObject);
begin
  inherited;
  Self.btnAplicar.OnClick(Self);
  Self.Close;
end;

procedure TfrmFerramentasOpcoes.btnTestarConexaoRadiusClick(
  Sender: TObject);
begin
 inherited;

   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
{
   frmPrincipal.conexaoDBRadius.Connected := False;
   frmPrincipal.conexaoDBRadius.Params.Clear;

   frmPrincipal.conexaoDBRadius.Params.Add( 'DriverName='        + cbxBDRadius.Text       );
   frmPrincipal.conexaoDBRadius.Params.Add( 'HostName='          + txtServidorRadius.Text );
   frmPrincipal.conexaoDBRadius.Params.Add( 'Database='          + txtEsquemaRadius.Text  );
   frmPrincipal.conexaoDBRadius.Params.Add( 'User_Name='         + txtUsuarioRadius.Text  );
   frmPrincipal.conexaoDBRadius.Params.Add( 'Password='          + txtSenhaRadius.Text    );

   frmPrincipal.conexaoDBRadius.Params.Add( 'BlobSize='          + '-1' );
   frmPrincipal.conexaoDBRadius.Params.Add( 'ErrorResourceFile=' + '' );
   frmPrincipal.conexaoDBRadius.Params.Add( 'LocaleCode='        + '0000' );

   /////////////////////////////////////////////////////////////////////////////
   // Configuração para o mysql 5.0 (Delphi 7)                                //
   /////////////////////////////////////////////////////////////////////////////
   frmPrincipal.conexaoDBRadius.GetDriverFunc := 'getSQLDriverMYSQL50';
   frmPrincipal.conexaoDBRadius.LibraryName   := 'dbxopenmysql50.dll';
   frmPrincipal.conexaoDBRadius.VendorLib     := 'libmysql.dll';

   frmPrincipal.conexaoDBRadius.Connected := True;

   /////////////////////////////////////////////////////////////////////////////
   /////////////////////////////////////////////////////////////////////////////
   // Conecta no Radius.                                                      //
   /////////////////////////////////////////////////////////////////////////////
{
   frmPrincipal.conexaoDBRadius.Connected := False;
   frmPrincipal.conexaoDBRadius.Params.Clear;

   frmPrincipal.conexaoDBRadius.Params.Add( 'DriverName='        + sSistemaRADIUSDriverName );
   frmPrincipal.conexaoDBRadius.Params.Add( 'HostName='          + sSistemaRADIUSHost       );
   frmPrincipal.conexaoDBRadius.Params.Add( 'Database='          + sSistemaRADIUSNomeBD     );
   frmPrincipal.conexaoDBRadius.Params.Add( 'User_Name='         + sSistemaRADIUSLogin      );
   frmPrincipal.conexaoDBRadius.Params.Add( 'Password='          + sSistemaRADIUSSenha      );

   frmPrincipal.conexaoDBRadius.Params.Add( 'BlobSize='          + '-1' );
   frmPrincipal.conexaoDBRadius.Params.Add( 'ErrorResourceFile=' + '' );
   frmPrincipal.conexaoDBRadius.Params.Add( 'LocaleCode='        + '0000' );

   /////////////////////////////////////////////////////////////////////////////
   // Configuração para o mysql 5.0 (Delphi 7)                                //
   /////////////////////////////////////////////////////////////////////////////
   frmPrincipal.conexaoDBRadius.GetDriverFunc := 'getSQLDriverMYSQL50';
   frmPrincipal.conexaoDBRadius.LibraryName   := 'dbxopenmysql50.dll';
   frmPrincipal.conexaoDBRadius.VendorLib     := 'libmysql.dll';

}
   /////////////////////////////////////////////////////////////////////////////
   /////////////////////////////////////////////////////////////////////////////

 {
 ///////////////////////////////////////////////////////////////////////////////
 // Atualiza as variáveis globais do Radius.                                  //
 ///////////////////////////////////////////////////////////////////////////////
 sSistemaRADIUSHost       := iniSistemaArquivoIni.ReadString('RADIUS', 'Host', '');
 sSistemaRADIUSDriverName := iniSistemaArquivoIni.ReadString('RADIUS', 'DriverName', '');
 sSistemaRADIUSNomeBD     := iniSistemaArquivoIni.ReadString('RADIUS', 'NomeBD', '');
 sSistemaRADIUSLogin      := iniSistemaArquivoIni.ReadString('RADIUS', 'Login', '');
 sSistemaRADIUSSenha      := iniSistemaArquivoIni.ReadString('RADIUS', 'Senha', '');
 sSistemaRADIUSPorta      := iniSistemaArquivoIni.ReadString('RADIUS', 'Porta', '');


 frmPrincipal.conexaoDBRadius.Connected := False;
 frmPrincipal.conexaoDBRadius.Connected := True;
 }
end;

end.
