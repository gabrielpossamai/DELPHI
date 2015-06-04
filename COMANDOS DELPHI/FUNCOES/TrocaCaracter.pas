//Troca caracter especifico
  function TrocaCaracter(c1, c2: char; ss: string): string;
  var i: integer;
    a: string;
  begin
    result := '';
    for i := 1 to length(ss) do begin
      if ss[i] = c1 then ss[i] := c2;
      a := ss[i];
      result := result + a;
    end;
  end;

//Utilização
TrocaCaracter(',', '.', 10,00);