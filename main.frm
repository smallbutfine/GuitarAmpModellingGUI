object Form1: TForm1
  Left = 0
  Height = 874
  Top = 0
  Width = 881
  Caption = 'Amp Model Builder GUI for GuitarML Proteus'
  ClientHeight = 874
  ClientWidth = 881
  DesignTimePPI = 144
  Menu = MainMenu1
  OnCreate = FormCreate
  LCLVersion = '8.0'
  object Button1: TButton
    Left = 8
    Height = 37
    Top = 648
    Width = 416
    Caption = 'Build model offline'
    Font.Style = [fsBold]
    OnClick = Button1Click
    ParentFont = False
    TabOrder = 0
  end
  object Label1: TLabel
    Left = 664
    Height = 25
    Top = 8
    Width = 95
    Caption = 'Model type:'
  end
  object Label3: TLabel
    Left = 8
    Height = 25
    Top = 124
    Width = 339
    Caption = 'Select snapshot model response audio file:'
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
    Left = 552
    Height = 33
    Top = 32
    Width = 308
    ItemHeight = 25
    Items.Strings = (
      'Clean Amps, Compressors'
      'Gain Amps'
      'Pedals'
      'Parameterized Amps'
    )
    TabOrder = 1
    Text = 'Select a model type here.'
  end
  object StatusBar1: TStatusBar
    Left = 0
    Height = 36
    Top = 838
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
    Height = 66
    Top = 14
    Width = 208
    Caption = 'Re-/Install Build System'
    OnClick = Button2Click
    TabOrder = 8
  end
  object Button3: TButton
    Left = 8
    Height = 46
    Top = 712
    Width = 328
    Caption = 'Re-/Install Proteus VST from GuitarML'
    OnClick = Button3Click
    TabOrder = 9
  end
  object Button4: TButton
    Left = 8
    Height = 49
    Top = 768
    Width = 328
    Caption = 'Re-/Install Proteus Community Library'
    OnClick = Button4Click
    TabOrder = 10
  end
  object Label12: TLabel
    Left = 16
    Height = 25
    Top = 80
    Width = 183
    Caption = 'Installation mandatory!'
  end
  object Button6: TButton
    Left = 536
    Height = 55
    Top = 736
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
  object Button7: TButton
    Left = 444
    Height = 38
    Top = 648
    Width = 424
    Caption = 'Install model now! (building has to be finished)'
    OnClick = Button7Click
    TabOrder = 13
  end
  object Button5: TButton
    Left = 256
    Height = 66
    Top = 14
    Width = 272
    Caption = 'Open GuitarML Capture Utility'
    OnClick = Button5Click
    TabOrder = 14
  end
  object Label10: TLabel
    Left = 232
    Height = 25
    Top = 80
    Width = 331
    Caption = 'Contains input audio file and Colab script.'
  end
  object Label8: TLabel
    Left = 12
    Height = 25
    Top = 576
    Width = 305
    Caption = 'Install built model here / Model Name:'
  end
  object FileNameEdit7: TFileNameEdit
    Left = 12
    Height = 33
    Top = 600
    Width = 856
    FileName = 'NewModelName.json'
    Filter = 'Proteus model file|*,json'
    FilterIndex = 0
    HideDirectories = False
    ButtonWidth = 34
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 15
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
    Left = 432
    Top = 768
  end
  object MainMenu1: TMainMenu
    Left = 600
    Top = 96
    object MenuItem3: TMenuItem
      Caption = 'HELP!!!'
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
    Left = 552
    Top = 544
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
    Left = 672
    Top = 544
  end
  object ApplicationProperties1: TApplicationProperties
    Left = 592
    Top = 560
  end
  object BGRATheme1: TBGRATheme
    Left = 448
    Top = 568
  end
  object BGRAColorTheme1: TBGRAColorTheme
    ColorNormal = clBlack
    ColorHover = clBlack
    ColorActive = clBlack
    ColorDisabled = clBlack
    ColorFocused = clBlack
    ColorText = clBlack
    Left = 472
    Top = 856
  end
  object plZipCompress1: TplZipCompress
    Left = 352
    Top = 560
  end
  object plZipUnCompress1: TplZipUnCompress
    Left = 352
    Top = 824
  end
  object EpikTimer1: TEpikTimer
    StringPrecision = 6
    TimebaseSource = SystemTimebase
    CorrelationMode = OnTimebaseSelect
    Left = 768
    Top = 560
  end
end
