unit uSistema;

interface

uses
  System.IniFiles;

type
  TSistema = class
  private
    class var fIniSistema : TIniFile;
  public
    class procedure SetUltimoAcesso(Usuario: String);
    class function GetUltimoAcesso : String;
    class function GetUsuarioAcesso : String;
  end;

implementation

uses
  Vcl.Forms, System.SysUtils;

{ TSistema }

class function TSistema.GetUltimoAcesso: String;
begin
  fIniSistema := TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  try
    result := 'Último acesso: '+fIniSistema.ReadString('ACESSO','DATA','');
  finally
    FreeAndNil(fIniSistema);
  end;
end;

class function TSistema.GetUsuarioAcesso: String;
begin
  fIniSistema := TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  try
    result := fIniSistema.ReadString('ACESSO','USUARIO','');
  finally
    FreeAndNil(fIniSistema);
  end;
end;

class procedure TSistema.SetUltimoAcesso(Usuario: String);
begin
  fIniSistema := TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
  try
    fIniSistema.WriteString('ACESSO','USUARIO',Usuario);
    fIniSistema.WriteString('ACESSO','DATA',DateTimeToStr(now));
  finally
    FreeAndNil(fIniSistema);
  end;
end;

end.
