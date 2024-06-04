unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
edt2.Text := DataModule4.Zkategori.Fields[1].AsString;
a:= DataModule4.Zkategori.Fields[0].AsString;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add('INSERT INTO kategori VALUES(null, "' + edt1.Text + '")');
  DataModule4.Zkategori.ExecSQL;

  // Refresh the dataset to reflect the changes
  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add('SELECT * FROM kategori');
  DataModule4.Zkategori.Open;

  ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  with DataModule4.Zkategori do
  begin
    SQL.Clear;
    SQL.Add('UPDATE kategori SET name="' + edt1.Text + '" WHERE id="' + a + '"');
    ExecSQL;

    // Refresh the dataset
    SQL.Clear;
    SQL.Add('SELECT * FROM kategori');
    Open;
  end;

  ShowMessage('Data Berhasil Di Update !!!');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  with DataModule4.Zkategori do
  begin
    SQL.Clear;
    SQL.Add('DELETE FROM kategori WHERE id="' + a + '"');
    ExecSQL;

    // Refresh the dataset
    SQL.Clear;
    SQL.Add('SELECT * FROM kategori');
    Open;
  end;

  ShowMessage('Data Berhasil di Delete !!!');
end;


end.
