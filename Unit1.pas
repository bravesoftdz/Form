unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, Menus, Data.DB, Data.Win.ADODB, Contnrs,
  Generics.Collections,
  unit2, unit3, unit4, unit5;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    procedure FileClick(Sender: TObject);
    procedure NewClick(Sender: TObject);
    procedure MainMenu1Enabled;
  private
    /// <link>aggregation</link>
    fFileCreate: TInterfaceMenuCreate;
  published
    constructor create(AOwner: TComponent); Override;
  end;

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
  fFileCreate.destroy;
  fFileCreate := TFileCreate.create(self);
  self.MainMenu1Enabled;
  self.File1.Enabled := false;
end;

procedure TForm1.MainMenu1Enabled;
begin
  self.File1.Enabled := true;
  self.New1.Enabled := true;
end;

procedure TForm1.NewClick(Sender: TObject);
begin
  fFileCreate.destroy;
  fFileCreate := TNewCreate.create(self);
  self.MainMenu1Enabled;
  self.New1.Enabled := false;
end;

end.
