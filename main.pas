unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, process, fpsimplejsonexport, Forms, Controls, Graphics,
  Dialogs, StdCtrls, ComCtrls, EditBtn, ExtCtrls, Menus, LCLIntf, fileutil,
  BGRATheme, BGRAColorTheme, TplZipUnit, vd_system, TplLongTimerUnit, EpikTimer;

type

  { TForm1 }

  TForm1 = class(TForm)
    ApplicationProperties1: TApplicationProperties;
    BGRAColorTheme1: TBGRAColorTheme;
    BGRATheme1: TBGRATheme;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    ComboBox1: TComboBox;
    EpikTimer1: TEpikTimer;
    FileNameEdit1: TFileNameEdit;
    FileNameEdit2: TFileNameEdit;
    FileNameEdit3: TFileNameEdit;
    FileNameEdit4: TFileNameEdit;
    FileNameEdit5: TFileNameEdit;
    FileNameEdit6: TFileNameEdit;
    FileNameEdit7: TFileNameEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    MainMenu1: TMainMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    plZipCompress1: TplZipCompress;
    plZipUnCompress1: TplZipUnCompress;
    Process1: TProcess;
    Process2: TProcess;
    Process3: TProcess;
    SimpleJSONExporter1: TSimpleJSONExporter;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);

    procedure FileNameEdit1Change(Sender: TObject);
    procedure FileNameEdit2Change(Sender: TObject);
    procedure FileNameEdit3Change(Sender: TObject);
    procedure FileNameEdit4Change(Sender: TObject);
    procedure FileNameEdit5Change(Sender: TObject);
    procedure FileNameEdit6Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);

  private

  public


  end;

var
  Form1: TForm1;




implementation

function FileCopy(Source, Target: string): boolean;
  // Copies source to target; overwrites target.
  // Caches entire file content in memory.
  // Returns true if succeeded; false if failed.
  var
    MemBuffer: TMemoryStream;
  begin
    result := false;
    MemBuffer := TMemoryStream.Create;
    try
      MemBuffer.LoadFromFile(Source);
      MemBuffer.SaveToFile(Target);
      result := true
    except
      //swallow exception; function result is false by default
    end;
    // Clean up
    MemBuffer.Free
end;

{$R *.frm}

{ TForm1 }


procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  showmessage('GUI Copyright 2023 Martin Haverland, License: MIT');
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  OpenDocument('https://www.youtube.com/watch?v=2vs4WKYgZUs');
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  OpenDocument('https://www.youtube.com/watch?v=86oQuYHjpy0');
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  OpenDocument('https://www.youtube.com/watch?v=vwsSYpqRqyM');
end;



procedure TForm1.Button2Click(Sender: TObject);
begin
  OpenDocument('InstBuildSys.cmd');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  //OpenDocument('fixwaves.cmd');
  case ComboBox1.ItemIndex of
    0: OpenDocument('Buildamp_clean.cmd');
    1: OpenDocument('Buildamp_gain.cmd');
    2: OpenDocument('Buildpedal.cmd');
    3: OpenDocument('Buildproteus_knob.cmd');
  end;
  OpenDocument('BuildModel.cmd');
end;



procedure TForm1.Button3Click(Sender: TObject);
begin
  OpenDocument('InstProteus.cmd');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  OpenDocument('InstProteusLib.cmd');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  OpenDocument('Proteus_Capture_Utility.zip');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  OpenDocument('InstBYOD.cmd');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  FileCopy('newProteusModel.json', FileNameEdit7.FileName);
end;


procedure TForm1.FileNameEdit1Change(Sender: TObject);
begin
  FileCopy(FileNameEdit1.FileName, 'out.wav');
end;

procedure TForm1.FileNameEdit2Change(Sender: TObject);
begin
  FileCopy(FileNameEdit2.FileName, 'out1.wav');
end;

procedure TForm1.FileNameEdit3Change(Sender: TObject);
begin
  FileCopy(FileNameEdit2.FileName, 'out2.wav');
end;

procedure TForm1.FileNameEdit4Change(Sender: TObject);
begin
  FileCopy(FileNameEdit4.FileName, 'out3.wav');
end;

procedure TForm1.FileNameEdit5Change(Sender: TObject);
begin
  FileCopy(FileNameEdit5.FileName, 'out4.wav');
end;

procedure TForm1.FileNameEdit6Change(Sender: TObject);
begin
  FileCopy(FileNameEdit6.FileName, 'out5.wav');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //MaskFPUExceptions(true);

  //PythonEngine1.UseWindowsConsole:= false;
  //PythonEngine1.VenvPythonExe:='\Automated-GuitarAmpModelling\mypyenv\Scripts\python.exe';
  //PythonEngine1.SetPythonHome('\Automated-GuitarAmpModelling\mypyenv\');
  //PythonEngine1.LoadDll;

end;


end.

