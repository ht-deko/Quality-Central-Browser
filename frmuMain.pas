unit frmuMain;

interface

uses
  System.SysUtils, System.Classes, System.Actions, System.Math,
  System.ImageList, Winapi.Windows, Winapi.Messages, Winapi.ShellAPI, Data.DB,
  Vcl.ActnList, Vcl.Controls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBCtrls, Vcl.DBGrids, Vcl.DBCGrids, Vcl.Forms,
  Vcl.Dialogs, Vcl.Mask, Vcl.Graphics, Vcl.Imaging.pngimage, Vcl.ImgList,
  System.Win.Registry, System.NetEncoding, System.IniFiles, REST.Types, 
  REST.Client, System.JSON.Readers, System.JSON.Builders, System.Rtti;

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

  TTranslateAPI =
  record
    Enabled: Boolean;
    URL: string;
    Resource: string;
    AuthKey: string;
    Language: string;
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
    imgInternetArchive: TImage;
    bbDataList: TBitBtn;
    alDataList: TAction;
    acTranslate: TAction;
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
    procedure imgInternetArchiveClick(Sender: TObject);
    procedure acDBExecute(Sender: TObject);
    procedure edDEFECT_NOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure alDataListExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acTranslateExecute(Sender: TObject);
  private
    { Private Declaration }
    TranslateAPI: TTranslateAPI;
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

const
  MT_MAIN = 0;
  MT_NESTED = 1;
  TT_ORIGINAL = 0;
  TT_TRANSLATED = 1;
  
{ TfrmMain }

procedure TfrmMain.FormCreate(Sender: TObject);
const
  SEC_MAIN  = 'SYSTEM';
  SEC_TRANS = 'TranslateAPI';
var
  Ini: TMemIniFile;
begin
  Ini := TMemIniFile.Create(ChangeFileExt(ParamStr(0), '.env'));
  try
    imgInternetArchive.Visible := Ini.ReadBool(SEC_MAIN, 'ShowInternetArchive', False);
    with TranslateAPI do
    begin
      Enabled  := Ini.ReadBool  (SEC_TRANS, 'Enabled' , False);
      URL      := Ini.ReadString(SEC_TRANS, 'URL'     , '');
      Resource := Ini.ReadString(SEC_TRANS, 'Resource', '');
      AuthKey  := Ini.ReadString(SEC_TRANS, 'AuthKey' , '');
      Language := Ini.ReadString(SEC_TRANS, 'Language', '');
      if AuthKey = '' then
        Enabled := False;
    end;
  finally
    Ini.Free;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
  procedure RegisterProtocol(Regist: Boolean);
  var
    Reg: TRegistry;
  begin
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CLASSES_ROOT;
      if Regist then
      begin
        Reg.OpenKey('\QCWIN', True);
        Reg.WriteString('', 'URL:QCWIN Protocol');
        Reg.WriteString('URL Protocol', '');
        Reg.CloseKey;
        Reg.OpenKey('\QCWIN\shell', True);
        Reg.WriteString('', 'open');
        Reg.CloseKey;
        Reg.OpenKey('\QCWIN\shell\open\command', True);
        Reg.WriteString('', ParamStr(0) + ' %1' );
        Reg.CloseKey;
      end
      else
      begin
        Reg.DeleteKey('\QCWIN');
      end;
    finally
      Reg.Free;
    end;
    Application.Terminate;
  end;
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

  if ParamCount > 0 then
  begin
    if FindCmdLineSwitch('RegisterProtocol', ['-', '/'], True) then
      RegisterProtocol(True)
    else if FindCmdLineSwitch('UnregisterProtocol', ['-', '/'], True) then
      RegisterProtocol(False)
    else
      edFilter.Text := TNetEncoding.URL.Decode(StringReplace(ParamStr(1), 'QCWIN:', '', [rfIgnoreCase]));
  end;
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
  procedure ChangeIcon(ts: TTabSheet; aEnabled: Boolean);
  begin
    ts.ImageIndex := ts.PageIndex * 2 + Ord(aEnabled);
  end;
  procedure SetOriginal(dbm: TDBMemo);
  begin
    (dbm.Parent as TTabSheet).Tag := TT_ORIGINAL;
    dbm.DataSource := dmMain.dsMain;
  end;
begin
  edDEFECT_NO.Text := DataSet.Fields[MIDX_DEFECT_NO].AsInteger.ToString;

  ChangeColor(GetStatusColor(DataSet.Fields[MIDX_STATUS].AsInteger, clWindow));

  ChangeIcon(tsDescription, DataSet.Fields[MIDX_DESCRIPTION].AsString <> '');
  ChangeIcon(tsSteps      , DataSet.Fields[MIDX_STEPS      ].AsString <> '');
  ChangeIcon(tsWorkaround , DataSet.Fields[MIDX_WORKAROUND ].AsString <> '');
  ChangeIcon(tsAttachment , DataSet.Fields[MIDX_ATTACHMENT ].AsString <> '');
  ChangeIcon(tsComments   , dmMain.cdsNested.RecordCount > 0               );

  SetOriginal(dbmDescription);
  SetOriginal(dbmSteps);
  SetOriginal(dbmWorkaround);
  SetOriginal(dbmAttachment);

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

procedure TfrmMain.acTranslateExecute(Sender: TObject);
var
  DBM: TDBMemo;
  Text: string;
  function Translate(aText: string): string;
  begin
    result := '';
    var Request := TRESTRequest.Create(nil);
    try
      Request.Client := TRESTClient.Create(Request);
      Request.Client.BaseURL := TranslateAPI.URL;
      Request.Client.ContentType := 'application/x-www-form-urlencoded';
      Request.Response := TRESTResponse.Create(Request);
      Request.Resource := TranslateAPI.Resource;
      Request.Params.Clear;
      Request.Params.AddItem('auth_key'    , TranslateAPI.AuthKey);
      Request.Params.AddItem('target_lang' , TranslateAPI.Language);
      aText := TNetEncoding.URL.EncodeForm(aText);
      Request.Params.AddItem('text'        , aText, pkGETorPOST, [poDoNotEncode]);
      Request.Execute;
      if (Request.Response.StatusCode = 200) and
         (Request.Response.Content.Length > 70) then
      begin
        var Iterator := TJSONIterator.Create(Request.Response.JSONReader);
        try
          if Iterator.Find('translations[0].text') then
            result := Iterator.AsString;
        finally
          Iterator.Free;
        end;
      end;
    finally
      Request.Free;
    end;
  end;
begin
  if not TranslateAPI.Enabled then
    Exit;
  if not (Self.ActiveControl is TDBMemo) then
    Exit;
  DBM := Self.ActiveControl as TDBMemo;
  if DBM.SelLength = 0 then
    Text := DBM.Text
  else
    Text := DBM.SelText;
  case DBM.Tag of
    MT_MAIN:
      begin
        case (DBM.Parent as TTabSheet).Tag of
          TT_ORIGINAL:
            begin
              DBM := Self.ActiveControl as TDBMemo;
              DBM.DataSource := nil;
              DBM.Text := Translate(Text);
              (DBM.Parent as TTabSheet).Tag := TT_TRANSLATED;
            end;
          TT_TRANSLATED:
            begin
              DBM.DataSource := dmMain.dsMain;
              (DBM.Parent as TTabSheet).Tag := TT_ORIGINAL;
            end;
        end;
      end;
    MT_NESTED: 
      ShowMessage(Translate(Text));
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

procedure TfrmMain.imgInternetArchiveClick(Sender: TObject);
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
