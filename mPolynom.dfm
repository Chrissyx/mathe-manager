object Polynom: TPolynom
  Left = 60
  Top = 110
  Width = 510
  Height = 122
  Caption = 'Mathe Manager - Polynomdivision'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnClose = onclose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 10
    Height = 33
    Caption = '('
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 152
    Top = 8
    Width = 44
    Height = 33
    Caption = ') / ('
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 328
    Top = 8
    Width = 35
    Height = 33
    Caption = ') ='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 8
    Top = 48
    Width = 489
    Height = 41
    Caption = 'Rechnen'
    TabOrder = 0
    OnClick = Button1Click
  end
  object edTerm1: TEdit
    Left = 24
    Top = 16
    Width = 121
    Height = 22
    TabOrder = 1
    Text = '1x^4+1x^3+1x^2+1x+4'
    OnChange = edTerm1Change
  end
  object edTerm2: TEdit
    Left = 200
    Top = 16
    Width = 121
    Height = 22
    TabOrder = 2
    Text = '4x-3'
    OnChange = edTerm2Change
  end
  object edErgebnis: TEdit
    Left = 376
    Top = 16
    Width = 121
    Height = 22
    TabOrder = 3
  end
end
