unit mNaeherung;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TNaeherung = class(TForm)
    edUnten: TEdit;
    edOben: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edEvonX: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    edVvonX: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edSigmavonX: TEdit;
    Label12: TLabel;
    btIntegral: TButton;
    Label13: TLabel;
    edN: TEdit;
    Label14: TLabel;
    edP: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    ed1: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    ed2: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edB1: TEdit;
    Label26: TLabel;
    edB2: TEdit;
    Label27: TLabel;
    edB3: TEdit;
    Label28: TLabel;
    btLokal: TButton;
    ed3: TEdit;
    Label29: TLabel;
    Label30: TLabel;
    procedure btIntegralClick(Sender: TObject);
    procedure onclose(Sender: TObject; var Action: TCloseAction);
    procedure btLokalClick(Sender: TObject);
  private
    { Private declarations }
    n, p, oben, unten, EvonX, VvonX, SigmavonX :real;
  public
    { Public declarations }
  end;

var
  Naeherung: TNaeherung;

implementation

uses mMatheManager;

{$R *.dfm}

function E_ (n, p: real): real;
begin
   E_ := n*p;
end;

function V (n, p: real): real;
begin
   V := n*p*(1-p);
end;

function Sigma (v: real): real;
begin
   Sigma := SQRT(v);
end;

function readyPhi(obun, EvonX, SigmavonX: real): real;
begin
   readyPhi := (obun-EvonX)/SigmavonX;
end;

function Phi(x: real): real;
begin
   Phi := (Exp((SQR(x))*(-0.5)))*(1/(SQRT(2*pi)))
end;

procedure TNaeherung.btIntegralClick(Sender: TObject);
var ob, un :boolean;
label 1;
begin
   Label17.Visible := True;
   Label18.Visible := True;
   Label19.Visible := True;
   Label20.Visible := True;
   Label21.Visible := True;
   Label22.Visible := True;
   ob := true;
   un := true;
   n := StrToFloat(edN.Text);
   p := StrToFloat(edP.Text);
   if (p >= 1) or (p <= 0) then
   begin
      Application.MessageBox('p muss größer 0 und kleiner als 1 sein!!!', NIL, 48);
      goto 1;
   end;
   if not (edOben.Text = '') then
   begin
      oben := StrToFloat(edOben.Text);
      ob := false;
   end;
   if not (edUnten.Text = '') then
   begin
      unten := StrToFloat(edUnten.Text);
      un := false;
   end;
   if (ob = false) and (un = false) then
   begin
      if unten > oben then
      begin
         Application.MessageBox('Na, da kann was nicht stimmen!', NIL, 48);
         goto 1;
      end;
   end;
   EvonX := E_(n, p);
   VvonX := V(n, p);
   if (VvonX < 9) then Application.MessageBox('Varianz ist kleiner als 9!!!', 'Hinweis', 64);
   SigmavonX := Sigma(VvonX);
   edEvonX.Text := FloatToStr(EvonX);
   edVvonX.Text := FloatToStr(VvonX);
   edSigmavonX.Text := FloatToStr(SigmavonX);
   if (edOben.Text = '') then
   begin
      Label17.Visible := False;
      Label18.Visible := False;
      Label19.Visible := False;
      ed1.Text := IntToStr(1);
   end
               else
   begin
      oben := oben+0.5;
      oben := readyPhi(oben, EvonX, SigmavonX);
      ed1.Text := FloatToStr(oben);
   end;
   if unten = 0 then
   begin
      Label20.Visible := False;
      Label21.Visible := False;
      Label22.Visible := False;
      ed2.Text := IntToStr(0);
   end          else
   begin
      unten := unten-0.5;
      unten := readyPhi(unten, EvonX, SigmavonX);
      ed2.Text := FloatToStr(unten);
   end;
   1:
end;

procedure TNaeherung.onclose(Sender: TObject; var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

procedure TNaeherung.btLokalClick(Sender: TObject);
var k: real;
label 1;
begin
   n := StrToFloat(edB1.Text);
   p := StrToFloat(edB2.Text);
   if (p >= 1) or (p <= 0) then
   begin
      Application.MessageBox('p muss größer 0 und kleiner als 1 sein!!!', NIL, 48);
      goto 1;
   end;
   k := StrToFloat(edB3.Text);
   EvonX := E_(n, p);
   VvonX := V(n, p);
   if (VvonX < 9) then Application.MessageBox('Varianz ist kleiner als 9!!!', 'Hinweis', 64);
   SigmavonX := Sigma(VvonX);
   edEvonX.Text := FloatToStr(EvonX);
   edVvonX.Text := FloatToStr(VvonX);
   edSigmavonX.Text := FloatToStr(SigmavonX);
   k := readyPhi(k, EvonX, SigmavonX);
   k := Phi(k);
   k := k*(1/SigmavonX);
   ed3.Text := FloatToStr(k);
   1:
end;

end.
