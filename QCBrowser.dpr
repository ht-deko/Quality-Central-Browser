program QCBrowser;

uses
  Vcl.Forms,
  frmuMain in 'frmuMain.pas' {frmMain},
  dmuMain in 'dmuMain.pas' {dmMain: TDataModule},
  frmuDataList in 'frmuDataList.pas' {frmDataList};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := False;
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmDataList, frmDataList);
  Application.Run;
end.
