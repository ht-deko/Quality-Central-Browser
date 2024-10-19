program QCBrowser;

uses
  Vcl.Forms,
  frmuMain in 'frmuMain.pas' {frmMain},
  dmuMain in 'dmuMain.pas' {dmMain: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
