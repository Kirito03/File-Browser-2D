unit AboutUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TAbout = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  About: TAbout;

implementation

{$R *.dfm}

procedure TAbout.Button1Click(Sender: TObject);
begin
  About.Hide;
end;

procedure TAbout.FormCreate(Sender: TObject);
const
  InfoNum = 10;
  InfoStr: array[1..InfoNum] of string = ('CompanyName', 'FileDescription', 'FileVersion', 'InternalName', 'LegalCopyright', 'LegalTradeMarks', 'OriginalFileName', 'ProductName', 'ProductVersion', 'Comments');
var
	S: string;
  n, Len, i: DWORD;
  Buf: PChar;
  Value: PChar;
begin
	Edit1.Text := Application.Title;
	Edit2.Text := Application.ExeName;
	S := Application.ExeName;
	n := GetFileVersionInfoSize(PChar(S), n);
  if n > 0 then begin
		Buf := AllocMem(n);
		GetFileVersionInfo(PChar(S), 0, n, Buf);
    for i := 1 to InfoNum do
			if VerQueryValue(Buf, PChar('StringFileInfo\040904E4\' + InfoStr[i]), Pointer(Value), Len)and (i=3) then
				Edit3.Text := Value;
		FreeMem(Buf, n);
  end;
end;

end.
