unit unDMData;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmData = class(TDataModule)
    acConexao: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmData: TdmData;

implementation

{$R *.dfm}

end.
