unit mOptionen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry;

type
  TOptionen = class(TForm)
    CheckBox1: TCheckBox;
    btOK: TButton;
    procedure onclose(Sender: TObject; var Action: TCloseAction);
    procedure btOKClick(Sender: TObject);
  private
    { Private declarations }
    Reg: TRegistry;
  public
    { Public declarations }
  end;

var
  Optionen: TOptionen;

implementation

uses mMatheManager;

{$R *.dfm}

procedure TOptionen.btOKClick(Sender: TObject);
begin
   Reg := TRegistry.Create;
   Reg.RootKey := HKEY_LOCAL_MACHINE;
   if Reg.OpenKey('Software\Chrissyx Homepage Progs\Mathe Manager', True) then
   begin
      try
         Reg.WriteBool('CanKill', CheckBox1.Checked);
         Reg.CloseKey;
      except
         Application.MessageBox('ERROR: Konnte Einstellungen nicht speichern!', NIL, 48);
      end;
   end
   else Application.MessageBox('ERROR: Konnte Einstellungen nicht finden!', NIL, 48);
   Reg.Free;
   Close;
end;

procedure TOptionen.onclose(Sender: TObject; var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

end.
