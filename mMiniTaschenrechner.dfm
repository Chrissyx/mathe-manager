object MiniTaschenrechner: TMiniTaschenrechner
  Left = 60
  Top = 110
  Width = 210
  Height = 270
  Caption = 'Mathe Manager - Mini-Taschenrechner'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnClose = onclose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object lbErgebnis: TLabel
    Left = 8
    Top = 196
    Width = 81
    Height = 22
    Caption = 'Ergebnis:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object btGeteilt: TButton
    Left = 152
    Top = 72
    Width = 41
    Height = 41
    Caption = '/'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btGeteiltClick
  end
  object btMal: TButton
    Left = 104
    Top = 72
    Width = 41
    Height = 41
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btMalClick
  end
  object btMinus: TButton
    Left = 56
    Top = 72
    Width = 41
    Height = 41
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btMinusClick
  end
  object btPlus: TButton
    Left = 8
    Top = 72
    Width = 41
    Height = 41
    Caption = '+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btPlusClick
  end
  object btWurzel: TButton
    Left = 8
    Top = 120
    Width = 41
    Height = 41
    Caption = 'SQRT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btWurzelClick
  end
  object btHoch2: TButton
    Left = 56
    Top = 120
    Width = 41
    Height = 41
    Caption = #178
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btHoch2Click
  end
  object edZahl1: TEdit
    Left = 8
    Top = 8
    Width = 185
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '4'
  end
  object edZahl2: TEdit
    Left = 8
    Top = 40
    Width = 185
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '5'
  end
  object edErgebnis: TEdit
    Left = 8
    Top = 220
    Width = 185
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object btXhochY: TButton
    Left = 104
    Top = 120
    Width = 41
    Height = 41
    Caption = 'x^y'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = btXhochYClick
  end
  object btConvert: TButton
    Left = 152
    Top = 120
    Width = 42
    Height = 41
    Caption = 'CONV'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = btConvertClick
  end
  object radioDual: TRadioButton
    Left = 8
    Top = 168
    Width = 49
    Height = 17
    Caption = 'Dual'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = radioDualClick
  end
  object radioOkt: TRadioButton
    Left = 61
    Top = 168
    Width = 57
    Height = 17
    Caption = 'Oktal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = radioOktClick
  end
  object radioHex: TRadioButton
    Left = 120
    Top = 168
    Width = 73
    Height = 17
    Caption = 'Hexadez'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = radioHexClick
  end
end
