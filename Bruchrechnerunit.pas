unit Bruchrechnerunit;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Bruchunit;

type TRechenzeichen = (plus, minus, mal, geteilt);

type TBruchrechner = class(TObject)

  private
    b1, b2, be :TBruch;
    function kgV (a, b :integer) :integer;
  public
     constructor create;
     procedure rechnen (z1, n1, z2, n2 :string; rz :TRechenzeichen);
     function getEzaehler :string;
     function getEnenner :string;
end;

implementation

function TBruchrechner.kgV (a, b :integer) :integer;
var k: integer;
begin
   k := a;
   while (k mod b <> 0) do k := k + a;
   kgV := k;
end;

constructor TBruchrechner.create;
begin
   b1 := TBruch.create;
   b2 := TBruch.create;
   be := TBruch.create;
end;

procedure TBruchrechner.rechnen (z1, n1, z2, n2 :string; rz :TRechenzeichen);
var k :integer;
begin
   b1.setBruch (StrToInt (z1), StrToInt (n1));
   b2.setBruch (StrToInt (z2), StrToInt (n2));
   k := kgV (b1.getnenner, b2.getnenner);
   case rz of
   plus: begin
            be.setBruch (b1.getzaehler * k div b1.getnenner + b2.getzaehler * k div b2.getnenner, k);
         end;

   minus: begin
             be.setBruch (b1.getzaehler * k div b1.getnenner - b2.getzaehler * k div b2.getnenner, k);
          end;

   mal: begin
           be.setBruch (b1.getzaehler * b2.getzaehler, b1.getnenner * b2.getnenner);
        end;

   geteilt: begin
               be.setBruch (b1.getzaehler * b2.getnenner, b1.getnenner * b2.getzaehler);
            end;
   end;
   be.kuerzen;
end;

function TBruchrechner.getEzaehler :string;
begin
   getEzaehler := IntToStr (be.getzaehler);
end;

function TBruchrechner.getEnenner :string;
begin
   getEnenner := IntToStr (be.getnenner);
end;

end.
