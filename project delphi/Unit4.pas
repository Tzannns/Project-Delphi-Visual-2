unit Unit4;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule4 = class(TDataModule)
    Zconnection1: TZConnection;
    Zkategori: TZQuery;
    Zsatuan: TZQuery;
    Zuser: TZQuery;
    Zsupplier: TZQuery;
    Zbarang: TZQuery;
    dskategori: TDataSource;
    dssatuan: TDataSource;
    dsuser: TDataSource;
    dssupplier: TDataSource;
    dsbarang: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

uses
  Unit3;

{$R *.dfm}

end.
 