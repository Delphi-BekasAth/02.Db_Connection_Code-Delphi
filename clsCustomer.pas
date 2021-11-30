unit clsCustomer;

interface

uses System.SysUtils;

type TCustomer = class(TObject)

  private
    cId : integer;
    cName : string;
    cPhone : string;
    cBalance : double;

    public
    constructor Create(id : integer; name,phone : string; balance : double);
    procedure SetName(name : string);
    procedure SetPhone(phone : string);
    procedure SetBalance(balance : double);
    function GetId : integer;
    function GetName : string;
    function GetPhone : string;
    function GetBalance : double;

end;

implementation

constructor TCustomer.Create(id : integer; name,phone : string; balance : double);
begin
  cId := id;
  cName := name;
  cPhone := phone;
  cBalance := balance;
end;

procedure TCustomer.SetName(name : string);
begin
  cName := name;
end;

procedure TCustomer.SetPhone(phone : string);
begin
  cPhone := phone;
end;

procedure TCustomer.SetBalance(balance : double);
begin
  cBalance := balance;
end;

function TCustomer.GetId : integer;
begin
  result := cId;
end;

function TCustomer.GetName : string;
begin
  result := cName;
end;

function TCustomer.GetPhone : string;
begin
  result := cPhone;
end;

function TCustomer.GetBalance : double;
begin
  result := cBalance;
end;


end.
