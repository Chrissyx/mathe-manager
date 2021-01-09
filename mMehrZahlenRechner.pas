unit mMehrZahlenRechner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMehrZahlenRechner = class(TForm)
    edZahl: TEdit;
    btSumme: TButton;
    edErgebnis: TEdit;
    btProdukt: TButton;
    procedure btSummeClick(Sender: TObject);
    procedure btProduktClick(Sender: TObject);
    procedure onclose(Sender: TObject; var Action: TCloseAction);
  private
     Zahl: real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MehrZahlenRechner: TMehrZahlenRechner;

implementation

uses mMatheManager;

{$R *.dfm}

procedure TMehrZahlenRechner.btSummeClick(Sender: TObject);

procedure summe (n: real; var S: real);
begin
   if n=1 then S := 1
          else begin
                  summe (n-1, S);
                  S := S+n;
               end;
end;

var S :real;
begin
   zahl := StrToFloat (edZahl.text);
   summe (zahl, S);
   edErgebnis.text := FloatToStr (S);
end;

procedure TMehrZahlenRechner.btProduktClick(Sender: TObject);

procedure produkt (n: real; var S: real);
begin
   if n=1 then S := 1
          else begin
                  produkt (n-1, S);
                  S := S*n;
               end;
end;

var S :real;
begin
   zahl := StrToFloat (edZahl.text);
   produkt (zahl, S);
   edErgebnis.text := FloatToStr (S);
end;

procedure TMehrZahlenRechner.onclose(Sender: TObject; var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

end.
