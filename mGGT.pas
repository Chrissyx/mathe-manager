unit mGGT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TGGT = class(TForm)
    edA: TEdit;
    edB: TEdit;
    btGGT: TButton;
    Button1: TButton;
    edGGT: TLabeledEdit;
    procedure btGGTClick(Sender: TObject);
    procedure onclose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
     a, b: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GGT: TGGT;

implementation

uses mMatheManager;

{$R *.dfm}

function GrGeTe (a, b: integer): integer;
begin
   if a = 0 then GrGeTe := 0
            else if b = 0 then GrGeTe := 0
                          else if a=b then GrGeTe := a
                                      else if a>b then GrGeTe := GrGeTe (a-b, a)
                                                  else GrGeTe := GrGeTe (a, b-a);
end;

function kgV (a, b :integer) :integer;
var k: integer;
begin
   k := a;
   while k mod b <> 0 do k := k + a;
   kgV := k;
end;

procedure TGGT.btGGTClick(Sender: TObject);
begin
   a := StrToInt (edA.text);
   b := StrToInt (edB.text);
   edGGT.text := IntToStr(GrGeTe(a, b));
end;

procedure TGGT.onclose(Sender: TObject; var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit';
end;

procedure TGGT.Button1Click(Sender: TObject);
begin
   a := StrToInt (edA.text);
   b := StrToInt (edB.text);
   edGGT.Text := IntToStr(kgV(a, b));
end;

end.
