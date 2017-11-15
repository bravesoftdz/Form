unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, Menus, Data.DB, Data.Win.ADODB, Contnrs,
  Generics.Collections, unit4;

type

  TNilCreate = class(TInterfacedObject, TInterfaceMenuCreate)
  private
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
  public
    constructor create(AOwner: TForm);
    procedure destroy;
  end;

implementation

{ TNilCreate }

constructor TNilCreate.create(AOwner: TForm);
begin
  Label1 := TLabel.create(nil);
  Edit1 := TEdit.create(nil);
  Button1 := TButton.create(nil);
end;

procedure TNilCreate.destroy;
begin
    Label1.Free;
    Edit1.Free;
    Button1.Free;
end;

end.
