unit mIntegral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TIntegralrechnung = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edFaktorAb: TEdit;
    Label3: TLabel;
    edHochAb: TEdit;
    Label4: TLabel;
    edStrichFaktor: TEdit;
    Label5: TLabel;
    edStrichHoch: TEdit;
    btAbleiten: TButton;
    Label6: TLabel;
    edFaktorAuf: TEdit;
    Label7: TLabel;
    edHochAuf: TEdit;
    Label8: TLabel;
    edGrossFaktor: TEdit;
    Label9: TLabel;
    edGrossHoch: TEdit;
    Label10: TLabel;
    Button1: TButton;
    procedure btAbleitenClick(Sender: TObject);
    procedure onclose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    faktor, hoch: real;
  public
    { Public declarations }
  end;

var
  Integralrechnung: TIntegralrechnung;

implementation

uses mMatheManager;

{$R *.dfm}

procedure TIntegralrechnung.btAbleitenClick(Sender: TObject);
begin
   Label5.Visible := True;
   edStrichHoch.Visible := True;
   if edFaktorAb.Text = '' then faktor := 1
   else faktor := StrToFloat(edFaktorAb.Text);
   if edHochAb.Text = '' then hoch := 1
   else hoch := StrToFloat(edHochAb.Text);
   if (faktor*hoch) = 1 then edStrichFaktor.Text := ''
   else edStrichFaktor.Text := FloatToStr(faktor*hoch);
   if (hoch-1) = 1 then edStrichHoch.Visible := False
   else if (hoch-1) = 0 then
   begin
      Label5.Visible := False;
      edStrichHoch.Visible := False;
   end
   else edStrichHoch.Text := FloatToStr(hoch-1);
end;

procedure TIntegralrechnung.onclose(Sender: TObject;
  var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

procedure TIntegralrechnung.Button1Click(Sender: TObject);
begin
   edGrossFaktor.Visible := True;
   if edFaktorAuf.Text = '' then faktor := 1
   else faktor := StrToFloat(edFaktorAuf.Text);
   if edHochAuf.Text = '' then hoch := 1
   else hoch := StrToFloat(edHochAuf.Text);
   if (faktor*(1/(1+hoch))) = 1 then edGrossFaktor.Visible := False;
   edGrossFaktor.Text := FloatToStr(faktor*(1/(1+hoch)));
   edGrossHoch.Text := FloatToStr(hoch+1);
end;

end.
