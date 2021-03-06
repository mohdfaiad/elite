; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Sistema Elite
AppVerName=Sistema Elite
AppPublisher=Taligent
AppPublisherURL=http://www.taligent.com.br
AppSupportURL=http://www.taligent.com.br
AppUpdatesURL=http://www.taligent.com.br
DefaultDirName=C:\ELITE
DisableDirPage=yes
DefaultGroupName=Sistema Elite
DisableProgramGroupPage=yes
DiskSpanning=yes
OutputBaseFilename=elite

[Tasks]
Name: "desktopicon"; Description: "&Criar um �cone na �rea de Trabalho"; GroupDescription: "Atalhos:"

[Files]
Source: "C:\CLIENTES\VERSION\elite\EXE\elite.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EXE\elite.inf"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EXE\avconfig.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EXE\gbak.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EXE\gfix.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EXE\isql.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EXE\DBEXPRESS\midas.dll"; DestDir: "{sys}"; Flags: sharedfile regserver
Source: "C:\CLIENTES\VERSION\elite\EXE\ECF\BemaFI32.ini"; DestDir: "{sys}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EXE\ECF\BemaFI32.dll"; DestDir: "{sys}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EXE\ECF\BemaMFD.dll"; DestDir: "{sys}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EXE\ECF\DAO2535.tlb"; DestDir: "{sys}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EXE\ECF\DAO350.dll"; DestDir: "{sys}"; Flags: sharedfile regserver
Source: "C:\CLIENTES\VERSION\elite\EXE\ECF\MSJET35.dll"; DestDir: "{sys}"; Flags: sharedfile regserver
Source: "C:\CLIENTES\VERSION\elite\EXE\ECF\Daruma32.dll"; DestDir: "{sys}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EXE\ZIP\ZipDll.dll"; DestDir: "{sys}"; Flags: sharedfile
Source: "C:\CLIENTES\VERSION\elite\EXE\ZIP\UnzDll.dll"; DestDir: "{sys}"; Flags: sharedfile
Source: "C:\CLIENTES\VERSION\elite\EXE\ZIP\dzsfxbr.bin"; DestDir: "{sys}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EXE\FONTES\ARLRDBD.TTF"; DestDir: "{fonts}"; FontInstall: "Arial Rounded MT Bold"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "C:\CLIENTES\VERSION\elite\EXE\FONTES\verdana.TTF"; DestDir: "{fonts}"; FontInstall: "Verdana"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "C:\CLIENTES\VERSION\elite\EXE\FONTES\verdanab.TTF"; DestDir: "{fonts}"; FontInstall: "Verdana Bold"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "C:\CLIENTES\VERSION\elite\EXE\FONTES\verdanaz.TTF"; DestDir: "{fonts}"; FontInstall: "Verdana Bold Italic"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "C:\CLIENTES\VERSION\elite\EXE\FONTES\verdanai.TTF"; DestDir: "{fonts}"; FontInstall: "Verdana Italic"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "C:\CLIENTES\VERSION\elite\EMBEDED\elite.fdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EMBEDED\firebird.conf"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EMBEDED\gds32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EMBEDED\fbclient.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EMBEDED\FB\*.*"; DestDir: "{app}\FB"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EMBEDED\FB\intl\*.*"; DestDir: "{app}\FB\intl"; Flags: ignoreversion
Source: "C:\CLIENTES\VERSION\elite\EMBEDED\FB\udf\*.*"; DestDir: "{app}\FB\udf"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[INI]
Filename: "{app}\elite.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.taligent.com.br"

[Icons]
Name: "{group}\Sistema elite"; Filename: "{app}\elite.exe"; WorkingDir: "{app}"
Name: "{group}\Elite na Internet"; Filename: "{app}\elite.url"
Name: "{group}\Desinstalar o Elite"; Filename: "{uninstallexe}"
Name: "{userdesktop}\Sistema Elite"; Filename: "{app}\elite.exe";  WorkingDir: "{app}"; Tasks: desktopicon

[Run]
Filename: "{app}\elite.exe"; Description: "Iniciar o Sistema Elite agora!"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\elite.url"

