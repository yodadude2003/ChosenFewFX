
#define MyAppName "Chosen Few FX"
#define MyAppVersion "1.0.4"
#define MyAppPublisher "Chosen Few Software"
#define MyAppURL "https://www.chosenfewsoftware.com"

[Setup]
AppId={{17A04035-B0B7-4F24-8163-D2918C5287B8}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
DefaultDirName={pf}\VEGAS\VEGAS Pro 14.0\OFX Video Plug-Ins\
InfoBeforeFile=INSTALL_README.md
LicenseFile=..\LICENSE.md
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultGroupName={#MyAppName}
OutputDir=.\bin\
OutputBaseFilename=ChosenFewFX
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64 ia64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\Release-Win32\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: not IsWin64
Source: "..\Release-x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Check: IsWin64
Source: "..\LICENSE.md"; DestDir: "{app}\ChosenFewFX.ofx.bundle\"; Flags: ignoreversion;

Source: "..\openfx\Support\LICENSE"; DestDir: "{app}\ChosenFewFX.ofx.bundle\"; DestName: "OFX-SUPPORT.md"; Flags: ignoreversion;

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

