unit tpEdit;

interface

uses tpString, StdCtrls, Graphics, Classes, Controls, Windows,
     Messages, SysUtils, Forms, tpClasses;

type
  TtpEdit = class(TEdit)
  private
    fColorFocus: TColor;
    fColorNoFocus: TColor;
    fCheck: TCheck;
    fAlignment: TAlignment;
    fCaracter: TCaracters;
    FUf: string;
    FNull: boolean;
    FQtdeCsasDecimais: Integer;
    procedure SetAlignment(const Value: TAlignment);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure SetCheck(Value: TCheck);
    procedure SetCaracter(Value: TCaracters);
    procedure SetAcceptNull(Value: boolean);
    procedure FormatarTpReal;
    procedure SetCsasDecimais(const Value: Integer);
  protected
    procedure DoEnter; override;
    procedure DoExit; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure KeyPress(var Key: Char); override;
    procedure Clear; override;
  published
    property ColorFocus: TColor read fColorFocus write fColorFocus default clWindow;
    property Check: TCheck read fCheck write SetCheck default ckNone;
    property Caracter: TCaracters read fCaracter write SetCaracter default tcAlfanumeric;
    property Alignment:TAlignment read FAlignment write SetAlignment;
    property UF: string read FUf write FUf;
    property AcceptNull: boolean read FNull write SetAcceptNull default true;
    property CasasDecimais: Integer read FQtdeCsasDecimais write SetCsasDecimais default 2;
  end;

procedure Register;

implementation

uses tpValidar;

var
  vet_valido: array [0..35] of string = ('0','1','2','3','4','5','6','7', '8','9','a','b','c','d','e','f', 'g','h','i','j','k','l','m','n', 'o','p','q','r','s','t','u','v', 'w','x','y','z');

procedure Register;
begin
  RegisterComponents('WaibComponent', [TtpEdit]);
end;

{ TWaibEdit }

constructor TtpEdit.Create(AOwner: TComponent);
begin
  inherited;
  Ctl3D             := False;
  Height            := 21;
  fColorFocus       := clWindow;
  FNull             := true;
  FQtdeCsasDecimais := 2;
  self.CharCase     := ecUpperCase;
end;

procedure TtpEdit.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  case Alignment of
    taLeftJustify: Params.Style := Params.Style or LongWord(ES_Left);
    taRightJustify: Params.Style := Params.Style or LongWord(ES_Right);
    taCenter: Params.Style := Params.Style or LongWord(ES_Center);
  end;
end;

procedure TtpEdit.DoEnter;
begin
  if Color <> clInfoBk then
  begin
    if fColorNoFocus <> Color then fColorNoFocus := Color;
    if Color <> ColorFocus then Color := ColorFocus;
  end;
  if ((fCheck = ckCpfCnpj) or (fCheck = ckCEP) or ((fCheck = ckIE) and (Text <> 'ISENTO'))
    or (fCheck = ckDate) or (fCheck = ckTelefone) or (fCheck = ckPis)
    or (fCheck = ckTitulo)) and (Text <> '') then Text := RemoverCaracters(Text);
  if FCaracter = tcReal then self.Text := BuscaTroca(self.Text,'.','');
  SelectAll;
  inherited;
end;

procedure TtpEdit.DoExit;
begin
  if Color <> clInfoBk then
    if Color <> fColorNoFocus then Color := fColorNoFocus;
  if (Trim(Text) <> '') or (fCheck = ckDate) then
  begin
    if (fCheck = ckCEP) then
      if not ValidarCep(Text) then
      begin
        Perform(WM_SETFOCUS,0,0);
        raise Exception.Create(' " ' + Text + ' " não é um CEP válido');
      end
      else
        Text := FormatarCEP(Text);

    if (fCheck = ckCpfCnpj) then
      if not ValidarCpfCnpj(Text) then
      begin
        Perform(WM_SETFOCUS,0,0);
        if Length(Text) = 11 then
          raise Exception.Create(' " ' + Text + ' " não é um CPF válido')
        else
          raise Exception.Create(' " ' + Text + ' " não é um CNPJ válido');
      end
      else
        Text:=FormatarCpfCnpj(Text);

    if (fCheck = ckDate) then
    begin
      if not ValidarData(Text) then
      begin
        Perform(WM_SETFOCUS,0,0);
        //Esse exception não está sendo levandado
        raise Exception.Create(' " ' + Text + ' " Não é uma data válida');
      end
      else
        Text := FormatarData(Text);
      if (Trim(Text) = EmptyStr) and (not FNull)  then
          Text := FormatarData(DateToStr(Now));
    end;

    if (fCheck = ckEmail) then
      if not ValidarEmail(Text) then
      begin
        Perform(WM_SETFOCUS,0,0);
        raise Exception.Create(' " ' + Text + ' " Formato de E-mail não aceitável');
      end;

    if (fCheck = ckIE) then
      if not ValidarIE(Text, FUf) then
      begin
        Perform(WM_SETFOCUS,0,0);
        raise Exception.Create(' " ' + Text + ' " não é uma IE válido para UF: '+FUf);
      end
      else
        Text := FormatarIE(RemoverCaracters(Text),FUf);

    if (fCheck = ckPis) then
       if not ValidarPis(Text) then
       begin
         Perform(WM_SETFOCUS,0,0);
         raise Exception.Create(' " ' + Text + ' " Não é um PIS válida');
       end
       else
          Text := FormatarPis(Text);
    if (fCheck = ckTelefone) then
       if not ValidarTelefone(Text) then
       begin
         Perform(WM_SETFOCUS,0,0);
         raise Exception.Create(' " ' + Text + ' " não é um número de telefone válido');
       end
       else
          Text := FormatarTelefone(Text);
    if (fCheck = ckTitulo) then
       if not ValidarTitulo(Text) then
       begin
          Perform(WM_SETFOCUS,0,0);
          raise Exception.Create(' " ' + Text + ' " Não é um título válida');
       end
       else
          if Text <> '' then
             Text := FormatarTitulo(FormatFloat('0000000000000', StrToFloat(Text)));
    if (fCheck = ckUF) then
       if not ValidarUF(Text) then
       begin
          Perform(WM_SETFOCUS,0,0);
          raise Exception.Create(' " ' + Text + ' " Não é uma UF válida');
       end;
    if (fCheck = ckURL) then
       if not ValidarUrl(Text) then
       begin
          Perform(WM_SETFOCUS,0,0);
          raise Exception.Create(' " ' + Text + ' " Não é endereço WEB aceitável');
       end;
    if fCaracter = tcReal then
    begin
      FormatarTpReal;
    end;
    if (not FNull) and ((Text = '') or ((fCaracter = tcReal) and (StringToFloat(Text) = 0))
        or ((FCheck = ckTelefone) and (length(trim(Text)) = 2))) then
    begin
       Perform(WM_SETFOCUS,0,0);
       raise Exception.Create('Informação necessária');
    end;
  end;
  inherited;
end;

procedure TtpEdit.KeyPress(var Key: Char);
const
  teclasLetras  = ['A'..'Z', 'a'..'z', #8];
  teclasNum     = ['0'..'9', #8];
  teclasAlfan   = ['A'..'Z', 'a'..'z', '0'..'9', '~', '"', '''', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')' , '_', '-', '+', '=', '|', '/', '\', '{', '}', '[', ']', ':', ';', ',', '.', '<', '>', '´', '`', '³', '£', '¢', '¬', '§', 'ª', 'º', '°', '?', '²', '¹', #8];
  teclasNumSymb = ['0'..'9', '~', '"', '''', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')' , '_', '-', '+', '=', '|', '/', '\', '{', '}', '[', ']', ':', ';', ',', '.', '<', '>', '´', '`', '³', '£', '¢', '¬', '§', 'ª', 'º', '°', '?', #8];
  teclasReal    = ['0'..'9','-', ',', #8];
  teclasIE      = ['I', 'S', 'E', 'N', 'T', 'O', 'i', 's', 'e', 'n', 't', 'o', '0'..'9', #8];
begin
  if (key in teclasAlfan) then
  begin
    if fCaracter = tcNumeric then
      if not (key in teclasNum) then key := #0;
    if fCaracter = tcAlfanumeric then
      if not (key in teclasAlfan) then key := #0;
    if fCaracter = tcNumericSymbol then
      if not (key in teclasNumSymb) then key := #0;
    if fCaracter = tcReal then
      if not (key in teclasReal) then key := #0;
    if fCaracter = tcIE then
      if not (key in teclasIE) then key := #0;
    if fCheck = ckUF then
      if not (key in teclasLetras) then key := #0;
  end;
  inherited KeyPress(Key);
end;

procedure TtpEdit.SetAlignment(const Value: TAlignment);
begin
  if FAlignment <> Value then
  begin
    FAlignment := Value;
    RecreateWnd;
  end;
end;

procedure TtpEdit.SetCheck(Value: TCheck);
begin
  if Value <> fCheck then
    fCheck := Value;
  self.CharCase := ecUpperCase;
  if fCheck = ckCep then
  begin
    self.MaxLength  := 8;
    self.Caracter   := tcNumeric;
    self.AcceptNull := true;
  end;
  if fCheck = ckCpfCnpj then
  begin
    self.MaxLength  := 14;
    self.Caracter   := tcNumeric;
    //self.AcceptNull := false;
  end;
  if fCheck = ckDate then
  begin
    self.MaxLength  := 8;
    self.Caracter   := tcNumeric;
    self.AcceptNull := true;
  end;
  if fCheck = ckEmail then
  begin
    self.MaxLength  := 0;
    self.Caracter   := tcAlfanumeric;
    self.AcceptNull := true;
    self.CharCase   := ecLowerCase;
  end;
  if fCheck = ckIe then
  begin
    self.UF         := 'MA';
    self.MaxLength  := 14;
    self.Caracter   := tcIE;
    self.AcceptNull := false;
  end;
  if fCheck = ckNone then
  begin
    self.MaxLength  := 0;
    self.AcceptNull := true;
  end;
  if fCheck = ckPIS then
  begin
    self.MaxLength  := 11;
    self.Caracter   := tcNumeric;
    self.AcceptNull := true;
  end;
  if fCheck = ckTelefone then
  begin
    self.MaxLength  := 10;
    self.Caracter   := tcNumeric;
    self.AcceptNull := true;
  end;
  if fCheck = ckTitulo then
  begin
    self.MaxLength  := 13;
    self.Caracter   := tcNumeric;
    self.AcceptNull := true;
  end;
  if fCheck = ckUf then
  begin
    self.MaxLength  := 2;
    self.Caracter   := tcAlfanumeric;
    self.AcceptNull := true;
  end;
  if fCheck = ckURL then
  begin
    self.MaxLength  := 0;
    self.Caracter   := tcAlfanumeric;
    self.AcceptNull := true;
    self.CharCase   := ecLowerCase;
  end;
end;

procedure TtpEdit.SetCaracter(Value: TCaracters);
begin
  if Value <> fCaracter then
    fCaracter := Value;
  if (FCheck = ckCpfCnpj) or (FCheck = ckCep) or (FCheck = ckTelefone) or
    (FCheck = ckDate) or (FCheck = ckPIS) or (FCheck = ckTitulo) then
    fCaracter := tcNumeric;
  if (FCheck = ckEmail) or (FCheck = ckURL) or (FCheck = ckUF) then
    fCaracter := tcAlfanumeric;
  if (FCheck = ckIE) then fCaracter := tcIE;
  if (fCaracter = tcAlfanumeric) or (fCaracter = tcNumeric) or
    (fCaracter = tcNumericSymbol) or (fCaracter = tcIE) then
    self.Text := ''
  else
  begin
    self.Text := '';
    FormatarTpReal;
    SetAlignment(taRightJustify);
  end;
end;

procedure TtpEdit.SetAcceptNull(Value: boolean);
begin
  if Value <> FNull then FNull := Value;
   //if (FCheck = ckCpfCnpj) or (FCheck = ckIE) then FNull := false;
end;

procedure TtpEdit.SetCsasDecimais(const Value: Integer);
var
  QtdeKsas: Integer;
begin
  QtdeKsas := Value;
  if Value < 2 then QtdeKsas := 2;
  if Value > 6 then QtdeKsas := 6;
  FQtdeCsasDecimais := QtdeKsas;
  if fCaracter = tcReal then
    FormatarTpReal;
end;

procedure TtpEdit.FormatarTpReal;
begin
  if RemoverCaracters(self.Text) = '' then self.Text := '';
  if Trim(self.Text) = '' then
  begin
    case CasasDecimais of
      2: Text  := '0,00';
      3: Text  := '0,000';
      4: Text  := '0,0000';
      5: Text  := '0,00000';
      6: Text  := '0,000000';
    end;
  end;  
  case CasasDecimais of
    2: self.Text := FormatCurr('###,###,##0.00',     StringToFloat(self.Text));
    3: self.Text := FormatCurr('###,###,##0.000',    StringToFloat(self.Text));
    4: self.Text := FormatCurr('###,###,##0.0000',   StringToFloat(self.Text));
    5: self.Text := FormatCurr('###,###,##0.00000',  StringToFloat(self.Text));
    6: self.Text := FormatCurr('###,###,##0.000000', StringToFloat(self.Text));
  end;
end;

procedure TtpEdit.Clear;
begin
  inherited;
  if fCaracter = tcReal then FormatarTpReal;
end;

end.
