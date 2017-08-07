unit MainUnit;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFNDEF FPC}
	Windows,
{$ELSE}
  LCLIntf, LCLType, LMessages,
{$ENDIF}
	Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, Grids, Outline, DirOutln, StdCtrls, FileCtrl,
  ExtCtrls, MPlayer, ToolWin, OleCtnrs, AppEvnts, ExtDlgs, ShellAPI,
  ValEdit, Gauges, OleCtrls, SHDocVw, Spin, Math, Buttons, IdSMTP,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
	IdMessageClient, jpeg, Qt, ImgList, bass;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Openas1: TMenuItem;
    Copy1: TMenuItem;
    Move1: TMenuItem;
    Rename1: TMenuItem;
    Delete1: TMenuItem;
    Properties1: TMenuItem;
    N1: TMenuItem;
    About1: TMenuItem;
    Exit1: TMenuItem;
    PageControl1: TPageControl;
    PageMan: TTabSheet;
    PageMedia: TTabSheet;
    PageImage: TTabSheet;
    PageText: TTabSheet;
    Drive: TDriveComboBox;
    FileList: TFileListBox;
    StatusBar: TStatusBar;
    ImageP: TImage;
    Filter: TFilterComboBox;
    Mmedia1: TMenuItem;
    Picture1: TMenuItem;
    Text1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Openas2: TMenuItem;
    Mmedia2: TMenuItem;
    Picture2: TMenuItem;
    Text2: TMenuItem;
    Copy2: TMenuItem;
    Move2: TMenuItem;
    Rename2: TMenuItem;
    Delete2: TMenuItem;
    Properties2: TMenuItem;
    exec1: TMenuItem;
    exec2: TMenuItem;
    PopupMenu2: TPopupMenu;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Edit1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    Cut1: TMenuItem;
    Copy3: TMenuItem;
    Paste1: TMenuItem;
    N2: TMenuItem;
    Open2: TMenuItem;
    Save2: TMenuItem;
    N4: TMenuItem;
    Cut2: TMenuItem;
    Copy4: TMenuItem;
    Paste2: TMenuItem;
    OPD: TOpenPictureDialog;
    SPD: TSavePictureDialog;
    Close1: TMenuItem;
    Close2: TMenuItem;
    Anim: TAnimate;
    DirLine: TDirectoryOutline;
    PageWeb: TTabSheet;
    Web: TWebBrowser;
    WebAddress: TComboBox;
    Status: TStatusBar;
    PageKeyGen: TTabSheet;
    MemoKeys: TMemo;
    BtnGen: TButton;
    Spin1: TSpinEdit;
    Spin2: TSpinEdit;
    Group: TGroupBox;
    Lbl1: TLabel;
    Lbl2: TLabel;
    Radio1: TRadioButton;
    Radio2: TRadioButton;
    Radio3: TRadioButton;
    Radio4: TRadioButton;
    ReloadBtn: TBitBtn;
    StopBtn: TBitBtn;
    LoadBtn: TBitBtn;
    Wraper: TCheckBox;
    PageCalc: TTabSheet;
    CEA: TEdit;
    CEB: TEdit;
    CER: TEdit;
    Group1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Group2: TGroupBox;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MGP: TGroupBox;
    Timer1: TTimer;
    Pos: TScrollBar;
    Font1: TMenuItem;
    FontDialog1: TFontDialog;
    Memo: TRichEdit;
    btnPlay: TButton;
    btnPause: TButton;
    btnStop: TButton;
    btnPrev: TButton;
    btnNext: TButton;
    ImList1: TImageList;
    Progress1: TGauge;
    Tabs: TTabControl;
    procedure PageControl1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exit1Click(Sender: TObject);
    procedure File1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Properties1Click(Sender: TObject);
    procedure FileChange(Sender: TObject);
    procedure FileListMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FileListEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure FileListDblClick(Sender: TObject);
    procedure FileListChange(Sender: TObject);
    procedure Mmedia1Click(Sender: TObject);
    procedure Picture1Click(Sender: TObject);
    procedure Text1Click(Sender: TObject);
    procedure ConfirmChange(const ACaption, FromFile, ToFile: string);
    procedure Mmedia2Click(Sender: TObject);
    procedure Picture2Click(Sender: TObject);
    procedure Text2Click(Sender: TObject);
    procedure Copy2Click(Sender: TObject);
    procedure Move2Click(Sender: TObject);
    procedure Rename2Click(Sender: TObject);
    procedure Delete2Click(Sender: TObject);
    procedure Properties2Click(Sender: TObject);
    procedure exec2Click(Sender: TObject);
    procedure exec1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Copy3Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Close2Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Open2Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure Cut2Click(Sender: TObject);
    procedure Copy4Click(Sender: TObject);
    procedure Paste2Click(Sender: TObject);
    procedure DirLineChange(Sender: TObject);
    procedure DriveChange(Sender: TObject);
    procedure WebNavigateComplete2(Sender: TObject; const pDisp: IDispatch;
      var URL: OleVariant);
    procedure WebProgressChange(Sender: TObject; Progress,
      ProgressMax: Integer);
    procedure BtnGenClick(Sender: TObject);
    procedure StopBtnClick(Sender: TObject);
    procedure ReloadBtnClick(Sender: TObject);
    procedure LoadBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure WraperClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure PosChange(Sender: TObject);
    procedure WebAddressKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Font1Click(Sender: TObject);
    procedure FontDialog1Apply(Sender: TObject; Wnd: HWND);
    procedure FontDialog1Show(Sender: TObject);
    procedure btnPlayClick(Sender: TObject);
    procedure btnPauseClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure btnPrevClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure DirLineDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure DirLineEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure FileListDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TabsChange(Sender: TObject);
    procedure FontDialog1Close(Sender: TObject);
private
	{ Private declarations }
	chan: DWORD;
public
	{ Public declarations }
end;

var
	Form1: TForm1;

implementation

uses FAttrDlg, FChngDlg, FmxUtils, Clipbrd, AboutUnit;

{$R *.dfm}

var m,r:Real;tm,tp,tt:String;pos_type:Int64;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
  PageMan.Refresh;
  PageMedia.Refresh;
  PageImage.Refresh;
  PageText.Refresh;
  with PageControl1 do begin
    if (ActivePage=PageMan) or (ActivePage=PageWeb) then begin
      Edit1.Enabled:=False;end
    else
      Edit1.Enabled:=True;
	end;
	if PageControl1.ActivePage=PageMan then begin
		Openas1.Enabled:=True;
    Copy1.Enabled:=True;
    Move1.Enabled:=True;
    Rename1.Enabled:=True;
    Delete1.Enabled:=True;
    Properties1.Enabled:=True; end
	else begin
		Openas1.Enabled:=False;
    Copy1.Enabled:=False;
    Move1.Enabled:=False;
    Rename1.Enabled:=False;
    Delete1.Enabled:=False;
    Properties1.Enabled:=False; end;
	if (PageControl1.ActivePage=PageText) or (PageControl1.ActivePage=PageKeyGen) or (PageControl1.ActivePage=PageCalc) then
		Font1.Enabled:=True
  else
    Font1.Enabled:=False;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.File1Click(Sender: TObject);
var
  FileSelected: Boolean;
begin
  FileSelected := FileList.ItemIndex >= 0;
  Open1.Enabled := FileSelected;
  Delete1.Enabled := FileSelected;
  Copy1.Enabled := FileSelected;
  Move1.Enabled := FileSelected;
  Rename1.Enabled := FileSelected;
  Properties1.Enabled := FileSelected;
end;

procedure TForm1.Delete1Click(Sender: TObject);
begin
  with FileList do
    if MessageDlg('Are you sure to delete ' + FileName + '?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
      if DeleteFile{UTF8}(FileName) then Update;
end;

procedure TForm1.Properties1Click(Sender: TObject);
var
  Attributes, NewAttributes: Word;
begin
  if PageControl1.ActivePage=PageMan then begin
    with FileAttrForm do
    begin
      FileName.Caption := FileList.FileName;
      FilePathName.Caption := FileList.Directory;
      ChangeDate.Caption := DateTimeToStr(FileDateTime(FileList.FileName));
      Attributes := FileGetAttr(FileName.Caption);
      ReadOnly.Checked := (Attributes and faReadOnly)=faReadOnly;
      Archive.Checked := (Attributes and faArchive)=faArchive;
      System.Checked := (Attributes and faSysFile)=faSysFile;
      Hidden.Checked := (Attributes and faHidden)=faHidden;
      if ShowModal <> mrCancel then
      begin
        NewAttributes := Attributes;
        if ReadOnly.Checked then NewAttributes := NewAttributes and faReadOnly
        else NewAttributes := NewAttributes and not faReadOnly;
        if Archive.Checked then NewAttributes := NewAttributes and faArchive
        else NewAttributes := NewAttributes and not faArchive;
        if System.Checked then NewAttributes := NewAttributes and faSysFile
        else NewAttributes := NewAttributes and not faSysFile;
        if Hidden.Checked then NewAttributes := NewAttributes and faHidden
        else NewAttributes := NewAttributes and not faHidden;
        if NewAttributes <> Attributes then
          FileSetAttr(FileName.Caption,Attributes);
      end;
    end;
  end;
end;

procedure TForm1.ConfirmChange(const ACaption, FromFile, ToFile: string);
begin 
  if MessageDlg(Format('%s %s to %s?', [ACaption, FromFile, ToFile]),
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if ACaption = 'Move' then
      MoveFile(PAnsiChar(FromFile), PAnsiChar(ToFile))
    else if ACaption = 'Copy' then
      CopyFile(PAnsiChar(FromFile), PAnsiChar(ToFile))
    else if ACaption = 'Move' then
      RenameFile(PAnsiChar(FromFile), PAnsiChar(ToFile));
    FileList.Update;
  end;
end;

procedure TForm1.FileChange(Sender: TObject);
begin
	if (PageControl1.ActivePage=PageMan) and (FileList.FileName<>'') then begin
		with ChangeDlg do begin
			if Sender = Move1 then Caption := 'Move'
			else if Sender = Copy1 then Caption := 'Copy'
			else if Sender = Rename1 then Caption := 'Rename'
			else Exit;
			CurrentDir.Caption := DirLine.Directory;
			FromFileName.Text := FileList.FileName;
			ToFileName.Text := '';
			if (ShowModal <> mrCancel) and (ToFileName.Text <> '') then
				ConfirmChange(Caption, FromFileName.Text, ToFileName.Text);
		end;
	end;
end;

procedure TForm1.FileListMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	if Button = mbLeft then begin
	with Sender as TFileListBox do
  begin
    if ItemAtPos(Point(X, Y), True) = ItemIndex then
      BeginDrag(False,5);
	end;end;
	if Button=mbRight then begin
  with FileList do
  begin
    if ItemAtPos(Point(X, Y), True) >= 0 then
      FileList.Selected[Y div ItemHeight + TopIndex]:=True;
  end;end;
end;

procedure TForm1.FileListEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
	if Target = FileList then FileList.Update;
end;

procedure TForm1.FileListDblClick(Sender: TObject);
begin
  if FileList.Mask=tm then MMedia1.Click
  else if FileList.Mask=tp then Picture1.Click
  else if FileList.Mask=tt then Text1.Click
  else
    exec1.Click
end;

procedure TForm1.FileListChange(Sender: TObject);
var b,kb,mb,gb:Single;
begin
  StatusBar.Panels.Items[0].Text:='File: '+FileList.FileName;
  if FileList.ItemIndex>-1 then begin
  Openas1.Enabled:=True;Copy1.Enabled:=True;
  Move1.Enabled:=True;Rename1.Enabled:=True;
  Delete1.Enabled:=True;Properties1.Enabled:=True;
  b:=GetFileSize(FileList.FileName);
  kb:=b/1024;mb:=kb/1024;gb:=mb/1024;
  if gb>=1 then StatusBar.Panels.Items[1].Text:='Size: '+FloatToStr(gb)+' GB';
  if gb<1 then StatusBar.Panels.Items[1].Text:='Size: '+FloatToStr(mb)+' MB';
  if mb<1 then StatusBar.Panels.Items[1].Text:='Size: '+FloatToStr(kb)+' KB';
  if kb<1 then StatusBar.Panels.Items[1].Text:='Size: '+FloatToStr(b)+' B';end;
  StatusBar.Update;StatusBar.Refresh;
end;

procedure TForm1.Mmedia1Click(Sender: TObject);
begin
{	if FileList.FileName<>'' then begin
	Media.FileName:=FileList.FileName;end
	else if OpenDialog1.FileName<>'' then begin
	Media.FileName:=OpenDialog1.FileName;end;
	PageControl1.ActivePage:=PageMedia;}
end;

procedure TForm1.Picture1Click(Sender: TObject);
begin 
	if FileList.FileName<>'' then begin
	ImageP.Picture.LoadFromFile(FileList.FileName);end
	else if OPD.FileName<>'' then begin
  ImageP.Picture.LoadFromFile(OPD.FileName);end;
  PageControl1.ActivePage:=PageImage;
end;

procedure TForm1.Text1Click(Sender: TObject);
begin  
	if FileList.FileName<>'' then begin
	Memo.Lines.LoadFromFile(FileList.FileName);end
	else if OpenDialog1.FileName<>'' then begin
	Memo.Lines.LoadFromFile(OpenDialog1.FileName);end;
  Font1.Enabled:=True;PageControl1.ActivePage:=PageText;
end;

procedure TForm1.Mmedia2Click(Sender: TObject);
begin
  Mmedia1.Click;
end;

procedure TForm1.Picture2Click(Sender: TObject);
begin
  Picture1.Click;
end;

procedure TForm1.Text2Click(Sender: TObject);
begin
  Text1.Click;
end;

procedure TForm1.Copy2Click(Sender: TObject);
begin
  Copy1.Click;
end;

procedure TForm1.Move2Click(Sender: TObject);
begin
  Move1.Click;
end;

procedure TForm1.Rename2Click(Sender: TObject);
begin
  Rename1.Click;
end;

procedure TForm1.Delete2Click(Sender: TObject);
begin
  Delete1.Click;
end;

procedure TForm1.Properties2Click(Sender: TObject);
begin
  Properties1.Click;
end;

procedure TForm1.exec2Click(Sender: TObject);
begin
  exec1.Click;
end;

procedure TForm1.exec1Click(Sender: TObject);
var ErrCode:Cardinal;
begin
   try
    ExecuteFile('rundll32.exe','shell32,ShellExec_RunDLL '+FileList.FileName,FileList.Directory,sw_ShowNormal);
   except
    ErrCode:=ExecuteFile('rundll32.exe','shell32,ShellExec_RunDLL '+FileList.FileName,FileList.Directory,sw_ShowNormal);
   end;
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
  if PageControl1.ActivePage = PageText then begin
    if OpenDialog1.Execute then
    Memo.Lines.LoadFromFile(OpenDialog1.FileName);
    Memo.Update;
  end
  else if PageControl1.ActivePage = PageImage then begin
    if OPD.Execute then
    ImageP.Picture.LoadFromFile(OPD.FileName);
    ImageP.Update;
  end
  else if PageControl1.ActivePage = PageMedia then begin
    with OpenDialog1 do begin
		  if Execute then begin
			  if FileName{[(Length(FileName)-4)..Length(FileName)]} = '*.ogg' then
			  pos_type := BASS_POS_OGG
			  else pos_type := BASS_POS_BYTE;
			  BASS_MusicFree(chan);
			  Bass_StreamFree(chan);
			  chan := BASS_StreamCreateFile(FALSE, PChar(OpenDialog1.FileName), 0, 0, BASS_STREAM_PRESCAN or BASS_ASYNCFILE or BASS_UNICODE);
			  if (chan = 0) then
				  chan := BASS_MusicLoad(FALSE, PChar(OpenDialog1.FileName), 0, 0, BASS_MUSIC_RAMP or BASS_MUSIC_SINCINTER or BASS_MUSIC_PRESCAN or BASS_UNICODE,1);
		  end;
    end;
	end;
end;

procedure TForm1.Save1Click(Sender: TObject);
begin
  if PageControl1.ActivePage = PageText then begin
    if SaveDialog1.Execute then
    Memo.Lines.SaveToFile(SaveDialog1.FileName);
  end
  else if PageControl1.ActivePage = PageImage then begin
    if SPD.Execute then
    ImageP.Picture.Bitmap.SaveToFile(SPD.FileName);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
	Application.ProcessMessages;
	BASS_Init(-1, 44100, 0, Application.Handle, nil);
	PageControl1.ActivePage := PageMan;
	FontDialog1.Font:=Memo.Font;
//	ImageP.Picture.Graphic.Transparent:=True;
  Form1.Height:=Round(Screen.Height*0.8);
  Form1.Width:=Round(Screen.Width*0.8);
  tm:='*.mp3;*.ogg;*.wav;*.mid;*.midi;*.ac3;*.aif;*.aifc;*.aiff;*.au;*.it;*.kar;*.mka;*.mod;*.mpa;*.ra;*.rmi;*.s3m;*.snd;*.stm;*.wma;*.xm;*.3gp;*.asf;*.avi;*.divx;*.m1v;*.m2v;*.mkv;*.mov;*.mp4;*.mpe;*.mpeg;*.mpg;*.mpv;*.ogm;*.qt;*.ram;*.rm;*.rv;*.vob;*.wm;*.wmv';
  tp:='*.jpg;*.jpeg;*.gif;*.png;*.ico;*.bmp';
  tt:='*.txt;*.htm;*.html;*.xml;*.rtf;*.log;*.ini;*.inf;*.vbp;*.frm;*.dpr;*.pas';
end;

procedure TForm1.Cut1Click(Sender: TObject);
begin
  Copy3Click(Form1);
  Memo.ClearSelection;
end;

procedure TForm1.Paste1Click(Sender: TObject);
begin
  if PageControl1.ActivePage = PageText then begin
    Clipboard.Open;
    Memo.SelText:=Clipboard.AsText;
    Clipboard.Close;
    Clipboard.Free;
    
  end;
end;

procedure TForm1.Copy3Click(Sender: TObject);
begin
  if PageControl1.ActivePage = PageText then begin
    Clipboard.Open;
    Clipboard.AsText:=Memo.SelText;
    Clipboard.Close;
  end;
end;

procedure TForm1.About1Click(Sender: TObject);
begin
  About.Show;
end;

procedure TForm1.Close2Click(Sender: TObject);
begin
  Close1.Click;
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
	if ImageP.Picture.Bitmap.Empty=False then begin
		ImageP.Picture.Graphic.Free;
		ImageP.Picture.Graphic.Create;
		ImageP.Update;end;
	if Memo.Lines.Text<>'' then	begin
		Memo.Lines.Clear;Memo.Update;end;
//	if Media.FileName<>'' then begin
 //		Media.Close;Media.FileName:='';Media.Update;end;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  if Form1.Width<640 then Form1.Width:=640;
  if Form1.Height<480 then Form1.Height:=480;
  PageControl1.TabWidth:=PageControl1.Width div PageControl1.PageCount;
  Drive.Width:=PageControl1.Width div 2-7;
  Filter.Width:=PageControl1.Width div 2-15;
	Filter.Left:=PageControl1.Width div 2+7;
  FileList.Width:=PageControl1.Width div 2-15;
	FileList.Left:=PageControl1.Width div 2+7;
  FileList.Height:=PageControl1.Height-90;
  DirLine.Width:=PageControl1.Width div 2-7;
  DirLine.Height:=PageControl1.Height-90;
  StatusBar.Top:=PageControl1.Height-30;
  StatusBar.Height:=25;
  StatusBar.Panels[0].Width:=PageControl1.Width-300;
	Anim.Left:=0;
  Anim.Height:=PageControl1.Height-96;
	Anim.Width:=Anim.Height*4 div 3;
  MGP.Top:=PageControl1.Height-130;
	MGP.Width:=PageControl1.Width-8;
	btnPrev.Top:=PageControl1.Height-72;
	btnPlay.Top:=PageControl1.Height-72;
	btnPause.Top:=PageControl1.Height-72;
	btnStop.Top:=PageControl1.Height-72;
	btnNext.Top:=PageControl1.Height-72;
	Wraper.Height:=17;Wraper.Left:=0;Wraper.Top:=0;
  Wraper.Width:=PageControl1.Width;
  Memo.Width:=PageControl1.Width-7;
  Memo.Height:=PageControl1.Height-50;
  WebAddress.Width:=Tabs.Width-108;
  LoadBtn.Left:=PageControl1.Width-101;
  ReloadBtn.Left:=PageControl1.Width-69;
  StopBtn.Left:=PageControl1.Width-37;
//  Status.Top:=Tabs.Height-23;
//  Progress1.Top:=Tabs.Height-46;
  Web.Resizable:=True;
  Web.Height:=Tabs.Height-96;
  Web.Width:=Tabs.Width-10;
  Lbl1.Left:=PageControl1.Width-Group.Width-10;
  Lbl2.Left:=PageControl1.Width-Group.Width-10;
  BtnGen.Left:=PageControl1.Width-Group.Width-10;
  Spin1.Left:=PageControl1.Width-Group.Width-10;
  Spin2.Left:=PageControl1.Width-Group.Width-10;
  Group.Left:=PageControl1.Width-Group.Width-10;
  MemoKeys.Left:=10;MemoKeys.Top:=10;
  MemoKeys.Width:=PageControl1.Width-Group.Width-10;
end;

procedure TForm1.Open2Click(Sender: TObject);
begin
  Open1.Click;
end;

procedure TForm1.Save2Click(Sender: TObject);
begin
  Save1.Click;
end;

procedure TForm1.Cut2Click(Sender: TObject);
begin
  Cut1.Click;
end;

procedure TForm1.Copy4Click(Sender: TObject);
begin
  Copy3.Click;
end;

procedure TForm1.Paste2Click(Sender: TObject);
begin
  Paste1.Click;
end;

procedure TForm1.DirLineChange(Sender: TObject);
begin
  FileList.Directory:=DirLine.Directory;
  FileList.Update;
end;

procedure TForm1.DriveChange(Sender: TObject);
begin
  DirLine.Drive:=Drive.Drive;
  DirLine.Update;Drive.Update;
end;

procedure TForm1.WebNavigateComplete2(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var f:textfile;i:integer;
begin
  Progress1.Progress:=Progress1.MaxValue;
  Status.Panels[1].Text:=Web.LocationURL;
  WebAddress.Text:=Web.LocationURL;
  Tabs.Tabs[Tabs.TabIndex]:=Web.LocationName;
  if not FileExists('WebTabs.txt') then FileCreate('WebTabs.txt');
  AssignFile(f,'WebTabs.txt');FileOpen('WebTabs.txt',$0040);
  for i:=1 to Tabs.Tabs.Count do begin
    writeln(IntToStr(Tabs.TabIndex)+'!'+Web.LocationURL)
  end;
end;

procedure TForm1.WebProgressChange(Sender: TObject; Progress,
  ProgressMax: Integer);
begin
	Progress1.MaxValue:=ProgressMax;
  Progress1.Progress:=Progress;
end;

procedure TForm1.BtnGenClick(Sender: TObject);
var i,j,n,k:Integer;s:Char;Key:Word;Shift:TShiftState;
begin
  MemoKeys.Clear;
  for i:=1 to Spin1.Value do begin
    for j:=1 to Spin2.Value do begin
      if Radio1.Checked then n:=RandomRange(49,58);
      if Radio2.Checked then begin
      k:=Random(2);
      case k of
      0:n:=RandomRange(49,58);
      1:n:=RandomRange(66,91);
      end;end;
      if Radio3.Checked then begin
      k:=Random(2);
      case k of
      0:n:=RandomRange(49,58);
      1:n:=RandomRange(98,123);
      end;end;
      if Radio4.Checked then begin
      k:=Random(3);
      case k of
      0:n:=RandomRange(49,58);
      1:n:=RandomRange(66,91);
      2:n:=RandomRange(98,123);
      end;end;
      s:=Char(n);
      k:=0;
      MemoKeys.Text:=MemoKeys.Text+s;
    end;
    MemoKeys.Text:=MemoKeys.Text+#13#10;
    MemoKeys.Update;
    Application.ProcessMessages;
//		if Key=vk_Escape then Break;
  end;
end;

procedure TForm1.StopBtnClick(Sender: TObject);
begin
  Web.Stop;
end;

procedure TForm1.ReloadBtnClick(Sender: TObject);
begin
  StopBtn.Enabled:=False;
  Web.Navigate(Status.Panels[1].Text);
  StopBtn.Enabled:=True;
end;

procedure TForm1.LoadBtnClick(Sender: TObject);
begin
  StopBtn.Enabled:=False;
  Web.Navigate(WebAddress.Text);
  StopBtn.Enabled:=True;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if PageControl1.ActivePage=PageWeb then begin
    if Key=vk_F5 then Web.Navigate(Status.Panels[1].Text);
    if Key=vk_Escape then Web.Stop;
  end
  else if (PageControl1.ActivePage=PageMan) and (Key=vk_Control*Key_R) then begin
    Drive.Update;DirLine.Update;FileList.Update;end;
  if Key=vk_Cancel then Application.Terminate;
end;

procedure TForm1.WraperClick(Sender: TObject);
begin
	if Wraper.Checked then begin
		Memo.ScrollBars:=ssVertical;
		Memo.Update;
		Memo.WordWrap:=True;end
	else begin
		Memo.ScrollBars:=ssBoth;
		Memo.WordWrap:=False;end;
	Memo.Update;
end;

procedure TForm1.Button1Click(Sender: TObject);
var a,b:Real;
begin
  a:=StrToFloat(CEA.Text);
  b:=StrToFloat(CEB.Text);
  r:=a+b;
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button2Click(Sender: TObject);
var a,b:Real;
begin
  a:=StrToFloat(CEA.Text);
  b:=StrToFloat(CEB.Text);
  r:=a-b;
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button3Click(Sender: TObject);
var a,b:Real;
begin
  a:=StrToFloat(CEA.Text);
  b:=StrToFloat(CEB.Text);
  r:=a*b;
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button4Click(Sender: TObject);
var a,b:Real;
begin
  a:=StrToFloat(CEA.Text);
  b:=StrToFloat(CEB.Text);
  r:=a/b;
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button5Click(Sender: TObject);
var a,b:Real;
begin
  a:=StrToFloat(CEA.Text);
  b:=StrToFloat(CEB.Text);
  r:=Int(a/b);
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button6Click(Sender: TObject);
var a,b:Real;
begin
  a:=StrToFloat(CEA.Text);
  b:=StrToFloat(CEB.Text);
  r:=Power(a,b);
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button7Click(Sender: TObject);
var a,b:Real;
begin
  a:=StrToFloat(CEA.Text);
  b:=StrToFloat(CEB.Text);
  r:=Power(a,1/b);
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button8Click(Sender: TObject);
var a,b:Real;
begin
  a:=StrToFloat(CEA.Text);
  b:=StrToFloat(CEB.Text);
  r:=Logn(b,a);
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  CEA.Text:='';
  CEB.Text:='';
  CER.Text:='Null';
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  m:=r;
  r:=0;
end;

procedure TForm1.Button11Click(Sender: TObject);
var a,b:Real;
begin
  if a<>StrToFloat('') then begin
    if b=StrToFloat('') then begin a:=m;end
    else b:=m;end
  else a:=m;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  m:=StrToFloat('');
end;

procedure TForm1.Button13Click(Sender: TObject);
var a:Real;
begin
  a:=StrToFloat(CEA.Text);
  r:=sin(a*pi/180);
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button14Click(Sender: TObject);
var a:Real;
begin
  a:=StrToFloat(CEA.Text);
  r:=Cos(a*pi/180);
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button15Click(Sender: TObject);
var a:Real;
begin
  a:=StrToFloat(CEA.Text);
  r:=tan(a*pi/180);
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button16Click(Sender: TObject);
var a:Real;
begin
  a:=StrToFloat(CEA.Text);
  r:=cot(a*pi/180);
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button17Click(Sender: TObject);
var a:Real;
begin
  a:=StrToFloat(CEA.Text);
  r:=arcsin(a)*180/pi;
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button18Click(Sender: TObject);
var a:Real;
begin
  a:=StrToFloat(CEA.Text);
  r:=arccos(a)*180/pi;
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button19Click(Sender: TObject);
var a:Real;
begin
  a:=StrToFloat(CEA.Text);
  r:=arctan(a)*180/pi;
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Button20Click(Sender: TObject);
var a:Real;
begin
  a:=StrToFloat(CEA.Text);
  r:=arccot(a)*180/pi;
  CER.Text:=FloatToStr(r);
  r:=0;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var mlen,mpos:real;
begin
	Timer1.Enabled:=False;
	Timer1.Interval:=1000;
//	BASS_ChannelPause(chan);
	mpos:=BASS_ChannelBytes2Seconds(chan, BASS_ChannelGetPosition(chan, pos_type));
	mlen:=BASS_ChannelBytes2Seconds(chan, BASS_ChannelGetLength(chan, pos_type));
	pos.position:=Round(mpos/mlen*pos.max);
	pos.Update;
//	BASS_ChannelPlay(chan, False);
	Timer1.Enabled:=True;
end;

procedure TForm1.PosChange(Sender: TObject);
var mlen:real;
begin
  if BASS_ChannelIsActive(chan)=BASS_ACTIVE_PLAYING then begin
		BASS_ChannelPause(chan);
		BASS_ChannelSetPosition(chan, round(pos.Position/pos.Max*mlen), pos_type);
		BASS_ChannelPlay(chan, false);
	end
	else
    BASS_ChannelSetPosition(chan, round(pos.Position/pos.Max*mlen), pos_type);
end;

procedure TForm1.WebAddressKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_Return then Web.Navigate(WebAddress.Text);
end;

procedure TForm1.Font1Click(Sender: TObject);
begin                 
	FontDialog1.Execute;
end;

procedure TForm1.FontDialog1Apply(Sender: TObject; Wnd: HWND);
begin
	if PageControl1.ActivePage=PageText then begin Memo.Font:=FontDialog1.Font;Memo.Update;end
	else if PageControl1.ActivePage=PageKeyGen then begin MemoKeys.Font:=FontDialog1.Font;MemoKeys.Update;end
	else if PageControl1.ActivePage=PageCalc then begin CEA.Font:=FontDialog1.Font;CEB.Font:=FontDialog1.Font;CER.Font:=FontDialog1.Font;CEA.Update;CEB.Update;CER.Update;end;
end;

procedure TForm1.FontDialog1Show(Sender: TObject);
begin
	if PageControl1.ActivePage=PageText then FontDialog1.Font:=Memo.Font
	else if PageControl1.ActivePage=PageKeyGen then FontDialog1.Font:=MemoKeys.Font
	else if PageControl1.ActivePage=PageCalc then begin FontDialog1.Font:=CEA.Font;FontDialog1.Font:=CEB.Font;FontDialog1.Font:=CER.Font;end;
end;

procedure TForm1.btnPlayClick(Sender: TObject);
begin
	// play both MOD and stream, it must be one of them! :)
	BASS_ChannelPlay(chan, False);
	Timer1.Enabled:=True;
end;

procedure TForm1.btnPauseClick(Sender: TObject);
begin
	BASS_ChannelPause(chan);
	Timer1.Enabled:=False;
end;

procedure TForm1.btnStopClick(Sender: TObject);
begin
	BASS_ChannelStop(chan);
	Timer1.Enabled:=False;
	BASS_ChannelSetPosition(chan, 0, pos_type);
end;

procedure TForm1.btnPrevClick(Sender: TObject);
begin
	BASS_ChannelSetPosition(chan, 0, pos_type);
end;

procedure TForm1.btnNextClick(Sender: TObject);
begin
	BASS_ChannelSetPosition(chan, BASS_ChannelGetLength(chan, pos_type), pos_type);
end;

procedure TForm1.DirLineDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
	if Source=FileList then
		CopyFile(FileList.FileName,DirLine.Items[x div DirLine.ItemHeight].Text);
end;

procedure TForm1.DirLineEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
	if Target <> nil then
		CopyFile(FileList.FileName,DirLine.Items[x div DirLine.ItemHeight].Text);
end;

procedure TForm1.FileListDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
	if (x<=FileList.Width) and (y<=FileList.Height) then FileList.Update;
end;

procedure TForm1.TabsChange(Sender: TObject);
var i,j,n:Integer;f:TextFile;url,s:String;
begin
  url:='';
  AssignFile(f,'WebTabs.txt');FileOpen('WebTabs.txt',$0040);
  for i:=1 to Tabs.Tabs.Count do begin
    try
      readln(s);
      n:=StrToInt(s[1]);
      if n=i then begin
        for j:=3 to Length(s) do
          url:=url+s[j];
        Web.Navigate(url);
      end;
    except
      Halt;
    end;
  end;
end;

procedure TForm1.FontDialog1Close(Sender: TObject);
begin
	if (PageControl1.ActivePage=PageText) and (FontDialog1.Font <> Memo.Font) then begin Memo.Font:=FontDialog1.Font;Memo.Update;end
	else if (PageControl1.ActivePage=PageKeyGen) and (FontDialog1.Font <> MemoKeys.Font) then begin MemoKeys.Font:=FontDialog1.Font;MemoKeys.Update;end
	else if (PageControl1.ActivePage=PageCalc) and (FontDialog1.Font <> CER.Font) then begin CEA.Font:=FontDialog1.Font;CEB.Font:=FontDialog1.Font;CER.Font:=FontDialog1.Font;CEA.Update;CEB.Update;CER.Update;end;
end;

end.
