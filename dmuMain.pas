unit dmuMain;

interface

uses
  System.SysUtils, System.Classes, System.IOUtils, System.UITypes,
  Data.DB, Datasnap.DBClient, Vcl.Forms, Vcl.Dialogs;

type
  TdmMain = class(TDataModule)
    cdsMain: TClientDataSet;
    cdsMainAREAID: TSmallintField;
    cdsMainATTACHMENT: TStringField;
    cdsMainBUILD_NO: TStringField;
    cdsMainDATA_TYPE: TStringField;
    cdsMainDATE_REPORTED: TDateTimeField;
    cdsMainDEFECT_NO: TIntegerField;
    cdsMainDESCRIPTION: TMemoField;
    cdsMainPLATFORM: TSmallintField;
    cdsMainPROJECT: TSmallintField;
    cdsMainPUBLISH_VERSION_FIXED: TStringField;
    cdsMainINTERNAL_NO: TIntegerField;
    cdsMainREF_NO: TIntegerField;
    cdsMainRESOLUTION: TSmallintField;
    cdsMainRESOLVED_IN_BUILD: TStringField;
    cdsMainSEVERITY: TStringField;
    cdsMainSTATUS: TSmallintField;
    cdsMainSTEPS: TMemoField;
    cdsMainVERIFICATION: TSmallintField;
    cdsMainVERSION: TStringField;
    cdsMainWORKAROUND: TMemoField;
    cdsMainUSER_ID: TIntegerField;
    cdsMainFIRST_NAME: TStringField;
    cdsMainLAST_NAME: TStringField;
    cdsMainDUPLICATEOF: TIntegerField;
    cdsMainRATING: TFloatField;
    cdsMainMY_RATING: TSmallintField;
    cdsMainVOTES: TIntegerField;
    cdsMainMY_VOTES: TIntegerField;
    cdsMainMY_NOTIFY: TSmallintField;
    cdsMainSHORT_DESCRIPTION: TStringField;
    cdsMainRAIDED: TStringField;
    cdsMainPUBLIC: TIntegerField;
    cdsMainTOTALRATINGS: TIntegerField;
    cdsMainMODIFIED_DATE: TDateTimeField;
    cdsMainUNPROCESSED_WORKAROUNDS: TIntegerField;
    cdsMainNEEDS_ATTENTION: TBooleanField;
    cdsMainRAID_NO: TIntegerField;
    cdsMainLOCALE: TSmallintField;
    cdsMainqryResInfo: TDataSetField;
    cdsMainqryComment: TDataSetField;
    cdsMainSTATUS_NAME: TStringField;
    cdsMainPROJECT_NAME: TStringField;
    cdsMainRESOLUTION_NAME: TStringField;
    cdsMainFULL_NAME: TStringField;
    cdsMainDATA_TYPE_NAME: TStringField;
    cdsMainSEVERITY_NAME: TStringField;
    cdsMainPLATFORM_NAME: TStringField;
    dsNested: TDataSource;
    cdsNested: TClientDataSet;
    cdsNestedFULL_NAME: TStringField;
    cdsNestedCOMMENT: TMemoField;
    cdsNestedCOMMENTED: TDateTimeField;
    cdsNestedCOMMENTID: TIntegerField;
    cdsNestedDEFECT_NO: TIntegerField;
    cdsNestedPARENTID: TIntegerField;
    cdsNestedFIRST_NAME: TStringField;
    cdsNestedLAST_NAME: TStringField;
    cdsNestedPUBLISH: TStringField;
    dsMain: TDataSource;
    dsResolution: TDataSource;
    cdsResolution: TClientDataSet;
    dsPlatform: TDataSource;
    cdsPlatform: TClientDataSet;
    dsSeverity: TDataSource;
    cdsSeverity: TClientDataSet;
    dsReportType: TDataSource;
    cdsReportType: TClientDataSet;
    dsProject: TDataSource;
    cdsProject: TClientDataSet;
    dsStatus: TDataSource;
    cdsStatus: TClientDataSet;
    procedure cdsMainCalcFields(DataSet: TDataSet);
    procedure cdsNestedCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private Declaration }
  public
    { Public Declaration }
  end;

const
  MIDX_AREAID = 0;
  MIDX_ATTACHMENT = 1;
  MIDX_BUILD_NO = 2;
  MIDX_DATA_TYPE = 3;
  MIDX_DATE_REPORTED = 4;
  MIDX_DEFECT_NO = 5;
  MIDX_DESCRIPTION = 6;
  MIDX_PLATFORM = 7;
  MIDX_PROJECT = 8;
  MIDX_PUBLISH_VERSION_FIXED = 9;
  MIDX_INTERNAL_NO = 10;
  MIDX_REF_NO = 11;
  MIDX_RESOLUTION = 12;
  MIDX_RESOLVED_IN_BUILD = 13;
  MIDX_SEVERITY = 14;
  MIDX_STATUS = 15;
  MIDX_STEPS = 16;
  MIDX_VERIFICATION = 17;
  MIDX_VERSION = 18;
  MIDX_WORKAROUND = 19;
  MIDX_USER_ID = 20;
  MIDX_FIRST_NAME = 21;
  MIDX_LAST_NAME = 22;
  MIDX_DUPLICATEOF = 23;
  MIDX_RATING = 24;
  MIDX_MY_RATING = 25;
  MIDX_VOTES = 26;
  MIDX_MY_VOTES = 27;
  MIDX_MY_NOTIFY = 28;
  MIDX_SHORT_DESCRIPTION = 29;
  MIDX_RAIDED = 30;
  MIDX_PUBLIC = 31;
  MIDX_TOTALRATINGS = 32;
  MIDX_MODIFIED_DATE = 33;
  MIDX_UNPROCESSED_WORKAROUNDS = 34;
  MIDX_NEEDS_ATTENTION = 35;
  MIDX_RAID_NO = 36;
  MIDX_LOCALE = 37;
  MIDX_qryResInfo = 38;
  MIDX_qryComment = 39;
  MIDX_STATUS_NAME = 40;
  MIDX_PROJECT_NAME = 41;
  MIDX_RESOLUTION_NAME = 42;
  MIDX_DATA_TYPE_NAME = 43;
  MIDX_SEVERITY_NAME = 44;
  MIDX_PLATFORM_NAME = 45;
  MIDX_FULL_NAME = 46;

  SIDX_COMMENT = 0;
  SIDX_COMMENTED = 1;
  SIDX_COMMENTID = 2;
  SIDX_DEFECT_NO = 3;
  SIDX_PARENTID = 4;
  SIDX_FIRST_NAME = 5;
  SIDX_LAST_NAME = 6;
  SIDX_PUBLISH = 7;
  SIDX_COMMENT_HEADER = 8;

  SEC_MAIN  = 'SYSTEM';
  SEC_TRANS = 'TranslateAPI';

var
  dmMain: TdmMain;

  function GetStatusColor(const Status: Integer; const DefaultColor: TColor): TColor;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function GetStatusColor(const Status: Integer; const DefaultColor: TColor): TColor;
begin
  case Status of
    10: result := $00D2FFD2;
    20: result := $00FCC7C2;
    30: result := $00C4C4FF;
    50: result := $00E6E6E6;
  else
    result := DefaultColor;
  end;
end;

procedure TdmMain.cdsMainCalcFields(DataSet: TDataSet);
begin
  DataSet.Fields[MIDX_FULL_NAME].AsString :=
    DataSet.Fields[MIDX_FIRST_NAME].AsString.Trim + ' ' +
    DataSet.Fields[MIDX_LAST_NAME].AsString.Trim;
end;

procedure TdmMain.cdsNestedCalcFields(DataSet: TDataSet);
var
  ParentID: Integer;
  FullName, Reply: string;
begin
  FullName := DataSet.Fields[SIDX_FIRST_NAME].AsString.Trim + ' ' +
              DataSet.Fields[SIDX_LAST_NAME ].AsString.Trim;
  ParentID := DataSet.Fields[SIDX_PARENTID  ].AsInteger;
  if ParentID <> -1 then
    Reply := Format(' (Re:#%d) ', [ParentID]);
  DataSet.Fields[SIDX_COMMENT_HEADER].AsString :=
    Format('#%d %s%s at %s', [DataSet.Fields[SIDX_COMMENTID].AsInteger,
                              Reply,
                              FullName,
                              DataSet.Fields[SIDX_COMMENTED].AsString]);
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
{
  var FileName := TPath.Combine(TPath.GetDirectoryName(Application.Exename), 'QCScraper.xml');
  if TFile.Exists(FileName) then
    cdsMain.LoadFromFile(FileName)
  else
  begin
    Vcl.Dialogs.MessageDlg('File not found.', mtError, [mbOK], -1);
    Application.Terminate;
  end;
}
end;

end.
