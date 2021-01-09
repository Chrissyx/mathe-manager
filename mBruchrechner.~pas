unit mBruchrechner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Bruchrechnerunit;

type
  TFrmBruchrechner = class(TForm)
    lbRechenzeichen: TLabel;
    edZaehler1: TEdit;
    edNenner1: TEdit;
    edZaehler2: TEdit;
    edNenner2: TEdit;
    edZaehlerE: TEdit;
    edNennerE: TEdit;
    btPlus: TButton;
    btMinus: TButton;
    btMal: TButton;
    btGeteilt: TButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label1: TLabel;
    procedure onclose(Sender: TObject; var Action: TCloseAction);
    procedure btPlusClick(Sender: TObject);
    procedure onactivate(Sender: TObject);
    procedure btMinusClick(Sender: TObject);
    procedure btMalClick(Sender: TObject);
    procedure btGeteiltClick(Sender: TObject);
  private
    { Private declarations }
    brurech: TBruchrechner;
  public
    { Public declarations }
  end;

var
  FrmBruchrechner: TFrmBruchrechner;

implementation

uses mMatheManager;

{$R *.dfm}

procedure TFrmBruchrechner.onactivate(Sender: TObject);
begin
   brurech := TBruchrechner.create;
end;

procedure TFrmBruchrechner.onclose(Sender: TObject; var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

procedure TFrmBruchrechner.btPlusClick(Sender: TObject);
begin
   lbRechenzeichen.caption := '+';
   brurech.rechnen (edZaehler1.text, edNenner1.text, edZaehler2.text, edNenner2.text, plus);
   edZaehlerE.text := brurech.getEzaehler;
   edNennerE.text := brurech.getEnenner;
end;

procedure TFrmBruchrechner.btMinusClick(Sender: TObject);
begin
   lbRechenzeichen.caption := '-';
   brurech.rechnen (edZaehler1.text, edNenner1.text, edZaehler2.text, edNenner2.text, minus);
   edZaehlerE.text := brurech.getEzaehler;
   edNennerE.text := brurech.getEnenner;
end;

procedure TFrmBruchrechner.btMalClick(Sender: TObject);
begin
   lbRechenzeichen.caption := '*';
   brurech.rechnen (edZaehler1.text, edNenner1.text, edZaehler2.text, edNenner2.text, mal);
   edZaehlerE.text := brurech.getEzaehler;
   edNennerE.text := brurech.getEnenner;
end;

procedure TFrmBruchrechner.btGeteiltClick(Sender: TObject);
begin
   lbRechenzeichen.caption := '/';
   brurech.rechnen (edZaehler1.text, edNenner1.text, edZaehler2.text, edNenner2.text, geteilt);
   edZaehlerE.text := brurech.getEzaehler;
   edNennerE.text := brurech.getEnenner;
end;

end.
