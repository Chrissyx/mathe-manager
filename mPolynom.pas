unit mPolynom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TPolynom = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edTerm1: TEdit;
    edTerm2: TEdit;
    Label3: TLabel;
    edErgebnis: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure edTerm1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edTerm2Change(Sender: TObject);
    procedure onclose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    bool, bool2: boolean;
  public
    { Public declarations }
  end;

var
  Polynom: TPolynom;

implementation

uses mMatheManager;

{$R *.dfm}

procedure TPolynom.Button1Click(Sender: TObject);
var term1, term2, vor: string;
    i, j, laenge, erw: integer;
    term1array, term2array: array of string;
    x, y, z: real;
begin
   term1 := edTerm1.Text;
   term2 := edTerm2.Text;
   laenge := Length(term1);
   erw := 0;
   for i := 1 to Length(term1) do if (term1[i] = 'x') then inc(erw);
   SetLength(term1array, Length(term1)+erw);
   erw := 0;
   for i := 1 to Length(term2) do if (term2[i] = 'x') then inc(erw);
   SetLength(term2array, Length(term2)+erw);
   for i := 1 to Length(term1) do term1array[i-1] := term1[i];
   for i := 1 to Length(term2) do term2array[i-1] := term2[i];
   i := -1;
   j := -1;
   //Eigentliche Rechnung ab hier...
   repeat inc(i) until term1array[i] = 'x';
   x := StrToFloat(term1array[i-1]);
   repeat inc(j) until term2array[j] = 'x';
   y := StrToFloat(term2array[i-1]);
   z := x/y;
   edErgebnis.Text := FloatToStr(z) + 'x';

   {repeat inc(i) until term1array[i] = 'x';
   l := i
   repeat dec(l) until
   array[l] in +-*/ or l=0
   for m := l to i-1 do
   zahl := zahl + array[l+1]
   operator := l}
end;

procedure TPolynom.edTerm1Change(Sender: TObject);
var tempstr, tempstr2 :string;
    i: integer;
begin
   tempstr := edTerm1.Text;
   if (tempstr[Length(tempstr)] = 'x') and not (tempstr[Length(tempstr)-1] = '1') and (bool = true) and not (tempstr[Length(tempstr)-1] in ['2'..'9']) then
   begin
      SetLength(tempstr2, Length(tempstr)-1);
      for i := 1 to Length(tempstr)-1 do tempstr2[i] := tempstr[i];
      tempstr := tempstr2 + '1x';
      edTerm1.Text := tempstr;
      bool := false;
   end
   else bool := true;
end;

procedure TPolynom.FormCreate(Sender: TObject);
begin
   bool := true;
   bool2 := true;
end;

procedure TPolynom.edTerm2Change(Sender: TObject);
var tempstr, tempstr2 :string;
    i: integer;
begin
   tempstr := edTerm2.Text;
   if (tempstr[Length(tempstr)] = 'x') and not (tempstr[Length(tempstr)-1] = '1') and (bool = true) and not (tempstr[Length(tempstr)-1] in ['2'..'9']) then
   begin
      SetLength(tempstr2, Length(tempstr)-1);
      for i := 1 to Length(tempstr)-1 do tempstr2[i] := tempstr[i];
      tempstr := tempstr2 + '1x';
      edTerm2.Text := tempstr;
      bool2 := false;
   end
   else bool2 := true;
end;

procedure TPolynom.onclose(Sender: TObject; var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

end.
