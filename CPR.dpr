program CPR;

uses
  Forms,
  unPrincipal in 'unPrincipal.pas' {frmPrincipal},
  unDMApp in 'unDMApp.pas' {dmApp: TDataModule},
  unDMData in 'unDMData.pas' {dmData: TDataModule},
  unCadastroPadrao in 'unCadastroPadrao.pas' {frmCadastroPadrao},
  unLocalizar in 'unLocalizar.pas' {frmLocalizar};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TdmApp, dmApp);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastroPadrao, frmCadastroPadrao);
  Application.CreateForm(TfrmLocalizar, frmLocalizar);
  Application.Run;
end.
