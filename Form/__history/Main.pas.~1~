{ ============================================
  Software Name : 	MySql_StoreProc
  ============================================ }
{ ******************************************** }
{ Written By WalWalWalides }
{ CopyRight © 2019 }
{ Email : WalWalWalides@gmail.com }
{ GitHub :https://github.com/walwalwalides }
{ ******************************************** }
unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Phys.MySQLDef, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, Vcl.Samples.Spin,
  FireDAC.Comp.Script, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmMain = class(TForm)
    GrBoxControle: TGroupBox;
    SPedtCount: TSpinEdit;
    lblID: TLabel;
    pnlHead: TPanel;
    bitbtnDelScript: TBitBtn;
    bitbtnCrScript: TBitBtn;
    btnBuildTable: TBitBtn;
    btnDisplayName: TBitBtn;
    procedure btnDisplayNameClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bitbtnCrScriptClick(Sender: TObject);
    procedure bitbtnDelScriptClick(Sender: TObject);
    procedure btnBuildTableClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frmMain: TfrmMain;
  BoolstatDel: Boolean = False;

implementation

uses Module, Uscript;

{$R *.dfm}

procedure TfrmMain.btnDisplayNameClick(Sender: TObject);
begin // user getName Function

  DMModule.ProcGetName.Params[0].Value := SPedtCount.Value;

  try
    ShowMessage(DMModule.ProcGetName.ExecFunc);

  except
    if (BoolstatDel = True) then
      MessageDlg('func. "GetName " was deleted', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmMain.btnBuildTableClick(Sender: TObject);
begin
  BuildTable;
end;

procedure TfrmMain.bitbtnDelScriptClick(Sender: TObject);
begin
  try
    DeleteScript;
  finally
    BoolstatDel := True;
  end;
end;

procedure TfrmMain.bitbtnCrScriptClick(Sender: TObject);
begin
  try
    CreateScript;
  finally
    BoolstatDel := False;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  SPedtCount.EditorEnabled := False;
  frmMain.Position := poMainFormCenter;

end;

procedure TfrmMain.FormShow(Sender: TObject);
var
  iMaxValue: integer;
begin

  DMModule.ProcCounter.Params[0].Value := iMaxValue;
  iMaxValue := DMModule.ProcCounter.ExecFunc;
  SPedtCount.MinValue := 1;
  SPedtCount.MaxValue := iMaxValue;

end;

end.
