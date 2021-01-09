unit mVersionshistory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TVersionshistory = class(TForm)
    Memo1: TMemo;
    procedure onclose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Versionshistory: TVersionshistory;

implementation

uses mMatheManager;

{$R *.dfm}

procedure TVersionshistory.onclose(Sender: TObject;
  var Action: TCloseAction);
begin
   MatheManager.StatusBar1.SimpleText := 'Bereit.';
end;

end.
