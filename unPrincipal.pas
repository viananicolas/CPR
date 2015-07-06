unit unPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnCtrls, ToolWin, ActnMan, ActnMenus, ComCtrls, ImgList;

type
  TfrmPrincipal = class(TForm)
    stbMensagens: TStatusBar;
    ammbPrincipal: TActionMainMenuBar;
    atbBotoes: TActionToolBar;
    ImageList1: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses unDMApp, unDMData;

{$R *.dfm}

end.
