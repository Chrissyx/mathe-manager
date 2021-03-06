object Geraden: TGeraden
  Left = 60
  Top = 110
  Width = 552
  Height = 196
  Caption = 'Mathe Manager - Analytische Geometrie - Geraden'
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
    Top = 16
    Width = 11
    Height = 36
    Caption = '('
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 104
    Top = 16
    Width = 11
    Height = 36
    Caption = ')'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 16
    Width = 9
    Height = 36
    Caption = '/'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 72
    Top = 16
    Width = 9
    Height = 36
    Caption = '/'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 128
    Top = 16
    Width = 11
    Height = 36
    Caption = '('
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 224
    Top = 16
    Width = 11
    Height = 36
    Caption = ')'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 160
    Top = 16
    Width = 9
    Height = 36
    Caption = '/'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 192
    Top = 16
    Width = 9
    Height = 36
    Caption = '/'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 280
    Top = 56
    Width = 32
    Height = 111
    Caption = '('
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 344
    Top = 56
    Width = 32
    Height = 111
    Caption = ')'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 208
    Top = 96
    Width = 65
    Height = 55
    Caption = 'x ='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 200
    Top = 104
    Width = 33
    Height = 9
    Brush.Color = clBlack
  end
  object Label16: TLabel
    Left = 232
    Top = 88
    Width = 22
    Height = 44
    Caption = '>'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 376
    Top = 96
    Width = 28
    Height = 55
    Caption = '+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label19: TLabel
    Left = 408
    Top = 80
    Width = 38
    Height = 78
    Caption = 'l'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Symbol'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label20: TLabel
    Left = 448
    Top = 56
    Width = 32
    Height = 111
    Caption = '('
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 512
    Top = 56
    Width = 32
    Height = 111
    Caption = ')'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edAx: TLabeledEdit
    Left = 16
    Top = 24
    Width = 25
    Height = 22
    EditLabel.Width = 64
    EditLabel.Height = 20
    EditLabel.Caption = 'Punkt A'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '4'
  end
  object edAy: TEdit
    Left = 48
    Top = 24
    Width = 25
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '-2'
  end
  object edAz: TEdit
    Left = 80
    Top = 24
    Width = 25
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '-4'
  end
  object edBx: TLabeledEdit
    Left = 136
    Top = 24
    Width = 25
    Height = 22
    EditLabel.Width = 64
    EditLabel.Height = 20
    EditLabel.Caption = 'Punkt B'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '-2'
  end
  object btPMF: TButton
    Left = 8
    Top = 80
    Width = 129
    Height = 89
    Caption = 'Punkt-Richtungsform'
    TabOrder = 4
    OnClick = btPMFClick
  end
  object edBy: TEdit
    Left = 168
    Top = 24
    Width = 25
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = '4'
  end
  object edBz: TEdit
    Left = 200
    Top = 24
    Width = 25
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '-4'
  end
  object edSVX: TEdit
    Left = 312
    Top = 88
    Width = 33
    Height = 21
    TabOrder = 7
  end
  object edSVY: TEdit
    Left = 312
    Top = 112
    Width = 33
    Height = 21
    TabOrder = 8
  end
  object edSVZ: TEdit
    Left = 312
    Top = 136
    Width = 33
    Height = 21
    TabOrder = 9
  end
  object edRVX: TEdit
    Left = 480
    Top = 88
    Width = 33
    Height = 21
    TabOrder = 10
  end
  object edRVY: TEdit
    Left = 480
    Top = 112
    Width = 33
    Height = 21
    TabOrder = 11
  end
  object edRVZ: TEdit
    Left = 480
    Top = 136
    Width = 33
    Height = 21
    TabOrder = 12
  end
  object btClear: TButton
    Left = 318
    Top = 24
    Width = 177
    Height = 25
    Caption = 'Clear'
    TabOrder = 13
    OnClick = btClearClick
  end
end
