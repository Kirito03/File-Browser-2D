object Form1: TForm1
  Left = 195
  Top = 121
  AlphaBlend = True
  AutoScroll = False
  Caption = 'File-browser'
  ClientHeight = 429
  ClientWidth = 628
  Color = clBtnFace
  Constraints.MinHeight = 447
  Constraints.MinWidth = 635
  DockSite = True
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000800200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
    00000000000000000004CEC0000000000000000000000000004CEEC000000000
    000000000000000004CEECC00000000000000000000000004CEECC0000000000
    0000000000000004CEECC00000007333333333333333334CEECC033333307FB8
    B8B8B8B8B8B8B4CEECC038B8B8307F8B8B8B8B8B8B8B7CEECC038B8B8B307FB8
    B8B8B8B8B8B78FECC038B8B8B8307F8B8B8B80000078F87C038B8B8B8B307FB8
    B8B006666600877038B8B8B8B8307F8B8B768E8E8E6607038B8B8B8B8B307FB8
    B768E8E8E8E66038B8B8B8B8B8307F8B878EFE8E8E8E60788B8B8B8B8B307FB8
    78EFE8E8E8E8E607B8B8B8B8B8307F8B7EFEFE8E8E8E86038B8B8B8B8B307FB8
    78EFF8E8E8E8E607B8B8B8B8B8307F8B7EFEFF8E8E8E86038B8B8B8B8B307FB8
    78EFFFE8E8E8E607B8B8B8B8B8307F8B87FEFFFE8E8E80388B8B8B8B8B307FB8
    B78FEFEFE8E86038B8B8B8B8B8307F8B8B78FEFEFE86078B8B8B8B8B8B307FB8
    B8B778E8E70078B8B8B8B8B8B8307F8B8B8B877770338B8B8B8B8B8B8B307FB8
    B8B8B8B8B8B8B8B8B8B8B8B8B8307FFFFFFFFFFFFFFFFFFFFFFFFFFFFF007888
    888888888888777777777777770007FB8B8B8B8B8B870000000000000000007F
    B8B8B8B8B87000000000000000000007FFFFFFFFF70000000000000000000000
    7777777770000000000000000000FFFFFF1FFFFFFE0FFFFFFC0FFFFFF80FFFFF
    F01F800000010000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000001000000038000
    FFFFC001FFFFE003FFFFF007FFFF280000001000000020000000010004000000
    0000C00000000000000000000000000000000000000000000000000080000080
    00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000000
    00000004EC0000000000004ECC000000000004ECC000733333334ECC33007FB8
    70078CC3B3007F878E80733B83007F7FE8E803B8B3007F7EFE8E038B83007F7F
    EFE807B8B3007F87FEF07B8B83007FB87707B8B8B3007FFFFFFFFFFFF30078B8
    B8B877777700078B8B87000000000077777000000000FFF30000FFE10000FFC1
    0000800300000001000000010000000100000001000000010000000100000001
    000000010000000100000003000080FF0000C1FF0000}
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  ScreenSnap = True
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 628
    Height = 429
    ActivePage = PageMan
    Align = alClient
    TabOrder = 0
    TabWidth = 130
    OnChange = PageControl1Change
    object PageMan: TTabSheet
      Caption = 'File manager'
      DesignSize = (
        620
        398)
      object Drive: TDriveComboBox
        Left = 8
        Top = 8
        Width = 313
        Height = 22
        TabOrder = 0
        TextCase = tcUpperCase
        OnChange = DriveChange
      end
      object FileList: TFileListBox
        Left = 328
        Top = 32
        Width = 289
        Height = 321
        FileType = [ftReadOnly, ftHidden, ftSystem, ftArchive, ftNormal]
        ItemHeight = 16
        MultiSelect = True
        PopupMenu = PopupMenu1
        ShowGlyphs = True
        TabOrder = 3
        OnChange = FileListChange
        OnDblClick = FileListDblClick
        OnDragDrop = FileListDragDrop
        OnEndDrag = FileListEndDrag
        OnMouseDown = FileListMouseDown
      end
      object StatusBar: TStatusBar
        Left = 0
        Top = 360
        Width = 620
        Height = 38
        AutoHint = True
        Anchors = [akLeft, akTop, akRight, akBottom]
        Panels = <
          item
            Text = 'File:'
            Width = 400
          end
          item
            Text = 'Size:'
            Width = 300
          end>
      end
      object Filter: TFilterComboBox
        Left = 328
        Top = 8
        Width = 298
        Height = 24
        Anchors = [akLeft, akTop, akRight, akBottom]
        FileList = FileList
        Filter = 
          'All files(*.*)|*.*|Media|*.mp3;*.ogg;*.wav;*.mid;*.midi;*.ac3;*.' +
          'aif;*.aifc;*.aiff;*.au;*.it;*.kar;*.mka;*.mod;*.mpa;*.wma;*.xm;*' +
          '.3gp;*.asf;*.avi;*.divx;*.m1v;*.m2v;*.mkv;*.mov;*.mp4;*.mpe;*.mp' +
          'eg;*.mpg;*.wm;*.wmv|Image|*.jpg;*.jpeg;*.gif;*.png;*.ico;*.bmp|T' +
          'ext|*.txt;*.htm;*.html;*.xml;*.rtf;*.log;*.ini;*.inf;*.vbp;*.frm' +
          ';*.dpr;*.pas|Executable|*.exe;*.bat;*.com;*.lnk'
        TabOrder = 2
      end
      object DirLine: TDirectoryOutline
        Left = 8
        Top = 32
        Width = 313
        Height = 321
        Ctl3D = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        ItemHeight = 16
        Options = []
        ParentCtl3D = False
        ParentFont = False
        PictureLeaf.Data = {
          46030000424D460300000000000036000000280000000E0000000E0000000100
          2000000000001003000000000000000000000000000000000000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080000000000000000000000000000000000000000000000000000000
          00000000000000000000000000008000800080008000800080000000000000FF
          FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF000000000080008000800080008000800000000000FFFFFF0000FFFF00FFFF
          FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000008000
          800080008000800080000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000080008000800080008000
          800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
          FF0000FFFF00FFFFFF00000000008000800080008000800080000000000000FF
          FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF000000000080008000800080008000800000000000FFFFFF0000FFFF00FFFF
          FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000008000
          8000800080008000800000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008000800080008000800080008000
          80008000800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000008000
          8000800080008000800080008000800080008000800080008000800080008080
          8000000000000000000000000000000000008080800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          8000800080008000800080008000800080008000800080008000800080008000
          80008000800080008000}
        TabOrder = 1
        TextCase = tcAsIs
        OnChange = DirLineChange
        OnDragDrop = DirLineDragDrop
        OnEndDrag = DirLineEndDrag
        Data = {10}
      end
    end
    object PageMedia: TTabSheet
      Caption = 'Media-player'
      ImageIndex = 1
      object Anim: TAnimate
        Left = 0
        Top = 0
        Width = 620
        Height = 249
        AutoSize = False
        StartFrame = 0
        Timers = True
        Transparent = False
      end
      object MGP: TGroupBox
        Left = 0
        Top = 256
        Width = 609
        Height = 41
        Caption = 'Seek'
        TabOrder = 0
        object Pos: TScrollBar
          Left = 2
          Top = 18
          Width = 605
          Height = 21
          Align = alClient
          LargeChange = 5
          PageSize = 0
          TabOrder = 0
          OnChange = PosChange
        end
      end
      object btnPlay: TButton
        Left = 96
        Top = 352
        Width = 81
        Height = 25
        Caption = 'Play'
        TabOrder = 1
        OnClick = btnPlayClick
      end
      object btnPause: TButton
        Left = 184
        Top = 352
        Width = 81
        Height = 25
        Caption = 'Pause'
        TabOrder = 2
        OnClick = btnPauseClick
      end
      object btnStop: TButton
        Left = 272
        Top = 352
        Width = 81
        Height = 25
        Caption = 'Stop'
        TabOrder = 3
        OnClick = btnStopClick
      end
      object btnPrev: TButton
        Left = 8
        Top = 352
        Width = 81
        Height = 25
        Caption = 'Begining'
        TabOrder = 4
        OnClick = btnPrevClick
      end
      object btnNext: TButton
        Left = 360
        Top = 352
        Width = 81
        Height = 25
        Caption = 'Ending'
        TabOrder = 5
        OnClick = btnNextClick
      end
    end
    object PageImage: TTabSheet
      Caption = 'Image Viewer'
      ImageIndex = 2
      object ImageP: TImage
        Left = 0
        Top = 0
        Width = 620
        Height = 398
        Align = alClient
        Center = True
        IncrementalDisplay = True
        Proportional = True
        Transparent = True
      end
    end
    object PageText: TTabSheet
      Caption = 'Notepad'
      ImageIndex = 3
      object Wraper: TCheckBox
        Left = 0
        Top = 0
        Width = 89
        Height = 17
        HelpType = htKeyword
        HelpKeyword = 'Words wraped?'
        Caption = 'Word wrap'
        TabOrder = 0
        OnClick = WraperClick
      end
      object Memo: TRichEdit
        Left = 0
        Top = 16
        Width = 620
        Height = 382
        Align = alBottom
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = []
        HideSelection = False
        HideScrollBars = False
        ParentFont = False
        PopupMenu = PopupMenu2
        ScrollBars = ssBoth
        TabOrder = 1
        WantTabs = True
        WordWrap = False
      end
    end
    object PageCalc: TTabSheet
      Caption = 'Calculator'
      ImageIndex = 6
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 118
        Height = 16
        Caption = 'First number(also a)'
      end
      object Label2: TLabel
        Left = 0
        Top = 40
        Width = 140
        Height = 16
        Caption = 'Second number(also b)'
      end
      object Label3: TLabel
        Left = 96
        Top = 72
        Width = 41
        Height = 16
        Caption = 'Result:'
      end
      object CEA: TEdit
        Left = 144
        Top = 8
        Width = 473
        Height = 21
        AutoSelect = False
        AutoSize = False
        TabOrder = 0
      end
      object CEB: TEdit
        Left = 144
        Top = 40
        Width = 473
        Height = 21
        AutoSelect = False
        AutoSize = False
        TabOrder = 1
      end
      object CER: TEdit
        Left = 144
        Top = 72
        Width = 473
        Height = 21
        AutoSelect = False
        AutoSize = False
        ReadOnly = True
        TabOrder = 2
        Text = 'Null'
      end
      object Group1: TGroupBox
        Left = 16
        Top = 104
        Width = 305
        Height = 281
        Caption = 'Arithmetics'
        TabOrder = 3
        object Button1: TButton
          Left = 16
          Top = 24
          Width = 137
          Height = 33
          Caption = 'Addition (a+b)'
          TabOrder = 0
          WordWrap = True
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 160
          Top = 24
          Width = 137
          Height = 33
          Caption = 'Subtract (a-b)'
          TabOrder = 1
          WordWrap = True
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 16
          Top = 64
          Width = 137
          Height = 33
          Caption = 'Multiplication (a*b)'
          TabOrder = 2
          WordWrap = True
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 160
          Top = 64
          Width = 137
          Height = 33
          Caption = 'Division (a/b)'
          TabOrder = 3
          WordWrap = True
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 16
          Top = 104
          Width = 281
          Height = 17
          Caption = 'Whole division (a\b)'
          TabOrder = 4
          WordWrap = True
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 16
          Top = 128
          Width = 137
          Height = 33
          Caption = 'Power (a^b)'
          TabOrder = 5
          WordWrap = True
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 160
          Top = 128
          Width = 137
          Height = 33
          Caption = 'Root(b \/- a)'
          TabOrder = 6
          WordWrap = True
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 16
          Top = 168
          Width = 89
          Height = 41
          Caption = 'Logarithm [log(b)a]'
          TabOrder = 7
          WordWrap = True
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 112
          Top = 168
          Width = 89
          Height = 41
          Caption = 'Clear(C)'
          TabOrder = 8
          WordWrap = True
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 208
          Top = 168
          Width = 91
          Height = 41
          Caption = 'In memory (M+)'
          TabOrder = 9
          WordWrap = True
          OnClick = Button10Click
        end
        object Button11: TButton
          Left = 16
          Top = 216
          Width = 137
          Height = 49
          Caption = 'From memory (MR)'
          TabOrder = 10
          WordWrap = True
          OnClick = Button11Click
        end
        object Button12: TButton
          Left = 160
          Top = 216
          Width = 137
          Height = 49
          Caption = 'Clear memory(MC)'
          TabOrder = 11
          WordWrap = True
          OnClick = Button12Click
        end
      end
      object Group2: TGroupBox
        Left = 336
        Top = 104
        Width = 281
        Height = 281
        Caption = 'Trigonometrics'
        TabOrder = 4
        object Button13: TButton
          Left = 16
          Top = 24
          Width = 57
          Height = 33
          Caption = 'Sin'
          TabOrder = 0
          OnClick = Button13Click
        end
        object Button14: TButton
          Left = 16
          Top = 64
          Width = 57
          Height = 33
          Caption = 'Cosin'
          TabOrder = 1
          OnClick = Button14Click
        end
        object Button15: TButton
          Left = 16
          Top = 104
          Width = 57
          Height = 33
          Caption = 'Tg'
          TabOrder = 2
          OnClick = Button15Click
        end
        object Button16: TButton
          Left = 16
          Top = 144
          Width = 57
          Height = 33
          Caption = 'Ctg'
          TabOrder = 3
          OnClick = Button16Click
        end
        object Button17: TButton
          Left = 80
          Top = 24
          Width = 81
          Height = 33
          Caption = 'Arcsin'
          TabOrder = 4
          OnClick = Button17Click
        end
        object Button18: TButton
          Left = 80
          Top = 64
          Width = 81
          Height = 33
          Caption = 'Arccos'
          TabOrder = 5
          OnClick = Button18Click
        end
        object Button19: TButton
          Left = 80
          Top = 104
          Width = 81
          Height = 33
          Caption = 'Arctg'
          TabOrder = 6
          OnClick = Button19Click
        end
        object Button20: TButton
          Left = 80
          Top = 144
          Width = 81
          Height = 33
          Caption = 'Arcctg'
          TabOrder = 7
          OnClick = Button20Click
        end
      end
    end
    object PageKeyGen: TTabSheet
      Caption = 'Key generator'
      ImageIndex = 5
      object Lbl1: TLabel
        Left = 488
        Top = 8
        Width = 34
        Height = 16
        Caption = 'Rows'
      end
      object Lbl2: TLabel
        Left = 488
        Top = 64
        Width = 52
        Height = 16
        Caption = 'Columns'
      end
      object MemoKeys: TMemo
        Left = 0
        Top = 0
        Width = 481
        Height = 398
        Align = alLeft
        HideSelection = False
        Lines.Strings = (
          'Ready!')
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
      end
      object BtnGen: TButton
        Left = 488
        Top = 264
        Width = 121
        Height = 33
        Caption = 'Generate!'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BtnGenClick
      end
      object Spin1: TSpinEdit
        Left = 488
        Top = 32
        Width = 121
        Height = 26
        AutoSelect = False
        AutoSize = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 1
      end
      object Spin2: TSpinEdit
        Left = 488
        Top = 88
        Width = 121
        Height = 26
        AutoSelect = False
        AutoSize = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 3
        Value = 8
      end
      object Group: TGroupBox
        Left = 488
        Top = 120
        Width = 121
        Height = 137
        Caption = 'Symbols'
        TabOrder = 4
        object Radio1: TRadioButton
          Left = 8
          Top = 16
          Width = 105
          Height = 17
          Caption = 'Numbers'
          TabOrder = 0
        end
        object Radio2: TRadioButton
          Left = 8
          Top = 32
          Width = 105
          Height = 41
          Caption = 'Numbers with capital latins'
          TabOrder = 1
          WordWrap = True
        end
        object Radio3: TRadioButton
          Left = 8
          Top = 72
          Width = 105
          Height = 41
          Caption = 'numbers with small latins'
          TabOrder = 2
          WordWrap = True
        end
        object Radio4: TRadioButton
          Left = 8
          Top = 112
          Width = 105
          Height = 17
          Caption = 'Any symbol'
          Checked = True
          TabOrder = 3
          TabStop = True
        end
      end
    end
    object PageWeb: TTabSheet
      HelpType = htKeyword
      Caption = 'Web-browser'
      ImageIndex = 4
      object Tabs: TTabControl
        Left = 0
        Top = 0
        Width = 620
        Height = 398
        Align = alClient
        RaggedRight = True
        TabHeight = 16
        TabOrder = 0
        Tabs.Strings = (
          'New1'
          'New2')
        TabIndex = 0
        OnChange = TabsChange
        object Progress1: TGauge
          Left = 4
          Top = 379
          Width = 612
          Height = 15
          Align = alBottom
          BackColor = clBtnFace
          Progress = 0
        end
        object Web: TWebBrowser
          Left = 4
          Top = 48
          Width = 612
          Height = 308
          Align = alCustom
          TabOrder = 0
          OnProgressChange = WebProgressChange
          OnNavigateComplete2 = WebNavigateComplete2
          ControlData = {
            4C000000413F0000D51F00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E12620C000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
        object WebAddress: TComboBox
          Left = 0
          Top = 24
          Width = 505
          Height = 24
          ItemHeight = 16
          TabOrder = 1
          Text = 'about:Tabs'
          OnKeyDown = WebAddressKeyDown
          Items.Strings = (
            'about:Tabs')
        end
        object StopBtn: TBitBtn
          Left = 592
          Top = 24
          Width = 25
          Height = 25
          Hint = 'Stop'
          HelpType = htKeyword
          HelpKeyword = 'Stop button'
          ModalResult = 3
          TabOrder = 2
          OnClick = StopBtnClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          Layout = blGlyphTop
          NumGlyphs = 2
          Style = bsNew
        end
        object Status: TStatusBar
          Left = 4
          Top = 356
          Width = 612
          Height = 23
          Panels = <
            item
              Text = 'Webpage-address:'
              Width = 104
            end
            item
              Width = 500
            end>
        end
        object ReloadBtn: TBitBtn
          Left = 560
          Top = 24
          Width = 25
          Height = 25
          Hint = 'Reload'
          HelpType = htKeyword
          HelpKeyword = 'Reload button'
          TabOrder = 4
          OnClick = ReloadBtnClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            5F00002A00000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000D771335B6510030000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            640044CD6753E27C08390C000000000000000000000000000000000000000000
            003E0000000000000000000000000000410034B75162FB9546CF690020000000
            0000000000000000000000000000000011872105390900000000000000000000
            4E0047D6705CF58F62FB9515701E000000000000000000000000000000000000
            1A99332BBA54044808000000000C001F903252EB8557F08A5CF58F30B04A0000
            0000000000000000000000000000000017972E33CC652BBA54044E080D6F1742
            D8724CE57F51EA8457F08A2DAC46000000000000000000000000000000000000
            1594292DC65A33CC652BBA5433C66041DA7446DF794CE57F51EA84269F3D0000
            0000000000000000000000000000000012912427C04E2DC65A33CC6535CE683A
            D36D41DA7446DF7947DD7706560A000000000000000000000000000000000000
            0F8E1D21BA4327C04E2DC65A33CC6535CE683AD36D40D9731F97360012000000
            000000000000000000000000000000000B8B171BB43721BA4227C04D2CC55832
            CB6335CE6828B14B001900000000000000000000000000000000000000000000
            08870F15AE291AB33520B94026BF4C2CC55732CB6331C7610C5C160000000000
            0000000000000000000000000000000005850A0FA81D15AE291AB33520B94026
            BF4C2CC55732CB6331C6600C5E16000000000000000000000000000000000000
            02820509A2120FA81D15AE291AB33520B94026BF4C2CC55732CB6331C6600E6D
            1A00000000000000000000000000000000660000620000620000620000620000
            6200006200006200006200006200006200000000000000000000}
          Layout = blGlyphTop
          Style = bsNew
        end
        object LoadBtn: TBitBtn
          Left = 528
          Top = 24
          Width = 25
          Height = 25
          Hint = 'Go to'
          HelpType = htKeyword
          HelpKeyword = 'Load button'
          TabOrder = 5
          OnClick = LoadBtnClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000000000000000
            006600282B0A2D230C2D260A2727082B2B000040000000000000000000000000
            000000000000000000000000000000000066000066001743062B260A2C230C28
            280B28280D2B2B00000000000000000000000000000000000000000000000000
            0066000D901A026F040B5603252F092B260B2A26082E24093333000055000000
            0000000000000000000000000000000000660014A02716AB2B07840F0362011E
            39082A270B2D260D2D260D303010333300000000000000000000000000000000
            00660019A5321CB53617B02D0C9517016A020D5203282A0A2A250D2924092929
            0A1C1C000000000000000000000000000066001FAB3D22BB441CB53617B02D0F
            A51E037906055E012036082A270B29260A2D26082B2B15000000000000000000
            00660023B04629C25222BB441CB53617B02D0FA91F05880B016A01134A052A26
            0B2D240C29290E2E2E0000000000000000660026B34D30C96029C25222BB441C
            B53617B02D0FA91F089B10027103085B02243009272A0A24310C000000000000
            00660027B34D33CC6630C96029C25222BB441CB53617B02D0EA41D037D060362
            01262E0B26290A232E0C0000000000000066002DB95335CE6833CC6630C96029
            C25222BB4415A128036F050B560329290A2A250B2C250C2B2B00000000000000
            00660032BE583CD56F35CE6833CC6630C9601494280362011842062B270A2D24
            0C2C250C24241240400000000000000000660036C25C43DC763CD56F2BBB550A
            7913085A0222330929270A29260B2828082E2E00000000000000000000000000
            0066003DC96349E27C25A842046D071646052B260B2D240B2A2A0A23230C2020
            000000000000000000000000000000000066003CC55F158721055E0120360829
            270B2A260A262608272714404000000000000000000000000000000000000000
            006600006600104F04272C0A2C250A2A250929290A2020000000000000000000
            000000000000000000000000000000000066001C3D082A280B2A270B2A2A061E
            2D0F333300000000000000000000000000000000000000000000}
          Layout = blGlyphTop
          Style = bsNew
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    object File1: TMenuItem
      Caption = '&File'
      object Openas1: TMenuItem
        Caption = '&Open as'
        Enabled = False
        ShortCut = 115
        object exec1: TMenuItem
          Caption = 'Program associated'
          ShortCut = 115
          OnClick = exec1Click
        end
        object Mmedia1: TMenuItem
          Caption = 'Media'
          OnClick = Mmedia1Click
        end
        object Picture1: TMenuItem
          Caption = 'Image'
          OnClick = Picture1Click
        end
        object Text1: TMenuItem
          Caption = 'Text'
          ShortCut = 114
          OnClick = Text1Click
        end
      end
      object Copy1: TMenuItem
        Caption = '&Copy'
        Enabled = False
        ShortCut = 116
        OnClick = FileChange
      end
      object Move1: TMenuItem
        Caption = '&Move'
        Enabled = False
        ShortCut = 117
        OnClick = FileChange
      end
      object Rename1: TMenuItem
        Caption = '&Rename'
        Enabled = False
        ShortCut = 118
        OnClick = FileChange
      end
      object Delete1: TMenuItem
        Caption = '&Delete'
        Enabled = False
        ShortCut = 119
        OnClick = Delete1Click
      end
      object Properties1: TMenuItem
        Caption = '&Properties'
        Enabled = False
        ShortCut = 16464
        OnClick = Properties1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object About1: TMenuItem
        Caption = '&About'
        ShortCut = 16496
        OnClick = About1Click
      end
      object Exit1: TMenuItem
        Caption = '&Quit'
        ShortCut = 16465
        OnClick = Exit1Click
      end
    end
    object Edit1: TMenuItem
      Caption = '&Edit'
      Enabled = False
      object Open1: TMenuItem
        Caption = '&Open'
        ImageIndex = 3
        ShortCut = 16463
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = '&Save'
        ImageIndex = 5
        ShortCut = 16467
        OnClick = Save1Click
      end
      object Close1: TMenuItem
        Caption = '&Close'
        ImageIndex = 2
        ShortCut = 16471
        OnClick = Close1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Cut1: TMenuItem
        Caption = '&Cut'
        ImageIndex = 1
        ShortCut = 16472
        OnClick = Cut1Click
      end
      object Copy3: TMenuItem
        Caption = '&Copy'
        ImageIndex = 0
        ShortCut = 16451
        OnClick = Copy3Click
      end
      object Paste1: TMenuItem
        Caption = '&Paste'
        ImageIndex = 4
        ShortCut = 16470
        OnClick = Paste1Click
      end
    end
    object Font1: TMenuItem
      Caption = '&Font'
      Enabled = False
      OnClick = Font1Click
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 32
    object Openas2: TMenuItem
      Caption = '&Open as'
      object exec2: TMenuItem
        Caption = 'Program associated'
        OnClick = exec2Click
      end
      object Mmedia2: TMenuItem
        Caption = 'Media'
        OnClick = Mmedia2Click
      end
      object Picture2: TMenuItem
        Caption = 'Image'
        OnClick = Picture2Click
      end
      object Text2: TMenuItem
        Caption = 'Text'
        OnClick = Text2Click
      end
    end
    object Copy2: TMenuItem
      Caption = '&Copy'
      OnClick = Copy2Click
    end
    object Move2: TMenuItem
      Caption = '&Move'
      OnClick = Move2Click
    end
    object Delete2: TMenuItem
      Caption = '&Delete'
      OnClick = Delete2Click
    end
    object Rename2: TMenuItem
      Caption = '&Rename'
      OnClick = Rename2Click
    end
    object Properties2: TMenuItem
      Caption = '&Properties'
      OnClick = Properties2Click
    end
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    Left = 64
    object Open2: TMenuItem
      Caption = '&Open'
      OnClick = Open2Click
    end
    object Save2: TMenuItem
      Caption = '&Save'
      OnClick = Save2Click
    end
    object Close2: TMenuItem
      Caption = '&Close'
      OnClick = Close2Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Cut2: TMenuItem
      Caption = '&Cut'
      OnClick = Cut2Click
    end
    object Copy4: TMenuItem
      Caption = '&Copy'
      OnClick = Copy4Click
    end
    object Paste2: TMenuItem
      Caption = '&Paste'
      OnClick = Paste2Click
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'All files(*.*)|*.*|Media|*.mp3;*.ogg;*.wav;*.mid;*.midi;*.ac3;*.' +
      'aif;*.aifc;*.aiff;*.au;*.it;*.kar;*.mka;*.mod;*.mpa;*.ra;*.rmi;*' +
      '.s3m;*.snd;*.stm;*.wma;*.xm;*.3gp;*.asf;*.avi;*.divx;*.m1v;*.m2v' +
      ';*.mkv;*.mov;*.mp4;*.mpe;*.mpeg;*.mpg;*.mpv;*.ogm;*.qt;*.ram;*.r' +
      'm;*.rv;*.vob;*.wm;*.wmv|Image|*.jpg;*.jpeg;*.gif;*.png;*.ico;*.b' +
      'mp|Text|*.txt;*.htm;*.html;*.xml;*.rtf;*.log;*.ini;*.inf;*.vbp;*' +
      '.frm;*.dpr;*.pas'
    Options = [ofShowHelp, ofPathMustExist, ofFileMustExist, ofShareAware, ofEnableSizing, ofForceShowHidden]
    Left = 96
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'All files(*.*)|*.*|Media|*.mp3;*.ogg;*.wav;*.mid;*.midi;*.ac3;*.' +
      'aif;*.aifc;*.aiff;*.au;*.it;*.kar;*.mka;*.mod;*.mpa;*.ra;*.rmi;*' +
      '.s3m;*.snd;*.stm;*.wma;*.xm;*.3gp;*.asf;*.avi;*.divx;*.m1v;*.m2v' +
      ';*.mkv;*.mov;*.mp4;*.mpe;*.mpeg;*.mpg;*.mpv;*.ogm;*.qt;*.ram;*.r' +
      'm;*.rv;*.vob;*.wm;*.wmv|Image|*.jpg;*.jpeg;*.gif;*.png;*.ico;*.b' +
      'mp|Text|*.txt;*.htm;*.html;*.xml;*.rtf;*.log;*.ini;*.inf;*.vbp;*' +
      '.frm;*.dpr;*.pas'
    Options = [ofOverwritePrompt, ofShowHelp, ofExtensionDifferent, ofShareAware, ofEnableSizing, ofForceShowHidden]
    Left = 128
  end
  object OPD: TOpenPictureDialog
    Filter = 
      'All files(*.*)|*.*|All images (*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.' +
      'wmf)|*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf|JPEG Image File (*.jpg' +
      ')|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Ic' +
      'ons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.' +
      'wmf)|*.wmf'
    Options = [ofReadOnly, ofShowHelp, ofExtensionDifferent, ofPathMustExist, ofFileMustExist, ofShareAware, ofEnableSizing, ofForceShowHidden]
    Left = 156
  end
  object SPD: TSavePictureDialog
    Filter = 
      'All files(*.*)|*.*|All images (*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.' +
      'wmf)|*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf|JPEG Image File (*.jpg' +
      ')|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|Ic' +
      'ons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.' +
      'wmf)|*.wmf'
    Options = [ofReadOnly, ofOverwritePrompt, ofShowHelp, ofExtensionDifferent, ofCreatePrompt, ofShareAware, ofEnableSizing, ofForceShowHidden]
    Left = 184
  end
  object Timer1: TTimer
    Enabled = False
    Left = 216
  end
  object FontDialog1: TFontDialog
    OnClose = FontDialog1Close
    OnShow = FontDialog1Show
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = []
    Device = fdBoth
    MinFontSize = 10
    MaxFontSize = 28
    Options = [fdAnsiOnly, fdEffects, fdForceFontExist, fdShowHelp, fdLimitSize, fdScalableOnly]
    OnApply = FontDialog1Apply
    Left = 252
    Top = 2
  end
  object ImList1: TImageList
    ShareImages = True
    Left = 288
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008080008080
      8000008080008080800080000000FFFFFF008000000080000000800000008000
      00008000000080000000FFFFFF00800000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000808080000080
      8000808080000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008080008080
      8000008080008080800080000000FFFFFF00800000008000000080000000FFFF
      FF00800000008000000080000000800000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000808080000080
      8000808080000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF0080000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008080008080
      8000008080008080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000008000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000808080000080
      8000808080000080800080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000008080008080
      8000008080008080800000808000808080000080800080808000008080008080
      8000008080000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000808080000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000008080000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000808080000080
      80000000000000FFFF00000000000000000000FFFF0000000000808080000080
      8000808080000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000008000
      0000000000000000000080000000000000000000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000000000000000000000000000000000008000
      0000000000000000000080000000000000008000000000000000000000008000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0080000000000000000000000000000000000000008000
      0000000000000000000080000000000000008000000000000000000000008000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00000000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000000000000000000000000000000000000000
      0000800000008000000080000000000000008000000000000000000000008000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008080000080800000808000008080000080800000808000008080000080
      80000080800000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0080000000000000000000000000000000000000000000
      0000000000000000000080000000000000008000000080000000800000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000080800000808000008080000080800000808000008080000080
      80000080800000808000000000000000000000000000FFFFFF00000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000000000000000000000000000000000000000
      0000000000000000000080000000000000008000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000FFFFFF000000000000000000FFFFFF008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008000
      0000FFFFFF008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF00000000FC00C00100000000
      8000803100000000000080310000000000008031000000000000800100000000
      0001800100000000000380010000000000038FF10000000000038FF100000000
      00038FF1000000000FC38FF10000000000038FF10000000080078FF500000000
      F87F800100000000FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFF
      FC01ED9FC007001FFC01ED6FC007000FFC01ED6FC00700070001F16FC0070003
      0001FD1FC00700010001FC7FC00700000001FEFFC007001F0003FC7FC007001F
      0007FD7FC007001F000FF93FC0078FF100FFFBBFC00FFFF901FFFBBFC01FFF75
      03FFFBBFC03FFF8FFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
