unit mPQFormel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TpqFormel = class(TForm)
    btStart: TButton;
    edZahl1: TEdit;
    edZahl2: TEdit;
    edP: TEdit;
    edQ: TEdit;
    edComment: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure onclose(Sender: TObject; var Action: TCloseAction);
    procedure btStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pqFormel: TpqFormel;

implementation

uses mMatheManager;

{$R *.dfm}

procedure TpqFormel.onclose(Sender: TObject; var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

procedure TpqFormel.btStartClick(Sender: TObject);
var p, q, c, d, dis :real;
begin
   edZahl1.text := '';
   edZahl2.text := '';
   p := StrToFloat (edP.text);
   q := StrToFloat (edQ.text);
   dis := (((p*p)/4)-q);

   if dis > 0 then
   begin
      edComment.text := 'Zwei verschiedene Lösungen';
      c := -(p/2)+ sqrt(dis);
      d := -(p/2)- sqrt(dis);
      edZahl1.text := FloatToStr(c);
      edZahl2.text := FloatToStr(d);
   end;

   if dis = 0 then
   begin
      edComment.text := 'Eine Lösung';
      c := -(p/2);
      edZahl1.text := FloatToStr(c);
   end;

   if dis < 0 then edComment.text := 'Keine Lösung';
end;

end.
