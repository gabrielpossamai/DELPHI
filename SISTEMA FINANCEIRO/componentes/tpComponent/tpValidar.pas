unit tpValidar;

interface

uses SysUtils, Messages, Windows, StdCtrls, tpClasses, tpString;

   function ValidarCep(Cep: String) : Boolean;
   function ValidarCpfCnpj(CpfCnpj: string) : Boolean;
   function ValidarIE(IE, UF: string) : Boolean;
   function ValidarTelefone(Telefone: string) : Boolean;
   function ValidarEmail(Email: string) : Boolean;
   function ValidarURL(URL: String): boolean;
   function ValidarData(Data: string): boolean;
   function ValidarUF(UF : string) : boolean;
   function ValidarPis(Dado : string) : boolean;
   function ValidarTitulo(Titulo : string) : boolean;
   function CalculaDVAgencia(Agencia: integer): integer;
   function ValidarCodigoIBGE(codigo: integer): boolean;

   function Valor_Aliquota_ICMS(vlr: TCustomEdit): Boolean;

const
   msg1  = 'Caractere(s) inválido(s) no início do e-mail.';
   msg2  = 'Símbolo @ não foi encontrado.';
   msg3  = 'Excesso do símbolo @.';
   msg4  = 'Caractere(s) inválido(s) antes do símbolo @.';
   msg5  = 'Caractere(s) inválido(s) depois do símbolo @.';
   msg6  = 'Agrupamento de caractere(s) inválido(s) a esqueda do @.';
   msg7  = 'Não existe ponto(s) digitado(s).';
   msg8  = 'Ponto encontrado no final do e-mail.';
   msg9  = 'Ausência de caractere(s) após o último ponto.';
   msg10 = 'Excesso de ponto(s) a direita do @.';
   msg11 = 'Ponto(s) digitado(s) de forma errada após o @.';
   msg12 = 'Caractere(s) inválido(s) antes do ponto.';
   msg13 = 'Caractere(s) inválido(s) depois do ponto.';

implementation

var
   vet_valido: array [0..35] of string = ('0','1','2','3','4','5','6','7', '8','9','a','b','c','d','e','f', 'g','h','i','j','k','l','m','n', 'o','p','q','r','s','t','u','v', 'w','x','y','z');

function ValidarCep(Cep: String) : Boolean;
begin
  Cep := RemoverCaracters(Cep);
  Result := true;
  if Cep <> '' then Result := Length(Cep) = 8;
end;

function ValidarCpfCnpj(CpfCnpj: string) : Boolean;
var
  n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
  d1,d2: integer;
  digitado, calculado: string;
begin
  Result  := False;
  CpfCnpj := RemoverCaracters(CpfCnpj);
  if CpfCnpj = '' then exit;
  if (Length(Trim(CpfCnpj))=11) or (Length(Trim(CpfCnpj))=14) then
    if (Length(Trim(CpfCnpj))=11) then
    begin
      if (CpfCnpj<>'00000000000') and (CpfCnpj<>'11111111111') and (CpfCnpj<>'22222222222')
      and (CpfCnpj<>'33333333333') and (CpfCnpj<>'44444444444') and (CpfCnpj<>'55555555555')
      and (CpfCnpj<>'66666666666') and (CpfCnpj<>'77777777777') and (CpfCnpj<>'88888888888')
      and (CpfCnpj<>'99999999999') and (CpfCnpj<>'12345678909') then
      begin
        n1:=StrToInt(CpfCnpj[1]);
        n2:=StrToInt(CpfCnpj[2]);
        n3:=StrToInt(CpfCnpj[3]);
        n4:=StrToInt(CpfCnpj[4]);
        n5:=StrToInt(CpfCnpj[5]);
        n6:=StrToInt(CpfCnpj[6]);
        n7:=StrToInt(CpfCnpj[7]);
        n8:=StrToInt(CpfCnpj[8]);
        n9:=StrToInt(CpfCnpj[9]);
        d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
        d1:=11-(d1 mod 11);
        if d1>=10 then d1:=0;
        d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
        d2:=11-(d2 mod 11);
        if d2>=10 then d2:=0;
        calculado:=inttostr(d1)+inttostr(d2);
        digitado:=CpfCnpj[10]+CpfCnpj[11];
        Result := calculado=digitado;
      end;
    end
    else
    begin
      if (CpfCnpj<>'00000000000000') then
      begin
        n1:=StrToInt(CpfCnpj[1]);
        n2:=StrToInt(CpfCnpj[2]);
        n3:=StrToInt(CpfCnpj[3]);
        n4:=StrToInt(CpfCnpj[4]);
        n5:=StrToInt(CpfCnpj[5]);
        n6:=StrToInt(CpfCnpj[6]);
        n7:=StrToInt(CpfCnpj[7]);
        n8:=StrToInt(CpfCnpj[8]);
        n9:=StrToInt(CpfCnpj[9]);
        n10:=StrToInt(CpfCnpj[10]);
        n11:=StrToInt(CpfCnpj[11]);
        n12:=StrToInt(CpfCnpj[12]);
        d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
        d1:=11-(d1 mod 11);
        if d1>=10 then d1:=0;
        d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
        d2:=11-(d2 mod 11);
        if d2>=10 then d2:=0;
        calculado:=inttostr(d1)+inttostr(d2);
        digitado:=CpfCnpj[13]+CpfCnpj[14];
        Result := calculado=digitado;
      end;
    end;
end;

function ValidarIE(IE, UF: string) : Boolean;
//var
//  ValirdarIE: TACBrValidador;
begin
  Result := True;
  {
  if Result then Exit;
  try
    ValirdarIE             := TACBrValidador.Create(nil);
    IE                     := RemoverCaracters(IE);
    ValirdarIE.TipoDocto   := docInscEst;
    ValirdarIE.Documento   := IE;
    ValirdarIE.Complemento := Trim(UF);
    Result                 := ValirdarIE.Validar;
  finally
    FreeAndNil(ValirdarIE);
  end;
  }
end;

function ValidarTelefone(Telefone: string) : Boolean;
begin
  Result := True;
  Telefone := RemoverCaracters(Telefone);
  If (alltrim(Telefone) <> '') and (Length(alltrim(Telefone)) > 2) then
    If ((Length(alltrim(Telefone)) < 9) or (Length(alltrim(Telefone)) > 10)) Then
       Result := False;
end;

function ValidarEmail(Email: string) : Boolean;
var
  i, j, tam_email, simb_arroba, simb_arroba2, qtd_arroba, qtd_pontos,
  qtd_pontos_esq, qtd_pontos_dir, posicao, posicao2, ponto, ponto2: integer;
  vet_email: array [0..49] of string; //50 posições, capacidade do Edit
  msg: string;
begin
  Result := True;
  If Email = '' then exit;
  qtd_pontos:= 0; qtd_pontos_esq:= 0; qtd_pontos_dir:= 0; qtd_arroba:= 0;
  posicao:=0; posicao2:=0; simb_arroba:=0; simb_arroba2:=0; ponto:= 0;
  ponto2:= 0; msg:='';
  Result:= True;
  tam_email:= Length(Email);
  for i:= 0 to tam_email-1 do
  begin
    vet_email[i]:= Copy(Email,i+1,1);
    if vet_email[i] = '@' then
    begin
      Inc(qtd_arroba);
      posicao:= i;
    end;
  end;
  if ((vet_email[0] = '@') or (vet_email[0] = '.') or (vet_email[0] = '-')) then
  begin
    Result:= False;
    msg:= msg1;
  end;
  if qtd_arroba < 1 then //Verificando se tem o símbolo @ e quantos tem
  begin
    Result:= False;
    msg:= msg2;
  end
  else if qtd_arroba > 1 then
  begin
    Result:= False;
    msg:=msg3 //+ ' Encontrado(s): '+IntToStr(qtd_arroba)+'.';
  end
  else
  begin //Verificando o que vem antes e depois do símbolo @
    for i:=0 to 35 do
    begin
      if vet_email[posicao-1] <> vet_valido[i] then Inc(simb_arroba)
      else Dec(simb_arroba);
      if vet_email[posicao+1] <> vet_valido[i] then Inc(simb_arroba2)
      else Dec(simb_arroba2);
    end;
    if simb_arroba = 36 then
    begin //Antes do arroba há um símbolo desconhecido do vetor válido
      Result:= False;
      msg:= msg4;
    end
    else if simb_arroba2 = 36 then
    begin //Depois do arroba há um símbolo desconhecido do vetor válido
      Result:= False;
      msg:= msg5;
    end
  end;
  //Verificando se há pontos e quantos, e Verificando parte final do e-mail
  for j:=0 to tam_email-1 do
  if vet_email[j] = '-' then
  if ((vet_email[j-1] = '.') or (vet_email[j-1] = '-')) then
  begin
    Result:= False;
    msg:= msg6;
  end;
  for i:=0 to tam_email-1 do
  if vet_email[i] = '.' then
  begin
    Inc(qtd_pontos);
    posicao2:= i+1;
    if i > posicao then Inc(qtd_pontos_dir)
    else Inc(qtd_pontos_esq);
    if ((vet_email[i-1] = '.') or (vet_email[i-1] = '-')) then
    begin
      Result:= False;
      msg:= msg6;
    end;
  end;
  if qtd_pontos < 1 then
  begin
    Result:= False;
    msg:= msg7;
  end
  else if vet_email[tam_email-1] = '.' then
  begin
    Result:= False;
    msg:= msg8;
  end
  else if vet_email[tam_email-2] = '.' then
  begin
    Result:= False;
    msg:= msg9;
  end
  else if qtd_pontos_dir > 2 then
  begin
    Result:= False;
    msg:= msg10 //+ ' Encontrado(s): '+
    //IntToStr(qtd_pontos)+#10+'Encontrado(s) a direita do @: '+
    //IntToStr(qtd_pontos_dir)+'.';
  end
  else if (not ((((tam_email - posicao2) = 3) and (qtd_pontos_dir = 1)) or
  (((tam_email - posicao2) = 2) and (qtd_pontos_dir = 2)) or
  (((tam_email - posicao2) = 2) and (qtd_pontos_dir = 1)))) then
  begin
    Result:= False;
    msg:= msg11 //+#10+ 'Encontrado(s) a esquerda do @: '+
    //IntToStr(qtd_pontos_esq) +#10+ 'Encontrado(s) a direita do @: '+
    //IntToStr(qtd_pontos_dir)+'.';
  end
  else
  begin //Verificando o que vem antes e depois do ponto
    for i:=0 to 35 do
    begin
      if vet_email[posicao2-2] <> vet_valido[i] then Inc(ponto)
      else Dec(ponto);
      if vet_email[posicao2] <> vet_valido[i] then Inc(ponto2)
      else Dec(ponto2);
    end;
    if ponto = 36 then
    begin //Antes do ponto há um símbolo desconhecido do vetor válido
      Result:= False;
      msg:= msg12;
    end
    else if ponto2 = 36 then
    begin //Depois do ponto há um símbolo desconhecido do vetor válido
      Result:= False;
      msg:= msg13;
    end
  end;
  {Verificação final
  if not Result then
  begin
    msg:= msg +#10+ 'Formato de E-mail não aceitável!!';
    MessageDlg(msg,mtWarning,[mbOK],0);
    //Retry
  end;}
end;

function ValidarUrl(URL: String): boolean;
const
  BADCHARS = ';*<>{}[]|\()^!';
var
  p, x, c, count, i: Integer;
begin
  if URL = '' then
  begin
    Result := True;
    Exit;
  end;
  Result := False;
  if (Length(URL) > 5) and (URL[Length(URL)] <> '.') and (Pos(URL, '..') = 0) then
  begin
    for i := Length(BADCHARS) downto 1 do
      if Pos(BADCHARS[i], URL) > 0 then exit;
    for i := 1 to Length(URL) do
      if (Ord(URL[i]) < 33) or (Ord(URL[i]) > 126) then exit;
    if ((Pos('www.',LowerCase(URL)) = 1) and (Pos('.', Copy(URL, 5, Length(URL))) > 0) and (Length(URL) > 7)) or ((Pos('news:', LowerCase(URL)) = 1) and (Length(URL) > 7) and (Pos('.', Copy(URL, 5, Length(URL))) > 0)) then
    begin
      Result := True;
      Exit;
    end
    else if ((Pos('http://', LowerCase(URL)) = 1) and (Length(URL) > 10) and (Pos('.', URL) > 8)) or ((Pos('ftp://', LowerCase(URL)) = 1) and (Length(URL) > 9) and (Pos('.', URL) > 7)) then
    begin
      Result := True;
      Exit;
    end;
    for Count := 1 to 4 do
    begin
      p := Pos('.',URL) - 1;
      if p < 0 then p := Length(URL);
      Val(Copy(URL, 1, p), x, c);
      if ((c <> 0) or (x < 0) or (x > 255) or (p>3)) then
      begin
        Result := False;
        Break;
      end;
      Delete(URL, 1, p + 1);
    end;
    if (URL <> '') then Result := False;
  end;
end;

function ValidarData(Data: string): boolean;
begin
  Result := True;
  Data   := RemoverCaracters(Data);
  if Data <> '' then
    if (Length(Data) < 6) or (Length(Data) > 8) then
      Result := False
    else
      Result := StrIsDate(FormatarData(Data));
end;

function ValidarUF(UF: string): boolean;
const
  Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRROEX';
var
  Posicao : integer;
begin
  Result := true;
  if UF <> '' then
  begin
    Posicao := Pos(UpperCase(UF),Estados);
    if (Posicao = 0) or ((Posicao mod 2) = 0) then Result := false;
  end;
end;

function ValidarPis(Dado: string): boolean;
var
  i, wsoma, Wm11, Wdv,wdigito : Integer;
begin
  Result := true;
  Dado   := RemoverCaracters(Dado);
  if AllTrim(Dado) <> '' Then
  begin
    Result := false;
    if length(Dado)<11 then exit;
    wdv := strtoint(copy(Dado, 11, 1));
    wsoma := 0;
    wm11 := 2;
    for i := 1 to 10 do
    begin
      wsoma := wsoma + (wm11 *strtoint(copy(Dado,11 - I, 1)));
      if wm11 < 9 then
        wm11 := wm11+1
      else
        wm11 := 2;
    end;
    wdigito := 11 - (wsoma MOD 11);
    if wdigito > 9 then wdigito := 0;
    result := wdv = wdigito;
  end;
end;

function ValidarTitulo(Titulo: string): boolean;
var
  i, Soma : integer;
  sTitulo: string;
  Resto, Dig1, Dig2 : double;
begin
   result := true;
   Titulo := RemoverCaracters(Titulo);
   if Titulo = '' then exit;
   sTitulo := '';
   for i := 1 to Length(Titulo) do
      if (Copy(Titulo,i,1) >= '0') and (Copy(Titulo,i,1) <= '9') then
         sTitulo := sTitulo + Copy(Titulo,i,1);
   sTitulo := FormatFloat('0000000000000', StrToFloat(sTitulo));
   Soma := StrToInt(sTitulo[1]) * 2 +
   StrToInt(sTitulo[2]) * 9 +
   StrToInt(sTitulo[3]) * 8 +
   StrToInt(sTitulo[4]) * 7 +
   StrToInt(sTitulo[5]) * 6 +
   StrToInt(sTitulo[6]) * 5 +
   StrToInt(sTitulo[7]) * 4 +
   StrToInt(sTitulo[8]) * 3 +
   StrToInt(sTitulo[9]) * 2 ;
   Resto := Soma mod 11;
   if (Resto = 0) or (Resto = 1) then
   begin
      if (Copy(sTitulo,10,2) = '01') or (Copy(sTitulo,10,2) = '02') then
      begin
         if Resto = 0 then
            Dig1 := 1
         else
            Dig1 := 0;
      end
      else
         Dig1 := 0
   end
   else
      Dig1 := 11 - Resto;
   Soma := StrToInt(FloatToStr((StrToInt(sTitulo[10]) * 4) +
   (StrToInt(sTitulo[11]) * 3) + (Dig1 * 2)));
   Resto := Soma mod 11;
   if (Resto = 0) or (Resto = 1) then
   begin
      if (Copy(sTitulo,10,2) = '01') or (Copy(sTitulo,10,2) = '02') then
      begin
         if Resto = 0 then
           Dig2 := 1
         else
           Dig2 := 0;
      end
      else
        Dig2 := 0;
   end
   else
      Dig2 := 11 - Resto;
   if (StrToInt(sTitulo[12]) > Dig1) or (StrToInt(sTitulo[13]) > Dig2) then
      Result := False
   else
      Result := True;
end;

function CalculaDVAgencia(Agencia: integer): integer;
begin
  Result := 0;
end;

function ValidarCodigoIBGE(codigo: integer): boolean;
begin
  Result := Length(IntToStr(codigo))=7;
end;

function Valor_Aliquota_ICMS(vlr: TCustomEdit): Boolean;
begin
  Result := False;
  Try
    Result := StringToFloat(vlr.Text) <= 99.99;
  Finally
    if not Result then
    begin
      raise Exception.Create('Aliquota de ICMS inválida. Aliquota maior que 99,99. ');
    end;
  End;
end;

end.
