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
    Label1: TLabel;
    Button1: TButton;
    procedure btPlusClick(Sender: TObject);
    procedure btMinusClick(Sender: TObject);
    procedure btMalClick(Sender: TObject);
    procedure btGeteiltClick(Sender: TObject);
    procedure btWurzelClick(Sender: TObject);
    procedure btHoch2Click(Sender: TObject);
    procedure onclose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
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
   edZahl2.Enabled := True;
   zahl1 := StrToFloat(edZahl1.Text);
   zahl2 := StrToFloat(edZahl2.Text);
   edErgebnis.Text := FloatToStr(zahl1+zahl2);
end;

procedure TMiniTaschenrechner.btMinusClick(Sender: TObject);
begin
   edZahl2.Enabled := True;
   zahl1 := StrToFloat(edZahl1.Text);
   zahl2 := StrToFloat(edZahl2.Text);
   edErgebnis.Text := FloatToStr(zahl1-zahl2);
end;

procedure TMiniTaschenrechner.btMalClick(Sender: TObject);
begin
   edZahl2.Enabled := True;
   zahl1 := StrToFloat(edZahl1.Text);
   zahl2 := StrToFloat(edZahl2.Text);
   edErgebnis.Text := FloatToStr(zahl1*zahl2);
end;

procedure TMiniTaschenrechner.btGeteiltClick(Sender: TObject);
begin
   edZahl2.Enabled := True;
   zahl1 := StrToFloat(edZahl1.Text);
   zahl2 := StrToFloat(edZahl2.Text);
   edErgebnis.Text := FloatToStr(zahl1/zahl2);
end;

procedure TMiniTaschenrechner.btWurzelClick(Sender: TObject);
begin
   edZahl2.Enabled := False;
   zahl1 := StrToFloat(edZahl1.Text);
   edErgebnis.Text := FloatToStr(SQRT(zahl1));
end;

procedure TMiniTaschenrechner.btHoch2Click(Sender: TObject);
begin
   edZahl2.Enabled := False;
   zahl1 := StrToFloat(edZahl1.Text);
   edErgebnis.Text := FloatToStr(SQR(zahl1));
end;

procedure TMiniTaschenrechner.onclose(Sender: TObject;
  var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

procedure TMiniTaschenrechner.Button1Click(Sender: TObject);

procedure potenz (basis, n :real; var S: real);
begin
   if n=0 then S := 1
          else begin
                  potenz (basis, n-1, S);
                  S := S*basis;
               end;
end;

var S :real;
begin
   edZahl2.Enabled := True;
   zahl1 := StrToFloat(edZahl1.Text);
   zahl2 := StrToFloat(edZahl2.Text);
   potenz (zahl1, zahl2, S);
   edErgebnis.text := FloatToStr (S);
end;

end.
