unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ToolWin, ActnMan, ActnCtrls,
  ActnMenus, Menus, Data.DB, Data.Win.ADODB, Contnrs,
  Generics.Collections;

type
  TInterfaceMenuCreate = interface
    function GetInstance(AOwner: TForm): TInterfaceMenuCreate;
    procedure ButtonClickDestroy(Sender: TObject);
  end;

implementation

end.
