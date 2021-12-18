;Имя приложения 
#define   Name       "WINX"
;Версия приложения  
#define   Version    "1.0.0"
;Фирма-разработчик
#define   Publisher  "Ekaterina Semykina"
;Сафт фирмы разработчика   
#define   URL        "https://vk.com/shzwty"
;Имя исполняемого модуля   
#define   ExeName    "WINX.exe"

;------------------------------------------------------------------------------
;Параметры установки    
;------------------------------------------------------------------------------
[Setup]

;Уникальный идентификатор приложения,
;сгенерированный через Tools -> Generate GUID
AppId={{50EB2FEE-3B53-4CF8-8574-31C7F373B369}

;Прочая информация, отображаемая при установке   
AppName={#Name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}
;Путь установки по-умолчанию
DefaultDirName={pf}\{#Name}
;Имя группы в меню "Пуск" 
DefaultGroupName={#Name}

;Каталог, куда будет записан собранный setup и имя исполняемого файла   
OutputDir=C:\installer
OutputBaseFileName=WINX

;Параметры сжатия  
Compression=lzma
SolidCompression=yes

;------------------------------------------------------------------------------
; Устанавливаем языки для процесса установки      
;------------------------------------------------------------------------------
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "License_ENG.txt"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "License_RUS.txt"

;------------------------------------------------------------------------------
; Опционально - некоторые задачи, которые надо выполнить при установке     
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; Файлы, которые надо включить в пакет установщика        
;------------------------------------------------------------------------------
[Files]

;Исполняемый файл  
Source: "C:\build\exam\Release\WINX.exe"; DestDir: "{app}"; Flags: ignoreversion

;Прилагающиеся ресурсы 
Source: "C:\Users\KAT\source\repos\exam\exam\img\*"; DestDir: "{app}\img\"; Flags: ignoreversion recursesubdirs createallsubdirs


; VS Redistributable package
Source: "C:\installer\VC_redist.x64.exe"; DestDir: "{tmp}"; Flags: deleteafterinstall
;------------------------------------------------------------------------------
;Указываем установщику, где он должен взять иконки     
;------------------------------------------------------------------------------ 

[Run]
;------------------------------------------------------------------------------
; Установка распространяемого пакета VS
;------------------------------------------------------------------------------
Filename: {tmp}\VC_redist.x64.exe; Parameters: "/q:a /c:""install /l /q"""; StatusMsg: VS redistributable package is installed. Please wait...
