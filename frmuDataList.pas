unit frmuDataList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.GraphUtil;

type
  TfrmDataList = class(TForm)
    dbgList: TDBGrid;
    procedure dbgListDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private Declaration }
  public
    { Public Declaration }
  end;

var
  frmDataList: TfrmDataList;

implementation

{$R *.dfm}

uses
  dmuMain;

procedure TfrmDataList.dbgListDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  var CellColor :=
    GetStatusColor(
      (Sender as TDBGrid).DataSource.DataSet.Fields[MIDX_STATUS].AsInteger,
      (Sender as TDBGrid).Color);
  if CellColor <> (Sender as TDBGrid).Color then
  begin
    if gdSelected in State then
      CellColor := GetHighLightColor(CellColor);
    (Sender as TDBGrid).Canvas.Brush.Color := CellColor;
    (Sender as TDBGrid).DefaultDrawColumnCell(Rect, Datacol, Column, State);
  end;
end;

end.
