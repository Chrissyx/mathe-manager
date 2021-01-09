unit mGeraden;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TGeraden = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    edAx: TLabeledEdit;
    edAy: TEdit;
    edAz: TEdit;
    edBx: TLabeledEdit;
    btPMF: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edBy: TEdit;
    edBz: TEdit;
    Label5: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Shape1: TShape;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edSVX: TEdit;
    edSVY: TEdit;
    edSVZ: TEdit;
    edRVX: TEdit;
    edRVY: TEdit;
    edRVZ: TEdit;
    btClear: TButton;
    procedure btPMFClick(Sender: TObject);
    procedure btClearClick(Sender: TObject);
    procedure onclose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ax, ay, az, bx, by, bz: real;
  public
    { Public declarations }
  end;

var
  Geraden: TGeraden;

implementation

uses mMatheManager;

{$R *.dfm}

procedure TGeraden.btPMFClick(Sender: TObject);
begin
   edSVX.Text := edAx.Text;
   edSVY.Text := edAy.Text;
   edSVZ.Text := edAz.Text;
   ax := StrToFloat(edAx.Text);
   ay := StrToFloat(edAy.Text);
   az := StrToFloat(edAz.Text);
   bx := StrToFloat(edBx.Text);
   by := StrToFloat(edBy.Text);
   bz := StrToFloat(edBz.Text);
   edRVX.Text := FloatToStr(-ax+bx);
   edRVY.Text := FloatToStr(-ay+by);
   edRVZ.Text := FloatToStr(-az+bz);
end;

procedure TGeraden.btClearClick(Sender: TObject);
label 1;
begin
   case Application.MessageBox('Punkte auch löschen?', 'Frage', 35) of
   IDYES:
   begin
      edAx.Clear;
      edAy.Clear;
      edAz.Clear;
      edBx.Clear;
      edBy.Clear;
      edBz.Clear;
      goto 1;
   end;
   IDNO:
1: begin
      edSVX.Clear;
      edSVY.Clear;
      edSVZ.Clear;
      edRVX.Clear;
      edRVY.Clear;
      edRVZ.Clear;
   end;
   end;
end;

procedure TGeraden.onclose(Sender: TObject; var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

end.
