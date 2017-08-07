object FPrgDlg: TFPrgDlg
  Left = 221
  Top = 627
  AlphaBlend = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Progress Dialog'
  ClientHeight = 178
  ClientWidth = 521
  Color = clBtnFace
  UseDockManager = True
  DockSite = True
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ScreenSnap = True
  PixelsPerInch = 96
  TextHeight = 20
  object GaugeCurr: TGauge
    Left = 8
    Top = 48
    Width = 505
    Height = 33
    Progress = 0
  end
  object GaugeTotal: TGauge
    Left = 8
    Top = 136
    Width = 505
    Height = 33
    Progress = 0
  end
  object Label1: TLabel
    Left = 216
    Top = 8
    Width = 81
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Current: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 224
    Top = 96
    Width = 73
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Total: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnPause: TButton
    Left = 440
    Top = 8
    Width = 75
    Height = 33
    Caption = 'Pause'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnPauseClick
  end
  object btnCancel: TButton
    Left = 440
    Top = 88
    Width = 75
    Height = 41
    Cancel = True
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer1Timer
    Left = 8
    Top = 8
  end
end
