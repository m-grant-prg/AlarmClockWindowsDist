; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "AlarmClock"
#define MyAppVersion "1.2.1"
#define MyAppPublisher "Mark Grant"
#define MyAppURL "https://github.com/m-grant-prg/alarmclock-java/wiki"
#define MyAppExeName "AlarmClock.jar"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5A67466C-95E9-4C19-9E81-AB366CBA57BD}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=alarmclock-setup
SetupIconFile=C:\Users\Mark Grant PRG\Documents\AlarmClockWindowsDist\AlarmClock.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Mark Grant PRG\Documents\AlarmClockWindowsDist\AlarmClock.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mark Grant PRG\Documents\AlarmClockWindowsDist\AlarmClock.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mark Grant PRG\Documents\AlarmClockWindowsDist\AlarmClock.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mark Grant PRG\Documents\AlarmClockWindowsDist\lib\*"; DestDir: "{app}\lib"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: shellexec postinstall skipifsilent