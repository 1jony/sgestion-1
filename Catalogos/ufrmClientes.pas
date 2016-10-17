unit ufrmClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogo, Vcl.ActnMenus,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList;

type
  TfrmClientes = class(TfrmCatalogo)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses udmData;

initialization
  RegisterClass(TfrmClientes);

end.
