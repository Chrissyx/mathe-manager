object pqFormel: TpqFormel
  Left = 60
  Top = 110
  Width = 296
  Height = 303
  Caption = 'Mathe Manager - pq Formel'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = onclose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 267
    Height = 32
    Caption = 'X'#178' + p      x + q      = 0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 58
    Height = 32
    Caption = 'X'#178' + '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 128
    Top = 48
    Width = 44
    Height = 32
    Caption = 'x + '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 236
    Top = 48
    Width = 39
    Height = 32
    Caption = '= 0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 136
    Width = 51
    Height = 32
    Caption = 'x1 ='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 176
    Width = 51
    Height = 32
    Caption = 'x2 ='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 224
    Width = 103
    Height = 22
    Caption = 'Kommentar:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object btStart: TButton
    Left = 8
    Top = 88
    Width = 273
    Height = 33
    Caption = 'Berechnen'
    TabOrder = 0
    OnClick = btStartClick
  end
  object edZahl1: TEdit
    Left = 64
    Top = 144
    Width = 217
    Height = 21
    TabOrder = 1
  end
  object edZahl2: TEdit
    Left = 64
    Top = 184
    Width = 217
    Height = 21
    TabOrder = 2
  end
  object edP: TEdit
    Left = 72
    Top = 56
    Width = 49
    Height = 21
    TabOrder = 3
    Text = '5'
  end
  object edQ: TEdit
    Left = 176
    Top = 56
    Width = 49
    Height = 21
    TabOrder = 4
    Text = '6'
  end
  object edComment: TEdit
    Left = 8
    Top = 248
    Width = 273
    Height = 21
    TabOrder = 5
  end
end
