unit frmuDataList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmDataList = class(TForm)
    dbgList: TDBGrid;
  private
    { Private �錾 }
  public
    { Public �錾 }
  end;

var
  frmDataList: TfrmDataList;

implementation

{$R *.dfm}

uses
  dmuMain;

end.
