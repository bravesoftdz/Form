unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, Menus, Data.DB, Data.Win.ADODB, Contnrs,
  Generics.Collections, unit4;

type

  TNewCreate = class(TInterfacedObject, TInterfaceMenuCreate)
  private
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
  public
    constructor create(AOwner: TForm);
    procedure destroy;
  end;

implementation

{ TNewCreate }

constructor TNewCreate.create(AOwner: TForm);
begin
  Label1.Free;
  Edit1.Free;
  Button1.Free;
  Label1 := TLabel.create(AOwner);
  Label1.Left := 80;
  Label1.Top := 80;
  Label1.Parent := AOwner;
  Label1.Caption := 'WebPage.GetCaption';
  Edit1 := TEdit.create(AOwner);
  Edit1.Left := 160;
  Edit1.Top := 160;
  Edit1.Parent := AOwner;
  Edit1.Text := 'Edit1.Text';
  Button1 := TButton.create(AOwner);
  Button1.Left := 200;
  Button1.Top := 148;
  Button1.Parent := AOwner;
  Button1.Caption := 'Button1.Caption';
end;

procedure TNewCreate.destroy;
begin
    Label1.Free;
    Edit1.Free;
    Button1.Free;
end;

end.
