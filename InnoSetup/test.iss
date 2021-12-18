;��� ���������� 
#define   Name       "WINX"
;������ ����������  
#define   Version    "1.0.0"
;�����-�����������
#define   Publisher  "Ekaterina Semykina"
;���� ����� ������������   
#define   URL        "https://vk.com/shzwty"
;��� ������������ ������   
#define   ExeName    "WINX.exe"

;------------------------------------------------------------------------------
;��������� ���������    
;------------------------------------------------------------------------------
[Setup]

;���������� ������������� ����������,
;��������������� ����� Tools -> Generate GUID
AppId={{50EB2FEE-3B53-4CF8-8574-31C7F373B369}

;������ ����������, ������������ ��� ���������   
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}
;���� ��������� ��-���������
DefaultDirName={pf}\{#Name}
;��� ������ � ���� "����" 
DefaultGroupName={#Name}

;�������, ���� ����� ������� ��������� setup � ��� ������������ �����   
OutputDir=C:\installer
OutputBaseFileName=WINX

;��������� ������  
Compression=lzma
SolidCompression=yes

;------------------------------------------------------------------------------
; ������������� ����� ��� �������� ���������      
;------------------------------------------------------------------------------
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "License_ENG.txt"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "License_RUS.txt"

;------------------------------------------------------------------------------
; ����������� - ��������� ������, ������� ���� ��������� ��� ���������     
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; �����, ������� ���� �������� � ����� �����������        
;------------------------------------------------------------------------------
[Files]

;����������� ����  
Source: "C:\build\exam\Release\WINX.exe"; DestDir: "{app}"; Flags: ignoreversion

;������������� ������� 
Source: "C:\Users\KAT\source\repos\exam\exam\img\*"; DestDir: "{app}\img\"; Flags: ignoreversion recursesubdirs createallsubdirs


; VS Redistributable package
Source: "C:\installer\VC_redist.x64.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall
;------------------------------------------------------------------------------
;��������� �����������, ��� �� ������ ����� ������     
;------------------------------------------------------------------------------ 

[Run]
;------------------------------------------------------------------------------
; ��������� ����������������� ������ VS
;------------------------------------------------------------------------------
Filename: {tmp}\VC_redist.x64.exe; Parameters: "/q:a /c:""install /l /q"""; StatusMsg: VS redistributable package is installed. Please wait...
