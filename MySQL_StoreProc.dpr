program MySQL_StoreProc;

uses
  Vcl.Forms,
  UScript in 'Unit\UScript.pas',
  Module in 'Module\Module.pas' {DMModule: TDataModule},
  Main in 'Form\Main.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMModule, DMModule);
  BuildTable;
  CreateScript;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
