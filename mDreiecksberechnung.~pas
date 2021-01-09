unit mDreiecksberechnung;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, math, jpeg, ExtCtrls;

type
  TDreiecksberechnung = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edSeitea: TEdit;
    edSeiteb: TEdit;
    DreieckBerechnen: TButton;
    edFlaeche: TEdit;
    edUmfang: TEdit;
    Label5: TLabel;
    edSeitec: TEdit;
    edKommentar: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edGamma: TEdit;
    Label10: TLabel;
    edHoehe: TEdit;
    Image1: TImage;
    procedure DreieckBerechnenClick(Sender: TObject);
    procedure onclose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dreiecksberechnung: TDreiecksberechnung;

implementation

uses mMatheManager;

{$R *.dfm}

procedure TDreiecksberechnung.DreieckBerechnenClick(Sender: TObject);
var a, b, c, f, h, u, gamma: real;
begin
   a := StrToFloat (edSeitea.Text);
   b := StrToFloat (edSeiteb.Text);
   c := StrTofloat (edSeitec.Text);
   u := a+b+c;
   edUmfang.Text := FloatToStr(u);
   if (a = b) and (b = c) then edKommentar.Text := 'Gleichseitiges Dreieck!'
   else if (a = b) then edKommentar.Text := 'Gleichschenkliges Dreieck!'
   else edKommentar.Text := 'Allgemeines Dreieck.';
   gamma := (a*a+b*b-c*c)/(2*a*b);
   if (gamma >= -0.5) and (gamma <= 0.5) then
   begin
      gamma := RadToDeg(ArcCos(gamma));
      edGamma.Text := FloatToStr(gamma);
   end
   else Application.MessageBox('Ungültiges Dreieck! Seite c muss die grösste Seite sein!', NIL, 48);
   if (gamma = 90) then edKommentar.Text := 'Rechtwinkliges Dreieck!';
   f := 0.5*a*b*Sin(DegToRad(gamma));
   edFlaeche.Text := FloatToStr(f);
   h := f/(0.5*c);
   edHoehe.Text := FloatToStr(h);
end;

procedure TDreiecksberechnung.onclose(Sender: TObject;
  var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

end.
