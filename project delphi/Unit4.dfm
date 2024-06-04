object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 741
  Top = 232
  Height = 218
  Width = 456
  object Zconnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\yangm\Downloads\libmysql.dll'
    Left = 40
    Top = 40
  end
  object Zkategori: TZQuery
    Connection = Zconnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM kategori;')
    Params = <>
    Left = 112
    Top = 40
  end
  object Zsatuan: TZQuery
    Params = <>
    Left = 160
    Top = 40
  end
  object Zuser: TZQuery
    Params = <>
    Left = 216
    Top = 40
  end
  object Zsupplier: TZQuery
    Params = <>
    Left = 280
    Top = 40
  end
  object Zbarang: TZQuery
    Params = <>
    Left = 336
    Top = 40
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 112
    Top = 96
  end
  object dssatuan: TDataSource
    Left = 160
    Top = 96
  end
  object dsuser: TDataSource
    Left = 216
    Top = 96
  end
  object dssupplier: TDataSource
    Left = 280
    Top = 96
  end
  object dsbarang: TDataSource
    Left = 336
    Top = 96
  end
end
