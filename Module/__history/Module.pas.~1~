{ ============================================
  Software Name : 	MySql_StoreProc
  ============================================ }
{ ******************************************** }
{ Written By WalWalWalides                     }
{ CopyRight © 2019                             }
{ Email : WalWalWalides@gmail.com              }
{ GitHub :https://github.com/walwalwalides     }
{ ******************************************** }
unit Module;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.UI;

type
  TDMModule = class(TDataModule)
    ConnectionMain: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    MySQLWaitCursor: TFDGUIxWaitCursor;
    ProcGetName: TFDStoredProc;
    ProcCounter: TFDStoredProc;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  DMModule: TDMModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


//before u have to define your connectionMain in  FDConnectionDefs.ini
//Add This lines in Inifile

//[MYWALID_MYSQL]                        MYWALID_MYSQL  -> choose as name of parametre  ConnectionDefName
//DriverID=MySQL
//Database=
//User_Name=
//Password=
//Server=127.0.0.1

//finally
//choose the right function in StoredProcName parametre in(ProcGetName and ProcCounter)

procedure TDMModule.DataModuleCreate(Sender: TObject);
begin
  //link connection to StoredProc
  ConnectionMain.LoginPrompt:=False;
  ConnectionMain.ConnectionDefName:='MYWALID_MYSQL';
  ConnectionMain.Connected:=True;
  ProcGetName.Connection:=DMModule.ConnectionMain;
  ProcCounter.Connection:=DMModule.ConnectionMain;

end;




end.
