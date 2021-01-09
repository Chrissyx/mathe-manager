object Optionen: TOptionen
  Left = 60
  Top = 110
  Width = 234
  Height = 107
  Caption = 'Mathe Manager - Optionen'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnClose = onclose
  PixelsPerInch = 96
  TextHeight = 14
  object CheckBox1: TCheckBox
    Left = 24
    Top = 16
    Width = 185
    Height = 17
    Caption = 'Beim Beenden nachfragen?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btOK: TButton
    Left = 24
    Top = 48
    Width = 177
    Height = 25
    Caption = 'OK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btOKClick
  end
end
