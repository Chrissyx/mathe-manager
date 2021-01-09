unit mLinearEins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TLinearEins = class(TForm)
    edTerm1: TEdit;
    edTerm2: TEdit;
    Label1: TLabel;
    btRechnen: TButton;
    procedure btRechnenClick(Sender: TObject);
  private
    { Private declarations }
    term1, term2: string;
    term1array, term2array: array of string;
  public
    { Public declarations }
  end;

var
  LinearEins: TLinearEins;

implementation

{$R *.dfm}

procedure TLinearEins.btRechnenClick(Sender: TObject);
var laenge, i: integer;
begin
   term1 := edTerm1.Text;
   term2 := edTerm2.Text;
   laenge := Length(term1);
   //showmessage('länge: ' + inttostr(laenge));
   SetLength(term1array, Length(term1));
   //showmessage('arraylänge: ' + inttostr(length(term1array)));
   SetLength(term2array, Length(term2));
   for i := 1 to Length(term1) do term1array[i-1] := term1[i]; //showmessage('i: ' + inttostr(i) + ', array[i-1]: ' + term1array[i-1]); end;
   //showmessage('i nach loop: ' + inttostr(laenge));
   for i := 1 to Length(term2) do term2array[i-1] := term2[i];
   //showmessage(term1array[i]);
   
end;

end.
