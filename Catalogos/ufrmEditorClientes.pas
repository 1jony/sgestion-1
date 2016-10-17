unit ufrmEditorClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmEditor, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmEditorClientes = class(TfrmEditor)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditorClientes: TfrmEditorClientes;

implementation

{$R *.dfm}

initialization
  RegisterClass(TfrmEditorClientes);

end.
