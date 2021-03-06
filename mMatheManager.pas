unit mMatheManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, dblookup, Menus, ComCtrls,
  mMatheManagerAbout, mVektorProdukt, mPQFormel, mBruchrechner, mGGT,
  mRechtecksberechnung, mMiniTaschenrechner, mVersionshistory, mMehrZahlenRechner,
  mVektor, mNaeherung, mIntegral, mGeraden, shellapi, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, mDreiecksberechnung,
  mKreisberechnung, mOptionen, mLinearEins, mPolynom, Registry;

type
  TMatheManager = class(TForm)
    MainMenu1: TMainMenu;
    Datei1: TMenuItem;
    Beenden1: TMenuItem;
    MatheManager1: TMenuItem;
    Hilfe1: TMenuItem;
    Info1: TMenuItem;
    pqFormel1: TMenuItem;
    VektorProdukt1: TMenuItem;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    Bruchrechner1: TMenuItem;
    GGT1: TMenuItem;
    Vierecksberechnung1: TMenuItem;
    aschenrechner1: TMenuItem;
    Funktionen1: TMenuItem;
    Versionshistory1: TMenuItem;
    Ebenen1: TMenuItem;
    MehrZahlenRechner1: TMenuItem;
    Nherungen1: TMenuItem;
    Integralrechnung1: TMenuItem;
    AnalytischeGeometrie1: TMenuItem;
    Geraden1: TMenuItem;
    UpdatePrfung1: TMenuItem;
    IdHTTP1: TIdHTTP;
    Geo1: TMenuItem;
    Dreiecksberechnung1: TMenuItem;
    Kreis1: TMenuItem;
    Optionen1: TMenuItem;
    LineareGleichungssysteme1: TMenuItem;
    MiteinerVariable1: TMenuItem;
    MitzweiVariablen1: TMenuItem;
    MitdreiVariablen1: TMenuItem;
    Polynomdivision1: TMenuItem;
    Spende1: TMenuItem;
    N1: TMenuItem;
    procedure Beenden1Click(Sender: TObject);
    procedure Info1Click(Sender: TObject);
    procedure VektorProdukt1Click(Sender: TObject);
    procedure pqFormel1Click(Sender: TObject);
    procedure Bruchrechner1Click(Sender: TObject);
    procedure GGT1Click(Sender: TObject);
    procedure Vierecksberechnung1Click(Sender: TObject);
    procedure aschenrechner1Click(Sender: TObject);
    procedure Funktionen1Click(Sender: TObject);
    procedure Versionshistory1Click(Sender: TObject);
    procedure Mehrzahlenrechner1Click(Sender: TObject);
    procedure Ebenen1Click(Sender: TObject);
    procedure Nherungen1Click(Sender: TObject);
    procedure Integralrechnung1Click(Sender: TObject);
    procedure Geraden1Click(Sender: TObject);
    procedure UpdatePrfung1Click(Sender: TObject);
    procedure Dreiecksberechnung1Click(Sender: TObject);
    procedure Kreis1Click(Sender: TObject);
    procedure Optionen1Click(Sender: TObject);
    procedure onclosequery(Sender: TObject; var CanClose: Boolean);
    procedure MiteinerVariable1Click(Sender: TObject);
    procedure Polynomdivision1Click(Sender: TObject);
    procedure Spende1Click(Sender: TObject);
    procedure OnShow(Sender: TObject);
  private
    { Private declarations }
    Reg: TRegistry;
  public
    { Public declarations }
//    haken: boolean;
  end;

var
  MatheManager: TMatheManager;

implementation

{$R *.dfm}

procedure TMatheManager.Beenden1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'Beende Programm...';
   close;
end;

procedure TMatheManager.Info1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'Zeige Info...';
   AboutBox.Visible := True;
end;

procedure TMatheManager.VektorProdukt1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'Vektor Produkt...';
   VektorProdukt.Visible := True;
end;

procedure TMatheManager.pqFormel1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'pq Formel...';
   pqFormel.Visible := True;
end;

procedure TMatheManager.Bruchrechner1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'Bruchrechner...';
   FrmBruchrechner.Visible := True;
end;

procedure TMatheManager.GGT1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'GGT...';
   GGT.Visible := True;
end;

procedure TMatheManager.Vierecksberechnung1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'Geometrieberechnung - Viereck...';
   Vierecksberechnung.Visible := True;
end;

procedure TMatheManager.aschenrechner1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'Mini-Taschenrechner...';
   MiniTaschenrechner.Visible := True;
end;

procedure TMatheManager.Funktionen1Click(Sender: TObject);
begin
   showmessage('Details �ber die Funktionen:' + char(13) +     //00
   '-pq-Formel' + char(13) +
   '-Vektor Produkt' + char(13) +
   '-Br�che addieren' + char(13) +
   '-Br�che subtrahieren' + char(13) +
   '-Br�che multiplizieren' + char(13) +
   '-Br�che dividieren' + char(13) +
   '-ggT' + char(13) +
   '-kgV' + char(13) +
   '-Umfang eines Vierecks' + char(13) +
   '-Fl�che eines Vierecks' + char(13) +                      //10
   '-Diagonale eines Vierecks' + char(13) +
   '-Addition' + char(13) +
   '-Subtraktion' + char(13) +
   '-Multiplikation' + char(13) +
   '-Division' + char(13) +
   '-Wurzel ziehen' + char(13) +
   '-Quadrieren' + char(13) +
   '-Potenz' + char(13) +
   '-Summe aller Zahlen bis X' + char(13) +
   '-Produkt aller Zahlen bix X' + char(13) +                  //20
   '-Parameterform' + char(13) +
   '-Normalenvektor' + char(13) +
   '-Punktnormalenform' + char(13) +
   '-(Punkt)Normalenform' + char(13) +
   '-AchsenAbschnittsForm' + char(13) +
   '-NormalenEinheitsVektor' + char(13) +
   '-HESSEsche Normalenform' + char(13) +
   '-Abstand d' + char(13) +
   '-Spurpunkte' + char(13) +
   '-Spurgeraden' + char(13) +                                 //30
   '-L�nge der Spurgeraden' + char(13) +
   '-Erwartungswert' + char(13) +
   '-Varianz' + char(13) +
   '-Streuung' + char(13) +
   '-Lokale N�herung von MOIVRE-LAPLACE' + char(13) +
   '-Integrale N�herung von MOIVRE-LAPLACE' + char(13) +
   '-Ableiten' + char(13) +
   '-Aufleiten' + char(13) +
   '-Punkt-Richtungsform' + char(13) +
   '-Umfang eines Dreiecks' + char(13) +                       //40
   '-Fl�che eines Dreiecks' + char(13) +
   '-Winkel Gamma eines Dreiecks' + char(13) +
   '-H�he eines Dreiecks' + char(13) +
   '-Erkennung der Dreiecksart' + char(13) +
   '-Durchmesser eines Kreises' + char(13) +
   '-Umfang eines Kreises' + char(13) +
   '-Fl�che eines Kreises' + char(13) +
   '-L�nge eines Kreisbogens' + char(13) +
   '-Fl�che eines Kreissektors' + char(13) +
   '-Fl�che eines Kreisrings');                                //50
   showmessage('Details �ber die Funktionen #2:' + char(13) +
   '-L�nge einer Kreissehne' + char(13) +
   '-Diagonale2 eines Vierecks' + char(13) +
   '-Erkennung der Vierecksart' + char(13) +
   '-Konvertieren in jedes beliebige Zahlensystem');// + char(13) +
//   '-Polynomdivison');
end;

procedure TMatheManager.Versionshistory1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'Zeige Versionshistory...';
   Versionshistory.Visible := True;
end;

procedure TMatheManager.Mehrzahlenrechner1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'MehrZahlenRechner...';
   MehrZahlenRechner.Visible := True;
end;

procedure TMatheManager.Ebenen1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'Analytische Geometrie - Ebenen...';
   AnalytischeGeometrie.Visible := True;
end;

procedure TMatheManager.Nherungen1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'N�herungen von MOIVRE-LAPLACE...';
   Naeherung.Visible := True;
end;

procedure TMatheManager.Integralrechnung1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'Integralrechnung...';
   Integralrechnung.Visible := True;
end;

procedure TMatheManager.Geraden1Click(Sender: TObject);
begin
   StatusBar1.SimpleText := 'Analytische Geometrie - Geraden...';
   Geraden.Visible := True;
end;

procedure TMatheManager.UpdatePrfung1Click(Sender: TObject);
var url: string;
    //size: real;
begin
   StatusBar1.SimpleText := 'Update Pr�fung...';
   url := 'http://www.chrissyx.com/update.php?mmversion=' + Versionshistory.Memo1.Lines[0];
   try
      if IdHTTP1.Get(url) = 'true' then
      begin
         //IdHTTP1.Head('http://www.chrissyx.com/daten/Mathe%20Manager.exe');
         //size := IdHTTP1.Response.ContentStream.Size / 1024;
         case Application.MessageBox('Es ist eine neuere Version verf�gbar! M�chtest Du sie laden?', 'Updaten?', 36) of
         IDYES:
         ShellExecute(handle, 'open', 'http://www.chrissyx.com/daten/Mathe%20Manager.exe', NIL, NIL, SW_SHOW);
         end;
      end
      else Application.MessageBox('Es gibt keine neuere Version!', 'Hinweis', 64);
   except
      Application.MessageBox('ERROR: Konnte Server nicht finden! Bitte Verbindung pr�fen oder sp�ter erneut versuchen!', NIL, 48);
   end;
   StatusBar1.SimpleText := 'Bereit.';
end;

procedure TMatheManager.Dreiecksberechnung1Click(Sender: TObject);
begin
   Dreiecksberechnung.Visible := True;
   StatusBar1.SimpleText := 'Geometrieberechnung - Dreieck...';
end;

procedure TMatheManager.Kreis1Click(Sender: TObject);
begin
   Kreisberechnung.Visible := True;
   StatusBar1.SimpleText := 'Geometrieberechnung - Kreis...';
end;

procedure TMatheManager.Optionen1Click(Sender: TObject);
begin
   Optionen.Visible := True;
   StatusBar1.SimpleText := 'Optionen...';
end;

procedure TMatheManager.onclosequery(Sender: TObject; var CanClose: Boolean);
begin
   StatusBar1.SimpleText := 'Beende Programm...';
   if Optionen.CheckBox1.Checked then
   case Application.MessageBox('Mathe Manager wirklich beenden?', 'Frage', 36) of
   IDNO: begin
            CanClose := False;
            StatusBar1.SimpleText := 'Bereit.';
         end;
   IDYES: CanClose := True;
   end;
end;

procedure TMatheManager.MiteinerVariable1Click(Sender: TObject);
begin
   LinearEins.Visible := True;
   StatusBar1.SimpleText := 'LG - Mit einer Variable...';
end;

procedure TMatheManager.Polynomdivision1Click(Sender: TObject);
begin
   Polynom.Visible := True;
   StatusBar1.SimpleText := 'Polynomdivision...';
end;

procedure TMatheManager.Spende1Click(Sender: TObject);
begin
   case Application.MessageBox('Dir gef�llt das Programm? Du m�chtest mich unterst�tzen? Dann kannst Du mir etwas spenden!', 'Spende?', 68) of
   IDYES: ShellExecute(handle, 'open', 'mailto:chrissyx@t-online.de?subject=SPENDE F�R MATHE MANAGER', NIL, NIL, SW_SHOW);
   end;
end;

procedure TMatheManager.OnShow(Sender: TObject);
begin
   Reg := TRegistry.Create;
   Reg.RootKey := HKEY_LOCAL_MACHINE;
   if Reg.OpenKey('Software\Chrissyx Homepage Progs\Mathe Manager', True) then
   begin
      try
         Optionen.CheckBox1.Checked := Reg.ReadBool('CanKill');
         Reg.CloseKey;
      except
         Optionen.CheckBox1.Checked := False;
         Application.MessageBox('ERROR: Konnte Einstellungen nicht laden! Standardwerte werden gesetzt!', NIL, 48);
      end;
   end
   else Application.MessageBox('ERROR: Konnte Einstellungen nicht finden!', NIL, 48);
   Reg.Free;
end;

end.
