[Setup]
AppName=VestisPCP
AppVersion=Beta
;AppVerName={#MyAppName} {#MyAppVersion}
;AppPublisher={#MyAppPublisher}
;AppPublisherURL={#MyAppURL}
;AppSupportURL={#MyAppURL}
;AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\VestisPCP
DefaultGroupName=Sistema VestisPCP
InfoBeforeFile=
OutputDir=D:\Desenvolvimento\Projetos\Codigo-Fonte\instalador\Saida
OutputBaseFilename=InstaladorVestisPCP
Compression=lzma
SolidCompression=true
PrivilegesRequired=none
UsePreviousAppDir=false
CreateAppDir=true
AppID={{7A63E3FF-4163-482C-863B-EE080ACA1399}
DisableStartupPrompt=true
UsePreviousTasks=true
DisableReadyMemo=false
ShowLanguageDialog=no
LanguageDetectionMethod=locale
UninstallDisplayIcon={app}\Binarios\VestisPCP.exe
InternalCompressLevel=none



[Files]
Source: ..\Fontes\Core\App\Win32\Debug\VestisPCP.exe; DestDir: {app}\Binarios; Tasks: " quicklaunchicon desktopicon"; Languages: 
Source: ..\dados\VESTISPCP.mdf; DestDir: {app}\DB; Tasks: ; Components: " db_acao program sqlserver"
Source: ..\dados\VESTISPCP.ldf; DestDir: {app}\DB; Components: " db_acao program sqlserver"
Source: D:\Aplicativos\SQL Server 2014\SQLEXPR_x64_PTB\*; DestDir: {tmp}; Flags: ignoreversion recursesubdirs; Tasks: ; Components: sqlserver
Source: VestisPCP.lnk; DestDir: {commondesktop}
Source: VestisPCP.lnk; DestDir: {commonstartmenu}



[Types]
Name: instalar_servidor; Description: Instalação Servidor
Name: instalar_terminal; Description: Instalação Cliente
Name: instalar_selecionar; Description: Instalação Personalizada; Flags: iscustom

[Components]
Name: program; Description: Vestis PCP; Types: instalar_servidor instalar_terminal instalar_selecionar; Flags: fixed
Name: sqlserver; Description: Instalar Microsoft® SQL Server® 2014 Express; Types: instalar_servidor
Name: db_acao; Description: Banco de Dados; Types: instalar_servidor; Languages: 


[Languages]
Name: brazilianportuguese; MessagesFile: compiler:Languages\BrazilianPortuguese.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Components: program
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; OnlyBelowVersion: 0,6.1; Components: program


[Run]
Filename: {tmp}\setup.exe; Parameters: "/QS /ACTION=""Install"" /FEATURES=""SQL"" /INSTANCENAME=""SQLEXPRESS"" /SECURITYMODE=SQL /SAPWD=sql2015 /IAcceptSQLServerLicenseTerms  /HIDECONSOLE"; StatusMsg: Instalando o Microsoft® SQL Server® 2014 Express.... Aguarde.; Components: sqlserver
Filename: {pf64}\microsoft sql server\Client SDK\ODBC\110\Tools\Binn\sqlcmd.exe; StatusMsg: Instalando Banco de Dados... Aguarde.; Parameters: "-d master -S .\SQLEXPRESS -Q ""CREATE DATABASE VESTISPCP ON ( FILENAME = N'C:\VestisPCP\DB\VESTISPCP.mdf' ), ( FILENAME = N'C:\VestisPCP\DB\VESTISPCP.ldf') FOR ATTACH"""; Components: " db_acao"
[Icons]
Name: {group}\Sistema VestisPCP; Filename: {app}\Binarios\VestisPCP.exe; WorkingDir: {app}\Binarios; IconFilename: {app}\Binarios\VestisPCP.exe; IconIndex: 0
