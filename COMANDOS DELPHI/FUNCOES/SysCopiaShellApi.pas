Function SysCopiaShellApi(Origem, Destino : string; Operacao : TOperacao; Modo:TModo) : Boolean;
Const
  Aborted : Boolean = False;
var
  shfo : TSHFileOpStruct;
begin
  Result := false;
  try
    FillChar(shfo,SizeOf(shfo),$0);

    with shfo do begin
      case Operacao of
        toMOVER : wFunc := FO_MOVE;
        toCOPIAR : wFunc := FO_COPY;
      end;//case

      pFrom := Pchar(Origem);
      pTo := Pchar(Destino);

      case Modo of
        tmNAO_MOSTRA_NOME_ARQ  : fFlags := FOF_SIMPLEPROGRESS;
        tmNAO_CAIXA_ANDAMENTO  : fFlags := FOF_SILENT;
        tmPRESERVA_INFORMACOES : fFlags := FOF_ALLOWUNDO;
        tmEXEC_ARQ_CURINGA     : FFlags := FOF_FILESONLY;
        tmCOPIA_ARQ_EXIST      : fFlags := FOF_RENAMEONCOLLISION;
        tmCONFIRMA_SIM_TODOS   : fFlags := FOF_NOCONFIRMATION;
      end;//case
      Result := (SHFileOperation(shfo)= 0) and (not Aborted);
    end;//With
  except
    Result := false;
  end;//Try
end;