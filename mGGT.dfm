object GGT: TGGT
  Left = 60
  Top = 110
  Width = 247
  Height = 212
  Caption = 'Mathe Manager - ggT & kgV'
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
  object edA: TEdit
    Left = 8
    Top = 8
    Width = 225
    Height = 21
    TabOrder = 0
    Text = '6'
  end
  object edB: TEdit
    Left = 8
    Top = 32
    Width = 225
    Height = 21
    TabOrder = 1
    Text = '8'
  end
  object btGGT: TButton
    Left = 8
    Top = 64
    Width = 225
    Height = 33
    Caption = 'Gr'#246#223'ter gemeinsamer Teiler'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btGGTClick
  end
  object Button1: TButton
    Left = 8
    Top = 104
    Width = 225
    Height = 33
    Caption = 'Kleinstes gemeinsames Vielfaches'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object edGGT: TLabeledEdit
    Left = 8
    Top = 160
    Width = 225
    Height = 21
    EditLabel.Width = 45
    EditLabel.Height = 14
    EditLabel.Caption = 'Ergebnis:'
    EditLabel.Font.Charset = ANSI_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'Arial'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    TabOrder = 4
  end
end
