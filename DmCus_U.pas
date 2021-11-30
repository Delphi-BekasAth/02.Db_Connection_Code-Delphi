unit DmCus_U;

interface

uses
  System.SysUtils, System.Classes, ADODB, DB;

type
  TCusDm = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    //Declare Objects
    conCus : TADOConnection;
    tblCus : TADOTable;
    dsCus : TDataSource;

  end;

var
  CusDm: TCusDm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TCusDm.DataModuleCreate(Sender: TObject);
begin

  //Create Objects
  conCus := TADOConnection.Create(CusDm);
  tblCus := TADOTAble.Create(CusDm);
  dsCus := TDataSource.Create(CusDm);

  //setup connection
  conCus.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";Initial Catalog=DelphiTestDb;Data Source="";Initial File Name="";Server SPN=""';
  conCus.LoginPrompt := false;
  conCus.Open;

  //setup table
  tblCus.Connection := conCus;
  tblCus.TableName := 'CUSTOMER';

  //set up data source
  dsCus.DataSet := tblCus;
  tblCus.Open;

end;



end.
