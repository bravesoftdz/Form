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
    function GetInstance(AOwner: TForm): TInterfaceMenuCreate;
    procedure ButtonClickDestroy(Sender: TObject);
  end;

implementation

{ TNilCreate }

procedure TNilCreate.ButtonClickDestroy(Sender: TObject);
begin
  //
end;

constructor TNilCreate.create(AOwner: TForm);
begin
  Label1 := TLabel.create(nil);
  Edit1 := TEdit.create(nil);
  Button1 := TButton.create(nil);
end;
function TNilCreate.GetInstance(AOwner: TForm): TInterfaceMenuCreate;
begin
  //
end;

end.
