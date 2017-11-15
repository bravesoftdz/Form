unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, Menus, Data.DB, Data.Win.ADODB, Contnrs,
  Generics.Collections, unit4;

type

  TFileCreate = class(TInterfacedObject, TInterfaceMenuCreate)
  private
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    constructor createActual(AOwner: TForm);
  public
    function GetInstance(AOwner: TForm): TInterfaceMenuCreate;
    procedure ButtonClickDestroy(Sender: TObject);
  end;

implementation

{ TFile1 }

procedure TFileCreate.ButtonClickDestroy(Sender: TObject);
begin
    Label1.Free;
    Edit1.Free;
    Button1.Free;
end;

constructor TFileCreate.createActual(AOwner: TForm);
begin
  Label1.Free;
  Edit1.Free;
  Button1.Free;
  Label1 := TLabel.create(AOwner);
  Label1.Left := 8;
  Label1.Top := 8;
  Label1.Parent := AOwner;
  Label1.Caption := 'WebPage.GetCaption';
  Edit1 := TEdit.create(AOwner);
  Edit1.Left := 80;
  Edit1.Top := 80;
  Edit1.Parent := AOwner;
  Edit1.Text := 'Edit1.Text';
  Button1 := TButton.create(AOwner);
  Button1.Left := 100;
  Button1.Top := 48;
  Button1.Parent := AOwner;
  Button1.Caption := 'Button1.Caption';
  Button1.OnClick := ButtonClickDestroy;
end;

function TFileCreate.GetInstance(AOwner: TForm): TInterfaceMenuCreate;
begin
  if Label1 = nil then
    result := TFileCreate.createActual(AOwner);
end;

end.
