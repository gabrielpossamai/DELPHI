program WinBank;

uses
  Forms,
  Modulo in 'Modulo.pas' {DmWinBank: TDataModule},
  princ in 'princ.pas' {FmPrinc},
  Cliente in 'Cliente.pas' {FmClientes},
  Banco in 'Banco.pas' {FmBancos},
  Cheque in 'Cheque.pas' {FmCheques},
  CreateCheque in 'CreateCheque.pas' {FmCreateCheque},
  BaixaCheque in 'BaixaCheque.pas' {FmBaixaCheque},
  BaixaChequeUpdate in 'BaixaChequeUpdate.pas' {FmBaixaChequeUpdate};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmWinBank, DmWinBank);
  Application.CreateForm(TFmPrinc, FmPrinc);
  Application.Run;
end.
