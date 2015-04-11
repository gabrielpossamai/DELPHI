unit UBkpRst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Buttons, StdCtrls, FileCtrl, ExtCtrls, UFunProGeral;

type
  TFrmBkpRst = class(TForm)
    RadioGroup2: TRadioGroup;
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    sbFechar: TSpeedButton;
    sbConfirma: TSpeedButton;
    Animate1: TAnimate;
    RadioGroup1: TRadioGroup;
    procedure sbConfirmaClick(Sender: TObject);
    procedure sbFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBkpRst: TFrmBkpRst;

implementation

uses UMenuPrin, UDM;

{$R *.dfm}

procedure TFrmBkpRst.sbConfirmaClick(Sender: TObject);
begin
  If MessageDlg('Antes de confirmar esta operação, feche o banco de dados' + #13 + #13 + 'Deseja efetuar '  +    RadioGroup1.Items[RadioGroup1.ItemIndex] + '?', mtConfirmation, [mbYes, mbNo],0) = mrNo then
    Abort;
Try
    Animate1.Visible := True;
    Animate1.Active := True; //ativa a animação
    If RadioGroup1.ItemIndex = 0 then
    begin
      FrmMenuPrin.Compactar;
      Copia(ExtractFilePath(Application.ExeName)+'\Banco.mdb', DirectoryListBox1.Directory);
    end;
    If RadioGroup1.ItemIndex = 1 then // se a segunda opção do RadioButton for escolhida
    begin
      Dm.Conexao.Connected := False; // Desconecta o banco de dados
      Copia(DirectoryListBox1.Directory + '\Banco.mdb', ExtractFilePath(Application.ExeName));
      Dm.Conexao.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.ExeName)+'\Banco.mdb;Persist Security Info=False;Jet OLEDB:Database Password=senha'; // monta a string de conexão ao banco de dados
      Dm.Conexao.Connected := True; // Conecta o banco de dados
    end;
Finally
    Animate1.Visible := False;
    Animate1.Active := False;
    MessageDlg('Operação concluída.', mtInformation, [mbOk], 0);
End;


end;

procedure TFrmBkpRst.sbFecharClick(Sender: TObject);
begin
    close;
end;

end.
