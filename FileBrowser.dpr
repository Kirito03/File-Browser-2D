program FileBrowser;



uses
  Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  FAttrDlg in 'FAttrDlg.pas' {FileAttrForm},
  FChngDlg in 'FChngDlg.pas' {ChangeDlg},
  AboutUnit in 'AboutUnit.pas' {About},
  FmxUtils in 'FmxUtils.pas',
  Bass in '..\..\Lib\bass\bass.pas',
  PrgDlg in 'PrgDlg.pas' {FPrgDlg},
  RootThread in 'RootThread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'File-browser';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFileAttrForm, FileAttrForm);
  Application.CreateForm(TChangeDlg, ChangeDlg);
  Application.CreateForm(TAbout, About);
  Application.CreateForm(TFPrgDlg, FPrgDlg);
  Application.Run;
end.
