unit frmuMain;

interface

uses
  System.SysUtils, System.Classes, System.Actions, System.Math,
  System.ImageList, Winapi.Windows, Winapi.Messages, Winapi.ShellAPI, Data.DB,
  Vcl.ActnList, Vcl.Controls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBCtrls, Vcl.DBGrids, Vcl.DBCGrids, Vcl.Forms,
  Vcl.Dialogs, Vcl.Mask, Vcl.Graphics, Vcl.Imaging.pngimage, Vcl.ImgList;

type
  { TPageControl (Interposer Class) }
  TPageControl = class(Vcl.ComCtrls.TPageControl)
  public
    { Private Declaration }
    constructor Create(AOwner: TComponent); override;
  published
    { Published Declaration }
    property OnDblClick;
  end;

  { TfrmMain }
  TfrmMain = class(TForm)
    acFilter: TAction;
    acFirst: TAction;
    acGotoReport: TAction;
    acLast: TAction;
    acNext: TAction;
    acPrev: TAction;
    alMain: TActionList;
    bbDEFECT_NO: TBitBtn;
    dbcgComment: TDBCtrlGrid;
    dbmAttachment: TDBMemo;
    dbmComment: TDBMemo;
    dbmDescription: TDBMemo;
    dbmSteps: TDBMemo;
    dbmWorkaround: TDBMemo;
    DBNavigator: TDBNavigator;
    edBUILD_NO: TDBEdit;
    edCOMMENT_HEADER: TDBEdit;
    edDATA_TYPE: TDBEdit;
    edDATE_REPORTED: TDBEdit;
    edDEFECT_NO: TEdit;
    edDUPLICATEOF: TDBEdit;
    edFilter: TButtonedEdit;
    edFIRST_NAME: TDBEdit;
    edINTERNAL_NO: TDBEdit;
    edMODIFIED_DATE: TDBEdit;
    edPLATFORM: TDBEdit;
    edPROJECT_NAME: TDBEdit;
    edRATING: TDBEdit;
    edRESOLUTION_NAME: TDBEdit;
    edRESOLVED_IN_BUILD: TDBEdit;
    edSEVERITY: TDBEdit;
    edSHORT_DESCRIPTION: TDBEdit;
    edSTATUS_NAME: TDBEdit;
    edVERSION: TDBEdit;
    edVOTES: TDBEdit;
    imTabs: TImageList;
    lblBUILD_NO: TLabel;
    lblDATA_TYPE: TLabel;
    lblDATE_REPORTED: TLabel;
    lblDEFECT_NO: TLabel;
    lblDUPLICATEOF: TLabel;
    lblFilter: TLabel;
    lblFIRST_NAME: TLabel;
    lblINTERNAL_NO: TLabel;
    lblLAST_NAME: TLabel;
    lblMODIFIED_DATE: TLabel;
    lblPLATFORM: TLabel;
    lblPROJECT_NAME: TLabel;
    lblRATING: TLabel;
    lblRESOLUTION: TLabel;
    lblRESOLVED_IN_BUILD: TLabel;
    lblSEVERITY: TLabel;
    lblSHORT_DESCRIPTION: TLabel;
    lblSTATUS_NAME: TLabel;
    lblVERSION: TLabel;
    lblVOTES: TLabel;
    pcDetail: TPageControl;
    pnlBorder: TPanel;
    pnlBottom: TPanel;
    pnlComment: TPanel;
    pnlMain: TPanel;
    pnlTop: TPanel;
    tsAttachment: TTabSheet;
    tsComments: TTabSheet;
    tsDescription: TTabSheet;
    tsSteps: TTabSheet;
    tsWorkaround: TTabSheet;
    Image1: TImage;
    bbDataList: TBitBtn;
    alDataList: TAction;
    procedure acFilterExecute(Sender: TObject);
    procedure acGotoReportExecute(Sender: TObject);
    procedure cdsMainAfterScroll(DataSet: TDataSet);
    procedure edFilterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edKeyPress(Sender: TObject; var Key: Char);
    procedure edFilterRightButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label_DblClick(Sender: TObject);
    procedure PageControlDblClick(Sender: TObject);
    procedure tsShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure acDBExecute(Sender: TObject);
    procedure edDEFECT_NOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure alDataListExecute(Sender: TObject);
  private
    { Private Declaration }
    procedure GotoTop;
    procedure SetFilterText(s: string);
    procedure SetFilter;
  public
    { Public Declaration }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  dmuMain, frmuDataList;

{ TfrmMain }

procedure TfrmMain.FormShow(Sender: TObject);
begin
  onShow := nil;

  ClientWidth  := 800;
  ClientHeight := 640;

  bbDEFECT_NO.Height := edDEFECT_NO.Height;
  bbDEFECT_NO.Width  := bbDEFECT_NO.Height;
  bbDEFECT_NO.Top    := edDEFECT_NO.Top;
  bbDEFECT_NO.Left   := edDEFECT_NO.Left + edDEFECT_NO.Width + 2;
  lblSHORT_DESCRIPTION.Top    := edSHORT_DESCRIPTION.Top;
  lblSHORT_DESCRIPTION.Height := edSHORT_DESCRIPTION.Height;

  pcDetail.OnDblClick := PageControlDblClick;

  var sIndexName := 'IDX_DEFECT_NO';
  dmMain.cdsMain.AddIndex(sIndexName, 'DEFECT_NO', [ixDescending]);
  dmMain.cdsMain.IndexName := sIndexName;
  SetFilter;

  dmMain.cdsMain.AfterScroll := cdsMainAfterScroll;
  dmMain.cdsMain.First;
end;

procedure TfrmMain.cdsMainAfterScroll(DataSet: TDataSet);
  procedure ChangeColor(c: TColor);
  begin
    edDEFECT_NO.Color         := c;
    edSTATUS_NAME.Color       := c;
    edSHORT_DESCRIPTION.Color := c;
  end;
begin
  edDEFECT_NO.Text := DataSet.Fields[MIDX_DEFECT_NO].AsInteger.ToString;
  case DataSet.Fields[MIDX_STATUS].AsInteger of
    10: ChangeColor($00D2FFD2);
    20: ChangeColor($00FCC7C2);
    30: ChangeColor($00C4C4FF);
    50: ChangeColor($00E6E6E6);
  else
    ChangeColor(clWindow);
  end;
  tsDescription.ImageIndex := tsDescription.PageIndex * 2 + Ord(DataSet.Fields[MIDX_DESCRIPTION].AsString <> '');
  tsSteps.ImageIndex       := tsSteps.PageIndex       * 2 + Ord(DataSet.Fields[MIDX_STEPS      ].AsString <> '');
  tsWorkaround.ImageIndex  := tsWorkaround.PageIndex  * 2 + Ord(DataSet.Fields[MIDX_WORKAROUND ].AsString <> '');
  tsAttachment.ImageIndex  := tsAttachment.PageIndex  * 2 + Ord(DataSet.Fields[MIDX_ATTACHMENT ].AsString <> '');
  tsComments.ImageIndex    := tsComments.PageIndex    * 2 + Ord(dmMain.cdsNested.RecordCount > 0);
  GotoTop;
end;

procedure TfrmMain.acGotoReportExecute(Sender: TObject);
var
  DEFECT_NO: string;
begin
  try
    if not InputQuery('Go To Report', 'Report #:', DEFECT_NO) then
      Exit;
    edFilter.Text := 'DEFECT_NO=' + DEFECT_NO;
    SetFilter;
  finally
    edFilter.SetFocus;
  end;
end;

procedure TfrmMain.alDataListExecute(Sender: TObject);
begin
  frmDataList.Show;
end;

procedure TfrmMain.acDBExecute(Sender: TObject);
begin
  case (Sender as TAction).Tag of
    0: dmMain.cdsMain.First;
    1: dmMain.cdsMain.Prior;
    2: dmMain.cdsMain.Next;
    3: dmMain.cdsMain.Last;
  end;
end;

procedure TfrmMain.acFilterExecute(Sender: TObject);
begin
  edFilter.SetFocus;
end;

procedure TfrmMain.edDEFECT_NOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    VK_RETURN, VK_TAB:
      begin
        edFilter.Text := 'DEFECT_NO=' + edDEFECT_NO.Text;
        SetFilter;
        edFilter.SetFocus;
        Key := 0;
      end;
  end;
end;

procedure TfrmMain.edFilterKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key  of
    VK_RETURN, VK_TAB:
      begin
        SetFilter;
        Key := 0;
      end;
  end;
end;

procedure TfrmMain.edKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ^M then
    Key := #$0000;
end;

procedure TfrmMain.edFilterRightButtonClick(Sender: TObject);
begin
  edFilter.Text := '';
end;

procedure TfrmMain.PageControlDblClick(Sender: TObject);
begin
  case (Sender as TPageControl).ActivePageIndex of
    0: SetFilterText('DESCRIPTION');
    1: SetFilterText('STEPS');
    2: SetFilterText('WORKAROUND');
    3: SetFilterText('ATTACHMENT');
    4: ;
  end;
end;

procedure TfrmMain.Label_DblClick(Sender: TObject);
begin
  SetFilterText((Sender as TLabel).Hint);
end;

procedure TfrmMain.GotoTop;
begin
  pcDetail.ActivePageIndex := 0;
end;

procedure TfrmMain.Image1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', PChar('https://web.archive.org/web/http://qc.embarcadero.com/wc/qcmain.aspx?d=' + edDEFECT_NO.Text) , nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmMain.SetFilterText(s: string);
var
  sFilter: string;
begin
  sFilter := Trim(edFilter.Text);
  if sFilter <> '' then
    sFilter := sFilter + ' AND ';
  edFilter.SetFocus;
  case dmMain.cdsMain.FieldByName(s).DataType of
    ftString, ftWideString,
    ftDate, ftTime, ftDateTime:
      begin
        edFilter.Text := sFilter + s + '=''''';
        edFilter.SelStart := Length(edFilter.Text) - 1;
      end;
    ftMemo, ftWideMemo:
      begin
        edFilter.Text := sFilter + s + ' LIKE ''%%''';
        edFilter.SelStart := Length(edFilter.Text) - 2;
      end;
  else
    edFilter.Text := sFilter + s + '=';
    edFilter.SelStart := Length(edFilter.Text);
  end;
  edFilter.SelLength := 0;
end;

procedure TfrmMain.tsShow(Sender: TObject);
begin
  case (Sender as TTabSheet).PageIndex of
    0: dbmDescription.SetFocus;
    1: dbmSteps.SetFocus;
    2: dbmWorkaround.SetFocus;
    3: dbmAttachment.SetFocus;
    4: dbcgComment.SetFocus;
  end;
end;

procedure TfrmMain.SetFilter;
begin
  dmMain.cdsMain.Filtered := False;
  dmMain.cdsMain.Filter := edFilter.Text;
  dmMain.cdsMain.Filtered := Trim(edFilter.Text) <> '';
  GotoTop;
end;

{ TPageControl }

constructor TPageControl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle + [csClickEvents];
end;

end.
