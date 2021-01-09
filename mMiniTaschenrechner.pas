unit mMiniTaschenrechner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMiniTaschenrechner = class(TForm)
    btGeteilt: TButton;
    btMal: TButton;
    btMinus: TButton;
    btPlus: TButton;
    btWurzel: TButton;
    btHoch2: TButton;
    edZahl1: TEdit;
    edZahl2: TEdit;
    edErgebnis: TEdit;
    lbErgebnis: TLabel;
    btXhochY: TButton;
    btConvert: TButton;
    radioDual: TRadioButton;
    radioOkt: TRadioButton;
    radioHex: TRadioButton;
    procedure radioHexClick(Sender: TObject);
    procedure radioOktClick(Sender: TObject);
    procedure radioDualClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btConvertClick(Sender: TObject);
    procedure btPlusClick(Sender: TObject);
    procedure btMinusClick(Sender: TObject);
    procedure btMalClick(Sender: TObject);
    procedure btGeteiltClick(Sender: TObject);
    procedure btWurzelClick(Sender: TObject);
    procedure btHoch2Click(Sender: TObject);
    procedure onclose(Sender: TObject; var Action: TCloseAction);
    procedure btXhochYClick(Sender: TObject);
  private
     zahl1, zahl2: real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MiniTaschenrechner: TMiniTaschenrechner;

implementation

uses mMatheManager;

{$R *.dfm}


procedure TMiniTaschenrechner.btPlusClick(Sender: TObject);
begin
   edZahl2.Visible := True;
   FormShow(self);
   zahl1 := StrToFloat(edZahl1.Text);
   zahl2 := StrToFloat(edZahl2.Text);
   edErgebnis.Text := FloatToStr(zahl1+zahl2);
end;

procedure TMiniTaschenrechner.btMinusClick(Sender: TObject);
begin
   edZahl2.Visible := True;
   FormShow(self);
   zahl1 := StrToFloat(edZahl1.Text);
   zahl2 := StrToFloat(edZahl2.Text);
   edErgebnis.Text := FloatToStr(zahl1-zahl2);
end;

procedure TMiniTaschenrechner.btMalClick(Sender: TObject);
begin
   edZahl2.Visible := True;
   FormShow(self);
   zahl1 := StrToFloat(edZahl1.Text);
   zahl2 := StrToFloat(edZahl2.Text);
   edErgebnis.Text := FloatToStr(zahl1*zahl2);
end;

procedure TMiniTaschenrechner.btGeteiltClick(Sender: TObject);
begin
   edZahl2.Visible := True;
   FormShow(self);
   zahl1 := StrToFloat(edZahl1.Text);
   zahl2 := StrToFloat(edZahl2.Text);
   edErgebnis.Text := FloatToStr(zahl1/zahl2);
end;

procedure TMiniTaschenrechner.btWurzelClick(Sender: TObject);
begin
   edZahl2.Visible := False;
   FormShow(self);
   zahl1 := StrToFloat(edZahl1.Text);
   edErgebnis.Text := FloatToStr(SQRT(zahl1));
end;

procedure TMiniTaschenrechner.btHoch2Click(Sender: TObject);
begin
   edZahl2.Visible := False;
   FormShow(self);
   zahl1 := StrToFloat(edZahl1.Text);
   edErgebnis.Text := FloatToStr(SQR(zahl1));
end;

procedure TMiniTaschenrechner.OnClose(Sender: TObject; var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

procedure TMiniTaschenrechner.btXhochYClick(Sender: TObject);

procedure Potenz(basis, n :real; var S: real);
begin
   if (n = 0) then S := 1
   else begin
      Potenz(basis, n-1, S);
      S := S*basis;
   end;
end;

var S :real;
begin
   edZahl2.Visible := True;
   FormShow(self);
   zahl1 := StrToFloat(edZahl1.Text);
   zahl2 := StrToFloat(edZahl2.Text);
   Potenz(zahl1, zahl2, S);
   edErgebnis.text := FloatToStr(S);
end;

procedure TMiniTaschenrechner.btConvertClick(Sender: TObject);

function dez2any (dez :integer; digits :string) :string;
var erg :string;
    laenge :integer;
begin
   laenge := Length(digits);
   if (laenge > 1) then
   begin
      while (dez > 0) do
      begin
         erg := digits[(dez mod laenge)+1] + erg;
         dez := Trunc(dez / laenge);
      end;
      if (erg = '') then erg := '0';
   end
   else Application.MessageBox('Zahlensystem ist zu kurz!', NIL, 48);
   dez2any := erg;
end;

begin
   edZahl2.Visible := True;
   if (radioDual.Visible = False) then
   begin
      MiniTaschenrechner.Height := 270;
      edErgebnis.Top := 220;
      lbErgebnis.Top := 196;
      radioDual.Visible := True;
      radioOkt.Visible := True;
      radioHex.Visible := True;
      radioDualClick(self);
      radioDual.Checked := True;
   end;
   edErgebnis.Text := dez2any(StrToInt(edZahl1.Text), edZahl2.Text);
end;

procedure TMiniTaschenrechner.FormShow(Sender: TObject);
begin
   radioDual.Visible := False;
   radioOkt.Visible := False;
   radioHex.Visible := False;
   lbErgebnis.Top := 176;
   edErgebnis.Top := 200;
   MiniTaschenrechner.Height := 250;
end;

procedure TMiniTaschenrechner.radioDualClick(Sender: TObject);
begin
   edZahl2.Text := '01';
end;

procedure TMiniTaschenrechner.radioOktClick(Sender: TObject);
begin
   edZahl2.Text := '01234567';
end;

procedure TMiniTaschenrechner.radioHexClick(Sender: TObject);
begin
   edZahl2.Text := '0123456789ABCDEF';
end;

end.
