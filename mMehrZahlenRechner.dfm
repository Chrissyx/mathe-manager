object MehrZahlenRechner: TMehrZahlenRechner
  Left = 60
  Top = 110
  Width = 211
  Height = 211
  Caption = 'Mathe Manager - MehrZahlenRechner'
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
  object edZahl: TEdit
    Left = 8
    Top = 8
    Width = 185
    Height = 21
    TabOrder = 0
    Text = '4'
  end
  object btSumme: TButton
    Left = 8
    Top = 40
    Width = 185
    Height = 49
    Caption = 'Summe aller Zahlen bis...'
    TabOrder = 1
    OnClick = btSummeClick
  end
  object edErgebnis: TEdit
    Left = 8
    Top = 152
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object btProdukt: TButton
    Left = 8
    Top = 96
    Width = 185
    Height = 49
    Caption = 'Produkt aller Zahlen bis... (Fakult'#228't)'
    TabOrder = 3
    OnClick = btProduktClick
  end
end
