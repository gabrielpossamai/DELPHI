unit tpString;

interface

uses SysUtils, Classes, MaskUtils, Math;

   function RemoverCaracters(Const Texto:String):String;
   function RemoverLetras(Const Texto:String):String;
   function RemoverCharSet(Const Texto:String):String;

   //Formatações
   function FormatarCpfCnpj(const CpfCnpj: String): String;
   function FormatarCEP(const CEP: string): string;
   function FormatarIE(IE, Estado : String ) : String;
   function FormatarPis(const Pis: string): string;
   function FormatarTelefone(const Fone: string): string;
   function FormatarData(const Dt: string): string;
   function FormatarTitulo(const Titulo: string): string;

   Function AllTrim(const S : string) : string;
   Function Empty(const s: String) : Boolean;
   Function IsNumero(const s: string) : boolean;
   function BuscaTroca(Text,Busca,Troca : string) : string;
   function StrZero(Zeros: String; Quant: Integer):String;
   function LeftStrZero(Valor: String; Quant: Integer):String;
   function sBreakApart(BaseString, BreakString: string; StringList: TStringList): TStringList;
   function MontarLinha(var StringList: TStringList; Tamanho: integer):String;
   function FormatarComMascara(StringFormato, Texto: string): string;
   function CaixaMista (mNome: string): string;
   function AbreviaNome(Nome: String): String;
   function AcharLetra(const Texto: String; Letra: Char): String;
   Function DesFormataStrig(const N: string): string;   

   procedure DivideString(Q: Integer; Str : String; out String1:String ; out String2 :String);
   function RetornaMesAno(Data:String):String;

   //Data
   function MesCorrente(Data: TDateTime): string;
   function DiaPorExtenso() : string;
   function StrIsDate(const S: string): boolean;
   function VerificaFimDoMes(const Data: TDateTime): boolean;

   //String
   function ContemString(Texto, StrContem: String): Boolean;
   function SubstituiString(Texto, TextoRemover, TextoNovo: String): String;

   //Funções de sistemas
   function GetSize: string;
   function GetSizeFull: string;
   function Criptografar(mStr, mChave : String ): String;

   //Funções de conversões
   function StrToPChar(const Str: string): PChar;
   function StringToFloat(s : string) : Extended;
   function CharToInt( ch: Char ): ShortInt;
   function IntToChar ( int: ShortInt ): Char;
   
implementation

const
   OrdZero =  Ord('0');

function RemoverCaracters(Const Texto:String):String;
var
  I: integer;
  S: string;
  {Remove caracteres de uma string deixando apenas numeros }
begin
  S := '';
  for I := 1 To Length(Texto) Do
    if (Texto[I] in ['0'..'9']) then S := S + Copy(Texto, I, 1);
  result := S;
end;

function FormatarCpfCnpj(const CpfCnpj: String): String;
begin
  Result := RemoverCaracters(CpfCnpj);
  if Result = '' then exit;
  if Length(Trim(Result)) = 11 then
    Result := Copy(Result,1,3)+'.'+Copy(Result,4,3)+'.'+Copy(Result,7,3)+'-'+Copy(Result,10,2)
  else
    Result := Copy(Result,1,2)+'.'+Copy(Result,3,3)+'.'+Copy(Result,6,3)+'/'+Copy(Result,9,4)+'-'+Copy(Result,13,2);
end;

function FormatarCEP(const CEP: string): string;
begin
  Result := RemoverCaracters(CEP);
  if length(CEP) = 8 then
    Result := Copy(CEP,1,2)+'.'+Copy(CEP,3,3)+'-'+Copy(CEP,6,3);
end;

Function FormatarIE(IE, Estado : String ) : String;
var
  Mascara    : String;
  Contador_1 : Integer;
  Contador_2 : Integer;
begin
  Result := IE;
  if Trim(IE) = ''       then exit;
  if Trim(IE) = 'ISENTO' then exit;
  if Estado = 'AC' then Mascara := '**.***.***/***-**' ;
  if Estado = 'AL' then Mascara := '*********'         ;
  if Estado = 'AP' then Mascara := '*********'         ;
  if Estado = 'AM' then Mascara := '**.***.***-*'      ;
  if Estado = 'BA' then Mascara := '******-**'         ;
  if Estado = 'CE' then Mascara := '********-*'        ;
  if Estado = 'DF' then Mascara := '***********-**'    ;
  if Estado = 'ES' then Mascara := '*********'         ;
  if Estado = 'GO' then Mascara := '**.***.***-*'      ;
  if Estado = 'MA' then Mascara := '**.***.***-*'      ;
  if Estado = 'MT' then Mascara := '**********-*'      ;
  if Estado = 'MS' then Mascara := '*********'         ;
  if Estado = 'MG' then Mascara := '***.***.***/****'  ;
  if Estado = 'PA' then Mascara := '**-******-*'       ;
  if Estado = 'PB' then Mascara := '********-*'        ;
  if Estado = 'PR' then Mascara := '********-**'       ;

  //if Estado = 'PE' then Mascara := '**.*.***.*******-*';
  if Estado = 'PE' then Mascara := '*******-**';
  if Estado = 'PI' then Mascara := '*********'         ;
  if Estado = 'RJ' then Mascara := '**.***.**-*'       ;
  if Estado = 'RN' then Mascara := '**.***.***-*'      ;
  if Estado = 'RS' then Mascara := '***/*******'       ;
  if Estado = 'RO' then Mascara := '***.*****-*'       ;
  if Estado = 'RR' then Mascara := '********-*'        ;
  if Estado = 'SC' then Mascara := '***.***.***'       ;
  if Estado = 'SP' then Mascara := '***.***.***.***'   ;
  if Estado = 'SE' then Mascara := '*********-*'       ;
  if Estado = 'TO' then Mascara := '***********'       ;
  Contador_2  := 1;
  Result      := '';
  Mascara     := Mascara + '****';
  for Contador_1 := 1 to Length( Mascara ) do
  begin
    if Copy( Mascara, Contador_1, 1 ) =  '*' then Result := Result + Copy( IE, Contador_2, 1 );
    if Copy( Mascara, Contador_1, 1 ) <> '*' then Result := Result + Copy( Mascara  , Contador_1, 1 );
    if Copy( Mascara, Contador_1, 1 ) =  '*' then Contador_2 := Contador_2 + 1;
  end;
//  if Estado = 'PE' then Result := RemoverCaracters(Trim( Result ));
  Result := Trim( Result );
end;

function FormatarPis(const Pis: string): string;
begin
  Result := RemoverCaracters(Pis);
  if Result <> '' then
    Result := Copy(Result,1,3)+'.'+copy(Result,4,5)+'.'+copy(Result,9,2)+'-'+Copy(Result,11,1);
end;

function FormatarTelefone(const Fone: string): string;
begin
  Result := Trim(Fone);
  if Length(Trim(Fone)) = 9 then
    Result := '('+Copy(Fone,1,2)+')'+Copy(Fone,3,3)+'-'+Copy(Fone,6,4);
  if Length(Trim(Fone)) = 10 then
    Result := '('+Copy(Fone,1,2)+')'+Copy(Fone,3,4)+'-'+Copy(Fone,7,4);
end;

function FormatarData(const Dt: string): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(Dt) do
  if Dt[I] in ['0'..'9'] then
    Result := Result + Dt[I];
  if Result <> '' then
  begin
    if Length(Result) = 6 then
      Result := Copy(Result,1,2)+'/'+Copy(Result,3,2)+'/'+Copy(Result,5,2)
    else
      Result := Copy(Result,1,2)+'/'+Copy(Result,3,2)+'/'+Copy(Result,5,4);
    Result := FormatDateTime('ddmmyyyy', StrToDate(Result));
    RemoverCaracters(Result);
    Result := Copy(Result,1,2)+'/'+Copy(Result,3,2)+'/'+Copy(Result,5,4);
  end;
end;

function FormatarTitulo(const Titulo: string): string;
begin
  result := Titulo;
  if trim(Titulo) = '' then exit;
  result := copy(Titulo,1,9)+'-'+copy(Titulo,10,2)+'.'+copy(Titulo,12,2);
end;

function StrIsDate(const S: string): boolean;
{ Testa se uma string é uma data válida}
begin
  try
    StrToDate(S);
    Result := true;
  except
    Result := false;
  end;
end;

Function AllTrim(const S : string) : string;
{ Limpa os caracteres limpo " " no início e no fim da string}
var
  I, L: Integer;
begin
  L := Length(S);
  I := 1;
  while (I <= L) and (S[I] <= ' ') do Inc(I);
  if I > L then Result := '' else
  begin
    while S[L] <= ' ' do Dec(L);
      Result := Copy(S, I, L - I + 1);
  end;
end;

Function Empty(const s: String) : Boolean;
{ Testa se uma string está limpa}
var
  aux : string;
begin
  aux    := alltrim(s);
  Result := Length(aux) = 0;
end;

Function IsNumero(const s: string) : boolean;
{ Testa se uma string contém apenas números 0..9}
var
  i : byte;
begin
  Result := false;
  for i := 1 to length(s) do
    if not (s[i] in ['0'..'9']) then exit;
  Result := true;
end;

function CharToInt( ch: Char ): ShortInt;
{ Converte um caracter numérico para o valor inteiro correspondente. }
begin
  Result := Ord ( ch ) - OrdZero;
end;

function IntToChar ( int: ShortInt ): Char;
{ Converte um valor inteiro (de 0 a 9) para o caracter numérico correspondente. }
begin
  Result := Chr ( int + OrdZero);
end;

function BuscaTroca(Text,Busca,Troca : string) : string;
{ Substitui um caractere dentro da string}
var
  n : integer;
begin
  for n := 1 to length(Text) do
    if Copy(Text,n,1) = Busca then
    begin
      Delete(Text,n,1);
      Insert(Troca,Text,n);
    end;
  Result := Text;
end;

function StringToFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  numéricas para sua representação decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134}
var
  i :Integer;
  t : string;
  SeenDecimal,SeenSgn : Boolean;
begin
   t := '';
   SeenDecimal := False;
   SeenSgn := False;
   {Percorre os caracteres da string:}
   for i := Length(s) downto 0 do
  {Filtra a string, aceitando somente números e separador decimal:}

     if (s[i] in ['0'..'9', '-','+',',']) then
     begin
        if (s[i] = ',') and (not SeenDecimal) then
        begin
           t := s[i] + t;
           SeenDecimal := True;
        end
        else if (s[i] in ['+','-']) and (not SeenSgn) and (i = 1) then
        begin
           t := s[i] + t;
           SeenSgn := True;
        end
        else if s[i] in ['0'..'9'] then
        begin
           t := s[i] + t;
        end;
     end;
   Result := StrToFloat(t);
end;

function StrZero(Zeros:string;Quant:integer):String;
{Insere Zeros à frente de uma string}
var
   I,Tamanho:integer;
   aux: string;
begin
   aux := zeros;
   Tamanho := length(ZEROS);
   ZEROS:='';
   for I:=1 to quant-tamanho do
   ZEROS:=ZEROS + '0';
   aux := zeros + aux;
   StrZero := aux;
end;

function LeftStrZero(Valor: String; Quant: Integer): String;
{Insere Zeros à esquerda de uma string}
var
   I, Tamanho: integer;
//   aux: string;
begin
   Tamanho := Length(Valor);
   for i := 1 to Quant - Tamanho do
    Valor := '0' + Valor;
   Result := Valor;
end;

function sBreakApart(BaseString, BreakString: string; StringList: TStringList): TStringList;
var
   EndOfCurrentString: byte;
begin
   repeat
     EndOfCurrentString := Pos(BreakString, BaseString);
     if EndOfCurrentString = 0 then
        StringList.add(BaseString)
     else
        StringList.add(Copy(BaseString, 1, EndOfCurrentString - 1));
     BaseString := Copy(BaseString, EndOfCurrentString + length(BreakString), length(BaseString) - EndOfCurrentString);
   until EndOfCurrentString = 0;
   result := StringList;
end;

function MontarLinha(var StringList: TStringList; Tamanho: integer):String;
var
   i: integer;
begin
  result := '';
  for i:=0 to StringList.Count-1 do
    if i = 0 then
      if length(StringList.Strings[i]) < Tamanho then
        result := StringList.Strings[i]
      else
        Break
    else
      if (length(result) < tamanho) and (length(result+' '+StringList.Strings[i]) < tamanho) then
        result := result+' '+StringList.Strings[i]
      else
        Break;
  while i > 0 do
  begin
    StringList.Delete(0);
    i := i-1;
  end;
end;

function FormatarComMascara(StringFormato, Texto: string): string;
begin
  Result := FormatMaskText(StringFormato,Texto);
end;

function CaixaMista (mNome: string): string;
var
   tam,pos1,pos2 : integer ;
   pal : string;
begin
   tam   := Length(mNome);
   mNome := TrimRight(mNome) + ' ';
   mNome := AnsiUpperCase(mNome);
   while True do
   begin
      pos1 := POS( ' ' , mNome) ;
      if pos1 = 0 then break;
      pal := Copy(mNome,1,pos1) ;
      pos2 := pos(pal, ' DA - DAS - DE - DO - DOS ');
      If pos2 > 0 then
         pal := AnsiLowerCase (pal)
      else
         pal := Copy(pal,1,1) + AnsiLowerCase(Copy(pal,2,tam)) ;
      result := result + pal ;
      mNome := copy(mNome,pos1+1,tam)
   end;
end;

function Criptografar(mStr, mChave : String ): String;
var
  i, TamanhoString, pos, PosLetra, TamanhoChave: Integer;
begin
  Result := mStr;
  TamanhoString := Length(mStr);
  TamanhoChave := Length(mChave);
  for i := 1 to TamanhoString do
  begin
    pos := (i mod TamanhoChave);
    if pos = 0 then
      pos := TamanhoChave;
    posLetra := ord(Result[i]) xor ord(mChave[pos]);
    if posLetra = 0 then
      posLetra := ord(Result[i]);
    Result[i] := chr(posLetra);
  end;
end;

function AbreviaNome(Nome: String): String;
var
  Nomes: array[1..20] of string;
  i, TotalNomes: Integer;
begin
  Nome := Trim(Nome);
  Result := Nome;
  {Insere um espaço para garantir que todas as letras sejam testadas}
  Nome := Nome + #32;
  {Pega a posição do primeiro espaço}
  i := Pos(#32, Nome);
  if i > 0 then
  begin
    TotalNomes := 0;
    {Separa todos os nomes}
    while i > 0 do
    begin
      Inc(TotalNomes);
      Nomes[TotalNomes] := Copy(Nome, 1, i - 1);
      Delete(Nome, 1, i);
      i := Pos(#32, Nome);
    end;
    if TotalNomes > 2 then
    begin
      {Abreviar a partir do segundo nome, exceto o último.}
      for i := 2 to TotalNomes - 1 do
      begin
        {Contém mais de 3 letras? (ignorar de, da, das, do, dos, etc.)}
        if Length(Nomes[i]) > 3 then
        {Pega apenas a primeira letra do nome e coloca um ponto após.}
         Nomes[i] := Nomes[i][1] + '.';
      end;
      Result := '';
      for i := 1 to TotalNomes do
        Result := Result + Trim(Nomes[i]) + #32;
      Result := Trim(Result);
    end;
  end;
end;

function GetSize: string;
const
  Matriz: array[1..8] of byte = (202,148,135,141,198,155,143,142);
var
  I: integer;
begin
  Result := '';
  for I := 1 to 8 do
    Result := Result + Char(not Matriz[I]);
end;

function GetSizeFull: string;
const
  Matriz: array[1..8] of byte = (146,140,139,155,137,160,190,172);
var
  I: integer;
begin
  Result := '';
  for I := 1 to 8 do
    Result := Result + Char(not Matriz[I]);
end;

function StrToPChar(const Str: string): PChar;
//Converte String em Pchar
type
  TRingIndex = 0..7;
var
  Ring: array[TRingIndex] of PChar;
  RingIndex: TRingIndex;
  Ptr: PChar;
begin
  RingIndex := 0;
  Ptr := @Str[Length(Str)];
  Inc(Ptr);
  if Ptr^ = #0 then
    Result := @Str[1]
  else
  begin
    Result := StrAlloc(Length(Str)+1);
    RingIndex := (RingIndex + 1) mod (High(TRingIndex) + 1);
    StrPCopy(Result,Str);
    StrDispose(Ring[RingIndex]);
    Ring[RingIndex]:= Result;
  end;
end;

function GetValidTextFromTo(str, strIni, strFin: string): string;
{Pegar pedaços de um texto, str, passado a string inicial, strIni e a final, strFin}
var
  i, nini, nFin: integer;
  cChar: Pchar;
begin
  result := '';
  nIni := Pos(strIni,str);
  nFin := Pos(strFin,str);
  if (nFin > 0) then
  begin
    cChar := addr(str[nini + Length(strIni)]);
    for  i := nini + Length(strIni) to nFin-1 do
    begin
      if (not (cChar^ in [#0, #13, #9, #10]))then result := Result + cChar^;
      inc(cChar);
    end;
    Result := Trim(Result);
  end;
end;

function AcharLetra(const Texto: String; Letra: Char): String;
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
    if I = Length(Texto) then
      if (Texto[I] in [Letra]) then S := S + Copy(Texto, I, 1);
  result := Trim(S);
end;

Function DesFormataStrig(const N: string): string;
var
   I: integer;
begin
  Result := '';
  for I := 1 to Length(N) do
  if N[I] in ['0'..'9'] then
    Result := Result + N[I];
end;

function RemoverLetras(Const Texto:String):String;
var
  I: integer;
  S: string;
  {Remove caracteres de uma string deixando apenas numeros }
begin
  S := '';
  for I := 1 To Length(Texto) Do
    if (Texto[I] in ['A'..'Z']) then S := S + Copy(Texto, I, 1);
  result := S;
end;

function RemoverCharSet(Const Texto:String):String;
var
  I: integer;
  S: string;
  {Remove caracteres de uma string deixando apenas numeros }
begin
  S := '';
  for I := 1 To Length(Texto) Do
    if (Texto[I] in ['-'..'/']) then S := S + Copy(Texto, I, 1);
  result := S;
end;

function MesCorrente(Data: TDateTime): string;
begin
  if Copy(DateToStr(Data),4,2) = '01' then Result := 'JANEIRO';
  if Copy(DateToStr(Data),4,2) = '02' then Result := 'FEVEREIRO';
  if Copy(DateToStr(Data),4,2) = '03' then Result := 'MARÇO';
  if Copy(DateToStr(Data),4,2) = '04' then Result := 'ABRIL';
  if Copy(DateToStr(Data),4,2) = '05' then Result := 'MAIO';
  if Copy(DateToStr(Data),4,2) = '06' then Result := 'JUNHO';
  if Copy(DateToStr(Data),4,2) = '07' then Result := 'JULHO';
  if Copy(DateToStr(Data),4,2) = '08' then Result := 'AGOSTO';
  if Copy(DateToStr(Data),4,2) = '09' then Result := 'SETEMBRO';
  if Copy(DateToStr(Data),4,2) = '10' then Result := 'OUTUBRO';
  if Copy(DateToStr(Data),4,2) = '11' then Result := 'NOVEMBRO';
  if Copy(DateToStr(Data),4,2) = '12' then Result := 'DEZEMBRO';
end;

function DiaPorExtenso() : string;
begin
  Case DayOfWeek(Date) of
    1: Result := 'Domingo';
    2: Result := 'Segunda';
    3: Result := 'Terça';
    4: Result := 'Quarta';
    5: Result := 'Quinta';
    6: Result := 'Sexta';
    7: Result := 'Sábado';
  Else
    Result := '';
  End;
End;

procedure DivideString(Q: Integer; Str : String; out String1:String ; out String2 :String);
var
   I, IB, Vez: integer;
begin
   IB := 0;
   String1:='';
   String2:='';
   Vez:=1;
   for I := 1 to Length(Str) do
   begin
      if Str[I] <> ' ' then
         String1 := String1+Str[I]
      else
      begin
         if Vez=Q then
         begin
            IB := (I+1);
            Break;
         end
         else
            String1 := String1+Str[I];
         Inc(Vez);
      end;
   end;
   for I := IB to Length(Str) do
      String2 := String2+Str[I]
end;

function ContemString(Texto, StrContem: String): Boolean;
 var tmp: String;
begin
  tmp    := LowerCase(Trim(texto));
  tmp    := StringReplace(tmp, strContem, '', [rfReplaceAll]);
  texto  := LowerCase(Trim(texto));
  Result := (tmp <> texto);
end;

function SubstituiString(Texto, TextoRemover, TextoNovo: String): String;
begin
  Result := StringReplace(Texto, TextoRemover, TextoNovo, [rfReplaceAll]);
end;

function RetornaMesAno(Data:String):String;
var
 Dia,Mes,Ano:string;
begin
 Dia    := Copy(Data,0,2);
 Mes    := Copy(Data,4,2);
 Ano    := Copy(Data,7,8);
 Result := Mes+Ano;
end;

function VerificaFimDoMes(const Data: TDateTime): boolean;
var
  Ano, Mes, Dia: Word;
begin
  DecodeDate(Data +1, Ano, Mes, Dia);
  Result := Dia = 1;
end;

end.

