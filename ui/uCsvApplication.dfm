object CsvApplicationForm: TCsvApplicationForm
  Left = 0
  Top = 0
  Caption = 'CSV Reader'
  ClientHeight = 418
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object HeaderPanel: TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 554
    object FilterKeyword: TLabeledEdit
      Left = 24
      Top = 31
      Width = 121
      Height = 21
      EditLabel.Width = 66
      EditLabel.Height = 13
      EditLabel.Caption = 'FilterKeyword'
      TabOrder = 0
    end
    object FilterColumnIndex: TLabeledEdit
      Left = 176
      Top = 31
      Width = 121
      Height = 21
      EditLabel.Width = 87
      EditLabel.Height = 13
      EditLabel.Caption = 'FilterColumnIndex'
      NumbersOnly = True
      TabOrder = 1
    end
    object FilterButton: TButton
      Left = 344
      Top = 29
      Width = 161
      Height = 25
      Caption = 'FilterButton'
      Default = True
      TabOrder = 2
      OnClick = FilterButtonClick
    end
  end
  object StringGrid: TStringGrid
    AlignWithMargins = True
    Left = 7
    Top = 88
    Width = 720
    Height = 323
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 81
    ExplicitWidth = 554
    ExplicitHeight = 209
  end
  object OpenDialog: TOpenTextFileDialog
    Filter = 'CSV|*.csv|TXT|*.txt'
    InitialDir = '.'
    Left = 512
    Top = 16
  end
end
