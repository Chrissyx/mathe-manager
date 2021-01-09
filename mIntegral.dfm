object Integralrechnung: TIntegralrechnung
  Left = 60
  Top = 110
  Width = 598
  Height = 217
  Caption = 'Mathe Manager - Integralrechnung'
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
    Width = 80
    Height = 24
    Caption = 'Ableiten:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 66
    Height = 33
    Caption = 'f(x) ='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 128
    Top = 48
    Width = 13
    Height = 33
    Caption = 'x'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 240
    Top = 48
    Width = 72
    Height = 33
    Caption = 'f'#39'(x) ='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 360
    Top = 48
    Width = 13
    Height = 33
    Caption = 'x'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 152
    Width = 66
    Height = 33
    Caption = 'f(x) ='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 128
    Top = 152
    Width = 13
    Height = 33
    Caption = 'x'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 240
    Top = 152
    Width = 76
    Height = 33
    Caption = 'F(x) ='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 360
    Top = 152
    Width = 13
    Height = 33
    Caption = 'x'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 8
    Top = 112
    Width = 86
    Height = 24
    Caption = 'Aufleiten:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object edFaktorAb: TEdit
    Left = 80
    Top = 56
    Width = 49
    Height = 21
    TabOrder = 0
    Text = '3'
  end
  object edHochAb: TEdit
    Left = 144
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 1
    Text = '2'
  end
  object edStrichFaktor: TEdit
    Left = 312
    Top = 56
    Width = 49
    Height = 21
    TabOrder = 2
  end
  object edStrichHoch: TEdit
    Left = 376
    Top = 40
    Width = 49
    Height = 21
    TabOrder = 3
  end
  object btAbleiten: TButton
    Left = 464
    Top = 40
    Width = 121
    Height = 41
    Caption = 'Rechnen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btAbleitenClick
  end
  object edFaktorAuf: TEdit
    Left = 80
    Top = 160
    Width = 49
    Height = 21
    TabOrder = 5
    Text = '3'
  end
  object edHochAuf: TEdit
    Left = 144
    Top = 144
    Width = 49
    Height = 21
    TabOrder = 6
    Text = '2'
  end
  object edGrossFaktor: TEdit
    Left = 312
    Top = 160
    Width = 49
    Height = 21
    TabOrder = 7
  end
  object edGrossHoch: TEdit
    Left = 376
    Top = 144
    Width = 49
    Height = 21
    TabOrder = 8
  end
  object Button1: TButton
    Left = 464
    Top = 144
    Width = 121
    Height = 41
    Caption = 'Rechnen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button1Click
  end
end
