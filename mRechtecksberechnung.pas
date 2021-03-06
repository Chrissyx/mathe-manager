unit mRechtecksberechnung;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, math;

type
  TVierecksberechnung = class(TForm)
    edSeitea: TEdit;
    edSeiteb: TEdit;
    RechteckBerechnen: TButton;
    edFlaeche: TEdit;
    edUmfang: TEdit;
    edDiagonale: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Image1: TImage;
    Label6: TLabel;
    edKommentar: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    edSeitec: TEdit;
    edSeited: TEdit;
    Label9: TLabel;
    Label16: TLabel;
    Label10: TLabel;
    edAlpha: TEdit;
    Label11: TLabel;
    edDiagonale2: TEdit;
    Label12: TLabel;
    procedure RechteckBerechnenClick(Sender: TObject);
    procedure onclose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Vierecksberechnung: TVierecksberechnung;

implementation

uses mMatheManager;

{$R *.dfm}

procedure TVierecksberechnung.RechteckBerechnenClick(Sender: TObject);
var a, b, c, d, alpha, beta, gamma, dia, dia2, f, u: real;
begin
   a := StrToFloat (edSeitea.Text);
   b := StrToFloat (edSeiteb.Text);
   c := StrToFloat (edSeitec.Text);
   d := StrToFloat (edSeited.Text);
   alpha := StrToFloat (edAlpha.Text);
   u := a+b+c+d;
   edUmfang.text := FloatToStr (u);
   if (a = b) and (b = c) and (c = d) then
    if (alpha = 90) then
   begin
      edKommentar.Text := 'Quadrat!';
      f := SQR(a);
      dia := a*SQRT(2);
      dia2 := dia;
   end
    else
   begin
      edKommentar.Text := 'Rhombus / Raute!';
      beta := 180-alpha;
      dia := SQRT(a*a+a*a-2*a*a*Cos(DegToRad(beta)));
      dia2 := SQRT(a*a+a*a-2*a*a*Cos(DegToRad(alpha)));
      f := 0.5*dia*dia2;
   end
   else if (a = c) and (b = d) then
    if (alpha = 90) then
   begin
      edKommentar.Text := 'Rechteck!';
      f := a*b;
      dia := SQRT(SQR(a)+SQR(b));
      dia2 := dia;
   end
    else
   begin
      edKommentar.Text := 'Parallelogramm!';
      beta := 180-alpha;
      f := a*b*Sin(DegToRad(alpha));
      dia := SQRT(a*a+b*b-2*a*b*Cos(DegToRad(beta)));
      dia2 := SQRT(a*a+d*d-2*a*d*Cos(DegToRad(alpha)));
   end
   else if (a = b) and (c = d) then
   begin
      edKommentar.Text := 'Drachenviereck!';
      dia := SQRT(a*a+a*a-2*a*a*Cos(DegToRad(beta)));
      dia2 := SQRT(a*a+d*d-2*a*d*Cos(DegToRad(alpha)));
      f := 0.5*dia*dia2;
   end
   else
   begin
      edKommentar.Text := 'Allgemeines Viereck oder Trapez.';
      dia := SQRT(a*a+b*b-2*a*b*Cos(DegToRad(beta)));
      dia2 := SQRT(a*a+d*d-2*a*d*Cos(DegToRad(alpha)));
      gamma := (c*c+b*b-dia2*dia2)/(2*c*b);
      if (gamma >= -0.5) and (gamma <= 0.5) then
      gamma := RadToDeg(ArcCos(gamma));
      f := (0.5*a*d*Sin(DegToRad(alpha)))+(0.5*c*b*Sin(DegToRad(gamma)));
   end;
   edFlaeche.Text := FloatToStr (f);
   edDiagonale.Text := FloatToStr (dia);
   edDiagonale2.Text := FloatToStr (dia2);
end;

procedure TVierecksberechnung.onclose(Sender: TObject;
  var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

end.

