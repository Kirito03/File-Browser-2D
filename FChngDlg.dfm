object ChangeDlg: TChangeDlg
  Left = 213
  Top = 586
  ActiveControl = OKBtn
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Dialog'
  ClientHeight = 146
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 377
    Height = 97
    Shape = bsFrame
    IsControl = True
  end
  object CurrentDir: TLabel
    Left = 16
    Top = 16
    Width = 99
    Height = 16
    Caption = 'Current Directory'
  end
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 34
    Height = 16
    Caption = 'From:'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 20
    Height = 16
    Caption = 'To:'
  end
  object OKBtn: TButton
    Left = 288
    Top = 112
    Width = 89
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 4
    Top = 112
    Width = 85
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object ToFileName: TEdit
    Left = 64
    Top = 72
    Width = 313
    Height = 24
    TabOrder = 2
  end
  object FromFileName: TEdit
    Left = 64
    Top = 40
    Width = 313
    Height = 24
    TabOrder = 3
  end
  object btnSouce: TButton
    Left = 96
    Top = 112
    Width = 89
    Height = 25
    Caption = 'Souce'
    TabOrder = 4
    OnClick = btnSouceClick
  end
  object btnTarget: TButton
    Left = 192
    Top = 112
    Width = 89
    Height = 25
    Caption = 'Target'
    TabOrder = 5
    OnClick = btnTargetClick
  end
  object OD: TOpenDialog
    Options = [ofReadOnly, ofHideReadOnly, ofShowHelp, ofExtensionDifferent, ofPathMustExist, ofFileMustExist, ofShareAware, ofNoTestFileCreate, ofEnableIncludeNotify, ofEnableSizing, ofDontAddToRecent, ofForceShowHidden]
  end
  object SD: TSaveDialog
    Options = [ofHideReadOnly, ofShowHelp, ofExtensionDifferent, ofCreatePrompt, ofShareAware, ofEnableIncludeNotify, ofEnableSizing, ofDontAddToRecent, ofForceShowHidden]
    Left = 32
  end
end
