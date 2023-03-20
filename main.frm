object Form1: TForm1
  Left = 0
  Height = 942
  Top = 0
  Width = 881
  Caption = 'Amp Model Builder GUI for GuitarML Proteus'
  ClientHeight = 942
  ClientWidth = 881
  DesignTimePPI = 144
  Menu = MainMenu1
  LCLVersion = '8.0'
  object Button1: TButton
    Left = 8
    Height = 37
    Top = 592
    Width = 360
    Caption = 'Build model offline'
    Font.Style = [fsBold]
    OnClick = Button1Click
    ParentFont = False
    TabOrder = 0
  end
  object Label1: TLabel
    Left = 8
    Height = 25
    Top = 40
    Width = 83
    Caption = 'Amp type:'
  end
  object Label3: TLabel
    Left = 8
    Height = 25
    Top = 124
    Width = 339
    Caption = 'Select snapshot model response audio file:'
    OnClick = Label3Click
  end
  object Label4: TLabel
    Left = 8
    Height = 25
    Top = 197
    Width = 553
    Caption = 'Select parameter response file at 0%: (Only for parameterized models)'
  end
  object Label5: TLabel
    Left = 8
    Height = 25
    Top = 268
    Width = 563
    Caption = 'Select parameter response file at 25%: (Only for parameterized models)'
  end
  object Label6: TLabel
    Left = 8
    Height = 25
    Top = 343
    Width = 563
    Caption = 'Select parameter response file at 50%: (Only for parameterized models)'
  end
  object Label7: TLabel
    Left = 8
    Height = 25
    Top = 417
    Width = 563
    Caption = 'Select parameter response file at 75%: (Only for parameterized models)'
  end
  object ComboBox1: TComboBox
    Left = 8
    Height = 33
    Top = 64
    Width = 363
    ItemHeight = 25
    Items.Strings = (
      'Clean Amps, Compressors'
      'Gain Amps'
      'Pedals'
      'Parameterized Amps'
    )
    OnChange = ComboBox1Change
    TabOrder = 1
    Text = 'Select an amp type here.'
  end
  object StatusBar1: TStatusBar
    Left = 0
    Height = 36
    Top = 906
    Width = 881
    Panels = <    
      item
        Text = 'Ready.'
        Width = 50
      end>
    SimplePanel = False
  end
  object FileNameEdit1: TFileNameEdit
    Left = 8
    Height = 33
    Top = 153
    Width = 856
    FileName = 'Select snapshot response file ...'
    FilterIndex = 0
    HideDirectories = False
    ButtonWidth = 34
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 3
    OnChange = FileNameEdit1Change
    Text = 'Select snapshot response file ...'
  end
  object FileNameEdit2: TFileNameEdit
    Left = 8
    Height = 33
    Top = 221
    Width = 856
    FileName = 'Select 0% parameter response file ...'
    FilterIndex = 0
    HideDirectories = False
    ButtonWidth = 34
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 4
    OnChange = FileNameEdit2Change
    Text = 'Select 0% parameter response file ...'
  end
  object FileNameEdit3: TFileNameEdit
    Left = 8
    Height = 33
    Top = 293
    Width = 856
    FileName = 'Select 25% parameter response file ...'
    FilterIndex = 0
    HideDirectories = False
    ButtonWidth = 34
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 5
    OnChange = FileNameEdit3Change
    Text = 'Select 25% parameter response file ...'
  end
  object FileNameEdit4: TFileNameEdit
    Left = 8
    Height = 33
    Top = 367
    Width = 856
    FileName = 'Select 50% parameter response file ...'
    FilterIndex = 0
    HideDirectories = False
    ButtonWidth = 34
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 6
    OnChange = FileNameEdit4Change
    Text = 'Select 50% parameter response file ...'
  end
  object FileNameEdit5: TFileNameEdit
    Left = 8
    Height = 33
    Top = 442
    Width = 856
    FileName = 'Select 75% parameter response file ...'
    FilterIndex = 0
    HideDirectories = False
    ButtonWidth = 34
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 7
    OnChange = FileNameEdit5Change
    Text = 'Select 75% parameter response file ...'
  end
  object Button2: TButton
    Left = 8
    Height = 68
    Top = 746
    Width = 208
    Caption = 'Re-/Install Build System'
    OnClick = Button2Click
    TabOrder = 8
  end
  object Button3: TButton
    Left = 224
    Height = 46
    Top = 754
    Width = 328
    Caption = 'Re-/Install Proteus VST from GuitarML'
    OnClick = Button3Click
    TabOrder = 9
  end
  object Button4: TButton
    Left = 560
    Height = 49
    Top = 754
    Width = 312
    Caption = 'Re-/Install Proteus Community Library'
    OnClick = Button4Click
    TabOrder = 10
  end
  object Label9: TLabel
    Left = 11
    Height = 25
    Top = 702
    Width = 849
    Caption = 'Install Prerequisites (Build System is required for capturing, training and installation of the models):'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 8
    Height = 25
    Top = 8
    Width = 734
    Caption = 'Before building amp models offline, you need to install the Build System (see bottom).'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 8
    Height = 25
    Top = 807
    Width = 183
    Caption = 'Installation mandatory!'
  end
  object Button6: TButton
    Left = 544
    Height = 55
    Top = 842
    Width = 328
    Caption = 'Re-/Install BYOD from Chowdhury-DSP'
    OnClick = Button6Click
    TabOrder = 11
  end
  object Label2: TLabel
    Left = 8
    Height = 25
    Top = 491
    Width = 573
    Caption = 'Select parameter response file at 100%: (Only for parameterized models)'
  end
  object FileNameEdit6: TFileNameEdit
    Left = 8
    Height = 33
    Top = 516
    Width = 856
    FileName = 'Select 100% parameter response file ...'
    FilterIndex = 0
    HideDirectories = False
    ButtonWidth = 34
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 12
    OnChange = FileNameEdit6Change
    Text = 'Select 100% parameter response file ...'
  end
  object ProgressBar1: TProgressBar
    Left = 272
    Height = 27
    Top = 883
    Width = 600
    TabOrder = 13
  end
  object Button7: TButton
    Left = 388
    Height = 38
    Top = 592
    Width = 476
    Caption = 'Install model now! (building has to be finished)'
    OnClick = Button7Click
    TabOrder = 14
  end
  object Button5: TButton
    Left = 8
    Height = 42
    Top = 850
    Width = 296
    Caption = 'Open GuitarML Capture Utility'
    OnClick = Button5Click
    TabOrder = 15
  end
  object Label10: TLabel
    Left = 8
    Height = 25
    Top = 885
    Width = 331
    Caption = 'Contains input audio file and Colab script.'
    OnClick = Label10Click
  end
  object Label8: TLabel
    Left = 384
    Height = 25
    Top = 40
    Width = 305
    Caption = 'Install built model here / Model Name:'
    OnClick = Label3Click
  end
  object FileNameEdit7: TFileNameEdit
    Left = 384
    Height = 33
    Top = 64
    Width = 476
    FileName = 'NewModelName.json'
    Filter = 'Proteus model file|*,json'
    FilterIndex = 0
    HideDirectories = False
    ButtonWidth = 34
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 16
    OnChange = FileNameEdit1Change
    Text = 'NewModelName.json'
  end
  object Process1: TProcess
    Active = False
    Executable = 'explorer'
    Parameters.Strings = (
      '"https://www.youtube.com/watch?v=2vs4WKYgZUs"'
    )
    Options = []
    Priority = ppNormal
    StartupOptions = []
    ShowWindow = swoNone
    WindowColumns = 0
    WindowHeight = 0
    WindowLeft = 0
    WindowRows = 0
    WindowTop = 0
    WindowWidth = 0
    FillAttribute = 0
    Left = 808
    Top = 648
  end
  object MainMenu1: TMainMenu
    Left = 488
    Top = 176
    object MenuItem3: TMenuItem
      Caption = 'HELP!!!'
      OnClick = MenuItem3Click
      object MenuItem5: TMenuItem
        Caption = 'Capturing Amps/Knobs'
        OnClick = MenuItem5Click
      end
      object MenuItem6: TMenuItem
        Caption = 'Capturing Pedals'
        OnClick = MenuItem6Click
      end
      object MenuItem7: TMenuItem
        Caption = 'Capturing VST plugins'
        OnClick = MenuItem7Click
      end
    end
    object MenuItem4: TMenuItem
      Caption = 'About'
      OnClick = MenuItem4Click
    end
  end
  object Process2: TProcess
    Active = False
    Executable = 'explorer'
    Parameters.Strings = (
      '"https://www.youtube.com/watch?v=86oQuYHjpy0"'
    )
    Options = []
    Priority = ppNormal
    StartupOptions = []
    ShowWindow = swoNone
    WindowColumns = 0
    WindowHeight = 0
    WindowLeft = 0
    WindowRows = 0
    WindowTop = 0
    WindowWidth = 0
    FillAttribute = 0
    Left = 517
    Top = 176
  end
  object Process3: TProcess
    Active = False
    Executable = 'explorer'
    Parameters.Strings = (
      '"https://www.youtube.com/watch?v=vwsSYpqRqyM"'
    )
    Options = []
    Priority = ppNormal
    StartupOptions = []
    ShowWindow = swoNone
    WindowColumns = 0
    WindowHeight = 0
    WindowLeft = 0
    WindowRows = 0
    WindowTop = 0
    WindowWidth = 0
    FillAttribute = 0
    Left = 584
    Top = 168
  end
  object SaveDialog1: TSaveDialog
    OnClose = SaveDialog1Close
    Title = 'Model save as'
    DefaultExt = '.json'
    Left = 640
    Top = 160
  end
end
