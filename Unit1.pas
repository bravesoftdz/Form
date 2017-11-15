unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, Menus, Data.DB, Data.Win.ADODB, Contnrs,
  Generics.Collections,
  unit5, unit4, unit2, unit3;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    procedure FileClick(Sender: TObject);
    procedure NewClick(Sender: TObject);
  private
    /// <link>aggregation</link>
    fFileCreate: TInterfaceMenuCreate;
  published
    constructor create(AOwner: TComponent); Override;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

constructor TForm1.create(AOwner: TComponent);
begin
  inherited;
  fFileCreate := TNilCreate.create(self);
end;

procedure TForm1.FileClick(Sender: TObject);
begin
  fFileCreate := TFileCreate.create(self);
end;

procedure TForm1.NewClick(Sender: TObject);
begin
  fFileCreate := TNewCreate.create(self);
end;

end.
