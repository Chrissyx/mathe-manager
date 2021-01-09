object FrmBruchrechner: TFrmBruchrechner
  Left = 60
  Top = 110
  Width = 542
  Height = 136
  Caption = 'Mathe Manager - Bruchrechner'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = onactivate
  OnClose = onclose
  PixelsPerInch = 96
  TextHeight = 13
  object lbRechenzeichen: TLabel
    Left = 168
    Top = 16
    Width = 9
    Height = 36
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 8
    Top = 32
    Width = 153
    Height = 5
    Brush.Color = clBlack
  end
  object Shape2: TShape
    Left = 192
    Top = 32
    Width = 153
    Height = 5
    Brush.Color = clBlack
  end
  object Shape3: TShape
    Left = 376
    Top = 32
    Width = 153
    Height = 5
    Brush.Color = clBlack
  end
  object Label1: TLabel
    Left = 352
    Top = 16
    Width = 19
    Height = 36
    Caption = '='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object edZaehler1: TEdit
    Left = 8
    Top = 8
    Width = 153
    Height = 21
    TabOrder = 0
    Text = '1'
  end
  object edNenner1: TEdit
    Left = 8
    Top = 40
    Width = 153
    Height = 21
    TabOrder = 1
    Text = '10'
  end
  object edZaehler2: TEdit
    Left = 192
    Top = 8
    Width = 153
    Height = 21
    TabOrder = 2
    Text = '1'
  end
  object edNenner2: TEdit
    Left = 192
    Top = 40
    Width = 153
    Height = 21
    TabOrder = 3
    Text = '6'
  end
  object edZaehlerE: TEdit
    Left = 376
    Top = 8
    Width = 153
    Height = 21
    TabOrder = 4
  end
  object edNennerE: TEdit
    Left = 376
    Top = 40
    Width = 153
    Height = 21
    TabOrder = 5
  end
  object btPlus: TButton
    Left = 184
    Top = 72
    Width = 33
    Height = 33
    Caption = '+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btPlusClick
  end
  object btMinus: TButton
    Left = 232
    Top = 72
    Width = 33
    Height = 33
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btMinusClick
  end
  object btMal: TButton
    Left = 280
    Top = 72
    Width = 33
    Height = 33
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btMalClick
  end
  object btGeteilt: TButton
    Left = 328
    Top = 72
    Width = 33
    Height = 33
    Caption = '/'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btGeteiltClick
  end
end
