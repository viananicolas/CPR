unit unCadastroPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TOperacao= (toIncluir, toEditar, toExcluir);
  TfrmCadastroPadrao = class(TForm)
    pnlBusca: TPanel;
    pnlDados: TPanel;
    pnlBotoes: TPanel;
    bbtnOK: TBitBtn;
    bbtnNovo: TBitBtn;
    bbtnExcluir: TBitBtn;
    bbtnCancelar: TBitBtn;
    bbtnLocalizar: TBitBtn;
    bbtnFechar: TBitBtn;
    dblcChave: TDBLookupComboBox;
    atDados: TADOTable;
    dsDados: TDataSource;
    procedure bbtnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FOperacao: TOperacao;
    procedure SetOperacao(const Value: TOperacao);
    { Private declarations }
  public
    { Public declarations }
    property Operacao: TOperacao read FOperacao write SetOperacao;
  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;

implementation

{$R *.dfm}

procedure TfrmCadastroPadrao.bbtnFecharClick(Sender: TObject);
begin
atDados.Close;
Close;
end;

procedure TfrmCadastroPadrao.FormShow(Sender: TObject);
begin
atDados.Open;
dblcChave.SetFocus;
end;

procedure TfrmCadastroPadrao.SetOperacao(const Value: TOperacao);
begin
  FOperacao := Value;
  case Value of
  toIncluir:
  begin
  bbtnOK.Enabled:=True;
  bbtnNovo.Enabled:=True;
  bbtnExcluir.Enabled:=True;
  bbtnLocalizar.Enabled:=True;
  bbtnFechar.Enabled:=True;
  atDados.Append;
  pnlBusca.Enabled:=True;
  dblcChave.SetFocus;
  Perform(WM_NEXTDLGCTL, 0, 0);
  //pnlBusca.Enabled:=False;
end;
  toEditar:
  begin
  bbtnOK.Enabled:=True;
  bbtnNovo.Enabled:=False;
  bbtnExcluir.Enabled:=True;
  bbtnLocalizar.Enabled:=True;
  bbtnFechar.Enabled:=False;
  atDados.Edit;
  pnlBusca.Enabled:=True;
  dblcChave.SetFocus;
  Perform(WM_NEXTDLGCTL, 0, 0);
  end;
  toExcluir:
  begin
  if (Application.MessageBox('Confirma a exclusão do registro?',
                              'Confirmação de exclusão',
                              MB_YESNO + MB_ICONERROR)=ID_YES) then
  atDados.Delete;
  bbtnOK.Enabled:=False;
  bbtnNovo.Enabled:=True;
  bbtnExcluir.Enabled:=False;
  bbtnLocalizar.Enabled:=True;
  bbtnFechar.Enabled:=True;
  atDados.Edit;
  pnlBusca.Enabled:=True;
  dblcChave.Refresh;
  dblcChave.SetFocus;
  FOperacao:= toEditar;
  end;
  end;
  end;
end.
