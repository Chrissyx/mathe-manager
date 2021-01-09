object MatheManager: TMatheManager
  Left = 0
  Top = 0
  Width = 199
  Height = 104
  Caption = 'Mathe Manager'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCloseQuery = onclosequery
  OnShow = onshow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 176
    Height = 22
    Caption = 'W'#228'hle eine Funktion.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 39
    Width = 191
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Bereit.'
  end
  object MainMenu1: TMainMenu
    Left = 8
    object Datei1: TMenuItem
      Caption = 'Datei'
      object Optionen1: TMenuItem
        Caption = 'Optionen...'
        OnClick = Optionen1Click
      end
      object Beenden1: TMenuItem
        Caption = 'Beenden'
        OnClick = Beenden1Click
      end
    end
    object MatheManager1: TMenuItem
      Caption = 'Mathe Manager'
      object pqFormel1: TMenuItem
        Caption = 'pq-Formel'
        OnClick = pqFormel1Click
      end
      object VektorProdukt1: TMenuItem
        Caption = 'Vektor Produkt'
        OnClick = VektorProdukt1Click
      end
      object Bruchrechner1: TMenuItem
        Caption = 'Bruchrechner'
        OnClick = Bruchrechner1Click
      end
      object GGT1: TMenuItem
        Caption = 'GGT und kgV'
        OnClick = GGT1Click
      end
      object Geo1: TMenuItem
        Caption = 'Geometrieberechnung'
        object Vierecksberechnung1: TMenuItem
          Caption = 'Viereck'
          OnClick = Vierecksberechnung1Click
        end
        object Dreiecksberechnung1: TMenuItem
          Caption = 'Dreieck'
          OnClick = Dreiecksberechnung1Click
        end
        object Kreis1: TMenuItem
          Caption = 'Kreis'
          OnClick = Kreis1Click
        end
      end
      object aschenrechner1: TMenuItem
        Caption = 'Mini-Taschenrechner'
        OnClick = aschenrechner1Click
      end
      object MehrZahlenRechner1: TMenuItem
        Caption = 'MehrZahlenRechner'
        OnClick = Mehrzahlenrechner1Click
      end
      object AnalytischeGeometrie1: TMenuItem
        Caption = 'Analytische Geometrie'
        object Ebenen1: TMenuItem
          Caption = 'Ebenen'
          OnClick = Ebenen1Click
        end
        object Geraden1: TMenuItem
          Caption = 'Geraden'
          OnClick = Geraden1Click
        end
      end
      object Nherungen1: TMenuItem
        Caption = 'N'#228'herungen von MOIVRE-LAPLACE'
        OnClick = Nherungen1Click
      end
      object Integralrechnung1: TMenuItem
        Caption = 'Integralrechnung'
        OnClick = Integralrechnung1Click
      end
      object LineareGleichungssysteme1: TMenuItem
        Caption = 'Lineare Gleichungssysteme'
        Enabled = False
        object MiteinerVariable1: TMenuItem
          Caption = 'Mit einer Variable'
          OnClick = MiteinerVariable1Click
        end
        object MitzweiVariablen1: TMenuItem
          Caption = 'Mit zwei Variablen'
        end
        object MitdreiVariablen1: TMenuItem
          Caption = 'Mit drei Variablen'
        end
      end
      object Polynomdivision1: TMenuItem
        Caption = 'Polynomdivision'
        Enabled = False
        OnClick = Polynomdivision1Click
      end
    end
    object Hilfe1: TMenuItem
      Caption = 'Hilfe'
      object Info1: TMenuItem
        Caption = 'Info'
        OnClick = Info1Click
      end
      object Funktionen1: TMenuItem
        Caption = 'Funktionen'
        OnClick = Funktionen1Click
      end
      object Versionshistory1: TMenuItem
        Caption = 'Versionshistory'
        OnClick = Versionshistory1Click
      end
      object UpdatePrfung1: TMenuItem
        Caption = 'Update Pr'#252'fung'
        OnClick = UpdatePrfung1Click
      end
      object Spende1: TMenuItem
        Caption = 'Spende?'
        OnClick = Spende1Click
      end
    end
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 152
  end
end
