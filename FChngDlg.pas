unit FChngDlg;

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
  SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Dialogs;

type
  TChangeDlg = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    CurrentDir: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    ToFileName: TEdit;
    FromFileName: TEdit;
    btnSouce: TButton;
    btnTarget: TButton;
    OD: TOpenDialog;
    SD: TSaveDialog;
    procedure btnSouceClick(Sender: TObject);
    procedure btnTargetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangeDlg: TChangeDlg;

implementation

{$R *.dfm}

procedure TChangeDlg.btnSouceClick(Sender: TObject);
begin
	OD.Execute;
	FromFileName.Text:=OD.FileName;
end;

procedure TChangeDlg.btnTargetClick(Sender: TObject);
begin
	SD.Execute;
	ToFileName.Text:=SD.FileName;
end;

end.



