//Finaliza um processo especifico
function Fecha_exe(ExeFileName: string): Integer;
const
  PROCESSSO_FINALIZA = $0001;
var
  ContinuaLoop: BOOL;
  FAquivo: THandle;
  FProcessoEntrada: TProcessEntry32;
begin
  Result := 0;
  FAquivo := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessoEntrada.dwSize := SizeOf(FProcessoEntrada);
  ContinuaLoop := Process32First(FAquivo, FProcessoEntrada);

  while Integer(ContinuaLoop) <> 0 do
    begin
      if ((UpperCase(ExtractFileName(FProcessoEntrada.szExeFile)) =
        UpperCase(ExeFileName)) or (UpperCase(FProcessoEntrada.szExeFile) =
        UpperCase(ExeFileName))) then
        Result := Integer(TerminateProcess(
          OpenProcess(PROCESSSO_FINALIZA,
          BOOL(0), FProcessoEntrada.th32ProcessID), 0));
      ContinuaLoop := Process32Next(FAquivo, FProcessoEntrada);
    end;
  CloseHandle(FAquivo);
end;

//Utilização
Fecha_exe('excel.exe');