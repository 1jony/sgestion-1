unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList, Vcl.Menus, Vcl.ComCtrls,
  Vcl.ToolWin, System.ImageList, Vcl.ImgList;

type
  TfrmMain = class(TForm)
    actMain: TActionList;
    actClientes: TAction;
    pcMain: TPageControl;
    tbMain: TToolBar;
    btnCatalogos: TToolButton;
    btnProductos: TToolButton;
    btnVendedores: TToolButton;
    mnuCatalogos: TPopupMenu;
    mnuClientes: TMenuItem;
    imgMain: TImageList;
    procedure actClientesExecute(Sender: TObject);
  private
    { Private declarations }
    function CrearVentana(actAccion: TAction):  TForm;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses udmData;

function TfrmMain.CrearVentana(actAccion: TAction): TForm;
var
  sForma: String;
  FormClass: TFormClass;
begin
  sForma:= StringReplace(actAccion.Name, 'act', 'frm', []);
  Result:= TForm(Application.FindComponent(sForma));
  if Assigned(Result) then
    pcMain.ActivePage:= Result.Parent as TTabSheet
  else
  begin
    FormClass:= TFormClass(GetClass('T' + sForma));
    if Assigned(FormClass) then
    begin
      Result:= FormClass.Create(Application);
      Result.ManualDock(pcMain);
      Result.Show;
      pcMain.ActivePageIndex:= Pred(pcMain.PageCount);
      Result.Parent:= pcMain.ActivePage;
    end;
  end;
end;

procedure TfrmMain.actClientesExecute(Sender: TObject);
begin
  CrearVentana(Sender as TAction);
end;

end.
