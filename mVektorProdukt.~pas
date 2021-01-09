unit mVektorProdukt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TVektorProdukt = class(TForm)
    Label1: TLabel;
    edA1: TEdit;
    edA2: TEdit;
    edA3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edB1: TEdit;
    edB2: TEdit;
    edB3: TEdit;
    Label5: TLabel;
    btStufe1: TButton;
    Shape1: TShape;
    Shape2: TShape;
    Label6: TLabel;
    lbA1: TLabel;
    lbB1: TLabel;
    lbA2: TLabel;
    lbB2: TLabel;
    lbA3: TLabel;
    lbB3: TLabel;
    btStufe2: TButton;
    Label7: TLabel;
    lbA2B3A3B2: TLabel;
    lbA3B1A1B3: TLabel;
    lbA1B2A2B1: TLabel;
    Label8: TLabel;
    btStufe3: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    btStufen: TButton;
    Label14: TLabel;
    Shape3: TShape;
    btReset: TButton;
    procedure btStufe1Click(Sender: TObject);
    procedure btStufe2Click(Sender: TObject);
    procedure btStufe3Click(Sender: TObject);
    procedure btStufenClick(Sender: TObject);
    procedure btResetClick(Sender: TObject);
    procedure onclose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    A1, A2, A3, B1, B2, B3: integer;
    procedure Stufe1;
    procedure Stufe2;
    procedure Stufe3;
  public
    { Public declarations }
  end;

var
  VektorProdukt: TVektorProdukt;

implementation

uses mMatheManager;

{$R *.dfm}

procedure TVektorProdukt.Stufe1;
begin
   A1 := StrToInt(edA1.Text);
   A2 := StrToInt(edA2.Text);
   A3 := StrToInt(edA3.Text);
   B1 := StrToInt(edB1.Text);
   B2 := StrToInt(edB2.Text);
   B3 := StrToInt(edB3.Text);
   Shape1.Visible := True;
   Label6.Visible := True;
   lbA1.Caption := edA1.Text;
   lbA1.Visible := True;
   lbA2.Caption := edA2.Text;
   lbA2.Visible := True;
   lbA3.Caption := edA3.Text;
   lbA3.Visible := True;
   lbB1.Caption := edB1.Text;
   lbB1.Visible := True;
   lbB2.Caption := edB2.Text;
   lbB2.Visible := True;
   lbB3.Caption := edB3.Text;
   lbB3.Visible := True;
   Shape2.Visible := True;
   btStufe2.Visible := True;
end;

procedure TVektorProdukt.Stufe2;
begin
   Label7.Visible := True;
   lbA2B3A3B2.Caption := IntToStr(A2) + '*' + IntToStr(B3) + ' - ' + IntToStr(A3) + '*' + IntToStr(B2);
   lbA2B3A3B2.Visible := True;
   lbA3B1A1B3.Caption := IntToStr(A3) + '*' + IntToStr(B1) + ' - ' + IntToStr(A1) + '*' + IntToStr(B3);
   lbA3B1A1B3.Visible := True;
   lbA1B2A2B1.Caption := IntToStr(A1) + '*' + IntToStr(B2) + ' - ' + IntToStr(A2) + '*' + IntToStr(B1);
   lbA1B2A2B1.Visible := True;
   Label8.Visible := True;
   btStufe3.Visible := True;
end;

procedure TVektorProdukt.Stufe3;
begin
   Label9.Visible := True;
   Label10.Caption := IntToStr((A2*B3)-(A3*B2));
   Label10.Visible := True;
   Label11.Caption := IntToStr((A3*B1)-(A1*B3));
   Label11.Visible := True;
   Label12.Caption := IntToStr((A1*B2)-(A2*B1));
   Label12.Visible := True;
   Label13.Visible := True;
end;

procedure TVektorProdukt.btStufe1Click(Sender: TObject);
begin
   Stufe1;
end;

procedure TVektorProdukt.btStufe2Click(Sender: TObject);
begin
   Stufe2;
end;

procedure TVektorProdukt.btStufe3Click(Sender: TObject);
begin
   Stufe3;
end;

procedure TVektorProdukt.btStufenClick(Sender: TObject);
begin
   Stufe1;
   Stufe2;
   Stufe3;
end;

procedure TVektorProdukt.btResetClick(Sender: TObject);
begin
   Shape1.Visible := False;
   Label6.Visible := False;
   lbA1.Visible := False;
   lbA1.Caption := IntToStr(0);
   lbA2.Visible := False;
   lbA2.Caption := IntToStr(0);
   lbA3.Visible := False;
   lbA3.Caption := IntToStr(0);
   lbB1.Visible := False;
   lbB1.Caption := IntToStr(0);
   lbB2.Visible := False;
   lbB2.Caption := IntToStr(0);
   lbB3.Visible := False;
   lbB3.Caption := IntToStr(0);
   Shape2.Visible := False;
   btStufe2.Visible := False;
   LAbel7.Visible := False;
   lbA2B3A3B2.Visible := False;
   lbA2B3A3B2.Caption := IntToStr(0);
   lbA3B1A1B3.Visible := False;
   lbA3B1A1B3.Caption := IntToStr(0);
   lbA1B2A2B1.Visible := False;
   lbA1B2A2B1.Caption := IntToStr(0);
   Label8.Visible := False;
   btStufe3.Visible := False;
   Label9.Visible := False;
   Label10.Visible := False;
   Label11.Visible := False;
   Label12.Visible := False;
   LAbel13.Visible := False;
end;

procedure TVektorProdukt.onclose(Sender: TObject;
  var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

end.
