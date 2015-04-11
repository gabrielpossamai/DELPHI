program Sistema;

uses
  Forms,
  UMenuPrin in 'UMenuPrin.pas' {FrmMenuPrin},
  SysUtils,
  UDM in 'UDM.pas' {DM},
  ULogin in 'ULogin.pas' {FrmLogin},
  UCadPadrao in 'UCadPadrao.pas' {FrmCadPadrao},
  UCadCliente in 'UCadCliente.pas' {FrmCadCliente},
  USplash in 'USplash.pas' {FrmSplash},
  UCadFornecedor in 'UCadFornecedor.pas' {FrmCadFornecedor},
  UCadCategoria in 'UCadCategoria.pas' {FrmCadCategoria},
  UCadItem in 'UCadItem.pas' {FrmCadItem},
  UCadFuncionario in 'UCadFuncionario.pas' {FrmCadFuncionario},
  UMovVenda in 'UMovVenda.pas' {FrmMovVenda},
  UMovItemVenda in 'UMovItemVenda.pas' {FrmMovItemVenda},
  UPesCliCid in 'UPesCliCid.pas' {FrmPesCliCid},
  UQRRelCliCid in 'UQRRelCliCid.pas' {FrmRelCliCid},
  UBkpRst in 'UBkpRst.pas' {FrmBkpRst},
  UGraficoCliente in 'UGraficoCliente.pas' {FrmGraficoCliente},
  UPesCliCid1 in 'UPesCliCid1.pas' {FrmPesCliCid1},
  UGraficoFornecedor in 'UGraficoFornecedor.pas' {FrmGraficoFornecedor},
  UPesForCid in 'UPesForCid.pas' {FrmPesForCid},
  UPesForCid1 in 'UPesForCid1.pas' {FrmPesForCid1},
  UGraficoFuncionario in 'UGraficoFuncionario.pas' {FrmGraficoFuncionario};

{$R *.res}

begin
  Application.Initialize;
  Application.HelpFile := 'C:\Users\Clésio\Desktop\SISTEMA\PROGRAMAS\AJUDA.HLP';
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmMenuPrin, FrmMenuPrin);
  Application.CreateForm(TDM, DM);
  Dm.Conexao.Connected := False;
  Dm.Conexao.ConnectionString :=  'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' +
                                  ExtractFilePath(Application.ExeName)+
                                  'Banco.mdb;Persist Security Info=False;';
  Dm.Conexao.Connected := True;


  Application.CreateForm(TFrmCadPadrao, FrmCadPadrao);
  Application.CreateForm(TFrmSplash, FrmSplash);
  Application.CreateForm(TFrmPesCliCid, FrmPesCliCid);
  Application.CreateForm(TFrmRelCliCid, FrmRelCliCid);
  FrmSplash.Show; //exibe a tela FrmSplash
      FrmSplash.Refresh; // dá um refresh na tela
      Sleep(2000); // (aguarda 02 segundos)

  Application.Run;
end.
