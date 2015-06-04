//Autor: Vinícius Sant'anna
//Email: anakimsky@gmail.com
//Descrição: Criptografador de Arquivos e Textos
//Este programa esta sob licensa da GPL - GENERAL PUBLIC LICENSE
//Se vc for modificar esse programa por favor me avise por email.
unit ucrypto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TfrmCrypto = class(TForm)
    MemDescriptografar: TMemo;
    MemCriptografar: TMemo;
    edtChave: TEdit;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    SaveDialog1: TSaveDialog;
    SaveDialog2: TSaveDialog;
    lblChave: TLabel;
    btnSobre: TBitBtn;
    btnSair: TBitBtn;
    imgChave: TImage;
    btnLimparDescriptografar: TBitBtn;
    btnLimparCriptografar: TBitBtn;
    btnCriptografar: TBitBtn;
    btnDescriptografar: TBitBtn;
    btnLoadFileD: TBitBtn;
    btnSaveFileD: TBitBtn;
    btnAbrirArquivoC: TBitBtn;
    btnSalvarArquivoC: TBitBtn;
    StatusDescriptografado: TSpeedButton;
    StatusCriptografado: TSpeedButton;
    procedure btnCriptografarClick(Sender: TObject);
    procedure btnDescriptografarClick(Sender: TObject);
    procedure btnLoadFileDClick(Sender: TObject);
    procedure btnSaveFileDClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAbrirArquivoCClick(Sender: TObject);
    procedure btnSalvarArquivoCClick(Sender: TObject);
    procedure btnLimparCClick(Sender: TObject);
    procedure btnLimparDClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnSobreClick(Sender: TObject);
    procedure btnLimparDescriptografarClick(Sender: TObject);
    procedure btnLimparCriptografarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCrypto: TfrmCrypto;

implementation

{$R *.DFM}
uses usobre;

procedure TfrmCrypto.btnCriptografarClick(Sender: TObject);
var
  texto : string;
  posicao : integer;
  chave :integer;
begin

  if edtChave.text = '' then
     showmessage('Por Favor Insira a Chave!!!')
  else if StrToInt(edtChave.text) > 255 then
     ShowMessage('Número deve ser menor que 256!!!')
  Else if StrToInt(edtChave.text) < 2 then
     ShowMessage('Número deve ser Maior que 1!!!')
  else
    begin
      texto := memDescriptografar.text;
      chave := StrToInt(edtChave.text);
      for posicao := 1 to length(texto) do
        texto[posicao] := chr(ord(texto[posicao]) + chave);
      memCriptografar.text := texto;
      StatusCriptografado.Visible:=True;
    end;
end;

procedure TfrmCrypto.btnDescriptografarClick(Sender: TObject);
var
  texto : string;
  posicao : integer;
  chave :integer;
begin

  if edtChave.text = '' then
     showmessage('Por Favor Insira a Chave!!!')
  else if StrToInt(edtChave.text) > 255 then
     ShowMessage('Número deve ser menor que 256!!!')
  Else if StrToInt(edtChave.text) < 2 then
     ShowMessage('Número deve ser Maior que 1!!!')
  else
    begin
      texto := memCriptografar.text;
      chave := StrToInt(edtChave.text);
      for posicao := 1 to length(texto) do
        texto[posicao] := chr(ord(texto[posicao]) - chave);
      memDescriptografar.text := texto;
      StatusDescriptografado.Visible:=True;
    end;
end;

procedure TfrmCrypto.btnLoadFileDClick(Sender: TObject);
begin
    OpenDialog1.execute;
    if OpenDialog1.FileName = '' then
    else
      memDescriptografar.Lines.LoadFromFile(OpenDialog1.filename);
      StatusDescriptografado.Visible:=True;
end;

procedure TfrmCrypto.btnSaveFileDClick(Sender: TObject);
begin
    SaveDialog1.Execute;
    if SaveDialog1.filename = '' then
    else
      memDescriptografar.Lines.SaveToFile(SaveDIalog1.filename);
end;

procedure TfrmCrypto.FormCreate(Sender: TObject);
begin
memDescriptografar.text := '';
memCriptografar.text := '';
end;

procedure TfrmCrypto.btnAbrirArquivoCClick(Sender: TObject);
begin
    OpenDialog2.execute;
    if OpenDialog2.filename = '' then
    else
      memCriptografar.Lines.LoadFromFile(OpenDialog2.filename);
      StatusCriptografado.Visible:=True;
end;

procedure TfrmCrypto.btnSalvarArquivoCClick(Sender: TObject);
begin
    SaveDialog2.Execute;
    if SaveDialog2.filename = '' then
    else
      memCriptografar.Lines.SaveToFile(SaveDialog2.filename);
end;

procedure TfrmCrypto.btnLimparCClick(Sender: TObject);
begin
  memCriptografar.text := '';
end;

procedure TfrmCrypto.btnLimparDClick(Sender: TObject);
begin
  memDescriptografar.text :='';
end;

procedure TfrmCrypto.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmCrypto.btnSobreClick(Sender: TObject);
begin
frmSobre.ShowModal;
end;

procedure TfrmCrypto.btnLimparDescriptografarClick(Sender: TObject);
begin
MemDescriptografar.Text := '';
StatusDescriptografado.Visible:=False;
end;

procedure TfrmCrypto.btnLimparCriptografarClick(Sender: TObject);
begin
MemCriptografar.Text := '';
StatusCriptografado.Visible:=False;
end;

end.
