program SimpleDcefB;

uses
  Vcl.Forms,
  dcef3_ceflib,
  dcefb_Browser,
  UnitFrmMain in 'UnitFrmMain.pas' {MainForm};

{$R *.res}

begin
  CefSingleProcess := False;
  //CefCache := '';
  DcefBrowserInitializeFirst;
  if not CefLoadLibDefault then
    Exit;
  DcefBrowserInitializeNext;

  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;

end.
