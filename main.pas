unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, process, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls, EditBtn, ExtCtrls, Menus, LCLIntf, fileutil;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    ComboBox1: TComboBox;
    FileNameEdit1: TFileNameEdit;
    FileNameEdit2: TFileNameEdit;
    FileNameEdit3: TFileNameEdit;
    FileNameEdit4: TFileNameEdit;
    FileNameEdit5: TFileNameEdit;
    FileNameEdit6: TFileNameEdit;
    FileNameEdit7: TFileNameEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    Process1: TProcess;
    Process2: TProcess;
    Process3: TProcess;
    ProgressBar1: TProgressBar;
    SaveDialog1: TSaveDialog;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FileNameEdit1AcceptFileName(Sender: TObject; var Value: String);
    procedure FileNameEdit1Change(Sender: TObject);
    procedure FileNameEdit2Change(Sender: TObject);
    procedure FileNameEdit3Change(Sender: TObject);
    procedure FileNameEdit4Change(Sender: TObject);
    procedure FileNameEdit5Change(Sender: TObject);
    procedure FileNameEdit6Change(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure SaveDialog1Close(Sender: TObject);

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
  Process1.Execute;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  Process2.Execute;
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  Process3.Execute;
end;

procedure TForm1.SaveDialog1Close(Sender: TObject);
begin
  FileCopy('./NewModel.json', SaveDialog1.FileName);
end;

procedure TForm1.MenuItem2Click(Sender: TObject);

begin

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

procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

procedure TForm1.FileNameEdit1AcceptFileName(Sender: TObject; var Value: String
  );
begin

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

procedure TForm1.Label10Click(Sender: TObject);
begin

end;

procedure TForm1.Label3Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin

end;

end.

