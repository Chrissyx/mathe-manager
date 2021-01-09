unit Bruchunit;

interface

type TBruch = class(TObject)

  private
    zaehler, nenner, teiler :integer;
    function ggT (a, b :integer) :integer;
  public
     procedure setBruch (z, n :integer);
     function getzaehler :integer;
     function getnenner :integer;
     function getteiler :integer;
     procedure erweitern (f: integer);
     procedure kuerzen;
end;

implementation

function TBruch.ggT (a, b :integer) :integer;
var rest :integer;
begin
   rest := a mod b;
   while rest <> 0 do
   begin
      a := b;
      b := rest;
      rest := a mod b;
   end;
   ggt := b;
end;

procedure TBruch.setBruch (z, n :integer);
begin
   zaehler := z;
   nenner := n;
end;

function TBruch.getzaehler :integer;
begin
   getzaehler := zaehler;
end;

function TBruch.getnenner :integer;
begin
   getnenner := nenner;
end;

function TBruch.getteiler :integer;
begin
   getteiler := teiler;
end;

procedure TBruch.kuerzen;
begin
   teiler := ggt (zaehler, nenner);
   zaehler := zaehler div teiler;
   nenner := nenner div teiler;
end;

procedure TBruch.erweitern(f: integer);
begin
   zaehler := zaehler*f;
   nenner := nenner*f;
end;

end.

