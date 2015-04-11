unit UFunProGeral;

interface

uses
    ShellApi, Forms, Windows;

    procedure Copia(Origem, Destino: String);

implementation

uses UMenuPrin, Classes;

Procedure Copia(Origem, Destino: String);
var FileOpInfo: TSHFileOpStruct;
begin
  With FileOpInfo Do
  Begin
     Wnd   := Application.Handle;
     wFunc := FO_COPY;
     pFrom := Pchar (Origem+#0+#0);
     pTo   := Pchar (Destino);
     fFlags := FOF_WANTMAPPINGHANDLE;
  end;
  SHFileOperation (FileOpInfo);
  ShFreeNameMappings (GlobalHandle(FileOpInfo.hNameMappings));
end;


end.
