unit PrgDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, StdCtrls, ExtCtrls;

type
  TFPrgDlg = class(TForm)
    GaugeCurr: TGauge;
    GaugeTotal: TGauge;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    btnPause: TButton;
    btnCancel: TButton;
//    function PrgParams(Copied, Size: Integer): Boolean; overload;
    procedure Timer1Timer(Sender: TObject);
    procedure btnPauseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrgDlg: TFPrgDlg;

implementation

var PCopied, PSize, PTotal: Integer;

{$R *.dfm}

{function PrgParams(Copied, Size: Int64): Boolean;
begin
	try
		PCopied:= Copied;
  	PSize := Size;
  	Result := True;
  except
  	Result := False;
  end;
end;}

procedure TFPrgDlg.Timer1Timer(Sender: TObject);
var i:Int64;
begin
	Timer1.Enabled := False;
  Timer1.Interval := 250;
  i := i + 1;
	Timer1.Enabled := True;
end;

procedure TFPrgDlg.btnPauseClick(Sender: TObject);
begin
	with btnPause do begin
    if btnPause.Caption = 'Pause' then begin
      btnPause.Caption := 'Continue';
//			TCpThread.Suspend;
		end
    else
    	btnPause.Caption := 'Pause';
//      TCpThread.Resume;
  end;
end;

end.
