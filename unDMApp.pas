unit unDMApp;

interface

uses
  SysUtils, Classes, ActnList, ImgList, Controls, XPStyleActnCtrls, ActnMan,
  ExtCtrls;

type
  TdmApp = class(TDataModule)
    amPrincipal: TActionManager;
    imgFiguras: TImageList;
    Sair: TAction;
    CadastrarClientes: TAction;
    CadastrarFornecedores: TAction;
    CadastrarBancos: TAction;
    CadastrarCartorios: TAction;
    GerenciarPlanoContas: TAction;
    LancamentosPlanoContas: TAction;
    CadastrarDespesas: TAction;
    CadastrarPagamentos: TAction;
    CadastrarRecebimentos: TAction;
    CadastrarContasCartorios: TAction;
    CadastrarCheques: TAction;
    Sobre: TAction;
    tmrRelogio: TTimer;
    procedure tmrRelogioTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmApp: TdmApp;

implementation

uses unPrincipal;

{$R *.dfm}

procedure TdmApp.tmrRelogioTimer(Sender: TObject);
begin
  frmPrincipal.stbMensagens.Panels.Items[1].Text:=
  FormatDateTime('hh:nn:ss', Now);
  frmPrincipal.stbMensagens.Panels.Items[2].Text:=
  FormatDateTime('dddd", "dd" de "mmmm" de "yyyy', Now);
end;

end.
