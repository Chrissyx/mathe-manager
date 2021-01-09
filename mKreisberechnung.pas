unit mKreisberechnung;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, math;

type
  TKreisberechnung = class(TForm)
    Label1: TLabel;
    edRadius: TEdit;
    btRadius: TButton;
    Label3: TLabel;
    edDurchmesser: TEdit;
    Label2: TLabel;
    edFlaeche: TEdit;
    Label4: TLabel;
    edUmfang: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edRadius2: TEdit;
    Image1: TImage;
    Image2: TImage;
    btAlpha: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edBogen: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edSektor: TEdit;
    edAlpha: TEdit;
    Label16: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edRing: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edSehne: TEdit;
    procedure onclose(Sender: TObject; var Action: TCloseAction);
    procedure btRadiusClick(Sender: TObject);
    procedure btAlphaClick(Sender: TObject);
  private
    { Private declarations }
    r, d, f, u: real;
  public
    { Public declarations }
  end;

var
  Kreisberechnung: TKreisberechnung;

implementation

uses mMatheManager;

{$R *.dfm}

procedure TKreisberechnung.onclose(Sender: TObject;
  var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

procedure TKreisberechnung.btRadiusClick(Sender: TObject);
begin
   r := StrToFloat (edRadius.Text);
   d := 2*r;
   edDurchmesser.Text := FloatToStr (d);
   f := Pi*SQR(r);
   edFlaeche.Text := FloatToStr (f);
   u := Pi*d;
   edUmfang.Text := FloatToStr (u);
end;

procedure TKreisberechnung.btAlphaClick(Sender: TObject);
var alpha, b, s, fs, fr, r2: real;
begin
   r2 := StrToFloat (edRadius2.Text);
   alpha := StrToFloat (edAlpha.Text);
   b := ((Pi*r)/180)*alpha;
   edBogen.Text := FloatToStr (b);
   fs := 0.5*b*r;
   edSektor.Text := FloatToStr(fs);
   fr := Pi*(r*r-r2*r2);
   edRing.Text := FloatToStr (fr);
   s := SQRT(r*r+r*r-2*r*r*Cos(DegToRad(alpha)));
   edSehne.Text := FloatToStr (s);
end;

end.
