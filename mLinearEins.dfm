object LinearEins: TLinearEins
  Left = 192
  Top = 107
  Width = 737
  Height = 481
  Caption = 'Mathe Manager - Lineare Gleichungssysteme - Mit einer Variable'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 312
    Top = 104
    Width = 22
    Height = 42
    Caption = '='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object edTerm1: TEdit
    Left = 80
    Top = 112
    Width = 193
    Height = 22
    TabOrder = 0
    Text = '3*x+5'
  end
  object edTerm2: TEdit
    Left = 392
    Top = 112
    Width = 121
    Height = 22
    TabOrder = 1
    Text = '7-8*x'
  end
  object btRechnen: TButton
    Left = 232
    Top = 184
    Width = 169
    Height = 81
    Caption = 'Rechnen'
    TabOrder = 2
    OnClick = btRechnenClick
  end
end
